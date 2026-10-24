// @brief Complete original franka ros1 canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
package org.uwvm.franka.ros1;

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

    // @brief Own every original field of franka_example_controllers/JointTorqueComparison.
    // @details Canonical extent 176..176 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_example_controllersJointTorqueComparison
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_example_controllers/JointTorqueComparison";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254";
        public static final int MIN_WIRE_BYTES = 176, MAX_WIRE_BYTES = 176;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_example_controllers/JointTorqueComparison.tau_error; native type float64.
         * Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] tau_error = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_example_controllers/JointTorqueComparison.tau_commanded; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] tau_commanded = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_example_controllers/JointTorqueComparison.tau_measured; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] tau_measured = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_example_controllers/JointTorqueComparison.root_mean_square_error; native
         * type float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double root_mean_square_error = 0;

        public Ros1Franka_example_controllersJointTorqueComparison()
        {
        }

        public static final Codec<Ros1Franka_example_controllersJointTorqueComparison> CODEC =
            new Codec<Ros1Franka_example_controllersJointTorqueComparison>() {
                public byte[] encode(Ros1Franka_example_controllersJointTorqueComparison value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos1Franka_example_controllersJointTorqueComparison(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros1Franka_example_controllersJointTorqueComparison decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros1Franka_example_controllersJointTorqueComparison value = readRos1Franka_example_controllersJointTorqueComparison(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos1Franka_example_controllersJointTorqueComparison(Codecs.Writer writer,
                                                                                 Ros1Franka_example_controllersJointTorqueComparison value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.tau_error;
        if(part0 == null || part0.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.tau_commanded;
        if(part1 == null || part1.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.tau_measured;
        if(part2 == null || part2.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double part3 = value.root_mean_square_error;
        writer.f64(part3);
    }

    private static Ros1Franka_example_controllersJointTorqueComparison readRos1Franka_example_controllersJointTorqueComparison(Codecs.Reader reader)
    {
        Ros1Franka_example_controllersJointTorqueComparison value = new Ros1Franka_example_controllersJointTorqueComparison();
        value.tau_error = new double[7];
        for(int i = 0; i < value.tau_error.length; ++i)
            value.tau_error[i] = reader.f64();
        value.tau_commanded = new double[7];
        for(int i = 0; i < value.tau_commanded.length; ++i)
            value.tau_commanded[i] = reader.f64();
        value.tau_measured = new double[7];
        for(int i = 0; i < value.tau_measured.length; ++i)
            value.tau_measured[i] = reader.f64();
        value.root_mean_square_error = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_gripper/GraspEpsilon.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperGraspEpsilon
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/GraspEpsilon";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief [m]
         * @details Original franka_gripper/GraspEpsilon.inner; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double inner = 0;
        /**
         * @brief [m]
         * @details Original franka_gripper/GraspEpsilon.outer; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double outer = 0;

        public Ros1Franka_gripperGraspEpsilon()
        {
        }

        public static final Codec<Ros1Franka_gripperGraspEpsilon> CODEC = new Codec<Ros1Franka_gripperGraspEpsilon>() {
            public byte[] encode(Ros1Franka_gripperGraspEpsilon value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperGraspEpsilon(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperGraspEpsilon decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperGraspEpsilon value = readRos1Franka_gripperGraspEpsilon(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperGraspEpsilon(Codecs.Writer writer, Ros1Franka_gripperGraspEpsilon value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.inner;
        writer.f64(part0);
        double part1 = value.outer;
        writer.f64(part1);
    }

    private static Ros1Franka_gripperGraspEpsilon readRos1Franka_gripperGraspEpsilon(Codecs.Reader reader)
    {
        Ros1Franka_gripperGraspEpsilon value = new Ros1Franka_gripperGraspEpsilon();
        value.inner = reader.f64();
        value.outer = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_gripper/GraspGoal.
    // @details Canonical extent 40..40 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperGraspGoal
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/GraspGoal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;
        /**
         * @brief [m]
         * @details Original franka_gripper/GraspGoal.width; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double width = 0;
        /**
         * @brief Retain the complete original franka_gripper/GraspEpsilon field.
         * @details Original franka_gripper/GraspGoal.epsilon; native type franka_gripper/GraspEpsilon. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Franka_gripperGraspEpsilon epsilon = new Ros1Franka_gripperGraspEpsilon();
        /**
         * @brief [m/s]
         * @details Original franka_gripper/GraspGoal.speed; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double speed = 0;
        /**
         * @brief [N]
         * @details Original franka_gripper/GraspGoal.force; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double force = 0;

        public Ros1Franka_gripperGraspGoal()
        {
        }

        public static final Codec<Ros1Franka_gripperGraspGoal> CODEC = new Codec<Ros1Franka_gripperGraspGoal>() {
            public byte[] encode(Ros1Franka_gripperGraspGoal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperGraspGoal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperGraspGoal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperGraspGoal value = readRos1Franka_gripperGraspGoal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperGraspGoal(Codecs.Writer writer, Ros1Franka_gripperGraspGoal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.width;
        writer.f64(part0);
        Ros1Franka_gripperGraspEpsilon part1 = value.epsilon;
        writeRos1Franka_gripperGraspEpsilon(writer, part1);
        double part2 = value.speed;
        writer.f64(part2);
        double part3 = value.force;
        writer.f64(part3);
    }

    private static Ros1Franka_gripperGraspGoal readRos1Franka_gripperGraspGoal(Codecs.Reader reader)
    {
        Ros1Franka_gripperGraspGoal value = new Ros1Franka_gripperGraspGoal();
        value.width = reader.f64();
        value.epsilon = readRos1Franka_gripperGraspEpsilon(reader);
        value.speed = reader.f64();
        value.force = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_gripper/GraspResult.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperGraspResult
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/GraspResult";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_gripper/GraspResult.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_gripper/GraspResult.error; native type string. Scalar value. UTF-8 capacity
         * 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
        public String error = "";

        public Ros1Franka_gripperGraspResult()
        {
        }

        public static final Codec<Ros1Franka_gripperGraspResult> CODEC = new Codec<Ros1Franka_gripperGraspResult>() {
            public byte[] encode(Ros1Franka_gripperGraspResult value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperGraspResult(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperGraspResult decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperGraspResult value = readRos1Franka_gripperGraspResult(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperGraspResult(Codecs.Writer writer, Ros1Franka_gripperGraspResult value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_gripperGraspResult readRos1Franka_gripperGraspResult(Codecs.Reader reader)
    {
        Ros1Franka_gripperGraspResult value = new Ros1Franka_gripperGraspResult();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_gripper/GraspFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperGraspFeedback
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/GraspFeedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Franka_gripperGraspFeedback()
        {
        }

        public static final Codec<Ros1Franka_gripperGraspFeedback> CODEC = new Codec<Ros1Franka_gripperGraspFeedback>() {
            public byte[] encode(Ros1Franka_gripperGraspFeedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperGraspFeedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperGraspFeedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperGraspFeedback value = readRos1Franka_gripperGraspFeedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperGraspFeedback(Codecs.Writer writer, Ros1Franka_gripperGraspFeedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Franka_gripperGraspFeedback readRos1Franka_gripperGraspFeedback(Codecs.Reader reader)
    {
        Ros1Franka_gripperGraspFeedback value = new Ros1Franka_gripperGraspFeedback();
        return value;
    }

    // @brief Own every original field of franka_gripper/HomingGoal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperHomingGoal
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/HomingGoal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Franka_gripperHomingGoal()
        {
        }

        public static final Codec<Ros1Franka_gripperHomingGoal> CODEC = new Codec<Ros1Franka_gripperHomingGoal>() {
            public byte[] encode(Ros1Franka_gripperHomingGoal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperHomingGoal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperHomingGoal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperHomingGoal value = readRos1Franka_gripperHomingGoal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperHomingGoal(Codecs.Writer writer, Ros1Franka_gripperHomingGoal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Franka_gripperHomingGoal readRos1Franka_gripperHomingGoal(Codecs.Reader reader)
    {
        Ros1Franka_gripperHomingGoal value = new Ros1Franka_gripperHomingGoal();
        return value;
    }

    // @brief Own every original field of franka_gripper/HomingResult.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperHomingResult
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/HomingResult";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_gripper/HomingResult.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_gripper/HomingResult.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros1Franka_gripperHomingResult()
        {
        }

        public static final Codec<Ros1Franka_gripperHomingResult> CODEC = new Codec<Ros1Franka_gripperHomingResult>() {
            public byte[] encode(Ros1Franka_gripperHomingResult value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperHomingResult(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperHomingResult decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperHomingResult value = readRos1Franka_gripperHomingResult(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperHomingResult(Codecs.Writer writer, Ros1Franka_gripperHomingResult value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_gripperHomingResult readRos1Franka_gripperHomingResult(Codecs.Reader reader)
    {
        Ros1Franka_gripperHomingResult value = new Ros1Franka_gripperHomingResult();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_gripper/HomingFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperHomingFeedback
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/HomingFeedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Franka_gripperHomingFeedback()
        {
        }

        public static final Codec<Ros1Franka_gripperHomingFeedback> CODEC = new Codec<Ros1Franka_gripperHomingFeedback>() {
            public byte[] encode(Ros1Franka_gripperHomingFeedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperHomingFeedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperHomingFeedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperHomingFeedback value = readRos1Franka_gripperHomingFeedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperHomingFeedback(Codecs.Writer writer, Ros1Franka_gripperHomingFeedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Franka_gripperHomingFeedback readRos1Franka_gripperHomingFeedback(Codecs.Reader reader)
    {
        Ros1Franka_gripperHomingFeedback value = new Ros1Franka_gripperHomingFeedback();
        return value;
    }

    // @brief Own every original field of franka_gripper/MoveGoal.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperMoveGoal
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/MoveGoal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief [m]
         * @details Original franka_gripper/MoveGoal.width; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double width = 0;
        /**
         * @brief [m/s]
         * @details Original franka_gripper/MoveGoal.speed; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double speed = 0;

        public Ros1Franka_gripperMoveGoal()
        {
        }

        public static final Codec<Ros1Franka_gripperMoveGoal> CODEC = new Codec<Ros1Franka_gripperMoveGoal>() {
            public byte[] encode(Ros1Franka_gripperMoveGoal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperMoveGoal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperMoveGoal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperMoveGoal value = readRos1Franka_gripperMoveGoal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperMoveGoal(Codecs.Writer writer, Ros1Franka_gripperMoveGoal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.width;
        writer.f64(part0);
        double part1 = value.speed;
        writer.f64(part1);
    }

    private static Ros1Franka_gripperMoveGoal readRos1Franka_gripperMoveGoal(Codecs.Reader reader)
    {
        Ros1Franka_gripperMoveGoal value = new Ros1Franka_gripperMoveGoal();
        value.width = reader.f64();
        value.speed = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_gripper/MoveResult.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperMoveResult
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/MoveResult";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_gripper/MoveResult.success; native type bool. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_gripper/MoveResult.error; native type string. Scalar value. UTF-8 capacity
         * 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
        public String error = "";

        public Ros1Franka_gripperMoveResult()
        {
        }

        public static final Codec<Ros1Franka_gripperMoveResult> CODEC = new Codec<Ros1Franka_gripperMoveResult>() {
            public byte[] encode(Ros1Franka_gripperMoveResult value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperMoveResult(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperMoveResult decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperMoveResult value = readRos1Franka_gripperMoveResult(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperMoveResult(Codecs.Writer writer, Ros1Franka_gripperMoveResult value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_gripperMoveResult readRos1Franka_gripperMoveResult(Codecs.Reader reader)
    {
        Ros1Franka_gripperMoveResult value = new Ros1Franka_gripperMoveResult();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_gripper/MoveFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperMoveFeedback
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/MoveFeedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Franka_gripperMoveFeedback()
        {
        }

        public static final Codec<Ros1Franka_gripperMoveFeedback> CODEC = new Codec<Ros1Franka_gripperMoveFeedback>() {
            public byte[] encode(Ros1Franka_gripperMoveFeedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperMoveFeedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperMoveFeedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperMoveFeedback value = readRos1Franka_gripperMoveFeedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperMoveFeedback(Codecs.Writer writer, Ros1Franka_gripperMoveFeedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Franka_gripperMoveFeedback readRos1Franka_gripperMoveFeedback(Codecs.Reader reader)
    {
        Ros1Franka_gripperMoveFeedback value = new Ros1Franka_gripperMoveFeedback();
        return value;
    }

    // @brief Own every original field of franka_gripper/StopGoal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperStopGoal
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/StopGoal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Franka_gripperStopGoal()
        {
        }

        public static final Codec<Ros1Franka_gripperStopGoal> CODEC = new Codec<Ros1Franka_gripperStopGoal>() {
            public byte[] encode(Ros1Franka_gripperStopGoal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperStopGoal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperStopGoal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperStopGoal value = readRos1Franka_gripperStopGoal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperStopGoal(Codecs.Writer writer, Ros1Franka_gripperStopGoal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Franka_gripperStopGoal readRos1Franka_gripperStopGoal(Codecs.Reader reader)
    {
        Ros1Franka_gripperStopGoal value = new Ros1Franka_gripperStopGoal();
        return value;
    }

    // @brief Own every original field of franka_gripper/StopResult.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperStopResult
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/StopResult";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_gripper/StopResult.success; native type bool. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_gripper/StopResult.error; native type string. Scalar value. UTF-8 capacity
         * 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
        public String error = "";

        public Ros1Franka_gripperStopResult()
        {
        }

        public static final Codec<Ros1Franka_gripperStopResult> CODEC = new Codec<Ros1Franka_gripperStopResult>() {
            public byte[] encode(Ros1Franka_gripperStopResult value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperStopResult(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperStopResult decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperStopResult value = readRos1Franka_gripperStopResult(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperStopResult(Codecs.Writer writer, Ros1Franka_gripperStopResult value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_gripperStopResult readRos1Franka_gripperStopResult(Codecs.Reader reader)
    {
        Ros1Franka_gripperStopResult value = new Ros1Franka_gripperStopResult();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_gripper/StopFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_gripperStopFeedback
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_gripper/StopFeedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Franka_gripperStopFeedback()
        {
        }

        public static final Codec<Ros1Franka_gripperStopFeedback> CODEC = new Codec<Ros1Franka_gripperStopFeedback>() {
            public byte[] encode(Ros1Franka_gripperStopFeedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_gripperStopFeedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_gripperStopFeedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_gripperStopFeedback value = readRos1Franka_gripperStopFeedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_gripperStopFeedback(Codecs.Writer writer, Ros1Franka_gripperStopFeedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Franka_gripperStopFeedback readRos1Franka_gripperStopFeedback(Codecs.Reader reader)
    {
        Ros1Franka_gripperStopFeedback value = new Ros1Franka_gripperStopFeedback();
        return value;
    }

    // @brief Own every original field of franka_msgs/ErrorRecoveryGoal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsErrorRecoveryGoal
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/ErrorRecoveryGoal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Franka_msgsErrorRecoveryGoal()
        {
        }

        public static final Codec<Ros1Franka_msgsErrorRecoveryGoal> CODEC = new Codec<Ros1Franka_msgsErrorRecoveryGoal>() {
            public byte[] encode(Ros1Franka_msgsErrorRecoveryGoal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsErrorRecoveryGoal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsErrorRecoveryGoal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsErrorRecoveryGoal value = readRos1Franka_msgsErrorRecoveryGoal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsErrorRecoveryGoal(Codecs.Writer writer, Ros1Franka_msgsErrorRecoveryGoal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Franka_msgsErrorRecoveryGoal readRos1Franka_msgsErrorRecoveryGoal(Codecs.Reader reader)
    {
        Ros1Franka_msgsErrorRecoveryGoal value = new Ros1Franka_msgsErrorRecoveryGoal();
        return value;
    }

    // @brief Own every original field of franka_msgs/ErrorRecoveryResult.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsErrorRecoveryResult
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/ErrorRecoveryResult";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Franka_msgsErrorRecoveryResult()
        {
        }

        public static final Codec<Ros1Franka_msgsErrorRecoveryResult> CODEC = new Codec<Ros1Franka_msgsErrorRecoveryResult>() {
            public byte[] encode(Ros1Franka_msgsErrorRecoveryResult value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsErrorRecoveryResult(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsErrorRecoveryResult decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsErrorRecoveryResult value = readRos1Franka_msgsErrorRecoveryResult(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsErrorRecoveryResult(Codecs.Writer writer, Ros1Franka_msgsErrorRecoveryResult value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Franka_msgsErrorRecoveryResult readRos1Franka_msgsErrorRecoveryResult(Codecs.Reader reader)
    {
        Ros1Franka_msgsErrorRecoveryResult value = new Ros1Franka_msgsErrorRecoveryResult();
        return value;
    }

    // @brief Own every original field of franka_msgs/ErrorRecoveryFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsErrorRecoveryFeedback
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/ErrorRecoveryFeedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Franka_msgsErrorRecoveryFeedback()
        {
        }

        public static final Codec<Ros1Franka_msgsErrorRecoveryFeedback> CODEC = new Codec<Ros1Franka_msgsErrorRecoveryFeedback>() {
            public byte[] encode(Ros1Franka_msgsErrorRecoveryFeedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsErrorRecoveryFeedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsErrorRecoveryFeedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsErrorRecoveryFeedback value = readRos1Franka_msgsErrorRecoveryFeedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsErrorRecoveryFeedback(Codecs.Writer writer, Ros1Franka_msgsErrorRecoveryFeedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Franka_msgsErrorRecoveryFeedback readRos1Franka_msgsErrorRecoveryFeedback(Codecs.Reader reader)
    {
        Ros1Franka_msgsErrorRecoveryFeedback value = new Ros1Franka_msgsErrorRecoveryFeedback();
        return value;
    }

    // @brief Own every original field of franka_msgs/Errors.
    // @details Canonical extent 41..41 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsErrors
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/Errors";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca";
        public static final int MIN_WIRE_BYTES = 41, MAX_WIRE_BYTES = 41;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_position_limits_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_position_limits_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.self_collision_avoidance_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean self_collision_avoidance_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_velocity_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_velocity_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_velocity_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_velocity_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.force_control_safety_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean force_control_safety_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_reflex; native type bool. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public boolean joint_reflex = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_reflex; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_reflex = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean max_goal_pose_deviation_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.max_path_pose_deviation_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean max_path_pose_deviation_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_velocity_profile_safety_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_velocity_profile_safety_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_position_motion_generator_start_pose_invalid; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_position_motion_generator_start_pose_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_motion_generator_position_limits_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_motion_generator_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_motion_generator_velocity_limits_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_motion_generator_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_motion_generator_velocity_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_motion_generator_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_motion_generator_acceleration_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_motion_generator_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_position_motion_generator_start_pose_invalid; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_position_motion_generator_start_pose_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_limit_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_elbow_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_limits_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_acceleration_discontinuity; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_elbow_sign_inconsistent = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_start_elbow_invalid; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_start_elbow_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_position_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_joint_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_joint_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_discontinuity; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_joint_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_acceleration_discontinuity;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_joint_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_position_motion_generator_invalid_frame; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_position_motion_generator_invalid_frame = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.force_controller_desired_force_tolerance_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean force_controller_desired_force_tolerance_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.controller_torque_discontinuity; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean controller_torque_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.start_elbow_sign_inconsistent; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean start_elbow_sign_inconsistent = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.communication_constraints_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean communication_constraints_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.power_limit_violation; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean power_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_p2p_insufficient_torque_for_planning; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_p2p_insufficient_torque_for_planning = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.tau_j_range_violation; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean tau_j_range_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.instability_detected; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean instability_detected = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_move_in_wrong_direction; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_move_in_wrong_direction = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_spline_motion_generator_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_spline_motion_generator_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_via_motion_generator_planning_joint_limit_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_via_motion_generator_planning_joint_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.base_acceleration_initialization_timeout; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean base_acceleration_initialization_timeout = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.base_acceleration_invalid_reading; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean base_acceleration_invalid_reading = false;

        public Ros1Franka_msgsErrors()
        {
        }

        public static final Codec<Ros1Franka_msgsErrors> CODEC = new Codec<Ros1Franka_msgsErrors>() {
            public byte[] encode(Ros1Franka_msgsErrors value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsErrors(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsErrors decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsErrors value = readRos1Franka_msgsErrors(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsErrors(Codecs.Writer writer, Ros1Franka_msgsErrors value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.joint_position_limits_violation;
        writer.integer(part0 ? 1 : 0, 1, false);
        boolean part1 = value.cartesian_position_limits_violation;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.self_collision_avoidance_violation;
        writer.integer(part2 ? 1 : 0, 1, false);
        boolean part3 = value.joint_velocity_violation;
        writer.integer(part3 ? 1 : 0, 1, false);
        boolean part4 = value.cartesian_velocity_violation;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.force_control_safety_violation;
        writer.integer(part5 ? 1 : 0, 1, false);
        boolean part6 = value.joint_reflex;
        writer.integer(part6 ? 1 : 0, 1, false);
        boolean part7 = value.cartesian_reflex;
        writer.integer(part7 ? 1 : 0, 1, false);
        boolean part8 = value.max_goal_pose_deviation_violation;
        writer.integer(part8 ? 1 : 0, 1, false);
        boolean part9 = value.max_path_pose_deviation_violation;
        writer.integer(part9 ? 1 : 0, 1, false);
        boolean part10 = value.cartesian_velocity_profile_safety_violation;
        writer.integer(part10 ? 1 : 0, 1, false);
        boolean part11 = value.joint_position_motion_generator_start_pose_invalid;
        writer.integer(part11 ? 1 : 0, 1, false);
        boolean part12 = value.joint_motion_generator_position_limits_violation;
        writer.integer(part12 ? 1 : 0, 1, false);
        boolean part13 = value.joint_motion_generator_velocity_limits_violation;
        writer.integer(part13 ? 1 : 0, 1, false);
        boolean part14 = value.joint_motion_generator_velocity_discontinuity;
        writer.integer(part14 ? 1 : 0, 1, false);
        boolean part15 = value.joint_motion_generator_acceleration_discontinuity;
        writer.integer(part15 ? 1 : 0, 1, false);
        boolean part16 = value.cartesian_position_motion_generator_start_pose_invalid;
        writer.integer(part16 ? 1 : 0, 1, false);
        boolean part17 = value.cartesian_motion_generator_elbow_limit_violation;
        writer.integer(part17 ? 1 : 0, 1, false);
        boolean part18 = value.cartesian_motion_generator_velocity_limits_violation;
        writer.integer(part18 ? 1 : 0, 1, false);
        boolean part19 = value.cartesian_motion_generator_velocity_discontinuity;
        writer.integer(part19 ? 1 : 0, 1, false);
        boolean part20 = value.cartesian_motion_generator_acceleration_discontinuity;
        writer.integer(part20 ? 1 : 0, 1, false);
        boolean part21 = value.cartesian_motion_generator_elbow_sign_inconsistent;
        writer.integer(part21 ? 1 : 0, 1, false);
        boolean part22 = value.cartesian_motion_generator_start_elbow_invalid;
        writer.integer(part22 ? 1 : 0, 1, false);
        boolean part23 = value.cartesian_motion_generator_joint_position_limits_violation;
        writer.integer(part23 ? 1 : 0, 1, false);
        boolean part24 = value.cartesian_motion_generator_joint_velocity_limits_violation;
        writer.integer(part24 ? 1 : 0, 1, false);
        boolean part25 = value.cartesian_motion_generator_joint_velocity_discontinuity;
        writer.integer(part25 ? 1 : 0, 1, false);
        boolean part26 = value.cartesian_motion_generator_joint_acceleration_discontinuity;
        writer.integer(part26 ? 1 : 0, 1, false);
        boolean part27 = value.cartesian_position_motion_generator_invalid_frame;
        writer.integer(part27 ? 1 : 0, 1, false);
        boolean part28 = value.force_controller_desired_force_tolerance_violation;
        writer.integer(part28 ? 1 : 0, 1, false);
        boolean part29 = value.controller_torque_discontinuity;
        writer.integer(part29 ? 1 : 0, 1, false);
        boolean part30 = value.start_elbow_sign_inconsistent;
        writer.integer(part30 ? 1 : 0, 1, false);
        boolean part31 = value.communication_constraints_violation;
        writer.integer(part31 ? 1 : 0, 1, false);
        boolean part32 = value.power_limit_violation;
        writer.integer(part32 ? 1 : 0, 1, false);
        boolean part33 = value.joint_p2p_insufficient_torque_for_planning;
        writer.integer(part33 ? 1 : 0, 1, false);
        boolean part34 = value.tau_j_range_violation;
        writer.integer(part34 ? 1 : 0, 1, false);
        boolean part35 = value.instability_detected;
        writer.integer(part35 ? 1 : 0, 1, false);
        boolean part36 = value.joint_move_in_wrong_direction;
        writer.integer(part36 ? 1 : 0, 1, false);
        boolean part37 = value.cartesian_spline_motion_generator_violation;
        writer.integer(part37 ? 1 : 0, 1, false);
        boolean part38 = value.joint_via_motion_generator_planning_joint_limit_violation;
        writer.integer(part38 ? 1 : 0, 1, false);
        boolean part39 = value.base_acceleration_initialization_timeout;
        writer.integer(part39 ? 1 : 0, 1, false);
        boolean part40 = value.base_acceleration_invalid_reading;
        writer.integer(part40 ? 1 : 0, 1, false);
    }

    private static Ros1Franka_msgsErrors readRos1Franka_msgsErrors(Codecs.Reader reader)
    {
        Ros1Franka_msgsErrors value = new Ros1Franka_msgsErrors();
        value.joint_position_limits_violation = readBool(reader);
        value.cartesian_position_limits_violation = readBool(reader);
        value.self_collision_avoidance_violation = readBool(reader);
        value.joint_velocity_violation = readBool(reader);
        value.cartesian_velocity_violation = readBool(reader);
        value.force_control_safety_violation = readBool(reader);
        value.joint_reflex = readBool(reader);
        value.cartesian_reflex = readBool(reader);
        value.max_goal_pose_deviation_violation = readBool(reader);
        value.max_path_pose_deviation_violation = readBool(reader);
        value.cartesian_velocity_profile_safety_violation = readBool(reader);
        value.joint_position_motion_generator_start_pose_invalid = readBool(reader);
        value.joint_motion_generator_position_limits_violation = readBool(reader);
        value.joint_motion_generator_velocity_limits_violation = readBool(reader);
        value.joint_motion_generator_velocity_discontinuity = readBool(reader);
        value.joint_motion_generator_acceleration_discontinuity = readBool(reader);
        value.cartesian_position_motion_generator_start_pose_invalid = readBool(reader);
        value.cartesian_motion_generator_elbow_limit_violation = readBool(reader);
        value.cartesian_motion_generator_velocity_limits_violation = readBool(reader);
        value.cartesian_motion_generator_velocity_discontinuity = readBool(reader);
        value.cartesian_motion_generator_acceleration_discontinuity = readBool(reader);
        value.cartesian_motion_generator_elbow_sign_inconsistent = readBool(reader);
        value.cartesian_motion_generator_start_elbow_invalid = readBool(reader);
        value.cartesian_motion_generator_joint_position_limits_violation = readBool(reader);
        value.cartesian_motion_generator_joint_velocity_limits_violation = readBool(reader);
        value.cartesian_motion_generator_joint_velocity_discontinuity = readBool(reader);
        value.cartesian_motion_generator_joint_acceleration_discontinuity = readBool(reader);
        value.cartesian_position_motion_generator_invalid_frame = readBool(reader);
        value.force_controller_desired_force_tolerance_violation = readBool(reader);
        value.controller_torque_discontinuity = readBool(reader);
        value.start_elbow_sign_inconsistent = readBool(reader);
        value.communication_constraints_violation = readBool(reader);
        value.power_limit_violation = readBool(reader);
        value.joint_p2p_insufficient_torque_for_planning = readBool(reader);
        value.tau_j_range_violation = readBool(reader);
        value.instability_detected = readBool(reader);
        value.joint_move_in_wrong_direction = readBool(reader);
        value.cartesian_spline_motion_generator_violation = readBool(reader);
        value.joint_via_motion_generator_planning_joint_limit_violation = readBool(reader);
        value.base_acceleration_initialization_timeout = readBool(reader);
        value.base_acceleration_invalid_reading = readBool(reader);
        return value;
    }

    // @brief Own every original field of time.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Time
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "time";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Retain the complete original uint32 field.
         * @details Original time.sec; native type uint32. Scalar value. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public long sec = 0;
        /**
         * @brief Retain the complete original uint32 field.
         * @details Original time.nsec; native type uint32. Scalar value. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
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

    // @brief Own every original field of std_msgs/Header.
    // @details Canonical extent 16..144 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Std_msgsHeader
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "std_msgs/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;
        /**
         * @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
         * timestamped data in a particular coordinate frame.  sequence ID: consecutively increasing ID
         * @details Original std_msgs/Header.seq; native type uint32. Scalar value. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public long seq = 0;
        /**
         * @brief Two-integer timestamp that is expressed as: * stamp.sec: seconds (stamp_secs) since epoch (in
         * Python the variable is called 'secs') * stamp.nsec: nanoseconds since stamp_secs (in Python the
         * variable is called 'nsecs') time-handling sugar is provided by the client library
         * @details Original std_msgs/Header.stamp; native type time. Scalar value. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public Ros1Time stamp = new Ros1Time();
        /**
         * @brief Frame this data is associated with
         * @details Original std_msgs/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
         * bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of franka_msgs/FrankaState.
    // @details Canonical extent 2491..2619 bytes. Native type identity is independent; constructing a
    // value opens no resource.
    public static final class Ros1Franka_msgsFrankaState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/FrankaState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71";
        public static final int MIN_WIRE_BYTES = 2491, MAX_WIRE_BYTES = 2619;
        /**
         * @brief Retain the complete original std_msgs/Header field.
         * @details Original franka_msgs/FrankaState.header; native type std_msgs/Header. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.cartesian_collision; native type float64. Exactly 6
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] cartesian_collision = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.cartesian_contact; native type float64. Exactly 6
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] cartesian_contact = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.q; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] q = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.q_d; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] q_d = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.dq; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] dq = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.dq_d; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] dq_d = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.ddq_d; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] ddq_d = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.theta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] theta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.dtheta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] dtheta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.tau_J; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] tau_J = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.dtau_J; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] dtau_J = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.tau_J_d; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] tau_J_d = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.K_F_ext_hat_K; native type float64. Exactly 6 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] K_F_ext_hat_K = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.elbow; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] elbow = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.elbow_d; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] elbow_d = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.elbow_c; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] elbow_c = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.delbow_c; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] delbow_c = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.ddelbow_c; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] ddelbow_c = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.joint_collision; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] joint_collision = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.joint_contact; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] joint_contact = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_F_ext_hat_K; native type float64. Exactly 6 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] O_F_ext_hat_K = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_dP_EE_d; native type float64. Exactly 6 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] O_dP_EE_d = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_ddP_O; native type float64. Exactly 3 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] O_ddP_O = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_dP_EE_c; native type float64. Exactly 6 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] O_dP_EE_c = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_ddP_EE_c; native type float64. Exactly 6 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] O_ddP_EE_c = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.tau_ext_hat_filtered; native type float64. Exactly 7
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] tau_ext_hat_filtered = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.m_ee; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double m_ee = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_x_Cee; native type float64. Exactly 3 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] F_x_Cee = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.I_ee; native type float64. Exactly 9 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] I_ee = new double[9];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.m_load; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double m_load = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_x_Cload; native type float64. Exactly 3 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] F_x_Cload = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.I_load; native type float64. Exactly 9 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] I_load = new double[9];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.m_total; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double m_total = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_x_Ctotal; native type float64. Exactly 3 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] F_x_Ctotal = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.I_total; native type float64. Exactly 9 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] I_total = new double[9];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_T_EE; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] O_T_EE = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_T_EE_d; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] O_T_EE_d = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_T_EE_c; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] O_T_EE_c = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_T_EE; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] F_T_EE = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_T_NE; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] F_T_NE = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.NE_T_EE; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] NE_T_EE = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.EE_T_K; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] EE_T_K = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.time; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double time = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.control_command_success_rate; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double control_command_success_rate = 0;
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original franka_msgs/FrankaState.robot_mode; native type uint8. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public int robot_mode = 0;
        /**
         * @brief Retain the complete original franka_msgs/Errors field.
         * @details Original franka_msgs/FrankaState.current_errors; native type franka_msgs/Errors. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Franka_msgsErrors current_errors = new Ros1Franka_msgsErrors();
        /**
         * @brief Retain the complete original franka_msgs/Errors field.
         * @details Original franka_msgs/FrankaState.last_motion_errors; native type franka_msgs/Errors. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Franka_msgsErrors last_motion_errors = new Ros1Franka_msgsErrors();

        public Ros1Franka_msgsFrankaState()
        {
        }

        public static final Codec<Ros1Franka_msgsFrankaState> CODEC = new Codec<Ros1Franka_msgsFrankaState>() {
            public byte[] encode(Ros1Franka_msgsFrankaState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsFrankaState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsFrankaState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsFrankaState value = readRos1Franka_msgsFrankaState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsFrankaState(Codecs.Writer writer, Ros1Franka_msgsFrankaState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;
        writeRos1Std_msgsHeader(writer, part0);
        double[] part1 = value.cartesian_collision;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.cartesian_contact;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.q;
        if(part3 == null || part3.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.q_d;
        if(part4 == null || part4.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.dq;
        if(part5 == null || part5.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double[] part6 = value.dq_d;
        if(part6 == null || part6.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        double[] part7 = value.ddq_d;
        if(part7 == null || part7.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f64(part7[i]);
        }
        double[] part8 = value.theta;
        if(part8 == null || part8.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part8.length; ++i)
        {
            writer.f64(part8[i]);
        }
        double[] part9 = value.dtheta;
        if(part9 == null || part9.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part9.length; ++i)
        {
            writer.f64(part9[i]);
        }
        double[] part10 = value.tau_J;
        if(part10 == null || part10.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part10.length; ++i)
        {
            writer.f64(part10[i]);
        }
        double[] part11 = value.dtau_J;
        if(part11 == null || part11.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part11.length; ++i)
        {
            writer.f64(part11[i]);
        }
        double[] part12 = value.tau_J_d;
        if(part12 == null || part12.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part12.length; ++i)
        {
            writer.f64(part12[i]);
        }
        double[] part13 = value.K_F_ext_hat_K;
        if(part13 == null || part13.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part13.length; ++i)
        {
            writer.f64(part13[i]);
        }
        double[] part14 = value.elbow;
        if(part14 == null || part14.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part14.length; ++i)
        {
            writer.f64(part14[i]);
        }
        double[] part15 = value.elbow_d;
        if(part15 == null || part15.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part15.length; ++i)
        {
            writer.f64(part15[i]);
        }
        double[] part16 = value.elbow_c;
        if(part16 == null || part16.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part16.length; ++i)
        {
            writer.f64(part16[i]);
        }
        double[] part17 = value.delbow_c;
        if(part17 == null || part17.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part17.length; ++i)
        {
            writer.f64(part17[i]);
        }
        double[] part18 = value.ddelbow_c;
        if(part18 == null || part18.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part18.length; ++i)
        {
            writer.f64(part18[i]);
        }
        double[] part19 = value.joint_collision;
        if(part19 == null || part19.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part19.length; ++i)
        {
            writer.f64(part19[i]);
        }
        double[] part20 = value.joint_contact;
        if(part20 == null || part20.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part20.length; ++i)
        {
            writer.f64(part20[i]);
        }
        double[] part21 = value.O_F_ext_hat_K;
        if(part21 == null || part21.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part21.length; ++i)
        {
            writer.f64(part21[i]);
        }
        double[] part22 = value.O_dP_EE_d;
        if(part22 == null || part22.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part22.length; ++i)
        {
            writer.f64(part22[i]);
        }
        double[] part23 = value.O_ddP_O;
        if(part23 == null || part23.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part23.length; ++i)
        {
            writer.f64(part23[i]);
        }
        double[] part24 = value.O_dP_EE_c;
        if(part24 == null || part24.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part24.length; ++i)
        {
            writer.f64(part24[i]);
        }
        double[] part25 = value.O_ddP_EE_c;
        if(part25 == null || part25.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part25.length; ++i)
        {
            writer.f64(part25[i]);
        }
        double[] part26 = value.tau_ext_hat_filtered;
        if(part26 == null || part26.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part26.length; ++i)
        {
            writer.f64(part26[i]);
        }
        double part27 = value.m_ee;
        writer.f64(part27);
        double[] part28 = value.F_x_Cee;
        if(part28 == null || part28.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part28.length; ++i)
        {
            writer.f64(part28[i]);
        }
        double[] part29 = value.I_ee;
        if(part29 == null || part29.length != 9)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part29.length; ++i)
        {
            writer.f64(part29[i]);
        }
        double part30 = value.m_load;
        writer.f64(part30);
        double[] part31 = value.F_x_Cload;
        if(part31 == null || part31.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part31.length; ++i)
        {
            writer.f64(part31[i]);
        }
        double[] part32 = value.I_load;
        if(part32 == null || part32.length != 9)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part32.length; ++i)
        {
            writer.f64(part32[i]);
        }
        double part33 = value.m_total;
        writer.f64(part33);
        double[] part34 = value.F_x_Ctotal;
        if(part34 == null || part34.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part34.length; ++i)
        {
            writer.f64(part34[i]);
        }
        double[] part35 = value.I_total;
        if(part35 == null || part35.length != 9)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part35.length; ++i)
        {
            writer.f64(part35[i]);
        }
        double[] part36 = value.O_T_EE;
        if(part36 == null || part36.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part36.length; ++i)
        {
            writer.f64(part36[i]);
        }
        double[] part37 = value.O_T_EE_d;
        if(part37 == null || part37.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part37.length; ++i)
        {
            writer.f64(part37[i]);
        }
        double[] part38 = value.O_T_EE_c;
        if(part38 == null || part38.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part38.length; ++i)
        {
            writer.f64(part38[i]);
        }
        double[] part39 = value.F_T_EE;
        if(part39 == null || part39.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part39.length; ++i)
        {
            writer.f64(part39[i]);
        }
        double[] part40 = value.F_T_NE;
        if(part40 == null || part40.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part40.length; ++i)
        {
            writer.f64(part40[i]);
        }
        double[] part41 = value.NE_T_EE;
        if(part41 == null || part41.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part41.length; ++i)
        {
            writer.f64(part41[i]);
        }
        double[] part42 = value.EE_T_K;
        if(part42 == null || part42.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part42.length; ++i)
        {
            writer.f64(part42[i]);
        }
        double part43 = value.time;
        writer.f64(part43);
        double part44 = value.control_command_success_rate;
        writer.f64(part44);
        int part45 = value.robot_mode;
        writer.integer(part45, 1, false);
        Ros1Franka_msgsErrors part46 = value.current_errors;
        writeRos1Franka_msgsErrors(writer, part46);
        Ros1Franka_msgsErrors part47 = value.last_motion_errors;
        writeRos1Franka_msgsErrors(writer, part47);
    }

    private static Ros1Franka_msgsFrankaState readRos1Franka_msgsFrankaState(Codecs.Reader reader)
    {
        Ros1Franka_msgsFrankaState value = new Ros1Franka_msgsFrankaState();
        value.header = readRos1Std_msgsHeader(reader);
        value.cartesian_collision = new double[6];
        for(int i = 0; i < value.cartesian_collision.length; ++i)
            value.cartesian_collision[i] = reader.f64();
        value.cartesian_contact = new double[6];
        for(int i = 0; i < value.cartesian_contact.length; ++i)
            value.cartesian_contact[i] = reader.f64();
        value.q = new double[7];
        for(int i = 0; i < value.q.length; ++i)
            value.q[i] = reader.f64();
        value.q_d = new double[7];
        for(int i = 0; i < value.q_d.length; ++i)
            value.q_d[i] = reader.f64();
        value.dq = new double[7];
        for(int i = 0; i < value.dq.length; ++i)
            value.dq[i] = reader.f64();
        value.dq_d = new double[7];
        for(int i = 0; i < value.dq_d.length; ++i)
            value.dq_d[i] = reader.f64();
        value.ddq_d = new double[7];
        for(int i = 0; i < value.ddq_d.length; ++i)
            value.ddq_d[i] = reader.f64();
        value.theta = new double[7];
        for(int i = 0; i < value.theta.length; ++i)
            value.theta[i] = reader.f64();
        value.dtheta = new double[7];
        for(int i = 0; i < value.dtheta.length; ++i)
            value.dtheta[i] = reader.f64();
        value.tau_J = new double[7];
        for(int i = 0; i < value.tau_J.length; ++i)
            value.tau_J[i] = reader.f64();
        value.dtau_J = new double[7];
        for(int i = 0; i < value.dtau_J.length; ++i)
            value.dtau_J[i] = reader.f64();
        value.tau_J_d = new double[7];
        for(int i = 0; i < value.tau_J_d.length; ++i)
            value.tau_J_d[i] = reader.f64();
        value.K_F_ext_hat_K = new double[6];
        for(int i = 0; i < value.K_F_ext_hat_K.length; ++i)
            value.K_F_ext_hat_K[i] = reader.f64();
        value.elbow = new double[2];
        for(int i = 0; i < value.elbow.length; ++i)
            value.elbow[i] = reader.f64();
        value.elbow_d = new double[2];
        for(int i = 0; i < value.elbow_d.length; ++i)
            value.elbow_d[i] = reader.f64();
        value.elbow_c = new double[2];
        for(int i = 0; i < value.elbow_c.length; ++i)
            value.elbow_c[i] = reader.f64();
        value.delbow_c = new double[2];
        for(int i = 0; i < value.delbow_c.length; ++i)
            value.delbow_c[i] = reader.f64();
        value.ddelbow_c = new double[2];
        for(int i = 0; i < value.ddelbow_c.length; ++i)
            value.ddelbow_c[i] = reader.f64();
        value.joint_collision = new double[7];
        for(int i = 0; i < value.joint_collision.length; ++i)
            value.joint_collision[i] = reader.f64();
        value.joint_contact = new double[7];
        for(int i = 0; i < value.joint_contact.length; ++i)
            value.joint_contact[i] = reader.f64();
        value.O_F_ext_hat_K = new double[6];
        for(int i = 0; i < value.O_F_ext_hat_K.length; ++i)
            value.O_F_ext_hat_K[i] = reader.f64();
        value.O_dP_EE_d = new double[6];
        for(int i = 0; i < value.O_dP_EE_d.length; ++i)
            value.O_dP_EE_d[i] = reader.f64();
        value.O_ddP_O = new double[3];
        for(int i = 0; i < value.O_ddP_O.length; ++i)
            value.O_ddP_O[i] = reader.f64();
        value.O_dP_EE_c = new double[6];
        for(int i = 0; i < value.O_dP_EE_c.length; ++i)
            value.O_dP_EE_c[i] = reader.f64();
        value.O_ddP_EE_c = new double[6];
        for(int i = 0; i < value.O_ddP_EE_c.length; ++i)
            value.O_ddP_EE_c[i] = reader.f64();
        value.tau_ext_hat_filtered = new double[7];
        for(int i = 0; i < value.tau_ext_hat_filtered.length; ++i)
            value.tau_ext_hat_filtered[i] = reader.f64();
        value.m_ee = reader.f64();
        value.F_x_Cee = new double[3];
        for(int i = 0; i < value.F_x_Cee.length; ++i)
            value.F_x_Cee[i] = reader.f64();
        value.I_ee = new double[9];
        for(int i = 0; i < value.I_ee.length; ++i)
            value.I_ee[i] = reader.f64();
        value.m_load = reader.f64();
        value.F_x_Cload = new double[3];
        for(int i = 0; i < value.F_x_Cload.length; ++i)
            value.F_x_Cload[i] = reader.f64();
        value.I_load = new double[9];
        for(int i = 0; i < value.I_load.length; ++i)
            value.I_load[i] = reader.f64();
        value.m_total = reader.f64();
        value.F_x_Ctotal = new double[3];
        for(int i = 0; i < value.F_x_Ctotal.length; ++i)
            value.F_x_Ctotal[i] = reader.f64();
        value.I_total = new double[9];
        for(int i = 0; i < value.I_total.length; ++i)
            value.I_total[i] = reader.f64();
        value.O_T_EE = new double[16];
        for(int i = 0; i < value.O_T_EE.length; ++i)
            value.O_T_EE[i] = reader.f64();
        value.O_T_EE_d = new double[16];
        for(int i = 0; i < value.O_T_EE_d.length; ++i)
            value.O_T_EE_d[i] = reader.f64();
        value.O_T_EE_c = new double[16];
        for(int i = 0; i < value.O_T_EE_c.length; ++i)
            value.O_T_EE_c[i] = reader.f64();
        value.F_T_EE = new double[16];
        for(int i = 0; i < value.F_T_EE.length; ++i)
            value.F_T_EE[i] = reader.f64();
        value.F_T_NE = new double[16];
        for(int i = 0; i < value.F_T_NE.length; ++i)
            value.F_T_NE[i] = reader.f64();
        value.NE_T_EE = new double[16];
        for(int i = 0; i < value.NE_T_EE.length; ++i)
            value.NE_T_EE[i] = reader.f64();
        value.EE_T_K = new double[16];
        for(int i = 0; i < value.EE_T_K.length; ++i)
            value.EE_T_K[i] = reader.f64();
        value.time = reader.f64();
        value.control_command_success_rate = reader.f64();
        value.robot_mode = (int)reader.integer(1, false);
        value.current_errors = readRos1Franka_msgsErrors(reader);
        value.last_motion_errors = readRos1Franka_msgsErrors(reader);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetCartesianImpedanceRequest.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetCartesianImpedanceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetCartesianImpedanceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetCartesianImpedanceRequest.cartesian_stiffness; native type float64.
         * Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] cartesian_stiffness = new double[6];

        public Ros1Franka_msgsSetCartesianImpedanceRequest()
        {
        }

        public static final Codec<Ros1Franka_msgsSetCartesianImpedanceRequest> CODEC = new Codec<Ros1Franka_msgsSetCartesianImpedanceRequest>() {
            public byte[] encode(Ros1Franka_msgsSetCartesianImpedanceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetCartesianImpedanceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetCartesianImpedanceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetCartesianImpedanceRequest value = readRos1Franka_msgsSetCartesianImpedanceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetCartesianImpedanceRequest(Codecs.Writer writer, Ros1Franka_msgsSetCartesianImpedanceRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.cartesian_stiffness;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Franka_msgsSetCartesianImpedanceRequest readRos1Franka_msgsSetCartesianImpedanceRequest(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetCartesianImpedanceRequest value = new Ros1Franka_msgsSetCartesianImpedanceRequest();
        value.cartesian_stiffness = new double[6];
        for(int i = 0; i < value.cartesian_stiffness.length; ++i)
            value.cartesian_stiffness[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetCartesianImpedanceResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetCartesianImpedanceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetCartesianImpedanceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetCartesianImpedanceResponse.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetCartesianImpedanceResponse.error; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros1Franka_msgsSetCartesianImpedanceResponse()
        {
        }

        public static final Codec<Ros1Franka_msgsSetCartesianImpedanceResponse> CODEC = new Codec<Ros1Franka_msgsSetCartesianImpedanceResponse>() {
            public byte[] encode(Ros1Franka_msgsSetCartesianImpedanceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetCartesianImpedanceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetCartesianImpedanceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetCartesianImpedanceResponse value = readRos1Franka_msgsSetCartesianImpedanceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetCartesianImpedanceResponse(Codecs.Writer writer, Ros1Franka_msgsSetCartesianImpedanceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_msgsSetCartesianImpedanceResponse readRos1Franka_msgsSetCartesianImpedanceResponse(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetCartesianImpedanceResponse value = new Ros1Franka_msgsSetCartesianImpedanceResponse();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetEEFrameRequest.
    // @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetEEFrameRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetEEFrameRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc";
        public static final int MIN_WIRE_BYTES = 128, MAX_WIRE_BYTES = 128;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetEEFrameRequest.NE_T_EE; native type float64. Exactly 16 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] NE_T_EE = new double[16];

        public Ros1Franka_msgsSetEEFrameRequest()
        {
        }

        public static final Codec<Ros1Franka_msgsSetEEFrameRequest> CODEC = new Codec<Ros1Franka_msgsSetEEFrameRequest>() {
            public byte[] encode(Ros1Franka_msgsSetEEFrameRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetEEFrameRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetEEFrameRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetEEFrameRequest value = readRos1Franka_msgsSetEEFrameRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetEEFrameRequest(Codecs.Writer writer, Ros1Franka_msgsSetEEFrameRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.NE_T_EE;
        if(part0 == null || part0.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Franka_msgsSetEEFrameRequest readRos1Franka_msgsSetEEFrameRequest(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetEEFrameRequest value = new Ros1Franka_msgsSetEEFrameRequest();
        value.NE_T_EE = new double[16];
        for(int i = 0; i < value.NE_T_EE.length; ++i)
            value.NE_T_EE[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetEEFrameResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetEEFrameResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetEEFrameResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetEEFrameResponse.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetEEFrameResponse.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros1Franka_msgsSetEEFrameResponse()
        {
        }

        public static final Codec<Ros1Franka_msgsSetEEFrameResponse> CODEC = new Codec<Ros1Franka_msgsSetEEFrameResponse>() {
            public byte[] encode(Ros1Franka_msgsSetEEFrameResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetEEFrameResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetEEFrameResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetEEFrameResponse value = readRos1Franka_msgsSetEEFrameResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetEEFrameResponse(Codecs.Writer writer, Ros1Franka_msgsSetEEFrameResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_msgsSetEEFrameResponse readRos1Franka_msgsSetEEFrameResponse(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetEEFrameResponse value = new Ros1Franka_msgsSetEEFrameResponse();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
    // @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetForceTorqueCollisionBehaviorRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5";
        public static final int MIN_WIRE_BYTES = 208, MAX_WIRE_BYTES = 208;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_torque_thresholds_nominal; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] lower_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_torque_thresholds_nominal; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] upper_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_force_thresholds_nominal;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] lower_force_thresholds_nominal = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_force_thresholds_nominal;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] upper_force_thresholds_nominal = new double[6];

        public Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest()
        {
        }

        public static final Codec<Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest> CODEC =
            new Codec<Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest>() {
                public byte[] encode(Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value = readRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest(Codecs.Writer writer,
                                                                                   Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.lower_torque_thresholds_nominal;
        if(part0 == null || part0.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.upper_torque_thresholds_nominal;
        if(part1 == null || part1.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.lower_force_thresholds_nominal;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.upper_force_thresholds_nominal;
        if(part3 == null || part3.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
    }

    private static Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest readRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value = new Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest();
        value.lower_torque_thresholds_nominal = new double[7];
        for(int i = 0; i < value.lower_torque_thresholds_nominal.length; ++i)
            value.lower_torque_thresholds_nominal[i] = reader.f64();
        value.upper_torque_thresholds_nominal = new double[7];
        for(int i = 0; i < value.upper_torque_thresholds_nominal.length; ++i)
            value.upper_torque_thresholds_nominal[i] = reader.f64();
        value.lower_force_thresholds_nominal = new double[6];
        for(int i = 0; i < value.lower_force_thresholds_nominal.length; ++i)
            value.lower_force_thresholds_nominal[i] = reader.f64();
        value.upper_force_thresholds_nominal = new double[6];
        for(int i = 0; i < value.upper_force_thresholds_nominal.length; ++i)
            value.upper_force_thresholds_nominal[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetForceTorqueCollisionBehaviorResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.success; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.error; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String error = "";

        public Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse()
        {
        }

        public static final Codec<Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse> CODEC =
            new Codec<Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse>() {
                public byte[] encode(Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value = readRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse(Codecs.Writer writer,
                                                                                    Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse readRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value = new Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetFullCollisionBehaviorRequest.
    // @details Canonical extent 416..416 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetFullCollisionBehaviorRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetFullCollisionBehaviorRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c";
        public static final int MIN_WIRE_BYTES = 416, MAX_WIRE_BYTES = 416;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_acceleration;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] lower_torque_thresholds_acceleration = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_acceleration;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] upper_torque_thresholds_acceleration = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_nominal;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] lower_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_nominal;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] upper_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_acceleration;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] lower_force_thresholds_acceleration = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_acceleration;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] upper_force_thresholds_acceleration = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_nominal; native
         * type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public double[] lower_force_thresholds_nominal = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_nominal; native
         * type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public double[] upper_force_thresholds_nominal = new double[6];

        public Ros1Franka_msgsSetFullCollisionBehaviorRequest()
        {
        }

        public static final Codec<Ros1Franka_msgsSetFullCollisionBehaviorRequest> CODEC = new Codec<Ros1Franka_msgsSetFullCollisionBehaviorRequest>() {
            public byte[] encode(Ros1Franka_msgsSetFullCollisionBehaviorRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetFullCollisionBehaviorRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetFullCollisionBehaviorRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetFullCollisionBehaviorRequest value = readRos1Franka_msgsSetFullCollisionBehaviorRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetFullCollisionBehaviorRequest(Codecs.Writer writer, Ros1Franka_msgsSetFullCollisionBehaviorRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.lower_torque_thresholds_acceleration;
        if(part0 == null || part0.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.upper_torque_thresholds_acceleration;
        if(part1 == null || part1.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.lower_torque_thresholds_nominal;
        if(part2 == null || part2.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.upper_torque_thresholds_nominal;
        if(part3 == null || part3.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.lower_force_thresholds_acceleration;
        if(part4 == null || part4.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.upper_force_thresholds_acceleration;
        if(part5 == null || part5.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double[] part6 = value.lower_force_thresholds_nominal;
        if(part6 == null || part6.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        double[] part7 = value.upper_force_thresholds_nominal;
        if(part7 == null || part7.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f64(part7[i]);
        }
    }

    private static Ros1Franka_msgsSetFullCollisionBehaviorRequest readRos1Franka_msgsSetFullCollisionBehaviorRequest(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetFullCollisionBehaviorRequest value = new Ros1Franka_msgsSetFullCollisionBehaviorRequest();
        value.lower_torque_thresholds_acceleration = new double[7];
        for(int i = 0; i < value.lower_torque_thresholds_acceleration.length; ++i)
            value.lower_torque_thresholds_acceleration[i] = reader.f64();
        value.upper_torque_thresholds_acceleration = new double[7];
        for(int i = 0; i < value.upper_torque_thresholds_acceleration.length; ++i)
            value.upper_torque_thresholds_acceleration[i] = reader.f64();
        value.lower_torque_thresholds_nominal = new double[7];
        for(int i = 0; i < value.lower_torque_thresholds_nominal.length; ++i)
            value.lower_torque_thresholds_nominal[i] = reader.f64();
        value.upper_torque_thresholds_nominal = new double[7];
        for(int i = 0; i < value.upper_torque_thresholds_nominal.length; ++i)
            value.upper_torque_thresholds_nominal[i] = reader.f64();
        value.lower_force_thresholds_acceleration = new double[6];
        for(int i = 0; i < value.lower_force_thresholds_acceleration.length; ++i)
            value.lower_force_thresholds_acceleration[i] = reader.f64();
        value.upper_force_thresholds_acceleration = new double[6];
        for(int i = 0; i < value.upper_force_thresholds_acceleration.length; ++i)
            value.upper_force_thresholds_acceleration[i] = reader.f64();
        value.lower_force_thresholds_nominal = new double[6];
        for(int i = 0; i < value.lower_force_thresholds_nominal.length; ++i)
            value.lower_force_thresholds_nominal[i] = reader.f64();
        value.upper_force_thresholds_nominal = new double[6];
        for(int i = 0; i < value.upper_force_thresholds_nominal.length; ++i)
            value.upper_force_thresholds_nominal[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetFullCollisionBehaviorResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetFullCollisionBehaviorResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetFullCollisionBehaviorResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetFullCollisionBehaviorResponse.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetFullCollisionBehaviorResponse.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String error = "";

        public Ros1Franka_msgsSetFullCollisionBehaviorResponse()
        {
        }

        public static final Codec<Ros1Franka_msgsSetFullCollisionBehaviorResponse> CODEC = new Codec<Ros1Franka_msgsSetFullCollisionBehaviorResponse>() {
            public byte[] encode(Ros1Franka_msgsSetFullCollisionBehaviorResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetFullCollisionBehaviorResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetFullCollisionBehaviorResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetFullCollisionBehaviorResponse value = readRos1Franka_msgsSetFullCollisionBehaviorResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetFullCollisionBehaviorResponse(Codecs.Writer writer, Ros1Franka_msgsSetFullCollisionBehaviorResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_msgsSetFullCollisionBehaviorResponse readRos1Franka_msgsSetFullCollisionBehaviorResponse(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetFullCollisionBehaviorResponse value = new Ros1Franka_msgsSetFullCollisionBehaviorResponse();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetJointImpedanceRequest.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetJointImpedanceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetJointImpedanceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetJointImpedanceRequest.joint_stiffness; native type float64. Exactly
         * 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] joint_stiffness = new double[7];

        public Ros1Franka_msgsSetJointImpedanceRequest()
        {
        }

        public static final Codec<Ros1Franka_msgsSetJointImpedanceRequest> CODEC = new Codec<Ros1Franka_msgsSetJointImpedanceRequest>() {
            public byte[] encode(Ros1Franka_msgsSetJointImpedanceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetJointImpedanceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetJointImpedanceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetJointImpedanceRequest value = readRos1Franka_msgsSetJointImpedanceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetJointImpedanceRequest(Codecs.Writer writer, Ros1Franka_msgsSetJointImpedanceRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.joint_stiffness;
        if(part0 == null || part0.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Franka_msgsSetJointImpedanceRequest readRos1Franka_msgsSetJointImpedanceRequest(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetJointImpedanceRequest value = new Ros1Franka_msgsSetJointImpedanceRequest();
        value.joint_stiffness = new double[7];
        for(int i = 0; i < value.joint_stiffness.length; ++i)
            value.joint_stiffness[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetJointImpedanceResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetJointImpedanceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetJointImpedanceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetJointImpedanceResponse.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetJointImpedanceResponse.error; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros1Franka_msgsSetJointImpedanceResponse()
        {
        }

        public static final Codec<Ros1Franka_msgsSetJointImpedanceResponse> CODEC = new Codec<Ros1Franka_msgsSetJointImpedanceResponse>() {
            public byte[] encode(Ros1Franka_msgsSetJointImpedanceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetJointImpedanceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetJointImpedanceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetJointImpedanceResponse value = readRos1Franka_msgsSetJointImpedanceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetJointImpedanceResponse(Codecs.Writer writer, Ros1Franka_msgsSetJointImpedanceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_msgsSetJointImpedanceResponse readRos1Franka_msgsSetJointImpedanceResponse(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetJointImpedanceResponse value = new Ros1Franka_msgsSetJointImpedanceResponse();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetKFrameRequest.
    // @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetKFrameRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetKFrameRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446";
        public static final int MIN_WIRE_BYTES = 128, MAX_WIRE_BYTES = 128;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetKFrameRequest.EE_T_K; native type float64. Exactly 16 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] EE_T_K = new double[16];

        public Ros1Franka_msgsSetKFrameRequest()
        {
        }

        public static final Codec<Ros1Franka_msgsSetKFrameRequest> CODEC = new Codec<Ros1Franka_msgsSetKFrameRequest>() {
            public byte[] encode(Ros1Franka_msgsSetKFrameRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetKFrameRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetKFrameRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetKFrameRequest value = readRos1Franka_msgsSetKFrameRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetKFrameRequest(Codecs.Writer writer, Ros1Franka_msgsSetKFrameRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.EE_T_K;
        if(part0 == null || part0.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Franka_msgsSetKFrameRequest readRos1Franka_msgsSetKFrameRequest(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetKFrameRequest value = new Ros1Franka_msgsSetKFrameRequest();
        value.EE_T_K = new double[16];
        for(int i = 0; i < value.EE_T_K.length; ++i)
            value.EE_T_K[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetKFrameResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetKFrameResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetKFrameResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetKFrameResponse.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetKFrameResponse.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros1Franka_msgsSetKFrameResponse()
        {
        }

        public static final Codec<Ros1Franka_msgsSetKFrameResponse> CODEC = new Codec<Ros1Franka_msgsSetKFrameResponse>() {
            public byte[] encode(Ros1Franka_msgsSetKFrameResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetKFrameResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetKFrameResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetKFrameResponse value = readRos1Franka_msgsSetKFrameResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetKFrameResponse(Codecs.Writer writer, Ros1Franka_msgsSetKFrameResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_msgsSetKFrameResponse readRos1Franka_msgsSetKFrameResponse(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetKFrameResponse value = new Ros1Franka_msgsSetKFrameResponse();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetLoadRequest.
    // @details Canonical extent 104..104 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetLoadRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetLoadRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5";
        public static final int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetLoadRequest.mass; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double mass = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetLoadRequest.F_x_center_load; native type float64. Exactly 3
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] F_x_center_load = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetLoadRequest.load_inertia; native type float64. Exactly 9 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] load_inertia = new double[9];

        public Ros1Franka_msgsSetLoadRequest()
        {
        }

        public static final Codec<Ros1Franka_msgsSetLoadRequest> CODEC = new Codec<Ros1Franka_msgsSetLoadRequest>() {
            public byte[] encode(Ros1Franka_msgsSetLoadRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetLoadRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetLoadRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetLoadRequest value = readRos1Franka_msgsSetLoadRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetLoadRequest(Codecs.Writer writer, Ros1Franka_msgsSetLoadRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.mass;
        writer.f64(part0);
        double[] part1 = value.F_x_center_load;
        if(part1 == null || part1.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.load_inertia;
        if(part2 == null || part2.length != 9)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros1Franka_msgsSetLoadRequest readRos1Franka_msgsSetLoadRequest(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetLoadRequest value = new Ros1Franka_msgsSetLoadRequest();
        value.mass = reader.f64();
        value.F_x_center_load = new double[3];
        for(int i = 0; i < value.F_x_center_load.length; ++i)
            value.F_x_center_load[i] = reader.f64();
        value.load_inertia = new double[9];
        for(int i = 0; i < value.load_inertia.length; ++i)
            value.load_inertia[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetLoadResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Franka_msgsSetLoadResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "franka_msgs/SetLoadResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetLoadResponse.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetLoadResponse.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros1Franka_msgsSetLoadResponse()
        {
        }

        public static final Codec<Ros1Franka_msgsSetLoadResponse> CODEC = new Codec<Ros1Franka_msgsSetLoadResponse>() {
            public byte[] encode(Ros1Franka_msgsSetLoadResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Franka_msgsSetLoadResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Franka_msgsSetLoadResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Franka_msgsSetLoadResponse value = readRos1Franka_msgsSetLoadResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Franka_msgsSetLoadResponse(Codecs.Writer writer, Ros1Franka_msgsSetLoadResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros1Franka_msgsSetLoadResponse readRos1Franka_msgsSetLoadResponse(Codecs.Reader reader)
    {
        Ros1Franka_msgsSetLoadResponse value = new Ros1Franka_msgsSetLoadResponse();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }
}
