/**
 * @file BoundedRecords.java
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-ros1-trajectory-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

package org.uwvm.universal_robots.universal_robots_ros1_trajectory_complete;

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
        public static final String CODEC_IDENTITY = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;
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
        writeText(writer, part2, 128);
    }

    private static Ros1Std_msgsHeader readRos1Std_msgsHeader(Codecs.Reader reader)
    {
        Ros1Std_msgsHeader value = new Ros1Std_msgsHeader();
        value.seq = reader.integer(4, false);
        value.stamp = readRos1Time(reader);
        value.frame_id = readText(reader, 128);
        return value;
    }

    public static final class Ros1Duration
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "duration";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public int sec = 0;
        public int nsec = 0;

        public Ros1Duration()
        {
        }

        public static final Codec<Ros1Duration> CODEC = new Codec<Ros1Duration>() {
            public byte[] encode(Ros1Duration value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Duration(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Duration decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Duration value = readRos1Duration(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Duration(Codecs.Writer writer, Ros1Duration value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.sec;
        writer.integer(part0, 4, true);
        int part1 = value.nsec;
        writer.integer(part1, 4, true);
        if(part1 < 0 || part1 >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
    }

    private static Ros1Duration readRos1Duration(Codecs.Reader reader)
    {
        Ros1Duration value = new Ros1Duration();
        value.sec = (int)reader.integer(4, true);
        value.nsec = (int)reader.integer(4, true);
        if(value.nsec < 0 || value.nsec >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
        return value;
    }

    public static final class Ros1Trajectory_msgsJointTrajectoryPoint
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "trajectory_msgs/JointTrajectoryPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 216;
        public double[] positions = new double[0];
        public double[] velocities = new double[0];
        public double[] accelerations = new double[0];
        public double[] effort = new double[0];
        public Ros1Duration time_from_start = new Ros1Duration();

        public Ros1Trajectory_msgsJointTrajectoryPoint()
        {
        }

        public static final Codec<Ros1Trajectory_msgsJointTrajectoryPoint> CODEC = new Codec<Ros1Trajectory_msgsJointTrajectoryPoint>() {
            public byte[] encode(Ros1Trajectory_msgsJointTrajectoryPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Trajectory_msgsJointTrajectoryPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Trajectory_msgsJointTrajectoryPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Trajectory_msgsJointTrajectoryPoint value = readRos1Trajectory_msgsJointTrajectoryPoint(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Trajectory_msgsJointTrajectoryPoint(Codecs.Writer writer, Ros1Trajectory_msgsJointTrajectoryPoint value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.positions;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.velocities;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.accelerations;
        if(part2 == null || part2.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.effort;
        if(part3 == null || part3.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        Ros1Duration part4 = value.time_from_start;
        writeRos1Duration(writer, part4);
    }

    private static Ros1Trajectory_msgsJointTrajectoryPoint readRos1Trajectory_msgsJointTrajectoryPoint(Codecs.Reader reader)
    {
        Ros1Trajectory_msgsJointTrajectoryPoint value = new Ros1Trajectory_msgsJointTrajectoryPoint();
        value.positions = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.positions.length; ++i)
            value.positions[i] = reader.f64();
        value.velocities = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = reader.f64();
        value.accelerations = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.accelerations.length; ++i)
            value.accelerations[i] = reader.f64();
        value.effort = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.effort.length; ++i)
            value.effort[i] = reader.f64();
        value.time_from_start = readRos1Duration(reader);
        return value;
    }

    public static final class Ros1Trajectory_msgsJointTrajectory
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "trajectory_msgs/JointTrajectory";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 5168;
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        public String[] joint_names = new String[0];
        public Ros1Trajectory_msgsJointTrajectoryPoint[] points = new Ros1Trajectory_msgsJointTrajectoryPoint[0];

        public Ros1Trajectory_msgsJointTrajectory()
        {
        }

        public static final Codec<Ros1Trajectory_msgsJointTrajectory> CODEC = new Codec<Ros1Trajectory_msgsJointTrajectory>() {
            public byte[] encode(Ros1Trajectory_msgsJointTrajectory value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Trajectory_msgsJointTrajectory(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Trajectory_msgsJointTrajectory decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Trajectory_msgsJointTrajectory value = readRos1Trajectory_msgsJointTrajectory(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Trajectory_msgsJointTrajectory(Codecs.Writer writer, Ros1Trajectory_msgsJointTrajectory value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;
        writeRos1Std_msgsHeader(writer, part0);
        String[] part1 = value.joint_names;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        Ros1Trajectory_msgsJointTrajectoryPoint[] part2 = value.points;
        if(part2 == null || part2.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos1Trajectory_msgsJointTrajectoryPoint(writer, part2[i]);
        }
    }

    private static Ros1Trajectory_msgsJointTrajectory readRos1Trajectory_msgsJointTrajectory(Codecs.Reader reader)
    {
        Ros1Trajectory_msgsJointTrajectory value = new Ros1Trajectory_msgsJointTrajectory();
        value.header = readRos1Std_msgsHeader(reader);
        value.joint_names = new String[readCount(reader, 6, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.points = new Ros1Trajectory_msgsJointTrajectoryPoint[readCount(reader, 16, 24)];
        for(int i = 0; i < value.points.length; ++i)
            value.points[i] = readRos1Trajectory_msgsJointTrajectoryPoint(reader);
        return value;
    }

    public static final class Ros1Control_msgsJointTolerance
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "control_msgs/JointTolerance";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;
        public String name = "";
        public double position = 0;
        public double velocity = 0;
        public double acceleration = 0;

        public Ros1Control_msgsJointTolerance()
        {
        }

        public static final Codec<Ros1Control_msgsJointTolerance> CODEC = new Codec<Ros1Control_msgsJointTolerance>() {
            public byte[] encode(Ros1Control_msgsJointTolerance value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Control_msgsJointTolerance(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Control_msgsJointTolerance decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Control_msgsJointTolerance value = readRos1Control_msgsJointTolerance(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Control_msgsJointTolerance(Codecs.Writer writer, Ros1Control_msgsJointTolerance value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 128);
        double part1 = value.position;
        writer.f64(part1);
        double part2 = value.velocity;
        writer.f64(part2);
        double part3 = value.acceleration;
        writer.f64(part3);
    }

    private static Ros1Control_msgsJointTolerance readRos1Control_msgsJointTolerance(Codecs.Reader reader)
    {
        Ros1Control_msgsJointTolerance value = new Ros1Control_msgsJointTolerance();
        value.name = readText(reader, 128);
        value.position = reader.f64();
        value.velocity = reader.f64();
        value.acceleration = reader.f64();
        return value;
    }

    public static final class Ros1Control_msgsFollowJointTrajectoryGoal
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "control_msgs/FollowJointTrajectoryGoal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 7056;
        public Ros1Trajectory_msgsJointTrajectory trajectory = new Ros1Trajectory_msgsJointTrajectory();
        public Ros1Control_msgsJointTolerance[] path_tolerance = new Ros1Control_msgsJointTolerance[0];
        public Ros1Control_msgsJointTolerance[] goal_tolerance = new Ros1Control_msgsJointTolerance[0];
        public Ros1Duration goal_time_tolerance = new Ros1Duration();

        public Ros1Control_msgsFollowJointTrajectoryGoal()
        {
        }

        public static final Codec<Ros1Control_msgsFollowJointTrajectoryGoal> CODEC = new Codec<Ros1Control_msgsFollowJointTrajectoryGoal>() {
            public byte[] encode(Ros1Control_msgsFollowJointTrajectoryGoal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Control_msgsFollowJointTrajectoryGoal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Control_msgsFollowJointTrajectoryGoal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Control_msgsFollowJointTrajectoryGoal value = readRos1Control_msgsFollowJointTrajectoryGoal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Control_msgsFollowJointTrajectoryGoal(Codecs.Writer writer, Ros1Control_msgsFollowJointTrajectoryGoal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Trajectory_msgsJointTrajectory part0 = value.trajectory;
        writeRos1Trajectory_msgsJointTrajectory(writer, part0);
        Ros1Control_msgsJointTolerance[] part1 = value.path_tolerance;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos1Control_msgsJointTolerance(writer, part1[i]);
        }
        Ros1Control_msgsJointTolerance[] part2 = value.goal_tolerance;
        if(part2 == null || part2.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos1Control_msgsJointTolerance(writer, part2[i]);
        }
        Ros1Duration part3 = value.goal_time_tolerance;
        writeRos1Duration(writer, part3);
    }

    private static Ros1Control_msgsFollowJointTrajectoryGoal readRos1Control_msgsFollowJointTrajectoryGoal(Codecs.Reader reader)
    {
        Ros1Control_msgsFollowJointTrajectoryGoal value = new Ros1Control_msgsFollowJointTrajectoryGoal();
        value.trajectory = readRos1Trajectory_msgsJointTrajectory(reader);
        value.path_tolerance = new Ros1Control_msgsJointTolerance[readCount(reader, 6, 28)];
        for(int i = 0; i < value.path_tolerance.length; ++i)
            value.path_tolerance[i] = readRos1Control_msgsJointTolerance(reader);
        value.goal_tolerance = new Ros1Control_msgsJointTolerance[readCount(reader, 6, 28)];
        for(int i = 0; i < value.goal_tolerance.length; ++i)
            value.goal_tolerance[i] = readRos1Control_msgsJointTolerance(reader);
        value.goal_time_tolerance = readRos1Duration(reader);
        return value;
    }

    public static final class Ros1Control_msgsFollowJointTrajectoryResult
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "control_msgs/FollowJointTrajectoryResult";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 4104;
        public int error_code = 0;
        public String error_string = "";

        public Ros1Control_msgsFollowJointTrajectoryResult()
        {
        }

        public static final Codec<Ros1Control_msgsFollowJointTrajectoryResult> CODEC = new Codec<Ros1Control_msgsFollowJointTrajectoryResult>() {
            public byte[] encode(Ros1Control_msgsFollowJointTrajectoryResult value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Control_msgsFollowJointTrajectoryResult(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Control_msgsFollowJointTrajectoryResult decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Control_msgsFollowJointTrajectoryResult value = readRos1Control_msgsFollowJointTrajectoryResult(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Control_msgsFollowJointTrajectoryResult(Codecs.Writer writer, Ros1Control_msgsFollowJointTrajectoryResult value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.error_code;
        writer.integer(part0, 4, true);
        String part1 = value.error_string;
        writeText(writer, part1, 4096);
    }

    private static Ros1Control_msgsFollowJointTrajectoryResult readRos1Control_msgsFollowJointTrajectoryResult(Codecs.Reader reader)
    {
        Ros1Control_msgsFollowJointTrajectoryResult value = new Ros1Control_msgsFollowJointTrajectoryResult();
        value.error_code = (int)reader.integer(4, true);
        value.error_string = readText(reader, 4096);
        return value;
    }

    public static final class Ros1Control_msgsFollowJointTrajectoryFeedback
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "control_msgs/FollowJointTrajectoryFeedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913";
        public static final int MIN_WIRE_BYTES = 92, MAX_WIRE_BYTES = 2356;
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        public String[] joint_names = new String[0];
        public Ros1Trajectory_msgsJointTrajectoryPoint desired = new Ros1Trajectory_msgsJointTrajectoryPoint();
        public Ros1Trajectory_msgsJointTrajectoryPoint actual = new Ros1Trajectory_msgsJointTrajectoryPoint();
        public Ros1Trajectory_msgsJointTrajectoryPoint error = new Ros1Trajectory_msgsJointTrajectoryPoint();

        public Ros1Control_msgsFollowJointTrajectoryFeedback()
        {
        }

        public static final Codec<Ros1Control_msgsFollowJointTrajectoryFeedback> CODEC = new Codec<Ros1Control_msgsFollowJointTrajectoryFeedback>() {
            public byte[] encode(Ros1Control_msgsFollowJointTrajectoryFeedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Control_msgsFollowJointTrajectoryFeedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Control_msgsFollowJointTrajectoryFeedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Control_msgsFollowJointTrajectoryFeedback value = readRos1Control_msgsFollowJointTrajectoryFeedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Control_msgsFollowJointTrajectoryFeedback(Codecs.Writer writer, Ros1Control_msgsFollowJointTrajectoryFeedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;
        writeRos1Std_msgsHeader(writer, part0);
        String[] part1 = value.joint_names;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        Ros1Trajectory_msgsJointTrajectoryPoint part2 = value.desired;
        writeRos1Trajectory_msgsJointTrajectoryPoint(writer, part2);
        Ros1Trajectory_msgsJointTrajectoryPoint part3 = value.actual;
        writeRos1Trajectory_msgsJointTrajectoryPoint(writer, part3);
        Ros1Trajectory_msgsJointTrajectoryPoint part4 = value.error;
        writeRos1Trajectory_msgsJointTrajectoryPoint(writer, part4);
    }

    private static Ros1Control_msgsFollowJointTrajectoryFeedback readRos1Control_msgsFollowJointTrajectoryFeedback(Codecs.Reader reader)
    {
        Ros1Control_msgsFollowJointTrajectoryFeedback value = new Ros1Control_msgsFollowJointTrajectoryFeedback();
        value.header = readRos1Std_msgsHeader(reader);
        value.joint_names = new String[readCount(reader, 6, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.desired = readRos1Trajectory_msgsJointTrajectoryPoint(reader);
        value.actual = readRos1Trajectory_msgsJointTrajectoryPoint(reader);
        value.error = readRos1Trajectory_msgsJointTrajectoryPoint(reader);
        return value;
    }

    public static final class Ros1Geometry_msgsPoint
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Point";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        public double x = 0;
        public double y = 0;
        public double z = 0;

        public Ros1Geometry_msgsPoint()
        {
        }

        public static final Codec<Ros1Geometry_msgsPoint> CODEC = new Codec<Ros1Geometry_msgsPoint>() {
            public byte[] encode(Ros1Geometry_msgsPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Geometry_msgsPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Geometry_msgsPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsPoint value = readRos1Geometry_msgsPoint(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Geometry_msgsPoint(Codecs.Writer writer, Ros1Geometry_msgsPoint value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.x;
        writer.f64(part0);
        double part1 = value.y;
        writer.f64(part1);
        double part2 = value.z;
        writer.f64(part2);
    }

    private static Ros1Geometry_msgsPoint readRos1Geometry_msgsPoint(Codecs.Reader reader)
    {
        Ros1Geometry_msgsPoint value = new Ros1Geometry_msgsPoint();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        return value;
    }

    public static final class Ros1Geometry_msgsQuaternion
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Quaternion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        public double x = 0;
        public double y = 0;
        public double z = 0;
        public double w = 0;

        public Ros1Geometry_msgsQuaternion()
        {
        }

        public static final Codec<Ros1Geometry_msgsQuaternion> CODEC = new Codec<Ros1Geometry_msgsQuaternion>() {
            public byte[] encode(Ros1Geometry_msgsQuaternion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Geometry_msgsQuaternion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Geometry_msgsQuaternion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsQuaternion value = readRos1Geometry_msgsQuaternion(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Geometry_msgsQuaternion(Codecs.Writer writer, Ros1Geometry_msgsQuaternion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.x;
        writer.f64(part0);
        double part1 = value.y;
        writer.f64(part1);
        double part2 = value.z;
        writer.f64(part2);
        double part3 = value.w;
        writer.f64(part3);
    }

    private static Ros1Geometry_msgsQuaternion readRos1Geometry_msgsQuaternion(Codecs.Reader reader)
    {
        Ros1Geometry_msgsQuaternion value = new Ros1Geometry_msgsQuaternion();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        value.w = reader.f64();
        return value;
    }

    public static final class Ros1Geometry_msgsPose
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Pose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        public Ros1Geometry_msgsPoint position = new Ros1Geometry_msgsPoint();
        public Ros1Geometry_msgsQuaternion orientation = new Ros1Geometry_msgsQuaternion();

        public Ros1Geometry_msgsPose()
        {
        }

        public static final Codec<Ros1Geometry_msgsPose> CODEC = new Codec<Ros1Geometry_msgsPose>() {
            public byte[] encode(Ros1Geometry_msgsPose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Geometry_msgsPose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Geometry_msgsPose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsPose value = readRos1Geometry_msgsPose(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Geometry_msgsPose(Codecs.Writer writer, Ros1Geometry_msgsPose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPoint part0 = value.position;
        writeRos1Geometry_msgsPoint(writer, part0);
        Ros1Geometry_msgsQuaternion part1 = value.orientation;
        writeRos1Geometry_msgsQuaternion(writer, part1);
    }

    private static Ros1Geometry_msgsPose readRos1Geometry_msgsPose(Codecs.Reader reader)
    {
        Ros1Geometry_msgsPose value = new Ros1Geometry_msgsPose();
        value.position = readRos1Geometry_msgsPoint(reader);
        value.orientation = readRos1Geometry_msgsQuaternion(reader);
        return value;
    }

    public static final class Ros1Geometry_msgsPoseStamped
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/PoseStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95";
        public static final int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 200;
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        public Ros1Geometry_msgsPose pose = new Ros1Geometry_msgsPose();

        public Ros1Geometry_msgsPoseStamped()
        {
        }

        public static final Codec<Ros1Geometry_msgsPoseStamped> CODEC = new Codec<Ros1Geometry_msgsPoseStamped>() {
            public byte[] encode(Ros1Geometry_msgsPoseStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Geometry_msgsPoseStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Geometry_msgsPoseStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsPoseStamped value = readRos1Geometry_msgsPoseStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Geometry_msgsPoseStamped(Codecs.Writer writer, Ros1Geometry_msgsPoseStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;
        writeRos1Std_msgsHeader(writer, part0);
        Ros1Geometry_msgsPose part1 = value.pose;
        writeRos1Geometry_msgsPose(writer, part1);
    }

    private static Ros1Geometry_msgsPoseStamped readRos1Geometry_msgsPoseStamped(Codecs.Reader reader)
    {
        Ros1Geometry_msgsPoseStamped value = new Ros1Geometry_msgsPoseStamped();
        value.header = readRos1Std_msgsHeader(reader);
        value.pose = readRos1Geometry_msgsPose(reader);
        return value;
    }

    public static final class Ros1Geometry_msgsVector3
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Vector3";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        public double x = 0;
        public double y = 0;
        public double z = 0;

        public Ros1Geometry_msgsVector3()
        {
        }

        public static final Codec<Ros1Geometry_msgsVector3> CODEC = new Codec<Ros1Geometry_msgsVector3>() {
            public byte[] encode(Ros1Geometry_msgsVector3 value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Geometry_msgsVector3(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Geometry_msgsVector3 decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsVector3 value = readRos1Geometry_msgsVector3(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Geometry_msgsVector3(Codecs.Writer writer, Ros1Geometry_msgsVector3 value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.x;
        writer.f64(part0);
        double part1 = value.y;
        writer.f64(part1);
        double part2 = value.z;
        writer.f64(part2);
    }

    private static Ros1Geometry_msgsVector3 readRos1Geometry_msgsVector3(Codecs.Reader reader)
    {
        Ros1Geometry_msgsVector3 value = new Ros1Geometry_msgsVector3();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        return value;
    }

    public static final class Ros1Geometry_msgsTwist
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Twist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public Ros1Geometry_msgsVector3 linear = new Ros1Geometry_msgsVector3();
        public Ros1Geometry_msgsVector3 angular = new Ros1Geometry_msgsVector3();

        public Ros1Geometry_msgsTwist()
        {
        }

        public static final Codec<Ros1Geometry_msgsTwist> CODEC = new Codec<Ros1Geometry_msgsTwist>() {
            public byte[] encode(Ros1Geometry_msgsTwist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Geometry_msgsTwist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Geometry_msgsTwist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsTwist value = readRos1Geometry_msgsTwist(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Geometry_msgsTwist(Codecs.Writer writer, Ros1Geometry_msgsTwist value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsVector3 part0 = value.linear;
        writeRos1Geometry_msgsVector3(writer, part0);
        Ros1Geometry_msgsVector3 part1 = value.angular;
        writeRos1Geometry_msgsVector3(writer, part1);
    }

    private static Ros1Geometry_msgsTwist readRos1Geometry_msgsTwist(Codecs.Reader reader)
    {
        Ros1Geometry_msgsTwist value = new Ros1Geometry_msgsTwist();
        value.linear = readRos1Geometry_msgsVector3(reader);
        value.angular = readRos1Geometry_msgsVector3(reader);
        return value;
    }

    public static final class Ros1Geometry_msgsWrench
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Wrench";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public Ros1Geometry_msgsVector3 force = new Ros1Geometry_msgsVector3();
        public Ros1Geometry_msgsVector3 torque = new Ros1Geometry_msgsVector3();

        public Ros1Geometry_msgsWrench()
        {
        }

        public static final Codec<Ros1Geometry_msgsWrench> CODEC = new Codec<Ros1Geometry_msgsWrench>() {
            public byte[] encode(Ros1Geometry_msgsWrench value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Geometry_msgsWrench(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Geometry_msgsWrench decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsWrench value = readRos1Geometry_msgsWrench(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Geometry_msgsWrench(Codecs.Writer writer, Ros1Geometry_msgsWrench value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsVector3 part0 = value.force;
        writeRos1Geometry_msgsVector3(writer, part0);
        Ros1Geometry_msgsVector3 part1 = value.torque;
        writeRos1Geometry_msgsVector3(writer, part1);
    }

    private static Ros1Geometry_msgsWrench readRos1Geometry_msgsWrench(Codecs.Reader reader)
    {
        Ros1Geometry_msgsWrench value = new Ros1Geometry_msgsWrench();
        value.force = readRos1Geometry_msgsVector3(reader);
        value.torque = readRos1Geometry_msgsVector3(reader);
        return value;
    }

    public static final class Ros1Sensor_msgsJointState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "sensor_msgs/JointState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 1864;
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        public String[] name = new String[0];
        public double[] position = new double[0];
        public double[] velocity = new double[0];
        public double[] effort = new double[0];

        public Ros1Sensor_msgsJointState()
        {
        }

        public static final Codec<Ros1Sensor_msgsJointState> CODEC = new Codec<Ros1Sensor_msgsJointState>() {
            public byte[] encode(Ros1Sensor_msgsJointState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Sensor_msgsJointState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Sensor_msgsJointState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Sensor_msgsJointState value = readRos1Sensor_msgsJointState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Sensor_msgsJointState(Codecs.Writer writer, Ros1Sensor_msgsJointState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;
        writeRos1Std_msgsHeader(writer, part0);
        String[] part1 = value.name;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        double[] part2 = value.position;
        if(part2 == null || part2.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.velocity;
        if(part3 == null || part3.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.effort;
        if(part4 == null || part4.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        if((part1.length != 0 && part2.length != 0 && part1.length != part2.length) ||
           (part1.length != 0 && part3.length != 0 && part1.length != part3.length) ||
           (part1.length != 0 && part4.length != 0 && part1.length != part4.length) ||
           (part2.length != 0 && part3.length != 0 && part2.length != part3.length) ||
           (part2.length != 0 && part4.length != 0 && part2.length != part4.length) || (part3.length != 0 && part4.length != 0 && part3.length != part4.length))
            throw new IllegalArgumentException("nonempty JointState arrays must have equal length");
    }

    private static Ros1Sensor_msgsJointState readRos1Sensor_msgsJointState(Codecs.Reader reader)
    {
        Ros1Sensor_msgsJointState value = new Ros1Sensor_msgsJointState();
        value.header = readRos1Std_msgsHeader(reader);
        value.name = new String[readCount(reader, 6, 4)];
        for(int i = 0; i < value.name.length; ++i)
            value.name[i] = readText(reader, 256);
        value.position = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.velocity = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = reader.f64();
        value.effort = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.effort.length; ++i)
            value.effort[i] = reader.f64();
        if((value.name.length != 0 && value.position.length != 0 && value.name.length != value.position.length) ||
           (value.name.length != 0 && value.velocity.length != 0 && value.name.length != value.velocity.length) ||
           (value.name.length != 0 && value.effort.length != 0 && value.name.length != value.effort.length) ||
           (value.position.length != 0 && value.velocity.length != 0 && value.position.length != value.velocity.length) ||
           (value.position.length != 0 && value.effort.length != 0 && value.position.length != value.effort.length) ||
           (value.velocity.length != 0 && value.effort.length != 0 && value.velocity.length != value.effort.length))
            throw new IllegalArgumentException("nonempty JointState arrays must have equal length");
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsAddToLogRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/AddToLogRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String message = "";

        public Ros1Ur_dashboard_msgsAddToLogRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsAddToLogRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsAddToLogRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsAddToLogRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsAddToLogRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsAddToLogRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsAddToLogRequest value = readRos1Ur_dashboard_msgsAddToLogRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsAddToLogRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsAddToLogRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.message;
        writeText(writer, part0, 256);
    }

    private static Ros1Ur_dashboard_msgsAddToLogRequest readRos1Ur_dashboard_msgsAddToLogRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsAddToLogRequest value = new Ros1Ur_dashboard_msgsAddToLogRequest();
        value.message = readText(reader, 256);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsAddToLogResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/AddToLogResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String answer = "";
        public boolean success = false;

        public Ros1Ur_dashboard_msgsAddToLogResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsAddToLogResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsAddToLogResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsAddToLogResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsAddToLogResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsAddToLogResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsAddToLogResponse value = readRos1Ur_dashboard_msgsAddToLogResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsAddToLogResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsAddToLogResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsAddToLogResponse readRos1Ur_dashboard_msgsAddToLogResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsAddToLogResponse value = new Ros1Ur_dashboard_msgsAddToLogResponse();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsGetLoadedProgramRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/GetLoadedProgramRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Ur_dashboard_msgsGetLoadedProgramRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsGetLoadedProgramRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsGetLoadedProgramRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsGetLoadedProgramRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsGetLoadedProgramRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsGetLoadedProgramRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsGetLoadedProgramRequest value = readRos1Ur_dashboard_msgsGetLoadedProgramRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsGetLoadedProgramRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsGetLoadedProgramRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Ur_dashboard_msgsGetLoadedProgramRequest readRos1Ur_dashboard_msgsGetLoadedProgramRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsGetLoadedProgramRequest value = new Ros1Ur_dashboard_msgsGetLoadedProgramRequest();
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsGetLoadedProgramResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/GetLoadedProgramResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        public String answer = "";
        public String program_name = "";
        public boolean success = false;

        public Ros1Ur_dashboard_msgsGetLoadedProgramResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsGetLoadedProgramResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsGetLoadedProgramResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsGetLoadedProgramResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsGetLoadedProgramResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsGetLoadedProgramResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsGetLoadedProgramResponse value = readRos1Ur_dashboard_msgsGetLoadedProgramResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsGetLoadedProgramResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsGetLoadedProgramResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        String part1 = value.program_name;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsGetLoadedProgramResponse readRos1Ur_dashboard_msgsGetLoadedProgramResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsGetLoadedProgramResponse value = new Ros1Ur_dashboard_msgsGetLoadedProgramResponse();
        value.answer = readText(reader, 256);
        value.program_name = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsGetProgramStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/GetProgramStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Ur_dashboard_msgsGetProgramStateRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsGetProgramStateRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsGetProgramStateRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsGetProgramStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsGetProgramStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsGetProgramStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsGetProgramStateRequest value = readRos1Ur_dashboard_msgsGetProgramStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsGetProgramStateRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsGetProgramStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Ur_dashboard_msgsGetProgramStateRequest readRos1Ur_dashboard_msgsGetProgramStateRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsGetProgramStateRequest value = new Ros1Ur_dashboard_msgsGetProgramStateRequest();
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsProgramState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/ProgramState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String state = "";

        public Ros1Ur_dashboard_msgsProgramState()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsProgramState> CODEC = new Codec<Ros1Ur_dashboard_msgsProgramState>() {
            public byte[] encode(Ros1Ur_dashboard_msgsProgramState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsProgramState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsProgramState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsProgramState value = readRos1Ur_dashboard_msgsProgramState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsProgramState(Codecs.Writer writer, Ros1Ur_dashboard_msgsProgramState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.state;
        writeText(writer, part0, 256);
    }

    private static Ros1Ur_dashboard_msgsProgramState readRos1Ur_dashboard_msgsProgramState(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsProgramState value = new Ros1Ur_dashboard_msgsProgramState();
        value.state = readText(reader, 256);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsGetProgramStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/GetProgramStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 781;
        public Ros1Ur_dashboard_msgsProgramState state = new Ros1Ur_dashboard_msgsProgramState();
        public String program_name = "";
        public String answer = "";
        public boolean success = false;

        public Ros1Ur_dashboard_msgsGetProgramStateResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsGetProgramStateResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsGetProgramStateResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsGetProgramStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsGetProgramStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsGetProgramStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsGetProgramStateResponse value = readRos1Ur_dashboard_msgsGetProgramStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsGetProgramStateResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsGetProgramStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Ur_dashboard_msgsProgramState part0 = value.state;
        writeRos1Ur_dashboard_msgsProgramState(writer, part0);
        String part1 = value.program_name;
        writeText(writer, part1, 256);
        String part2 = value.answer;
        writeText(writer, part2, 256);
        boolean part3 = value.success;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsGetProgramStateResponse readRos1Ur_dashboard_msgsGetProgramStateResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsGetProgramStateResponse value = new Ros1Ur_dashboard_msgsGetProgramStateResponse();
        value.state = readRos1Ur_dashboard_msgsProgramState(reader);
        value.program_name = readText(reader, 256);
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsGetRobotModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/GetRobotModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Ur_dashboard_msgsGetRobotModeRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsGetRobotModeRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsGetRobotModeRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsGetRobotModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsGetRobotModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsGetRobotModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsGetRobotModeRequest value = readRos1Ur_dashboard_msgsGetRobotModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsGetRobotModeRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsGetRobotModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Ur_dashboard_msgsGetRobotModeRequest readRos1Ur_dashboard_msgsGetRobotModeRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsGetRobotModeRequest value = new Ros1Ur_dashboard_msgsGetRobotModeRequest();
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsRobotMode
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/RobotMode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte mode = 0;

        public Ros1Ur_dashboard_msgsRobotMode()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsRobotMode> CODEC = new Codec<Ros1Ur_dashboard_msgsRobotMode>() {
            public byte[] encode(Ros1Ur_dashboard_msgsRobotMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsRobotMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsRobotMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsRobotMode value = readRos1Ur_dashboard_msgsRobotMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsRobotMode(Codecs.Writer writer, Ros1Ur_dashboard_msgsRobotMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.mode;
        writer.integer(part0, 1, true);
    }

    private static Ros1Ur_dashboard_msgsRobotMode readRos1Ur_dashboard_msgsRobotMode(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsRobotMode value = new Ros1Ur_dashboard_msgsRobotMode();
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsGetRobotModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/GetRobotModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public Ros1Ur_dashboard_msgsRobotMode robot_mode = new Ros1Ur_dashboard_msgsRobotMode();
        public String answer = "";
        public boolean success = false;

        public Ros1Ur_dashboard_msgsGetRobotModeResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsGetRobotModeResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsGetRobotModeResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsGetRobotModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsGetRobotModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsGetRobotModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsGetRobotModeResponse value = readRos1Ur_dashboard_msgsGetRobotModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsGetRobotModeResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsGetRobotModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Ur_dashboard_msgsRobotMode part0 = value.robot_mode;
        writeRos1Ur_dashboard_msgsRobotMode(writer, part0);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsGetRobotModeResponse readRos1Ur_dashboard_msgsGetRobotModeResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsGetRobotModeResponse value = new Ros1Ur_dashboard_msgsGetRobotModeResponse();
        value.robot_mode = readRos1Ur_dashboard_msgsRobotMode(reader);
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsGetSafetyModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/GetSafetyModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Ur_dashboard_msgsGetSafetyModeRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsGetSafetyModeRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsGetSafetyModeRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsGetSafetyModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsGetSafetyModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsGetSafetyModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsGetSafetyModeRequest value = readRos1Ur_dashboard_msgsGetSafetyModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsGetSafetyModeRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsGetSafetyModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Ur_dashboard_msgsGetSafetyModeRequest readRos1Ur_dashboard_msgsGetSafetyModeRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsGetSafetyModeRequest value = new Ros1Ur_dashboard_msgsGetSafetyModeRequest();
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsSafetyMode
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/SafetyMode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public int mode = 0;

        public Ros1Ur_dashboard_msgsSafetyMode()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsSafetyMode> CODEC = new Codec<Ros1Ur_dashboard_msgsSafetyMode>() {
            public byte[] encode(Ros1Ur_dashboard_msgsSafetyMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsSafetyMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsSafetyMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsSafetyMode value = readRos1Ur_dashboard_msgsSafetyMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsSafetyMode(Codecs.Writer writer, Ros1Ur_dashboard_msgsSafetyMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.mode;
        writer.integer(part0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsSafetyMode readRos1Ur_dashboard_msgsSafetyMode(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsSafetyMode value = new Ros1Ur_dashboard_msgsSafetyMode();
        value.mode = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsGetSafetyModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/GetSafetyModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public Ros1Ur_dashboard_msgsSafetyMode safety_mode = new Ros1Ur_dashboard_msgsSafetyMode();
        public String answer = "";
        public boolean success = false;

        public Ros1Ur_dashboard_msgsGetSafetyModeResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsGetSafetyModeResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsGetSafetyModeResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsGetSafetyModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsGetSafetyModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsGetSafetyModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsGetSafetyModeResponse value = readRos1Ur_dashboard_msgsGetSafetyModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsGetSafetyModeResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsGetSafetyModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Ur_dashboard_msgsSafetyMode part0 = value.safety_mode;
        writeRos1Ur_dashboard_msgsSafetyMode(writer, part0);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsGetSafetyModeResponse readRos1Ur_dashboard_msgsGetSafetyModeResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsGetSafetyModeResponse value = new Ros1Ur_dashboard_msgsGetSafetyModeResponse();
        value.safety_mode = readRos1Ur_dashboard_msgsSafetyMode(reader);
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsIsInRemoteControlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/IsInRemoteControlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Ur_dashboard_msgsIsInRemoteControlRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsIsInRemoteControlRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsIsInRemoteControlRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsIsInRemoteControlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsIsInRemoteControlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsIsInRemoteControlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsIsInRemoteControlRequest value = readRos1Ur_dashboard_msgsIsInRemoteControlRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsIsInRemoteControlRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsIsInRemoteControlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Ur_dashboard_msgsIsInRemoteControlRequest readRos1Ur_dashboard_msgsIsInRemoteControlRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsIsInRemoteControlRequest value = new Ros1Ur_dashboard_msgsIsInRemoteControlRequest();
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsIsInRemoteControlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/IsInRemoteControlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public String answer = "";
        public boolean in_remote_control = false;
        public boolean success = false;

        public Ros1Ur_dashboard_msgsIsInRemoteControlResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsIsInRemoteControlResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsIsInRemoteControlResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsIsInRemoteControlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsIsInRemoteControlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsIsInRemoteControlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsIsInRemoteControlResponse value = readRos1Ur_dashboard_msgsIsInRemoteControlResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsIsInRemoteControlResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsIsInRemoteControlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.in_remote_control;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsIsInRemoteControlResponse readRos1Ur_dashboard_msgsIsInRemoteControlResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsIsInRemoteControlResponse value = new Ros1Ur_dashboard_msgsIsInRemoteControlResponse();
        value.answer = readText(reader, 256);
        value.in_remote_control = readBool(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsIsProgramRunningRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/IsProgramRunningRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Ur_dashboard_msgsIsProgramRunningRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsIsProgramRunningRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsIsProgramRunningRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsIsProgramRunningRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsIsProgramRunningRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsIsProgramRunningRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsIsProgramRunningRequest value = readRos1Ur_dashboard_msgsIsProgramRunningRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsIsProgramRunningRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsIsProgramRunningRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Ur_dashboard_msgsIsProgramRunningRequest readRos1Ur_dashboard_msgsIsProgramRunningRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsIsProgramRunningRequest value = new Ros1Ur_dashboard_msgsIsProgramRunningRequest();
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsIsProgramRunningResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/IsProgramRunningResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public String answer = "";
        public boolean program_running = false;
        public boolean success = false;

        public Ros1Ur_dashboard_msgsIsProgramRunningResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsIsProgramRunningResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsIsProgramRunningResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsIsProgramRunningResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsIsProgramRunningResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsIsProgramRunningResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsIsProgramRunningResponse value = readRos1Ur_dashboard_msgsIsProgramRunningResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsIsProgramRunningResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsIsProgramRunningResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.program_running;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsIsProgramRunningResponse readRos1Ur_dashboard_msgsIsProgramRunningResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsIsProgramRunningResponse value = new Ros1Ur_dashboard_msgsIsProgramRunningResponse();
        value.answer = readText(reader, 256);
        value.program_running = readBool(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsIsProgramSavedRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/IsProgramSavedRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Ur_dashboard_msgsIsProgramSavedRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsIsProgramSavedRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsIsProgramSavedRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsIsProgramSavedRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsIsProgramSavedRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsIsProgramSavedRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsIsProgramSavedRequest value = readRos1Ur_dashboard_msgsIsProgramSavedRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsIsProgramSavedRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsIsProgramSavedRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Ur_dashboard_msgsIsProgramSavedRequest readRos1Ur_dashboard_msgsIsProgramSavedRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsIsProgramSavedRequest value = new Ros1Ur_dashboard_msgsIsProgramSavedRequest();
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsIsProgramSavedResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/IsProgramSavedResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 522;
        public String answer = "";
        public String program_name = "";
        public boolean program_saved = false;
        public boolean success = false;

        public Ros1Ur_dashboard_msgsIsProgramSavedResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsIsProgramSavedResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsIsProgramSavedResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsIsProgramSavedResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsIsProgramSavedResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsIsProgramSavedResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsIsProgramSavedResponse value = readRos1Ur_dashboard_msgsIsProgramSavedResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsIsProgramSavedResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsIsProgramSavedResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        String part1 = value.program_name;
        writeText(writer, part1, 256);
        boolean part2 = value.program_saved;
        writer.integer(part2 ? 1 : 0, 1, false);
        boolean part3 = value.success;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsIsProgramSavedResponse readRos1Ur_dashboard_msgsIsProgramSavedResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsIsProgramSavedResponse value = new Ros1Ur_dashboard_msgsIsProgramSavedResponse();
        value.answer = readText(reader, 256);
        value.program_name = readText(reader, 256);
        value.program_saved = readBool(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsLoadRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/LoadRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String filename = "";

        public Ros1Ur_dashboard_msgsLoadRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsLoadRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsLoadRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsLoadRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsLoadRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsLoadRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsLoadRequest value = readRos1Ur_dashboard_msgsLoadRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsLoadRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsLoadRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.filename;
        writeText(writer, part0, 256);
    }

    private static Ros1Ur_dashboard_msgsLoadRequest readRos1Ur_dashboard_msgsLoadRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsLoadRequest value = new Ros1Ur_dashboard_msgsLoadRequest();
        value.filename = readText(reader, 256);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsLoadResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/LoadResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String answer = "";
        public boolean success = false;

        public Ros1Ur_dashboard_msgsLoadResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsLoadResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsLoadResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsLoadResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsLoadResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsLoadResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsLoadResponse value = readRos1Ur_dashboard_msgsLoadResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsLoadResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsLoadResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsLoadResponse readRos1Ur_dashboard_msgsLoadResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsLoadResponse value = new Ros1Ur_dashboard_msgsLoadResponse();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsPopupRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/PopupRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String message = "";

        public Ros1Ur_dashboard_msgsPopupRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsPopupRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsPopupRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsPopupRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsPopupRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsPopupRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsPopupRequest value = readRos1Ur_dashboard_msgsPopupRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsPopupRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsPopupRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.message;
        writeText(writer, part0, 256);
    }

    private static Ros1Ur_dashboard_msgsPopupRequest readRos1Ur_dashboard_msgsPopupRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsPopupRequest value = new Ros1Ur_dashboard_msgsPopupRequest();
        value.message = readText(reader, 256);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsPopupResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/PopupResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String answer = "";
        public boolean success = false;

        public Ros1Ur_dashboard_msgsPopupResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsPopupResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsPopupResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsPopupResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsPopupResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsPopupResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsPopupResponse value = readRos1Ur_dashboard_msgsPopupResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsPopupResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsPopupResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsPopupResponse readRos1Ur_dashboard_msgsPopupResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsPopupResponse value = new Ros1Ur_dashboard_msgsPopupResponse();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsRawRequestRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/RawRequestRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String query = "";

        public Ros1Ur_dashboard_msgsRawRequestRequest()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsRawRequestRequest> CODEC = new Codec<Ros1Ur_dashboard_msgsRawRequestRequest>() {
            public byte[] encode(Ros1Ur_dashboard_msgsRawRequestRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsRawRequestRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsRawRequestRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsRawRequestRequest value = readRos1Ur_dashboard_msgsRawRequestRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsRawRequestRequest(Codecs.Writer writer, Ros1Ur_dashboard_msgsRawRequestRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.query;
        writeText(writer, part0, 256);
    }

    private static Ros1Ur_dashboard_msgsRawRequestRequest readRos1Ur_dashboard_msgsRawRequestRequest(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsRawRequestRequest value = new Ros1Ur_dashboard_msgsRawRequestRequest();
        value.query = readText(reader, 256);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsRawRequestResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/RawRequestResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String answer = "";

        public Ros1Ur_dashboard_msgsRawRequestResponse()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsRawRequestResponse> CODEC = new Codec<Ros1Ur_dashboard_msgsRawRequestResponse>() {
            public byte[] encode(Ros1Ur_dashboard_msgsRawRequestResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsRawRequestResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsRawRequestResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsRawRequestResponse value = readRos1Ur_dashboard_msgsRawRequestResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsRawRequestResponse(Codecs.Writer writer, Ros1Ur_dashboard_msgsRawRequestResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
    }

    private static Ros1Ur_dashboard_msgsRawRequestResponse readRos1Ur_dashboard_msgsRawRequestResponse(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsRawRequestResponse value = new Ros1Ur_dashboard_msgsRawRequestResponse();
        value.answer = readText(reader, 256);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsSetModeGoal
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/SetModeGoal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        public Ros1Ur_dashboard_msgsRobotMode target_robot_mode = new Ros1Ur_dashboard_msgsRobotMode();
        public boolean stop_program = false;
        public boolean play_program = false;

        public Ros1Ur_dashboard_msgsSetModeGoal()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsSetModeGoal> CODEC = new Codec<Ros1Ur_dashboard_msgsSetModeGoal>() {
            public byte[] encode(Ros1Ur_dashboard_msgsSetModeGoal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsSetModeGoal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsSetModeGoal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsSetModeGoal value = readRos1Ur_dashboard_msgsSetModeGoal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsSetModeGoal(Codecs.Writer writer, Ros1Ur_dashboard_msgsSetModeGoal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Ur_dashboard_msgsRobotMode part0 = value.target_robot_mode;
        writeRos1Ur_dashboard_msgsRobotMode(writer, part0);
        boolean part1 = value.stop_program;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.play_program;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_dashboard_msgsSetModeGoal readRos1Ur_dashboard_msgsSetModeGoal(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsSetModeGoal value = new Ros1Ur_dashboard_msgsSetModeGoal();
        value.target_robot_mode = readRos1Ur_dashboard_msgsRobotMode(reader);
        value.stop_program = readBool(reader);
        value.play_program = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsSetModeResult
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/SetModeResult";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String message = "";

        public Ros1Ur_dashboard_msgsSetModeResult()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsSetModeResult> CODEC = new Codec<Ros1Ur_dashboard_msgsSetModeResult>() {
            public byte[] encode(Ros1Ur_dashboard_msgsSetModeResult value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsSetModeResult(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsSetModeResult decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsSetModeResult value = readRos1Ur_dashboard_msgsSetModeResult(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsSetModeResult(Codecs.Writer writer, Ros1Ur_dashboard_msgsSetModeResult value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.message;
        writeText(writer, part1, 256);
    }

    private static Ros1Ur_dashboard_msgsSetModeResult readRos1Ur_dashboard_msgsSetModeResult(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsSetModeResult value = new Ros1Ur_dashboard_msgsSetModeResult();
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        return value;
    }

    public static final class Ros1Ur_dashboard_msgsSetModeFeedback
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/SetModeFeedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte current_robot_mode = 0;
        public byte current_safety_mode = 0;

        public Ros1Ur_dashboard_msgsSetModeFeedback()
        {
        }

        public static final Codec<Ros1Ur_dashboard_msgsSetModeFeedback> CODEC = new Codec<Ros1Ur_dashboard_msgsSetModeFeedback>() {
            public byte[] encode(Ros1Ur_dashboard_msgsSetModeFeedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_dashboard_msgsSetModeFeedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_dashboard_msgsSetModeFeedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_dashboard_msgsSetModeFeedback value = readRos1Ur_dashboard_msgsSetModeFeedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_dashboard_msgsSetModeFeedback(Codecs.Writer writer, Ros1Ur_dashboard_msgsSetModeFeedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.current_robot_mode;
        writer.integer(part0, 1, true);
        byte part1 = value.current_safety_mode;
        writer.integer(part1, 1, true);
    }

    private static Ros1Ur_dashboard_msgsSetModeFeedback readRos1Ur_dashboard_msgsSetModeFeedback(Codecs.Reader reader)
    {
        Ros1Ur_dashboard_msgsSetModeFeedback value = new Ros1Ur_dashboard_msgsSetModeFeedback();
        value.current_robot_mode = (byte)reader.integer(1, true);
        value.current_safety_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Ur_msgsAnalog
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/Analog";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int pin = 0;
        public int domain = 0;
        public float state = 0;

        public Ros1Ur_msgsAnalog()
        {
        }

        public static final Codec<Ros1Ur_msgsAnalog> CODEC = new Codec<Ros1Ur_msgsAnalog>() {
            public byte[] encode(Ros1Ur_msgsAnalog value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsAnalog(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsAnalog decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsAnalog value = readRos1Ur_msgsAnalog(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsAnalog(Codecs.Writer writer, Ros1Ur_msgsAnalog value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pin;
        writer.integer(part0, 1, false);
        int part1 = value.domain;
        writer.integer(part1, 1, false);
        float part2 = value.state;
        writer.f32(part2);
    }

    private static Ros1Ur_msgsAnalog readRos1Ur_msgsAnalog(Codecs.Reader reader)
    {
        Ros1Ur_msgsAnalog value = new Ros1Ur_msgsAnalog();
        value.pin = (int)reader.integer(1, false);
        value.domain = (int)reader.integer(1, false);
        value.state = reader.f32();
        return value;
    }

    public static final class Ros1Ur_msgsDigital
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/Digital";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public int pin = 0;
        public boolean state = false;

        public Ros1Ur_msgsDigital()
        {
        }

        public static final Codec<Ros1Ur_msgsDigital> CODEC = new Codec<Ros1Ur_msgsDigital>() {
            public byte[] encode(Ros1Ur_msgsDigital value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsDigital(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsDigital decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsDigital value = readRos1Ur_msgsDigital(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsDigital(Codecs.Writer writer, Ros1Ur_msgsDigital value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pin;
        writer.integer(part0, 1, false);
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_msgsDigital readRos1Ur_msgsDigital(Codecs.Reader reader)
    {
        Ros1Ur_msgsDigital value = new Ros1Ur_msgsDigital();
        value.pin = (int)reader.integer(1, false);
        value.state = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_msgsGetRobotSoftwareVersionRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/GetRobotSoftwareVersionRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Ur_msgsGetRobotSoftwareVersionRequest()
        {
        }

        public static final Codec<Ros1Ur_msgsGetRobotSoftwareVersionRequest> CODEC = new Codec<Ros1Ur_msgsGetRobotSoftwareVersionRequest>() {
            public byte[] encode(Ros1Ur_msgsGetRobotSoftwareVersionRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsGetRobotSoftwareVersionRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsGetRobotSoftwareVersionRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsGetRobotSoftwareVersionRequest value = readRos1Ur_msgsGetRobotSoftwareVersionRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsGetRobotSoftwareVersionRequest(Codecs.Writer writer, Ros1Ur_msgsGetRobotSoftwareVersionRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Ur_msgsGetRobotSoftwareVersionRequest readRos1Ur_msgsGetRobotSoftwareVersionRequest(Codecs.Reader reader)
    {
        Ros1Ur_msgsGetRobotSoftwareVersionRequest value = new Ros1Ur_msgsGetRobotSoftwareVersionRequest();
        return value;
    }

    public static final class Ros1Ur_msgsGetRobotSoftwareVersionResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/GetRobotSoftwareVersionResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public long major = 0;
        public long minor = 0;
        public long bugfix = 0;
        public long build = 0;

        public Ros1Ur_msgsGetRobotSoftwareVersionResponse()
        {
        }

        public static final Codec<Ros1Ur_msgsGetRobotSoftwareVersionResponse> CODEC = new Codec<Ros1Ur_msgsGetRobotSoftwareVersionResponse>() {
            public byte[] encode(Ros1Ur_msgsGetRobotSoftwareVersionResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsGetRobotSoftwareVersionResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsGetRobotSoftwareVersionResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsGetRobotSoftwareVersionResponse value = readRos1Ur_msgsGetRobotSoftwareVersionResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsGetRobotSoftwareVersionResponse(Codecs.Writer writer, Ros1Ur_msgsGetRobotSoftwareVersionResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.major;
        writer.integer(part0, 4, false);
        long part1 = value.minor;
        writer.integer(part1, 4, false);
        long part2 = value.bugfix;
        writer.integer(part2, 4, false);
        long part3 = value.build;
        writer.integer(part3, 4, false);
    }

    private static Ros1Ur_msgsGetRobotSoftwareVersionResponse readRos1Ur_msgsGetRobotSoftwareVersionResponse(Codecs.Reader reader)
    {
        Ros1Ur_msgsGetRobotSoftwareVersionResponse value = new Ros1Ur_msgsGetRobotSoftwareVersionResponse();
        value.major = reader.integer(4, false);
        value.minor = reader.integer(4, false);
        value.bugfix = reader.integer(4, false);
        value.build = reader.integer(4, false);
        return value;
    }

    public static final class Ros1Ur_msgsIOStates
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/IOStates";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 404;
        public Ros1Ur_msgsDigital[] digital_in_states = new Ros1Ur_msgsDigital[0];
        public Ros1Ur_msgsDigital[] digital_out_states = new Ros1Ur_msgsDigital[0];
        public Ros1Ur_msgsDigital[] flag_states = new Ros1Ur_msgsDigital[0];
        public Ros1Ur_msgsAnalog[] analog_in_states = new Ros1Ur_msgsAnalog[0];
        public Ros1Ur_msgsAnalog[] analog_out_states = new Ros1Ur_msgsAnalog[0];

        public Ros1Ur_msgsIOStates()
        {
        }

        public static final Codec<Ros1Ur_msgsIOStates> CODEC = new Codec<Ros1Ur_msgsIOStates>() {
            public byte[] encode(Ros1Ur_msgsIOStates value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsIOStates(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsIOStates decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsIOStates value = readRos1Ur_msgsIOStates(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsIOStates(Codecs.Writer writer, Ros1Ur_msgsIOStates value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Ur_msgsDigital[] part0 = value.digital_in_states;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos1Ur_msgsDigital(writer, part0[i]);
        }
        Ros1Ur_msgsDigital[] part1 = value.digital_out_states;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos1Ur_msgsDigital(writer, part1[i]);
        }
        Ros1Ur_msgsDigital[] part2 = value.flag_states;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos1Ur_msgsDigital(writer, part2[i]);
        }
        Ros1Ur_msgsAnalog[] part3 = value.analog_in_states;
        if(part3 == null || part3.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos1Ur_msgsAnalog(writer, part3[i]);
        }
        Ros1Ur_msgsAnalog[] part4 = value.analog_out_states;
        if(part4 == null || part4.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeRos1Ur_msgsAnalog(writer, part4[i]);
        }
    }

    private static Ros1Ur_msgsIOStates readRos1Ur_msgsIOStates(Codecs.Reader reader)
    {
        Ros1Ur_msgsIOStates value = new Ros1Ur_msgsIOStates();
        value.digital_in_states = new Ros1Ur_msgsDigital[readCount(reader, 32, 2)];
        for(int i = 0; i < value.digital_in_states.length; ++i)
            value.digital_in_states[i] = readRos1Ur_msgsDigital(reader);
        value.digital_out_states = new Ros1Ur_msgsDigital[readCount(reader, 32, 2)];
        for(int i = 0; i < value.digital_out_states.length; ++i)
            value.digital_out_states[i] = readRos1Ur_msgsDigital(reader);
        value.flag_states = new Ros1Ur_msgsDigital[readCount(reader, 32, 2)];
        for(int i = 0; i < value.flag_states.length; ++i)
            value.flag_states[i] = readRos1Ur_msgsDigital(reader);
        value.analog_in_states = new Ros1Ur_msgsAnalog[readCount(reader, 16, 6)];
        for(int i = 0; i < value.analog_in_states.length; ++i)
            value.analog_in_states[i] = readRos1Ur_msgsAnalog(reader);
        value.analog_out_states = new Ros1Ur_msgsAnalog[readCount(reader, 16, 6)];
        for(int i = 0; i < value.analog_out_states.length; ++i)
            value.analog_out_states[i] = readRos1Ur_msgsAnalog(reader);
        return value;
    }

    public static final class Ros1Ur_msgsMasterboardDataMsg
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/MasterboardDataMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f";
        public static final int MIN_WIRE_BYTES = 62, MAX_WIRE_BYTES = 62;
        public long digital_input_bits = 0;
        public long digital_output_bits = 0;
        public byte analog_input_range0 = 0;
        public byte analog_input_range1 = 0;
        public double analog_input0 = 0;
        public double analog_input1 = 0;
        public byte analog_output_domain0 = 0;
        public byte analog_output_domain1 = 0;
        public double analog_output0 = 0;
        public double analog_output1 = 0;
        public float masterboard_temperature = 0;
        public float robot_voltage_48V = 0;
        public float robot_current = 0;
        public float master_io_current = 0;
        public int master_safety_state = 0;
        public int master_onoff_state = 0;

        public Ros1Ur_msgsMasterboardDataMsg()
        {
        }

        public static final Codec<Ros1Ur_msgsMasterboardDataMsg> CODEC = new Codec<Ros1Ur_msgsMasterboardDataMsg>() {
            public byte[] encode(Ros1Ur_msgsMasterboardDataMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsMasterboardDataMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsMasterboardDataMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsMasterboardDataMsg value = readRos1Ur_msgsMasterboardDataMsg(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsMasterboardDataMsg(Codecs.Writer writer, Ros1Ur_msgsMasterboardDataMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.digital_input_bits;
        writer.integer(part0, 4, false);
        long part1 = value.digital_output_bits;
        writer.integer(part1, 4, false);
        byte part2 = value.analog_input_range0;
        writer.integer(part2, 1, true);
        byte part3 = value.analog_input_range1;
        writer.integer(part3, 1, true);
        double part4 = value.analog_input0;
        writer.f64(part4);
        double part5 = value.analog_input1;
        writer.f64(part5);
        byte part6 = value.analog_output_domain0;
        writer.integer(part6, 1, true);
        byte part7 = value.analog_output_domain1;
        writer.integer(part7, 1, true);
        double part8 = value.analog_output0;
        writer.f64(part8);
        double part9 = value.analog_output1;
        writer.f64(part9);
        float part10 = value.masterboard_temperature;
        writer.f32(part10);
        float part11 = value.robot_voltage_48V;
        writer.f32(part11);
        float part12 = value.robot_current;
        writer.f32(part12);
        float part13 = value.master_io_current;
        writer.f32(part13);
        int part14 = value.master_safety_state;
        writer.integer(part14, 1, false);
        int part15 = value.master_onoff_state;
        writer.integer(part15, 1, false);
    }

    private static Ros1Ur_msgsMasterboardDataMsg readRos1Ur_msgsMasterboardDataMsg(Codecs.Reader reader)
    {
        Ros1Ur_msgsMasterboardDataMsg value = new Ros1Ur_msgsMasterboardDataMsg();
        value.digital_input_bits = reader.integer(4, false);
        value.digital_output_bits = reader.integer(4, false);
        value.analog_input_range0 = (byte)reader.integer(1, true);
        value.analog_input_range1 = (byte)reader.integer(1, true);
        value.analog_input0 = reader.f64();
        value.analog_input1 = reader.f64();
        value.analog_output_domain0 = (byte)reader.integer(1, true);
        value.analog_output_domain1 = (byte)reader.integer(1, true);
        value.analog_output0 = reader.f64();
        value.analog_output1 = reader.f64();
        value.masterboard_temperature = reader.f32();
        value.robot_voltage_48V = reader.f32();
        value.robot_current = reader.f32();
        value.master_io_current = reader.f32();
        value.master_safety_state = (int)reader.integer(1, false);
        value.master_onoff_state = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros1Ur_msgsRobotModeDataMsg
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/RobotModeDataMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231";
        public static final int MIN_WIRE_BYTES = 15, MAX_WIRE_BYTES = 15;
        public long timestamp = 0;
        public boolean is_robot_connected = false;
        public boolean is_real_robot_enabled = false;
        public boolean is_power_on_robot = false;
        public boolean is_emergency_stopped = false;
        public boolean is_protective_stopped = false;
        public boolean is_program_running = false;
        public boolean is_program_paused = false;

        public Ros1Ur_msgsRobotModeDataMsg()
        {
        }

        public static final Codec<Ros1Ur_msgsRobotModeDataMsg> CODEC = new Codec<Ros1Ur_msgsRobotModeDataMsg>() {
            public byte[] encode(Ros1Ur_msgsRobotModeDataMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsRobotModeDataMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsRobotModeDataMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsRobotModeDataMsg value = readRos1Ur_msgsRobotModeDataMsg(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsRobotModeDataMsg(Codecs.Writer writer, Ros1Ur_msgsRobotModeDataMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.timestamp;
        writer.integer(part0, 8, false);
        boolean part1 = value.is_robot_connected;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.is_real_robot_enabled;
        writer.integer(part2 ? 1 : 0, 1, false);
        boolean part3 = value.is_power_on_robot;
        writer.integer(part3 ? 1 : 0, 1, false);
        boolean part4 = value.is_emergency_stopped;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.is_protective_stopped;
        writer.integer(part5 ? 1 : 0, 1, false);
        boolean part6 = value.is_program_running;
        writer.integer(part6 ? 1 : 0, 1, false);
        boolean part7 = value.is_program_paused;
        writer.integer(part7 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_msgsRobotModeDataMsg readRos1Ur_msgsRobotModeDataMsg(Codecs.Reader reader)
    {
        Ros1Ur_msgsRobotModeDataMsg value = new Ros1Ur_msgsRobotModeDataMsg();
        value.timestamp = reader.integer(8, false);
        value.is_robot_connected = readBool(reader);
        value.is_real_robot_enabled = readBool(reader);
        value.is_power_on_robot = readBool(reader);
        value.is_emergency_stopped = readBool(reader);
        value.is_protective_stopped = readBool(reader);
        value.is_program_running = readBool(reader);
        value.is_program_paused = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_msgsRobotStateRTMsg
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/RobotStateRTMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7";
        public static final int MIN_WIRE_BYTES = 96, MAX_WIRE_BYTES = 768;
        public double time = 0;
        public double[] q_target = new double[0];
        public double[] qd_target = new double[0];
        public double[] qdd_target = new double[0];
        public double[] i_target = new double[0];
        public double[] m_target = new double[0];
        public double[] q_actual = new double[0];
        public double[] qd_actual = new double[0];
        public double[] i_actual = new double[0];
        public double[] tool_acc_values = new double[0];
        public double[] tcp_force = new double[0];
        public double[] tool_vector = new double[0];
        public double[] tcp_speed = new double[0];
        public double digital_input_bits = 0;
        public double[] motor_temperatures = new double[0];
        public double controller_timer = 0;
        public double test_value = 0;
        public double robot_mode = 0;
        public double[] joint_modes = new double[0];

        public Ros1Ur_msgsRobotStateRTMsg()
        {
        }

        public static final Codec<Ros1Ur_msgsRobotStateRTMsg> CODEC = new Codec<Ros1Ur_msgsRobotStateRTMsg>() {
            public byte[] encode(Ros1Ur_msgsRobotStateRTMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsRobotStateRTMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsRobotStateRTMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsRobotStateRTMsg value = readRos1Ur_msgsRobotStateRTMsg(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsRobotStateRTMsg(Codecs.Writer writer, Ros1Ur_msgsRobotStateRTMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.time;
        writer.f64(part0);
        double[] part1 = value.q_target;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.qd_target;
        if(part2 == null || part2.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.qdd_target;
        if(part3 == null || part3.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.i_target;
        if(part4 == null || part4.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.m_target;
        if(part5 == null || part5.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double[] part6 = value.q_actual;
        if(part6 == null || part6.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part6.length, 4, false);
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        double[] part7 = value.qd_actual;
        if(part7 == null || part7.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f64(part7[i]);
        }
        double[] part8 = value.i_actual;
        if(part8 == null || part8.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part8.length, 4, false);
        for(int i = 0; i < part8.length; ++i)
        {
            writer.f64(part8[i]);
        }
        double[] part9 = value.tool_acc_values;
        if(part9 == null || part9.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part9.length, 4, false);
        for(int i = 0; i < part9.length; ++i)
        {
            writer.f64(part9[i]);
        }
        double[] part10 = value.tcp_force;
        if(part10 == null || part10.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part10.length, 4, false);
        for(int i = 0; i < part10.length; ++i)
        {
            writer.f64(part10[i]);
        }
        double[] part11 = value.tool_vector;
        if(part11 == null || part11.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part11.length, 4, false);
        for(int i = 0; i < part11.length; ++i)
        {
            writer.f64(part11[i]);
        }
        double[] part12 = value.tcp_speed;
        if(part12 == null || part12.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part12.length, 4, false);
        for(int i = 0; i < part12.length; ++i)
        {
            writer.f64(part12[i]);
        }
        double part13 = value.digital_input_bits;
        writer.f64(part13);
        double[] part14 = value.motor_temperatures;
        if(part14 == null || part14.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part14.length, 4, false);
        for(int i = 0; i < part14.length; ++i)
        {
            writer.f64(part14[i]);
        }
        double part15 = value.controller_timer;
        writer.f64(part15);
        double part16 = value.test_value;
        writer.f64(part16);
        double part17 = value.robot_mode;
        writer.f64(part17);
        double[] part18 = value.joint_modes;
        if(part18 == null || part18.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part18.length, 4, false);
        for(int i = 0; i < part18.length; ++i)
        {
            writer.f64(part18[i]);
        }
    }

    private static Ros1Ur_msgsRobotStateRTMsg readRos1Ur_msgsRobotStateRTMsg(Codecs.Reader reader)
    {
        Ros1Ur_msgsRobotStateRTMsg value = new Ros1Ur_msgsRobotStateRTMsg();
        value.time = reader.f64();
        value.q_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.q_target.length; ++i)
            value.q_target[i] = reader.f64();
        value.qd_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.qd_target.length; ++i)
            value.qd_target[i] = reader.f64();
        value.qdd_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.qdd_target.length; ++i)
            value.qdd_target[i] = reader.f64();
        value.i_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.i_target.length; ++i)
            value.i_target[i] = reader.f64();
        value.m_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.m_target.length; ++i)
            value.m_target[i] = reader.f64();
        value.q_actual = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.q_actual.length; ++i)
            value.q_actual[i] = reader.f64();
        value.qd_actual = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.qd_actual.length; ++i)
            value.qd_actual[i] = reader.f64();
        value.i_actual = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.i_actual.length; ++i)
            value.i_actual[i] = reader.f64();
        value.tool_acc_values = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.tool_acc_values.length; ++i)
            value.tool_acc_values[i] = reader.f64();
        value.tcp_force = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.tcp_force.length; ++i)
            value.tcp_force[i] = reader.f64();
        value.tool_vector = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.tool_vector.length; ++i)
            value.tool_vector[i] = reader.f64();
        value.tcp_speed = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.tcp_speed.length; ++i)
            value.tcp_speed[i] = reader.f64();
        value.digital_input_bits = reader.f64();
        value.motor_temperatures = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.motor_temperatures.length; ++i)
            value.motor_temperatures[i] = reader.f64();
        value.controller_timer = reader.f64();
        value.test_value = reader.f64();
        value.robot_mode = reader.f64();
        value.joint_modes = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.joint_modes.length; ++i)
            value.joint_modes[i] = reader.f64();
        return value;
    }

    public static final class Ros1Ur_msgsSetAnalogOutputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetAnalogOutputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public Ros1Ur_msgsAnalog data = new Ros1Ur_msgsAnalog();

        public Ros1Ur_msgsSetAnalogOutputRequest()
        {
        }

        public static final Codec<Ros1Ur_msgsSetAnalogOutputRequest> CODEC = new Codec<Ros1Ur_msgsSetAnalogOutputRequest>() {
            public byte[] encode(Ros1Ur_msgsSetAnalogOutputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetAnalogOutputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetAnalogOutputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetAnalogOutputRequest value = readRos1Ur_msgsSetAnalogOutputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetAnalogOutputRequest(Codecs.Writer writer, Ros1Ur_msgsSetAnalogOutputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Ur_msgsAnalog part0 = value.data;
        writeRos1Ur_msgsAnalog(writer, part0);
    }

    private static Ros1Ur_msgsSetAnalogOutputRequest readRos1Ur_msgsSetAnalogOutputRequest(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetAnalogOutputRequest value = new Ros1Ur_msgsSetAnalogOutputRequest();
        value.data = readRos1Ur_msgsAnalog(reader);
        return value;
    }

    public static final class Ros1Ur_msgsSetAnalogOutputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetAnalogOutputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Ur_msgsSetAnalogOutputResponse()
        {
        }

        public static final Codec<Ros1Ur_msgsSetAnalogOutputResponse> CODEC = new Codec<Ros1Ur_msgsSetAnalogOutputResponse>() {
            public byte[] encode(Ros1Ur_msgsSetAnalogOutputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetAnalogOutputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetAnalogOutputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetAnalogOutputResponse value = readRos1Ur_msgsSetAnalogOutputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetAnalogOutputResponse(Codecs.Writer writer, Ros1Ur_msgsSetAnalogOutputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_msgsSetAnalogOutputResponse readRos1Ur_msgsSetAnalogOutputResponse(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetAnalogOutputResponse value = new Ros1Ur_msgsSetAnalogOutputResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_msgsSetForceModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetForceModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b";
        public static final int MIN_WIRE_BYTES = 207, MAX_WIRE_BYTES = 335;
        public Ros1Geometry_msgsPoseStamped task_frame = new Ros1Geometry_msgsPoseStamped();
        public boolean selection_vector_x = false;
        public boolean selection_vector_y = false;
        public boolean selection_vector_z = false;
        public boolean selection_vector_rx = false;
        public boolean selection_vector_ry = false;
        public boolean selection_vector_rz = false;
        public Ros1Geometry_msgsWrench wrench = new Ros1Geometry_msgsWrench();
        public int type = 0;
        public Ros1Geometry_msgsTwist speed_limits = new Ros1Geometry_msgsTwist();
        public float[] deviation_limits = new float[6];
        public float damping_factor = 0;
        public float gain_scaling = 0;

        public Ros1Ur_msgsSetForceModeRequest()
        {
        }

        public static final Codec<Ros1Ur_msgsSetForceModeRequest> CODEC = new Codec<Ros1Ur_msgsSetForceModeRequest>() {
            public byte[] encode(Ros1Ur_msgsSetForceModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetForceModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetForceModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetForceModeRequest value = readRos1Ur_msgsSetForceModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetForceModeRequest(Codecs.Writer writer, Ros1Ur_msgsSetForceModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPoseStamped part0 = value.task_frame;
        writeRos1Geometry_msgsPoseStamped(writer, part0);
        boolean part1 = value.selection_vector_x;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.selection_vector_y;
        writer.integer(part2 ? 1 : 0, 1, false);
        boolean part3 = value.selection_vector_z;
        writer.integer(part3 ? 1 : 0, 1, false);
        boolean part4 = value.selection_vector_rx;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.selection_vector_ry;
        writer.integer(part5 ? 1 : 0, 1, false);
        boolean part6 = value.selection_vector_rz;
        writer.integer(part6 ? 1 : 0, 1, false);
        Ros1Geometry_msgsWrench part7 = value.wrench;
        writeRos1Geometry_msgsWrench(writer, part7);
        int part8 = value.type;
        writer.integer(part8, 1, false);
        Ros1Geometry_msgsTwist part9 = value.speed_limits;
        writeRos1Geometry_msgsTwist(writer, part9);
        float[] part10 = value.deviation_limits;
        if(part10 == null || part10.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part10.length; ++i)
        {
            writer.f32(part10[i]);
        }
        float part11 = value.damping_factor;
        writer.f32(part11);
        float part12 = value.gain_scaling;
        writer.f32(part12);
    }

    private static Ros1Ur_msgsSetForceModeRequest readRos1Ur_msgsSetForceModeRequest(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetForceModeRequest value = new Ros1Ur_msgsSetForceModeRequest();
        value.task_frame = readRos1Geometry_msgsPoseStamped(reader);
        value.selection_vector_x = readBool(reader);
        value.selection_vector_y = readBool(reader);
        value.selection_vector_z = readBool(reader);
        value.selection_vector_rx = readBool(reader);
        value.selection_vector_ry = readBool(reader);
        value.selection_vector_rz = readBool(reader);
        value.wrench = readRos1Geometry_msgsWrench(reader);
        value.type = (int)reader.integer(1, false);
        value.speed_limits = readRos1Geometry_msgsTwist(reader);
        value.deviation_limits = new float[6];
        for(int i = 0; i < value.deviation_limits.length; ++i)
            value.deviation_limits[i] = reader.f32();
        value.damping_factor = reader.f32();
        value.gain_scaling = reader.f32();
        return value;
    }

    public static final class Ros1Ur_msgsSetForceModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetForceModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Ur_msgsSetForceModeResponse()
        {
        }

        public static final Codec<Ros1Ur_msgsSetForceModeResponse> CODEC = new Codec<Ros1Ur_msgsSetForceModeResponse>() {
            public byte[] encode(Ros1Ur_msgsSetForceModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetForceModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetForceModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetForceModeResponse value = readRos1Ur_msgsSetForceModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetForceModeResponse(Codecs.Writer writer, Ros1Ur_msgsSetForceModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_msgsSetForceModeResponse readRos1Ur_msgsSetForceModeResponse(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetForceModeResponse value = new Ros1Ur_msgsSetForceModeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_msgsSetIORequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetIORequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public byte fun = 0;
        public byte pin = 0;
        public float state = 0;

        public Ros1Ur_msgsSetIORequest()
        {
        }

        public static final Codec<Ros1Ur_msgsSetIORequest> CODEC = new Codec<Ros1Ur_msgsSetIORequest>() {
            public byte[] encode(Ros1Ur_msgsSetIORequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetIORequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetIORequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetIORequest value = readRos1Ur_msgsSetIORequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetIORequest(Codecs.Writer writer, Ros1Ur_msgsSetIORequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.fun;
        writer.integer(part0, 1, true);
        byte part1 = value.pin;
        writer.integer(part1, 1, true);
        float part2 = value.state;
        writer.f32(part2);
    }

    private static Ros1Ur_msgsSetIORequest readRos1Ur_msgsSetIORequest(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetIORequest value = new Ros1Ur_msgsSetIORequest();
        value.fun = (byte)reader.integer(1, true);
        value.pin = (byte)reader.integer(1, true);
        value.state = reader.f32();
        return value;
    }

    public static final class Ros1Ur_msgsSetIOResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetIOResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Ur_msgsSetIOResponse()
        {
        }

        public static final Codec<Ros1Ur_msgsSetIOResponse> CODEC = new Codec<Ros1Ur_msgsSetIOResponse>() {
            public byte[] encode(Ros1Ur_msgsSetIOResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetIOResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetIOResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetIOResponse value = readRos1Ur_msgsSetIOResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetIOResponse(Codecs.Writer writer, Ros1Ur_msgsSetIOResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_msgsSetIOResponse readRos1Ur_msgsSetIOResponse(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetIOResponse value = new Ros1Ur_msgsSetIOResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_msgsSetPayloadRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetPayloadRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;
        public float mass = 0;
        public Ros1Geometry_msgsVector3 center_of_gravity = new Ros1Geometry_msgsVector3();

        public Ros1Ur_msgsSetPayloadRequest()
        {
        }

        public static final Codec<Ros1Ur_msgsSetPayloadRequest> CODEC = new Codec<Ros1Ur_msgsSetPayloadRequest>() {
            public byte[] encode(Ros1Ur_msgsSetPayloadRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetPayloadRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetPayloadRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetPayloadRequest value = readRos1Ur_msgsSetPayloadRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetPayloadRequest(Codecs.Writer writer, Ros1Ur_msgsSetPayloadRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.mass;
        writer.f32(part0);
        Ros1Geometry_msgsVector3 part1 = value.center_of_gravity;
        writeRos1Geometry_msgsVector3(writer, part1);
    }

    private static Ros1Ur_msgsSetPayloadRequest readRos1Ur_msgsSetPayloadRequest(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetPayloadRequest value = new Ros1Ur_msgsSetPayloadRequest();
        value.mass = reader.f32();
        value.center_of_gravity = readRos1Geometry_msgsVector3(reader);
        return value;
    }

    public static final class Ros1Ur_msgsSetPayloadResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetPayloadResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Ur_msgsSetPayloadResponse()
        {
        }

        public static final Codec<Ros1Ur_msgsSetPayloadResponse> CODEC = new Codec<Ros1Ur_msgsSetPayloadResponse>() {
            public byte[] encode(Ros1Ur_msgsSetPayloadResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetPayloadResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetPayloadResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetPayloadResponse value = readRos1Ur_msgsSetPayloadResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetPayloadResponse(Codecs.Writer writer, Ros1Ur_msgsSetPayloadResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_msgsSetPayloadResponse readRos1Ur_msgsSetPayloadResponse(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetPayloadResponse value = new Ros1Ur_msgsSetPayloadResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_msgsSetSpeedSliderFractionRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetSpeedSliderFractionRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public double speed_slider_fraction = 0;

        public Ros1Ur_msgsSetSpeedSliderFractionRequest()
        {
        }

        public static final Codec<Ros1Ur_msgsSetSpeedSliderFractionRequest> CODEC = new Codec<Ros1Ur_msgsSetSpeedSliderFractionRequest>() {
            public byte[] encode(Ros1Ur_msgsSetSpeedSliderFractionRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetSpeedSliderFractionRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetSpeedSliderFractionRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetSpeedSliderFractionRequest value = readRos1Ur_msgsSetSpeedSliderFractionRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetSpeedSliderFractionRequest(Codecs.Writer writer, Ros1Ur_msgsSetSpeedSliderFractionRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.speed_slider_fraction;
        writer.f64(part0);
    }

    private static Ros1Ur_msgsSetSpeedSliderFractionRequest readRos1Ur_msgsSetSpeedSliderFractionRequest(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetSpeedSliderFractionRequest value = new Ros1Ur_msgsSetSpeedSliderFractionRequest();
        value.speed_slider_fraction = reader.f64();
        return value;
    }

    public static final class Ros1Ur_msgsSetSpeedSliderFractionResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/SetSpeedSliderFractionResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Ur_msgsSetSpeedSliderFractionResponse()
        {
        }

        public static final Codec<Ros1Ur_msgsSetSpeedSliderFractionResponse> CODEC = new Codec<Ros1Ur_msgsSetSpeedSliderFractionResponse>() {
            public byte[] encode(Ros1Ur_msgsSetSpeedSliderFractionResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsSetSpeedSliderFractionResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsSetSpeedSliderFractionResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsSetSpeedSliderFractionResponse value = readRos1Ur_msgsSetSpeedSliderFractionResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsSetSpeedSliderFractionResponse(Codecs.Writer writer, Ros1Ur_msgsSetSpeedSliderFractionResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Ur_msgsSetSpeedSliderFractionResponse readRos1Ur_msgsSetSpeedSliderFractionResponse(Codecs.Reader reader)
    {
        Ros1Ur_msgsSetSpeedSliderFractionResponse value = new Ros1Ur_msgsSetSpeedSliderFractionResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Ur_msgsToolDataMsg
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "ur_msgs/ToolDataMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        public byte analog_input_range2 = 0;
        public byte analog_input_range3 = 0;
        public double analog_input2 = 0;
        public double analog_input3 = 0;
        public float tool_voltage_48v = 0;
        public int tool_output_voltage = 0;
        public float tool_current = 0;
        public float tool_temperature = 0;
        public int tool_mode = 0;

        public Ros1Ur_msgsToolDataMsg()
        {
        }

        public static final Codec<Ros1Ur_msgsToolDataMsg> CODEC = new Codec<Ros1Ur_msgsToolDataMsg>() {
            public byte[] encode(Ros1Ur_msgsToolDataMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Ur_msgsToolDataMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Ur_msgsToolDataMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Ur_msgsToolDataMsg value = readRos1Ur_msgsToolDataMsg(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Ur_msgsToolDataMsg(Codecs.Writer writer, Ros1Ur_msgsToolDataMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.analog_input_range2;
        writer.integer(part0, 1, true);
        byte part1 = value.analog_input_range3;
        writer.integer(part1, 1, true);
        double part2 = value.analog_input2;
        writer.f64(part2);
        double part3 = value.analog_input3;
        writer.f64(part3);
        float part4 = value.tool_voltage_48v;
        writer.f32(part4);
        int part5 = value.tool_output_voltage;
        writer.integer(part5, 1, false);
        float part6 = value.tool_current;
        writer.f32(part6);
        float part7 = value.tool_temperature;
        writer.f32(part7);
        int part8 = value.tool_mode;
        writer.integer(part8, 1, false);
    }

    private static Ros1Ur_msgsToolDataMsg readRos1Ur_msgsToolDataMsg(Codecs.Reader reader)
    {
        Ros1Ur_msgsToolDataMsg value = new Ros1Ur_msgsToolDataMsg();
        value.analog_input_range2 = (byte)reader.integer(1, true);
        value.analog_input_range3 = (byte)reader.integer(1, true);
        value.analog_input2 = reader.f64();
        value.analog_input3 = reader.f64();
        value.tool_voltage_48v = reader.f32();
        value.tool_output_voltage = (int)reader.integer(1, false);
        value.tool_current = reader.f32();
        value.tool_temperature = reader.f32();
        value.tool_mode = (int)reader.integer(1, false);
        return value;
    }
}
