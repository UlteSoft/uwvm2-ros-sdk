// @brief Complete original franka ros2 canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
package org.uwvm.franka.ros2;

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

    // @brief Own every original field of builtin_interfaces/msg/Time.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Builtin_interfacesMsgTime
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "builtin_interfaces/msg/Time";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief This message communicates ROS Time defined here:
         * https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
         * values.
         * @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public int sec = 0;
        /**
         * @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
         * e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
         * represented as {sec: 1, nanosec: 7e8}
         * @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public long nanosec = 0;

        public Ros2Builtin_interfacesMsgTime()
        {
        }

        public static final Codec<Ros2Builtin_interfacesMsgTime> CODEC = new Codec<Ros2Builtin_interfacesMsgTime>() {
            public byte[] encode(Ros2Builtin_interfacesMsgTime value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Builtin_interfacesMsgTime(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Builtin_interfacesMsgTime decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Builtin_interfacesMsgTime value = readRos2Builtin_interfacesMsgTime(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Builtin_interfacesMsgTime(Codecs.Writer writer, Ros2Builtin_interfacesMsgTime value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.sec;
        writer.integer(part0, 4, true);
        long part1 = value.nanosec;
        writer.integer(part1, 4, false);
        if(part1 < 0 || part1 >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
    }

    private static Ros2Builtin_interfacesMsgTime readRos2Builtin_interfacesMsgTime(Codecs.Reader reader)
    {
        Ros2Builtin_interfacesMsgTime value = new Ros2Builtin_interfacesMsgTime();
        value.sec = (int)reader.integer(4, true);
        value.nanosec = reader.integer(4, false);
        if(value.nanosec < 0 || value.nanosec >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
        return value;
    }

    // @brief Own every original field of franka_msgs/action/ErrorRecovery_Goal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionErrorRecovery_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/ErrorRecovery_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_msgsActionErrorRecovery_Goal()
        {
        }

        public static final Codec<Ros2Franka_msgsActionErrorRecovery_Goal> CODEC = new Codec<Ros2Franka_msgsActionErrorRecovery_Goal>() {
            public byte[] encode(Ros2Franka_msgsActionErrorRecovery_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionErrorRecovery_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionErrorRecovery_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionErrorRecovery_Goal value = readRos2Franka_msgsActionErrorRecovery_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionErrorRecovery_Goal(Codecs.Writer writer, Ros2Franka_msgsActionErrorRecovery_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_msgsActionErrorRecovery_Goal readRos2Franka_msgsActionErrorRecovery_Goal(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionErrorRecovery_Goal value = new Ros2Franka_msgsActionErrorRecovery_Goal();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/ErrorRecovery_Result.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionErrorRecovery_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/ErrorRecovery_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_msgsActionErrorRecovery_Result()
        {
        }

        public static final Codec<Ros2Franka_msgsActionErrorRecovery_Result> CODEC = new Codec<Ros2Franka_msgsActionErrorRecovery_Result>() {
            public byte[] encode(Ros2Franka_msgsActionErrorRecovery_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionErrorRecovery_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionErrorRecovery_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionErrorRecovery_Result value = readRos2Franka_msgsActionErrorRecovery_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionErrorRecovery_Result(Codecs.Writer writer, Ros2Franka_msgsActionErrorRecovery_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_msgsActionErrorRecovery_Result readRos2Franka_msgsActionErrorRecovery_Result(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionErrorRecovery_Result value = new Ros2Franka_msgsActionErrorRecovery_Result();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/ErrorRecovery_Feedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionErrorRecovery_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/ErrorRecovery_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_msgsActionErrorRecovery_Feedback()
        {
        }

        public static final Codec<Ros2Franka_msgsActionErrorRecovery_Feedback> CODEC = new Codec<Ros2Franka_msgsActionErrorRecovery_Feedback>() {
            public byte[] encode(Ros2Franka_msgsActionErrorRecovery_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionErrorRecovery_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionErrorRecovery_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionErrorRecovery_Feedback value = readRos2Franka_msgsActionErrorRecovery_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionErrorRecovery_Feedback(Codecs.Writer writer, Ros2Franka_msgsActionErrorRecovery_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_msgsActionErrorRecovery_Feedback readRos2Franka_msgsActionErrorRecovery_Feedback(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionErrorRecovery_Feedback value = new Ros2Franka_msgsActionErrorRecovery_Feedback();
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/GraspEpsilon.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsMsgGraspEpsilon
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/msg/GraspEpsilon";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Maximum tolerated deviation when the actual grasped width is smaller than the commanded grasp
         * width. Unit: [m]
         * @details Original franka_msgs/msg/GraspEpsilon.inner; native type float64. Scalar value. Declared
         * original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double inner = Double.longBitsToDouble(0x3f747ae147ae147bL);
        /**
         * @brief Maximum tolerated deviation when the actual grasped width is larger than the commanded grasp
         * width. Unit: [m]
         * @details Original franka_msgs/msg/GraspEpsilon.outer; native type float64. Scalar value. Declared
         * original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double outer = Double.longBitsToDouble(0x3f747ae147ae147bL);

        public Ros2Franka_msgsMsgGraspEpsilon()
        {
        }

        public static final Codec<Ros2Franka_msgsMsgGraspEpsilon> CODEC = new Codec<Ros2Franka_msgsMsgGraspEpsilon>() {
            public byte[] encode(Ros2Franka_msgsMsgGraspEpsilon value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsMsgGraspEpsilon(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsMsgGraspEpsilon decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsMsgGraspEpsilon value = readRos2Franka_msgsMsgGraspEpsilon(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsMsgGraspEpsilon(Codecs.Writer writer, Ros2Franka_msgsMsgGraspEpsilon value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.inner;
        writer.f64(part0);
        double part1 = value.outer;
        writer.f64(part1);
    }

    private static Ros2Franka_msgsMsgGraspEpsilon readRos2Franka_msgsMsgGraspEpsilon(Codecs.Reader reader)
    {
        Ros2Franka_msgsMsgGraspEpsilon value = new Ros2Franka_msgsMsgGraspEpsilon();
        value.inner = reader.f64();
        value.outer = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Grasp_Goal.
    // @details Canonical extent 40..40 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionGrasp_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/Grasp_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Grasp_Goal.width; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double width = 0;
        /**
         * @brief Retain the complete original franka_msgs/msg/GraspEpsilon field.
         * @details Original franka_msgs/action/Grasp_Goal.epsilon; native type franka_msgs/msg/GraspEpsilon.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Franka_msgsMsgGraspEpsilon epsilon = new Ros2Franka_msgsMsgGraspEpsilon();
        /**
         * @brief [m/s]
         * @details Original franka_msgs/action/Grasp_Goal.speed; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double speed = 0;
        /**
         * @brief [N]
         * @details Original franka_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double force = 0;

        public Ros2Franka_msgsActionGrasp_Goal()
        {
        }

        public static final Codec<Ros2Franka_msgsActionGrasp_Goal> CODEC = new Codec<Ros2Franka_msgsActionGrasp_Goal>() {
            public byte[] encode(Ros2Franka_msgsActionGrasp_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionGrasp_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionGrasp_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionGrasp_Goal value = readRos2Franka_msgsActionGrasp_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionGrasp_Goal(Codecs.Writer writer, Ros2Franka_msgsActionGrasp_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.width;
        writer.f64(part0);
        Ros2Franka_msgsMsgGraspEpsilon part1 = value.epsilon;
        writeRos2Franka_msgsMsgGraspEpsilon(writer, part1);
        double part2 = value.speed;
        writer.f64(part2);
        double part3 = value.force;
        writer.f64(part3);
    }

    private static Ros2Franka_msgsActionGrasp_Goal readRos2Franka_msgsActionGrasp_Goal(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionGrasp_Goal value = new Ros2Franka_msgsActionGrasp_Goal();
        value.width = reader.f64();
        value.epsilon = readRos2Franka_msgsMsgGraspEpsilon(reader);
        value.speed = reader.f64();
        value.force = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Grasp_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionGrasp_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/Grasp_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros2Franka_msgsActionGrasp_Result()
        {
        }

        public static final Codec<Ros2Franka_msgsActionGrasp_Result> CODEC = new Codec<Ros2Franka_msgsActionGrasp_Result>() {
            public byte[] encode(Ros2Franka_msgsActionGrasp_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionGrasp_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionGrasp_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionGrasp_Result value = readRos2Franka_msgsActionGrasp_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionGrasp_Result(Codecs.Writer writer, Ros2Franka_msgsActionGrasp_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsActionGrasp_Result readRos2Franka_msgsActionGrasp_Result(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionGrasp_Result value = new Ros2Franka_msgsActionGrasp_Result();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Grasp_Feedback.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionGrasp_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/Grasp_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double current_width = 0;

        public Ros2Franka_msgsActionGrasp_Feedback()
        {
        }

        public static final Codec<Ros2Franka_msgsActionGrasp_Feedback> CODEC = new Codec<Ros2Franka_msgsActionGrasp_Feedback>() {
            public byte[] encode(Ros2Franka_msgsActionGrasp_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionGrasp_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionGrasp_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionGrasp_Feedback value = readRos2Franka_msgsActionGrasp_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionGrasp_Feedback(Codecs.Writer writer, Ros2Franka_msgsActionGrasp_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.current_width;
        writer.f64(part0);
    }

    private static Ros2Franka_msgsActionGrasp_Feedback readRos2Franka_msgsActionGrasp_Feedback(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionGrasp_Feedback value = new Ros2Franka_msgsActionGrasp_Feedback();
        value.current_width = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Homing_Goal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionHoming_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/Homing_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_msgsActionHoming_Goal()
        {
        }

        public static final Codec<Ros2Franka_msgsActionHoming_Goal> CODEC = new Codec<Ros2Franka_msgsActionHoming_Goal>() {
            public byte[] encode(Ros2Franka_msgsActionHoming_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionHoming_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionHoming_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionHoming_Goal value = readRos2Franka_msgsActionHoming_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionHoming_Goal(Codecs.Writer writer, Ros2Franka_msgsActionHoming_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_msgsActionHoming_Goal readRos2Franka_msgsActionHoming_Goal(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionHoming_Goal value = new Ros2Franka_msgsActionHoming_Goal();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Homing_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionHoming_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/Homing_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/action/Homing_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/action/Homing_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros2Franka_msgsActionHoming_Result()
        {
        }

        public static final Codec<Ros2Franka_msgsActionHoming_Result> CODEC = new Codec<Ros2Franka_msgsActionHoming_Result>() {
            public byte[] encode(Ros2Franka_msgsActionHoming_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionHoming_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionHoming_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionHoming_Result value = readRos2Franka_msgsActionHoming_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionHoming_Result(Codecs.Writer writer, Ros2Franka_msgsActionHoming_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsActionHoming_Result readRos2Franka_msgsActionHoming_Result(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionHoming_Result value = new Ros2Franka_msgsActionHoming_Result();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Homing_Feedback.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionHoming_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/Homing_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Homing_Feedback.current_width; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double current_width = 0;

        public Ros2Franka_msgsActionHoming_Feedback()
        {
        }

        public static final Codec<Ros2Franka_msgsActionHoming_Feedback> CODEC = new Codec<Ros2Franka_msgsActionHoming_Feedback>() {
            public byte[] encode(Ros2Franka_msgsActionHoming_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionHoming_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionHoming_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionHoming_Feedback value = readRos2Franka_msgsActionHoming_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionHoming_Feedback(Codecs.Writer writer, Ros2Franka_msgsActionHoming_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.current_width;
        writer.f64(part0);
    }

    private static Ros2Franka_msgsActionHoming_Feedback readRos2Franka_msgsActionHoming_Feedback(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionHoming_Feedback value = new Ros2Franka_msgsActionHoming_Feedback();
        value.current_width = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Move_Goal.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionMove_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/Move_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double width = 0;
        /**
         * @brief [m/s]
         * @details Original franka_msgs/action/Move_Goal.speed; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double speed = 0;

        public Ros2Franka_msgsActionMove_Goal()
        {
        }

        public static final Codec<Ros2Franka_msgsActionMove_Goal> CODEC = new Codec<Ros2Franka_msgsActionMove_Goal>() {
            public byte[] encode(Ros2Franka_msgsActionMove_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionMove_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionMove_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionMove_Goal value = readRos2Franka_msgsActionMove_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionMove_Goal(Codecs.Writer writer, Ros2Franka_msgsActionMove_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.width;
        writer.f64(part0);
        double part1 = value.speed;
        writer.f64(part1);
    }

    private static Ros2Franka_msgsActionMove_Goal readRos2Franka_msgsActionMove_Goal(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionMove_Goal value = new Ros2Franka_msgsActionMove_Goal();
        value.width = reader.f64();
        value.speed = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Move_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionMove_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/Move_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros2Franka_msgsActionMove_Result()
        {
        }

        public static final Codec<Ros2Franka_msgsActionMove_Result> CODEC = new Codec<Ros2Franka_msgsActionMove_Result>() {
            public byte[] encode(Ros2Franka_msgsActionMove_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionMove_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionMove_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionMove_Result value = readRos2Franka_msgsActionMove_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionMove_Result(Codecs.Writer writer, Ros2Franka_msgsActionMove_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsActionMove_Result readRos2Franka_msgsActionMove_Result(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionMove_Result value = new Ros2Franka_msgsActionMove_Result();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Move_Feedback.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionMove_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/Move_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double current_width = 0;

        public Ros2Franka_msgsActionMove_Feedback()
        {
        }

        public static final Codec<Ros2Franka_msgsActionMove_Feedback> CODEC = new Codec<Ros2Franka_msgsActionMove_Feedback>() {
            public byte[] encode(Ros2Franka_msgsActionMove_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionMove_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionMove_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionMove_Feedback value = readRos2Franka_msgsActionMove_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionMove_Feedback(Codecs.Writer writer, Ros2Franka_msgsActionMove_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.current_width;
        writer.f64(part0);
    }

    private static Ros2Franka_msgsActionMove_Feedback readRos2Franka_msgsActionMove_Feedback(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionMove_Feedback value = new Ros2Franka_msgsActionMove_Feedback();
        value.current_width = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/PTPMotion_Goal.
    // @details Canonical extent 16..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionPTPMotion_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/PTPMotion_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 128;
        /**
         * @brief ## This defines a PTPMotion action for controlling a Franka robot using point-to-point motion
         * commands. The goal_joint_configuration specifies the desired joint angles. [rad]
         * @details Original franka_msgs/action/PTPMotion_Goal.goal_joint_configuration; native type float64.
         * At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] goal_joint_configuration = new double[0];
        /**
         * @brief The maximum allowed joint velocities for the motion. [rad/s]
         * @details Original franka_msgs/action/PTPMotion_Goal.maximum_joint_velocities; native type float64.
         * At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] maximum_joint_velocities = new double[0];
        /**
         * @brief The acceptable goal tolerance for the motion. The 'target reached condition is met when - the
         * absolute difference between the current and goal joint positions is within this goal_tolerance - the
         * joint velocities are below a small threshold [rad]
         * @details Original franka_msgs/action/PTPMotion_Goal.goal_tolerance; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double goal_tolerance = 0;

        public Ros2Franka_msgsActionPTPMotion_Goal()
        {
        }

        public static final Codec<Ros2Franka_msgsActionPTPMotion_Goal> CODEC = new Codec<Ros2Franka_msgsActionPTPMotion_Goal>() {
            public byte[] encode(Ros2Franka_msgsActionPTPMotion_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionPTPMotion_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionPTPMotion_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionPTPMotion_Goal value = readRos2Franka_msgsActionPTPMotion_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionPTPMotion_Goal(Codecs.Writer writer, Ros2Franka_msgsActionPTPMotion_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.goal_joint_configuration;
        if(part0 == null || part0.length > 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.maximum_joint_velocities;
        if(part1 == null || part1.length > 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double part2 = value.goal_tolerance;
        writer.f64(part2);
    }

    private static Ros2Franka_msgsActionPTPMotion_Goal readRos2Franka_msgsActionPTPMotion_Goal(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionPTPMotion_Goal value = new Ros2Franka_msgsActionPTPMotion_Goal();
        value.goal_joint_configuration = new double[readCount(reader, 7, 8)];
        for(int i = 0; i < value.goal_joint_configuration.length; ++i)
            value.goal_joint_configuration[i] = reader.f64();
        value.maximum_joint_velocities = new double[readCount(reader, 7, 8)];
        for(int i = 0; i < value.maximum_joint_velocities.length; ++i)
            value.maximum_joint_velocities[i] = reader.f64();
        value.goal_tolerance = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/TargetStatus.
    // @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsMsgTargetStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/msg/TargetStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief # The current status of the motion (one of the above states)
         * @details Original franka_msgs/msg/TargetStatus.status; native type uint8. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public int status = 0;

        public Ros2Franka_msgsMsgTargetStatus()
        {
        }

        public static final Codec<Ros2Franka_msgsMsgTargetStatus> CODEC = new Codec<Ros2Franka_msgsMsgTargetStatus>() {
            public byte[] encode(Ros2Franka_msgsMsgTargetStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsMsgTargetStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsMsgTargetStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsMsgTargetStatus value = readRos2Franka_msgsMsgTargetStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsMsgTargetStatus(Codecs.Writer writer, Ros2Franka_msgsMsgTargetStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.status;
        writer.integer(part0, 1, false);
    }

    private static Ros2Franka_msgsMsgTargetStatus readRos2Franka_msgsMsgTargetStatus(Codecs.Reader reader)
    {
        Ros2Franka_msgsMsgTargetStatus value = new Ros2Franka_msgsMsgTargetStatus();
        value.status = (int)reader.integer(1, false);
        return value;
    }

    // @brief Own every original field of franka_msgs/action/PTPMotion_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionPTPMotion_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/PTPMotion_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Result of the point-to-point motion action
         * @details Original franka_msgs/action/PTPMotion_Result.target_status; native type
         * franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Franka_msgsMsgTargetStatus target_status = new Ros2Franka_msgsMsgTargetStatus();
        /**
         * @brief In case of failure, an error message describing the issue
         * @details Original franka_msgs/action/PTPMotion_Result.error_message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String error_message = "";

        public Ros2Franka_msgsActionPTPMotion_Result()
        {
        }

        public static final Codec<Ros2Franka_msgsActionPTPMotion_Result> CODEC = new Codec<Ros2Franka_msgsActionPTPMotion_Result>() {
            public byte[] encode(Ros2Franka_msgsActionPTPMotion_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionPTPMotion_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionPTPMotion_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionPTPMotion_Result value = readRos2Franka_msgsActionPTPMotion_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionPTPMotion_Result(Codecs.Writer writer, Ros2Franka_msgsActionPTPMotion_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Franka_msgsMsgTargetStatus part0 = value.target_status;
        writeRos2Franka_msgsMsgTargetStatus(writer, part0);
        String part1 = value.error_message;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsActionPTPMotion_Result readRos2Franka_msgsActionPTPMotion_Result(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionPTPMotion_Result value = new Ros2Franka_msgsActionPTPMotion_Result();
        value.target_status = readRos2Franka_msgsMsgTargetStatus(reader);
        value.error_message = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/action/PTPMotion_Feedback.
    // @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsActionPTPMotion_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/action/PTPMotion_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Feedback during the execution of the point-to-point motion
         * @details Original franka_msgs/action/PTPMotion_Feedback.target_status; native type
         * franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Franka_msgsMsgTargetStatus target_status = new Ros2Franka_msgsMsgTargetStatus();

        public Ros2Franka_msgsActionPTPMotion_Feedback()
        {
        }

        public static final Codec<Ros2Franka_msgsActionPTPMotion_Feedback> CODEC = new Codec<Ros2Franka_msgsActionPTPMotion_Feedback>() {
            public byte[] encode(Ros2Franka_msgsActionPTPMotion_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsActionPTPMotion_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsActionPTPMotion_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsActionPTPMotion_Feedback value = readRos2Franka_msgsActionPTPMotion_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsActionPTPMotion_Feedback(Codecs.Writer writer, Ros2Franka_msgsActionPTPMotion_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Franka_msgsMsgTargetStatus part0 = value.target_status;
        writeRos2Franka_msgsMsgTargetStatus(writer, part0);
    }

    private static Ros2Franka_msgsActionPTPMotion_Feedback readRos2Franka_msgsActionPTPMotion_Feedback(Codecs.Reader reader)
    {
        Ros2Franka_msgsActionPTPMotion_Feedback value = new Ros2Franka_msgsActionPTPMotion_Feedback();
        value.target_status = readRos2Franka_msgsMsgTargetStatus(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Vector3.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgVector3
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Vector3";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief This represents a vector in free space. This is semantically different than a point. A vector
         * is always anchored at the origin. When a transform is applied to a vector, only the rotational
         * component is applied.
         * @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double z = 0;

        public Ros2Geometry_msgsMsgVector3()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgVector3> CODEC = new Codec<Ros2Geometry_msgsMsgVector3>() {
            public byte[] encode(Ros2Geometry_msgsMsgVector3 value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgVector3(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgVector3 decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgVector3 value = readRos2Geometry_msgsMsgVector3(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgVector3(Codecs.Writer writer, Ros2Geometry_msgsMsgVector3 value)
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

    private static Ros2Geometry_msgsMsgVector3 readRos2Geometry_msgsMsgVector3(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgVector3 value = new Ros2Geometry_msgsMsgVector3();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/CollisionIndicators.
    // @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsMsgCollisionIndicators
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/msg/CollisionIndicators";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1";
        public static final int MIN_WIRE_BYTES = 208, MAX_WIRE_BYTES = 208;
        /**
         * @brief ## Indicates which dimensions have an active contact/collision flag raised
         * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_collision; native type
         * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Geometry_msgsMsgVector3 is_cartesian_linear_collision = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_collision; native type
         * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Geometry_msgsMsgVector3 is_cartesian_angular_collision = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_contact; native type
         * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Geometry_msgsMsgVector3 is_cartesian_linear_contact = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_contact; native type
         * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Geometry_msgsMsgVector3 is_cartesian_angular_contact = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_joint_collision; native type float64.
         * Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] is_joint_collision = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_joint_contact; native type float64. Exactly
         * 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] is_joint_contact = new double[7];

        public Ros2Franka_msgsMsgCollisionIndicators()
        {
        }

        public static final Codec<Ros2Franka_msgsMsgCollisionIndicators> CODEC = new Codec<Ros2Franka_msgsMsgCollisionIndicators>() {
            public byte[] encode(Ros2Franka_msgsMsgCollisionIndicators value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsMsgCollisionIndicators(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsMsgCollisionIndicators decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsMsgCollisionIndicators value = readRos2Franka_msgsMsgCollisionIndicators(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsMsgCollisionIndicators(Codecs.Writer writer, Ros2Franka_msgsMsgCollisionIndicators value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgVector3 part0 = value.is_cartesian_linear_collision;
        writeRos2Geometry_msgsMsgVector3(writer, part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.is_cartesian_angular_collision;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
        Ros2Geometry_msgsMsgVector3 part2 = value.is_cartesian_linear_contact;
        writeRos2Geometry_msgsMsgVector3(writer, part2);
        Ros2Geometry_msgsMsgVector3 part3 = value.is_cartesian_angular_contact;
        writeRos2Geometry_msgsMsgVector3(writer, part3);
        double[] part4 = value.is_joint_collision;
        if(part4 == null || part4.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.is_joint_contact;
        if(part5 == null || part5.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
    }

    private static Ros2Franka_msgsMsgCollisionIndicators readRos2Franka_msgsMsgCollisionIndicators(Codecs.Reader reader)
    {
        Ros2Franka_msgsMsgCollisionIndicators value = new Ros2Franka_msgsMsgCollisionIndicators();
        value.is_cartesian_linear_collision = readRos2Geometry_msgsMsgVector3(reader);
        value.is_cartesian_angular_collision = readRos2Geometry_msgsMsgVector3(reader);
        value.is_cartesian_linear_contact = readRos2Geometry_msgsMsgVector3(reader);
        value.is_cartesian_angular_contact = readRos2Geometry_msgsMsgVector3(reader);
        value.is_joint_collision = new double[7];
        for(int i = 0; i < value.is_joint_collision.length; ++i)
            value.is_joint_collision[i] = reader.f64();
        value.is_joint_contact = new double[7];
        for(int i = 0; i < value.is_joint_contact.length; ++i)
            value.is_joint_contact[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/Elbow.
    // @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsMsgElbow
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/msg/Elbow";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6";
        public static final int MIN_WIRE_BYTES = 80, MAX_WIRE_BYTES = 80;
        /**
         * @brief ## The state of the elbow
         * @details Original franka_msgs/msg/Elbow.position; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] position = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/Elbow.desired_position; native type float64. Exactly 2 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] desired_position = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/Elbow.commanded_position; native type float64. Exactly 2 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] commanded_position = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/Elbow.commanded_velocity; native type float64. Exactly 2 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] commanded_velocity = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/Elbow.commanded_acceleration; native type float64. Exactly 2
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] commanded_acceleration = new double[2];

        public Ros2Franka_msgsMsgElbow()
        {
        }

        public static final Codec<Ros2Franka_msgsMsgElbow> CODEC = new Codec<Ros2Franka_msgsMsgElbow>() {
            public byte[] encode(Ros2Franka_msgsMsgElbow value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsMsgElbow(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsMsgElbow decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsMsgElbow value = readRos2Franka_msgsMsgElbow(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsMsgElbow(Codecs.Writer writer, Ros2Franka_msgsMsgElbow value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.position;
        if(part0 == null || part0.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.desired_position;
        if(part1 == null || part1.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.commanded_position;
        if(part2 == null || part2.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.commanded_velocity;
        if(part3 == null || part3.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.commanded_acceleration;
        if(part4 == null || part4.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
    }

    private static Ros2Franka_msgsMsgElbow readRos2Franka_msgsMsgElbow(Codecs.Reader reader)
    {
        Ros2Franka_msgsMsgElbow value = new Ros2Franka_msgsMsgElbow();
        value.position = new double[2];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.desired_position = new double[2];
        for(int i = 0; i < value.desired_position.length; ++i)
            value.desired_position[i] = reader.f64();
        value.commanded_position = new double[2];
        for(int i = 0; i < value.commanded_position.length; ++i)
            value.commanded_position[i] = reader.f64();
        value.commanded_velocity = new double[2];
        for(int i = 0; i < value.commanded_velocity.length; ++i)
            value.commanded_velocity[i] = reader.f64();
        value.commanded_acceleration = new double[2];
        for(int i = 0; i < value.commanded_acceleration.length; ++i)
            value.commanded_acceleration[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/Errors.
    // @details Canonical extent 36..36 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsMsgErrors
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/msg/Errors";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 36;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_position_limits_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_position_limits_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.self_collision_avoidance_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean self_collision_avoidance_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_velocity_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_velocity_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_velocity_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_velocity_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.force_control_safety_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean force_control_safety_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_reflex; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_reflex = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_reflex; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_reflex = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean max_goal_pose_deviation_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.max_path_pose_deviation_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean max_path_pose_deviation_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_velocity_profile_safety_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_velocity_profile_safety_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_position_motion_generator_start_pose_invalid; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_position_motion_generator_start_pose_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_motion_generator_position_limits_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_motion_generator_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_limits_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_motion_generator_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_motion_generator_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_motion_generator_acceleration_discontinuity; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_motion_generator_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_start_pose_invalid;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_position_motion_generator_start_pose_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_limit_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_elbow_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_discontinuity; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_acceleration_discontinuity;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_elbow_sign_inconsistent = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_start_elbow_invalid; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_start_elbow_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_position_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_joint_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_joint_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_discontinuity;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_joint_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original
         * franka_msgs/msg/Errors.cartesian_motion_generator_joint_acceleration_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_motion_generator_joint_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_invalid_frame; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean cartesian_position_motion_generator_invalid_frame = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.force_controller_desired_force_tolerance_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean force_controller_desired_force_tolerance_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.controller_torque_discontinuity; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean controller_torque_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.start_elbow_sign_inconsistent; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean start_elbow_sign_inconsistent = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.communication_constraints_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean communication_constraints_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.power_limit_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean power_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_p2p_insufficient_torque_for_planning; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean joint_p2p_insufficient_torque_for_planning = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.tau_j_range_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean tau_j_range_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.instability_detected; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean instability_detected = false;

        public Ros2Franka_msgsMsgErrors()
        {
        }

        public static final Codec<Ros2Franka_msgsMsgErrors> CODEC = new Codec<Ros2Franka_msgsMsgErrors>() {
            public byte[] encode(Ros2Franka_msgsMsgErrors value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsMsgErrors(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsMsgErrors decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsMsgErrors value = readRos2Franka_msgsMsgErrors(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsMsgErrors(Codecs.Writer writer, Ros2Franka_msgsMsgErrors value)
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
    }

    private static Ros2Franka_msgsMsgErrors readRos2Franka_msgsMsgErrors(Codecs.Reader reader)
    {
        Ros2Franka_msgsMsgErrors value = new Ros2Franka_msgsMsgErrors();
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
        return value;
    }

    // @brief Own every original field of std_msgs/msg/Header.
    // @details Canonical extent 12..140 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Std_msgsMsgHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        /**
         * @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
         * timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
         * seconds and nanoseconds.
         * @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Builtin_interfacesMsgTime stamp = new Ros2Builtin_interfacesMsgTime();
        /**
         * @brief Transform frame with which this data is associated.
         * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
         * bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
        public String frame_id = "";

        public Ros2Std_msgsMsgHeader()
        {
        }

        public static final Codec<Ros2Std_msgsMsgHeader> CODEC = new Codec<Ros2Std_msgsMsgHeader>() {
            public byte[] encode(Ros2Std_msgsMsgHeader value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_msgsMsgHeader(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_msgsMsgHeader decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgHeader value = readRos2Std_msgsMsgHeader(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_msgsMsgHeader(Codecs.Writer writer, Ros2Std_msgsMsgHeader value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Builtin_interfacesMsgTime part0 = value.stamp;
        writeRos2Builtin_interfacesMsgTime(writer, part0);
        String part1 = value.frame_id;
        writeText(writer, part1, 128);
    }

    private static Ros2Std_msgsMsgHeader readRos2Std_msgsMsgHeader(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgHeader value = new Ros2Std_msgsMsgHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.frame_id = readText(reader, 128);
        return value;
    }

    // @brief Own every original field of sensor_msgs/msg/JointState.
    // @details Canonical extent 28..1248 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Sensor_msgsMsgJointState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "sensor_msgs/msg/JointState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1248;
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
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original string field.
         * @details Original sensor_msgs/msg/JointState.name; native type string. At most 7 elements. UTF-8
         * capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String[] name = new String[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.position; native type float64. At most 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] position = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] velocity = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] effort = new double[0];

        public Ros2Sensor_msgsMsgJointState()
        {
        }

        public static final Codec<Ros2Sensor_msgsMsgJointState> CODEC = new Codec<Ros2Sensor_msgsMsgJointState>() {
            public byte[] encode(Ros2Sensor_msgsMsgJointState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Sensor_msgsMsgJointState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Sensor_msgsMsgJointState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Sensor_msgsMsgJointState value = readRos2Sensor_msgsMsgJointState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Sensor_msgsMsgJointState(Codecs.Writer writer, Ros2Sensor_msgsMsgJointState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String[] part1 = value.name;
        if(part1 == null || part1.length > 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 128);
        }
        double[] part2 = value.position;
        if(part2 == null || part2.length > 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.velocity;
        if(part3 == null || part3.length > 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.effort;
        if(part4 == null || part4.length > 7)
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

    private static Ros2Sensor_msgsMsgJointState readRos2Sensor_msgsMsgJointState(Codecs.Reader reader)
    {
        Ros2Sensor_msgsMsgJointState value = new Ros2Sensor_msgsMsgJointState();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.name = new String[readCount(reader, 7, 4)];
        for(int i = 0; i < value.name.length; ++i)
            value.name[i] = readText(reader, 128);
        value.position = new double[readCount(reader, 7, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.velocity = new double[readCount(reader, 7, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = reader.f64();
        value.effort = new double[readCount(reader, 7, 8)];
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

    // @brief Own every original field of geometry_msgs/msg/Wrench.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgWrench
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Wrench";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        /**
         * @brief This represents force in free space, separated into its linear and angular parts.
         * @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 force = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 torque = new Ros2Geometry_msgsMsgVector3();

        public Ros2Geometry_msgsMsgWrench()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgWrench> CODEC = new Codec<Ros2Geometry_msgsMsgWrench>() {
            public byte[] encode(Ros2Geometry_msgsMsgWrench value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgWrench(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgWrench decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgWrench value = readRos2Geometry_msgsMsgWrench(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgWrench(Codecs.Writer writer, Ros2Geometry_msgsMsgWrench value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgVector3 part0 = value.force;
        writeRos2Geometry_msgsMsgVector3(writer, part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.torque;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static Ros2Geometry_msgsMsgWrench readRos2Geometry_msgsMsgWrench(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgWrench value = new Ros2Geometry_msgsMsgWrench();
        value.force = readRos2Geometry_msgsMsgVector3(reader);
        value.torque = readRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/WrenchStamped.
    // @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgWrenchStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/WrenchStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66";
        public static final int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 188;
        /**
         * @brief A wrench with reference coordinate frame and timestamp
         * @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Wrench field.
         * @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgWrench wrench = new Ros2Geometry_msgsMsgWrench();

        public Ros2Geometry_msgsMsgWrenchStamped()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgWrenchStamped> CODEC = new Codec<Ros2Geometry_msgsMsgWrenchStamped>() {
            public byte[] encode(Ros2Geometry_msgsMsgWrenchStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgWrenchStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgWrenchStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgWrenchStamped value = readRos2Geometry_msgsMsgWrenchStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgWrenchStamped(Codecs.Writer writer, Ros2Geometry_msgsMsgWrenchStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgWrench part1 = value.wrench;
        writeRos2Geometry_msgsMsgWrench(writer, part1);
    }

    private static Ros2Geometry_msgsMsgWrenchStamped readRos2Geometry_msgsMsgWrenchStamped(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgWrenchStamped value = new Ros2Geometry_msgsMsgWrenchStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.wrench = readRos2Geometry_msgsMsgWrench(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Inertia.
    // @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgInertia
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Inertia";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a";
        public static final int MIN_WIRE_BYTES = 80, MAX_WIRE_BYTES = 80;
        /**
         * @brief Mass [kg]
         * @details Original geometry_msgs/msg/Inertia.m; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double m = 0;
        /**
         * @brief Center of mass [m]
         * @details Original geometry_msgs/msg/Inertia.com; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 com = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Inertia Tensor [kg-m^2] about the center of mass | ixx ixy ixz | I = | ixy iyy iyz | | ixz
         * iyz izz |
         * @details Original geometry_msgs/msg/Inertia.ixx; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double ixx = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.ixy; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double ixy = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.ixz; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double ixz = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.iyy; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double iyy = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.iyz; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double iyz = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.izz; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double izz = 0;

        public Ros2Geometry_msgsMsgInertia()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgInertia> CODEC = new Codec<Ros2Geometry_msgsMsgInertia>() {
            public byte[] encode(Ros2Geometry_msgsMsgInertia value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgInertia(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgInertia decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgInertia value = readRos2Geometry_msgsMsgInertia(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgInertia(Codecs.Writer writer, Ros2Geometry_msgsMsgInertia value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.m;
        writer.f64(part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.com;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
        double part2 = value.ixx;
        writer.f64(part2);
        double part3 = value.ixy;
        writer.f64(part3);
        double part4 = value.ixz;
        writer.f64(part4);
        double part5 = value.iyy;
        writer.f64(part5);
        double part6 = value.iyz;
        writer.f64(part6);
        double part7 = value.izz;
        writer.f64(part7);
    }

    private static Ros2Geometry_msgsMsgInertia readRos2Geometry_msgsMsgInertia(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgInertia value = new Ros2Geometry_msgsMsgInertia();
        value.m = reader.f64();
        value.com = readRos2Geometry_msgsMsgVector3(reader);
        value.ixx = reader.f64();
        value.ixy = reader.f64();
        value.ixz = reader.f64();
        value.iyy = reader.f64();
        value.iyz = reader.f64();
        value.izz = reader.f64();
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/InertiaStamped.
    // @details Canonical extent 92..220 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgInertiaStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/InertiaStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576";
        public static final int MIN_WIRE_BYTES = 92, MAX_WIRE_BYTES = 220;
        /**
         * @brief An Inertia with a time stamp and reference frame.
         * @details Original geometry_msgs/msg/InertiaStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Inertia field.
         * @details Original geometry_msgs/msg/InertiaStamped.inertia; native type geometry_msgs/msg/Inertia.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgInertia inertia = new Ros2Geometry_msgsMsgInertia();

        public Ros2Geometry_msgsMsgInertiaStamped()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgInertiaStamped> CODEC = new Codec<Ros2Geometry_msgsMsgInertiaStamped>() {
            public byte[] encode(Ros2Geometry_msgsMsgInertiaStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgInertiaStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgInertiaStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgInertiaStamped value = readRos2Geometry_msgsMsgInertiaStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgInertiaStamped(Codecs.Writer writer, Ros2Geometry_msgsMsgInertiaStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgInertia part1 = value.inertia;
        writeRos2Geometry_msgsMsgInertia(writer, part1);
    }

    private static Ros2Geometry_msgsMsgInertiaStamped readRos2Geometry_msgsMsgInertiaStamped(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgInertiaStamped value = new Ros2Geometry_msgsMsgInertiaStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.inertia = readRos2Geometry_msgsMsgInertia(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Point.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Point";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief This contains the position of a point in free space
         * @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double z = 0;

        public Ros2Geometry_msgsMsgPoint()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPoint> CODEC = new Codec<Ros2Geometry_msgsMsgPoint>() {
            public byte[] encode(Ros2Geometry_msgsMsgPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPoint value = readRos2Geometry_msgsMsgPoint(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPoint(Codecs.Writer writer, Ros2Geometry_msgsMsgPoint value)
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

    private static Ros2Geometry_msgsMsgPoint readRos2Geometry_msgsMsgPoint(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPoint value = new Ros2Geometry_msgsMsgPoint();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Quaternion.
    // @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgQuaternion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Quaternion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        /**
         * @brief This represents an orientation in free space in quaternion form.
         * @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
         * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double x = Double.longBitsToDouble(0x0000000000000000L);
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
         * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double y = Double.longBitsToDouble(0x0000000000000000L);
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
         * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double z = Double.longBitsToDouble(0x0000000000000000L);
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
         * original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double w = Double.longBitsToDouble(0x3ff0000000000000L);

        public Ros2Geometry_msgsMsgQuaternion()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgQuaternion> CODEC = new Codec<Ros2Geometry_msgsMsgQuaternion>() {
            public byte[] encode(Ros2Geometry_msgsMsgQuaternion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgQuaternion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgQuaternion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgQuaternion value = readRos2Geometry_msgsMsgQuaternion(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgQuaternion(Codecs.Writer writer, Ros2Geometry_msgsMsgQuaternion value)
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

    private static Ros2Geometry_msgsMsgQuaternion readRos2Geometry_msgsMsgQuaternion(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgQuaternion value = new Ros2Geometry_msgsMsgQuaternion();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        value.w = reader.f64();
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Pose.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgPose
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Pose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief A representation of pose in free space, composed of position and orientation.
         * @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgPoint position = new Ros2Geometry_msgsMsgPoint();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Quaternion field.
         * @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgQuaternion orientation = new Ros2Geometry_msgsMsgQuaternion();

        public Ros2Geometry_msgsMsgPose()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPose> CODEC = new Codec<Ros2Geometry_msgsMsgPose>() {
            public byte[] encode(Ros2Geometry_msgsMsgPose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPose value = readRos2Geometry_msgsMsgPose(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPose(Codecs.Writer writer, Ros2Geometry_msgsMsgPose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPoint part0 = value.position;
        writeRos2Geometry_msgsMsgPoint(writer, part0);
        Ros2Geometry_msgsMsgQuaternion part1 = value.orientation;
        writeRos2Geometry_msgsMsgQuaternion(writer, part1);
    }

    private static Ros2Geometry_msgsMsgPose readRos2Geometry_msgsMsgPose(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPose value = new Ros2Geometry_msgsMsgPose();
        value.position = readRos2Geometry_msgsMsgPoint(reader);
        value.orientation = readRos2Geometry_msgsMsgQuaternion(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/PoseStamped.
    // @details Canonical extent 68..196 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgPoseStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/PoseStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2";
        public static final int MIN_WIRE_BYTES = 68, MAX_WIRE_BYTES = 196;
        /**
         * @brief A Pose with reference coordinate frame and timestamp
         * @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();

        public Ros2Geometry_msgsMsgPoseStamped()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPoseStamped> CODEC = new Codec<Ros2Geometry_msgsMsgPoseStamped>() {
            public byte[] encode(Ros2Geometry_msgsMsgPoseStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPoseStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPoseStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPoseStamped value = readRos2Geometry_msgsMsgPoseStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPoseStamped(Codecs.Writer writer, Ros2Geometry_msgsMsgPoseStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgPose part1 = value.pose;
        writeRos2Geometry_msgsMsgPose(writer, part1);
    }

    private static Ros2Geometry_msgsMsgPoseStamped readRos2Geometry_msgsMsgPoseStamped(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPoseStamped value = new Ros2Geometry_msgsMsgPoseStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Twist.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgTwist
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Twist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        /**
         * @brief This expresses velocity in free space broken into its linear and angular parts.
         * @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 linear = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 angular = new Ros2Geometry_msgsMsgVector3();

        public Ros2Geometry_msgsMsgTwist()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgTwist> CODEC = new Codec<Ros2Geometry_msgsMsgTwist>() {
            public byte[] encode(Ros2Geometry_msgsMsgTwist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgTwist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgTwist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgTwist value = readRos2Geometry_msgsMsgTwist(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgTwist(Codecs.Writer writer, Ros2Geometry_msgsMsgTwist value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgVector3 part0 = value.linear;
        writeRos2Geometry_msgsMsgVector3(writer, part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.angular;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static Ros2Geometry_msgsMsgTwist readRos2Geometry_msgsMsgTwist(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgTwist value = new Ros2Geometry_msgsMsgTwist();
        value.linear = readRos2Geometry_msgsMsgVector3(reader);
        value.angular = readRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/TwistStamped.
    // @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgTwistStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/TwistStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573";
        public static final int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 188;
        /**
         * @brief A twist with reference coordinate frame and timestamp
         * @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Twist field.
         * @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgTwist twist = new Ros2Geometry_msgsMsgTwist();

        public Ros2Geometry_msgsMsgTwistStamped()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgTwistStamped> CODEC = new Codec<Ros2Geometry_msgsMsgTwistStamped>() {
            public byte[] encode(Ros2Geometry_msgsMsgTwistStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgTwistStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgTwistStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgTwistStamped value = readRos2Geometry_msgsMsgTwistStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgTwistStamped(Codecs.Writer writer, Ros2Geometry_msgsMsgTwistStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgTwist part1 = value.twist;
        writeRos2Geometry_msgsMsgTwist(writer, part1);
    }

    private static Ros2Geometry_msgsMsgTwistStamped readRos2Geometry_msgsMsgTwistStamped(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgTwistStamped value = new Ros2Geometry_msgsMsgTwistStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.twist = readRos2Geometry_msgsMsgTwist(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Accel.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgAccel
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Accel";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        /**
         * @brief This expresses acceleration in free space broken into its linear and angular parts.
         * @details Original geometry_msgs/msg/Accel.linear; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 linear = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original geometry_msgs/msg/Accel.angular; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 angular = new Ros2Geometry_msgsMsgVector3();

        public Ros2Geometry_msgsMsgAccel()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgAccel> CODEC = new Codec<Ros2Geometry_msgsMsgAccel>() {
            public byte[] encode(Ros2Geometry_msgsMsgAccel value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgAccel(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgAccel decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgAccel value = readRos2Geometry_msgsMsgAccel(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgAccel(Codecs.Writer writer, Ros2Geometry_msgsMsgAccel value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgVector3 part0 = value.linear;
        writeRos2Geometry_msgsMsgVector3(writer, part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.angular;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static Ros2Geometry_msgsMsgAccel readRos2Geometry_msgsMsgAccel(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgAccel value = new Ros2Geometry_msgsMsgAccel();
        value.linear = readRos2Geometry_msgsMsgVector3(reader);
        value.angular = readRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/AccelStamped.
    // @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgAccelStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/AccelStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899";
        public static final int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 188;
        /**
         * @brief An accel with reference coordinate frame and timestamp
         * @details Original geometry_msgs/msg/AccelStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Accel field.
         * @details Original geometry_msgs/msg/AccelStamped.accel; native type geometry_msgs/msg/Accel. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgAccel accel = new Ros2Geometry_msgsMsgAccel();

        public Ros2Geometry_msgsMsgAccelStamped()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgAccelStamped> CODEC = new Codec<Ros2Geometry_msgsMsgAccelStamped>() {
            public byte[] encode(Ros2Geometry_msgsMsgAccelStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgAccelStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgAccelStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgAccelStamped value = readRos2Geometry_msgsMsgAccelStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgAccelStamped(Codecs.Writer writer, Ros2Geometry_msgsMsgAccelStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgAccel part1 = value.accel;
        writeRos2Geometry_msgsMsgAccel(writer, part1);
    }

    private static Ros2Geometry_msgsMsgAccelStamped readRos2Geometry_msgsMsgAccelStamped(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgAccelStamped value = new Ros2Geometry_msgsMsgAccelStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.accel = readRos2Geometry_msgsMsgAccel(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Vector3Stamped.
    // @details Canonical extent 36..164 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgVector3Stamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Vector3Stamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;
        /**
         * @brief This represents a Vector3 with reference coordinate frame and timestamp Note that this
         * follows vector semantics with it always anchored at the origin, so the rotational elements of a
         * transform are the only parts applied when transforming.
         * @details Original geometry_msgs/msg/Vector3Stamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original geometry_msgs/msg/Vector3Stamped.vector; native type geometry_msgs/msg/Vector3.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 vector = new Ros2Geometry_msgsMsgVector3();

        public Ros2Geometry_msgsMsgVector3Stamped()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgVector3Stamped> CODEC = new Codec<Ros2Geometry_msgsMsgVector3Stamped>() {
            public byte[] encode(Ros2Geometry_msgsMsgVector3Stamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgVector3Stamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgVector3Stamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgVector3Stamped value = readRos2Geometry_msgsMsgVector3Stamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgVector3Stamped(Codecs.Writer writer, Ros2Geometry_msgsMsgVector3Stamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.vector;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static Ros2Geometry_msgsMsgVector3Stamped readRos2Geometry_msgsMsgVector3Stamped(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgVector3Stamped value = new Ros2Geometry_msgsMsgVector3Stamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.vector = readRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/FrankaRobotState.
    // @details Canonical extent 1961..10169 bytes. Native type identity is independent; constructing a
    // value opens no resource.
    public static final class Ros2Franka_msgsMsgFrankaRobotState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/msg/FrankaRobotState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282";
        public static final int MIN_WIRE_BYTES = 1961, MAX_WIRE_BYTES = 10169;
        /**
         * @brief ## Default parts of the message
         * @details Original franka_msgs/msg/FrankaRobotState.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief ## Indicates which dimensions have an active contact/collision flag raised
         * @details Original franka_msgs/msg/FrankaRobotState.collision_indicators; native type
         * franka_msgs/msg/CollisionIndicators. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Franka_msgsMsgCollisionIndicators collision_indicators = new Ros2Franka_msgsMsgCollisionIndicators();
        /**
         * @brief ## The state of the arm in joint space The joint state consisting out of position (q),
         * velocity (dq) and effort (tau_J)
         * @details Original franka_msgs/msg/FrankaRobotState.measured_joint_state; native type
         * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Sensor_msgsMsgJointState measured_joint_state = new Ros2Sensor_msgsMsgJointState();
        /**
         * @brief The desired joint state consisting out of position (q_d), velocity (dq_d) and effort
         * (tau_J_d)
         * @details Original franka_msgs/msg/FrankaRobotState.desired_joint_state; native type
         * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Sensor_msgsMsgJointState desired_joint_state = new Ros2Sensor_msgsMsgJointState();
        /**
         * @brief The measured motor state of the joints consisting out of position (theta) and velocity
         * (dtheta)
         * @details Original franka_msgs/msg/FrankaRobotState.measured_joint_motor_state; native type
         * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Sensor_msgsMsgJointState measured_joint_motor_state = new Ros2Sensor_msgsMsgJointState();
        /**
         * @brief The desired joint acceleration
         * @details Original franka_msgs/msg/FrankaRobotState.ddq_d; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] ddq_d = new double[7];
        /**
         * @brief The derivative of the measured torque signal
         * @details Original franka_msgs/msg/FrankaRobotState.dtau_j; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] dtau_j = new double[7];
        /**
         * @brief Filtered external torque. The JointState consists out of effort (tau_ext_hat_filtered)
         * @details Original franka_msgs/msg/FrankaRobotState.tau_ext_hat_filtered; native type
         * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Sensor_msgsMsgJointState tau_ext_hat_filtered = new Ros2Sensor_msgsMsgJointState();
        /**
         * @brief ## The state of the elbow
         * @details Original franka_msgs/msg/FrankaRobotState.elbow; native type franka_msgs/msg/Elbow. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Franka_msgsMsgElbow elbow = new Ros2Franka_msgsMsgElbow();
        /**
         * @brief ## The active wrenches acting on the stiffness frame expressed relative to stiffness frame
         * @details Original franka_msgs/msg/FrankaRobotState.k_f_ext_hat_k; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgWrenchStamped k_f_ext_hat_k = new Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_f_ext_hat_k; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgWrenchStamped o_f_ext_hat_k = new Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief ## The different inertias of the arm The end-effector inertia
         * @details Original franka_msgs/msg/FrankaRobotState.inertia_ee; native type
         * geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public Ros2Geometry_msgsMsgInertiaStamped inertia_ee = new Ros2Geometry_msgsMsgInertiaStamped();
        /**
         * @brief The load inertia
         * @details Original franka_msgs/msg/FrankaRobotState.inertia_load; native type
         * geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public Ros2Geometry_msgsMsgInertiaStamped inertia_load = new Ros2Geometry_msgsMsgInertiaStamped();
        /**
         * @brief The total (end-effector + load) inertia
         * @details Original franka_msgs/msg/FrankaRobotState.inertia_total; native type
         * geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public Ros2Geometry_msgsMsgInertiaStamped inertia_total = new Ros2Geometry_msgsMsgInertiaStamped();
        /**
         * @brief ## The poses describing the transformations between different frames of the arm Measured end-
         * effector pose in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_t_ee; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgPoseStamped o_t_ee = new Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Last desired end-effector pose of motion generation in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_d; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgPoseStamped o_t_ee_d = new Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Last commanded end-effector pose of motion generation in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_c; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgPoseStamped o_t_ee_c = new Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Flange to end-effector frame
         * @details Original franka_msgs/msg/FrankaRobotState.f_t_ee; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgPoseStamped f_t_ee = new Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief End-effector to stiffness frame
         * @details Original franka_msgs/msg/FrankaRobotState.ee_t_k; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgPoseStamped ee_t_k = new Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Desired end effector twist in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_d; native type
         * geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgTwistStamped o_dp_ee_d = new Ros2Geometry_msgsMsgTwistStamped();
        /**
         * @brief Last commanded end effector twist in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_c; native type
         * geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgTwistStamped o_dp_ee_c = new Ros2Geometry_msgsMsgTwistStamped();
        /**
         * @brief Last commanded end effector acceleration in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_ddp_ee_c; native type
         * geometry_msgs/msg/AccelStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgAccelStamped o_ddp_ee_c = new Ros2Geometry_msgsMsgAccelStamped();
        /**
         * @brief ## Additional information
         * @details Original franka_msgs/msg/FrankaRobotState.time; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double time = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/FrankaRobotState.control_command_success_rate; native type
         * float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double control_command_success_rate = 0;
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original franka_msgs/msg/FrankaRobotState.robot_mode; native type uint8. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public int robot_mode = 0;
        /**
         * @brief Retain the complete original franka_msgs/msg/Errors field.
         * @details Original franka_msgs/msg/FrankaRobotState.current_errors; native type
         * franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Franka_msgsMsgErrors current_errors = new Ros2Franka_msgsMsgErrors();
        /**
         * @brief Retain the complete original franka_msgs/msg/Errors field.
         * @details Original franka_msgs/msg/FrankaRobotState.last_motion_errors; native type
         * franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Franka_msgsMsgErrors last_motion_errors = new Ros2Franka_msgsMsgErrors();
        /**
         * @brief ## Translational acceleration data from the joint-mounted accelerometers, expressed in the
         * "<prefix>link<i>_accelerometer_<side>" frame named in each header (joints 1 through 6, mounted on
         * links 0 through 5; no accelerometer on joint 7)
         * @details Original franka_msgs/msg/FrankaRobotState.accelerometer_top; native type
         * geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3Stamped[] accelerometer_top = new Ros2Geometry_msgsMsgVector3Stamped[6];
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3Stamped field.
         * @details Original franka_msgs/msg/FrankaRobotState.accelerometer_bottom; native type
         * geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3Stamped[] accelerometer_bottom = new Ros2Geometry_msgsMsgVector3Stamped[6];

        public Ros2Franka_msgsMsgFrankaRobotState()
        {
            for(int i = 0; i < 6; ++i)
                this.accelerometer_top[i] = new Ros2Geometry_msgsMsgVector3Stamped();
            for(int i = 0; i < 6; ++i)
                this.accelerometer_bottom[i] = new Ros2Geometry_msgsMsgVector3Stamped();
        }

        public static final Codec<Ros2Franka_msgsMsgFrankaRobotState> CODEC = new Codec<Ros2Franka_msgsMsgFrankaRobotState>() {
            public byte[] encode(Ros2Franka_msgsMsgFrankaRobotState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsMsgFrankaRobotState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsMsgFrankaRobotState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsMsgFrankaRobotState value = readRos2Franka_msgsMsgFrankaRobotState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsMsgFrankaRobotState(Codecs.Writer writer, Ros2Franka_msgsMsgFrankaRobotState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Franka_msgsMsgCollisionIndicators part1 = value.collision_indicators;
        writeRos2Franka_msgsMsgCollisionIndicators(writer, part1);
        Ros2Sensor_msgsMsgJointState part2 = value.measured_joint_state;
        writeRos2Sensor_msgsMsgJointState(writer, part2);
        Ros2Sensor_msgsMsgJointState part3 = value.desired_joint_state;
        writeRos2Sensor_msgsMsgJointState(writer, part3);
        Ros2Sensor_msgsMsgJointState part4 = value.measured_joint_motor_state;
        writeRos2Sensor_msgsMsgJointState(writer, part4);
        double[] part5 = value.ddq_d;
        if(part5 == null || part5.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double[] part6 = value.dtau_j;
        if(part6 == null || part6.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        Ros2Sensor_msgsMsgJointState part7 = value.tau_ext_hat_filtered;
        writeRos2Sensor_msgsMsgJointState(writer, part7);
        Ros2Franka_msgsMsgElbow part8 = value.elbow;
        writeRos2Franka_msgsMsgElbow(writer, part8);
        Ros2Geometry_msgsMsgWrenchStamped part9 = value.k_f_ext_hat_k;
        writeRos2Geometry_msgsMsgWrenchStamped(writer, part9);
        Ros2Geometry_msgsMsgWrenchStamped part10 = value.o_f_ext_hat_k;
        writeRos2Geometry_msgsMsgWrenchStamped(writer, part10);
        Ros2Geometry_msgsMsgInertiaStamped part11 = value.inertia_ee;
        writeRos2Geometry_msgsMsgInertiaStamped(writer, part11);
        Ros2Geometry_msgsMsgInertiaStamped part12 = value.inertia_load;
        writeRos2Geometry_msgsMsgInertiaStamped(writer, part12);
        Ros2Geometry_msgsMsgInertiaStamped part13 = value.inertia_total;
        writeRos2Geometry_msgsMsgInertiaStamped(writer, part13);
        Ros2Geometry_msgsMsgPoseStamped part14 = value.o_t_ee;
        writeRos2Geometry_msgsMsgPoseStamped(writer, part14);
        Ros2Geometry_msgsMsgPoseStamped part15 = value.o_t_ee_d;
        writeRos2Geometry_msgsMsgPoseStamped(writer, part15);
        Ros2Geometry_msgsMsgPoseStamped part16 = value.o_t_ee_c;
        writeRos2Geometry_msgsMsgPoseStamped(writer, part16);
        Ros2Geometry_msgsMsgPoseStamped part17 = value.f_t_ee;
        writeRos2Geometry_msgsMsgPoseStamped(writer, part17);
        Ros2Geometry_msgsMsgPoseStamped part18 = value.ee_t_k;
        writeRos2Geometry_msgsMsgPoseStamped(writer, part18);
        Ros2Geometry_msgsMsgTwistStamped part19 = value.o_dp_ee_d;
        writeRos2Geometry_msgsMsgTwistStamped(writer, part19);
        Ros2Geometry_msgsMsgTwistStamped part20 = value.o_dp_ee_c;
        writeRos2Geometry_msgsMsgTwistStamped(writer, part20);
        Ros2Geometry_msgsMsgAccelStamped part21 = value.o_ddp_ee_c;
        writeRos2Geometry_msgsMsgAccelStamped(writer, part21);
        double part22 = value.time;
        writer.f64(part22);
        double part23 = value.control_command_success_rate;
        writer.f64(part23);
        int part24 = value.robot_mode;
        writer.integer(part24, 1, false);
        Ros2Franka_msgsMsgErrors part25 = value.current_errors;
        writeRos2Franka_msgsMsgErrors(writer, part25);
        Ros2Franka_msgsMsgErrors part26 = value.last_motion_errors;
        writeRos2Franka_msgsMsgErrors(writer, part26);
        Ros2Geometry_msgsMsgVector3Stamped[] part27 = value.accelerometer_top;
        if(part27 == null || part27.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part27.length; ++i)
        {
            writeRos2Geometry_msgsMsgVector3Stamped(writer, part27[i]);
        }
        Ros2Geometry_msgsMsgVector3Stamped[] part28 = value.accelerometer_bottom;
        if(part28 == null || part28.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part28.length; ++i)
        {
            writeRos2Geometry_msgsMsgVector3Stamped(writer, part28[i]);
        }
    }

    private static Ros2Franka_msgsMsgFrankaRobotState readRos2Franka_msgsMsgFrankaRobotState(Codecs.Reader reader)
    {
        Ros2Franka_msgsMsgFrankaRobotState value = new Ros2Franka_msgsMsgFrankaRobotState();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.collision_indicators = readRos2Franka_msgsMsgCollisionIndicators(reader);
        value.measured_joint_state = readRos2Sensor_msgsMsgJointState(reader);
        value.desired_joint_state = readRos2Sensor_msgsMsgJointState(reader);
        value.measured_joint_motor_state = readRos2Sensor_msgsMsgJointState(reader);
        value.ddq_d = new double[7];
        for(int i = 0; i < value.ddq_d.length; ++i)
            value.ddq_d[i] = reader.f64();
        value.dtau_j = new double[7];
        for(int i = 0; i < value.dtau_j.length; ++i)
            value.dtau_j[i] = reader.f64();
        value.tau_ext_hat_filtered = readRos2Sensor_msgsMsgJointState(reader);
        value.elbow = readRos2Franka_msgsMsgElbow(reader);
        value.k_f_ext_hat_k = readRos2Geometry_msgsMsgWrenchStamped(reader);
        value.o_f_ext_hat_k = readRos2Geometry_msgsMsgWrenchStamped(reader);
        value.inertia_ee = readRos2Geometry_msgsMsgInertiaStamped(reader);
        value.inertia_load = readRos2Geometry_msgsMsgInertiaStamped(reader);
        value.inertia_total = readRos2Geometry_msgsMsgInertiaStamped(reader);
        value.o_t_ee = readRos2Geometry_msgsMsgPoseStamped(reader);
        value.o_t_ee_d = readRos2Geometry_msgsMsgPoseStamped(reader);
        value.o_t_ee_c = readRos2Geometry_msgsMsgPoseStamped(reader);
        value.f_t_ee = readRos2Geometry_msgsMsgPoseStamped(reader);
        value.ee_t_k = readRos2Geometry_msgsMsgPoseStamped(reader);
        value.o_dp_ee_d = readRos2Geometry_msgsMsgTwistStamped(reader);
        value.o_dp_ee_c = readRos2Geometry_msgsMsgTwistStamped(reader);
        value.o_ddp_ee_c = readRos2Geometry_msgsMsgAccelStamped(reader);
        value.time = reader.f64();
        value.control_command_success_rate = reader.f64();
        value.robot_mode = (int)reader.integer(1, false);
        value.current_errors = readRos2Franka_msgsMsgErrors(reader);
        value.last_motion_errors = readRos2Franka_msgsMsgErrors(reader);
        value.accelerometer_top = new Ros2Geometry_msgsMsgVector3Stamped[6];
        for(int i = 0; i < value.accelerometer_top.length; ++i)
            value.accelerometer_top[i] = readRos2Geometry_msgsMsgVector3Stamped(reader);
        value.accelerometer_bottom = new Ros2Geometry_msgsMsgVector3Stamped[6];
        for(int i = 0; i < value.accelerometer_bottom.length; ++i)
            value.accelerometer_bottom[i] = readRos2Geometry_msgsMsgVector3Stamped(reader);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Request.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetCartesianStiffness_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetCartesianStiffness_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        /**
         * @brief Cartesian stiffness represented as (x, y, z, roll, pitch, yaw). The values are used in the
         * direction of the stiffness frame.
         * @details Original franka_msgs/srv/SetCartesianStiffness_Request.cartesian_stiffness; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] cartesian_stiffness = new double[6];

        public Ros2Franka_msgsSrvSetCartesianStiffness_Request()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetCartesianStiffness_Request> CODEC = new Codec<Ros2Franka_msgsSrvSetCartesianStiffness_Request>() {
            public byte[] encode(Ros2Franka_msgsSrvSetCartesianStiffness_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetCartesianStiffness_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetCartesianStiffness_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetCartesianStiffness_Request value = readRos2Franka_msgsSrvSetCartesianStiffness_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetCartesianStiffness_Request(Codecs.Writer writer, Ros2Franka_msgsSrvSetCartesianStiffness_Request value)
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

    private static Ros2Franka_msgsSrvSetCartesianStiffness_Request readRos2Franka_msgsSrvSetCartesianStiffness_Request(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetCartesianStiffness_Request value = new Ros2Franka_msgsSrvSetCartesianStiffness_Request();
        value.cartesian_stiffness = new double[6];
        for(int i = 0; i < value.cartesian_stiffness.length; ++i)
            value.cartesian_stiffness[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetCartesianStiffness_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetCartesianStiffness_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetCartesianStiffness_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetCartesianStiffness_Response.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String error = "";

        public Ros2Franka_msgsSrvSetCartesianStiffness_Response()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetCartesianStiffness_Response> CODEC = new Codec<Ros2Franka_msgsSrvSetCartesianStiffness_Response>() {
            public byte[] encode(Ros2Franka_msgsSrvSetCartesianStiffness_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetCartesianStiffness_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetCartesianStiffness_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetCartesianStiffness_Response value = readRos2Franka_msgsSrvSetCartesianStiffness_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetCartesianStiffness_Response(Codecs.Writer writer, Ros2Franka_msgsSrvSetCartesianStiffness_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsSrvSetCartesianStiffness_Response readRos2Franka_msgsSrvSetCartesianStiffness_Response(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetCartesianStiffness_Response value = new Ros2Franka_msgsSrvSetCartesianStiffness_Response();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
    // @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetForceTorqueCollisionBehavior_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c";
        public static final int MIN_WIRE_BYTES = 208, MAX_WIRE_BYTES = 208;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_torque_thresholds_nominal; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] lower_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_torque_thresholds_nominal; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] upper_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_force_thresholds_nominal; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] lower_force_thresholds_nominal = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_force_thresholds_nominal; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] upper_force_thresholds_nominal = new double[6];

        public Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request> CODEC =
            new Codec<Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request>() {
                public byte[] encode(Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value = readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(Codecs.Writer writer,
                                                                                       Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value)
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

    private static Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value = new Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request();
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

    // @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetForceTorqueCollisionBehavior_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.success; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error; native type
         * string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public String error = "";

        public Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response> CODEC =
            new Codec<Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response>() {
                public byte[] encode(Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value = readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(Codecs.Writer writer,
                                                                                        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
        readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value = new Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Request.
    // @details Canonical extent 416..416 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetFullCollisionBehavior_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824";
        public static final int MIN_WIRE_BYTES = 416, MAX_WIRE_BYTES = 416;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_acceleration; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] lower_torque_thresholds_acceleration = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_acceleration; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] upper_torque_thresholds_acceleration = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_nominal;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] lower_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_nominal;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] upper_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_acceleration; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] lower_force_thresholds_acceleration = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_acceleration; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] upper_force_thresholds_acceleration = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_nominal;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] lower_force_thresholds_nominal = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_nominal;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] upper_force_thresholds_nominal = new double[6];

        public Ros2Franka_msgsSrvSetFullCollisionBehavior_Request()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetFullCollisionBehavior_Request> CODEC = new Codec<Ros2Franka_msgsSrvSetFullCollisionBehavior_Request>() {
            public byte[] encode(Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetFullCollisionBehavior_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetFullCollisionBehavior_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value = readRos2Franka_msgsSrvSetFullCollisionBehavior_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetFullCollisionBehavior_Request(Codecs.Writer writer, Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value)
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

    private static Ros2Franka_msgsSrvSetFullCollisionBehavior_Request readRos2Franka_msgsSrvSetFullCollisionBehavior_Request(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value = new Ros2Franka_msgsSrvSetFullCollisionBehavior_Request();
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

    // @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetFullCollisionBehavior_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.success; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.error; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String error = "";

        public Ros2Franka_msgsSrvSetFullCollisionBehavior_Response()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetFullCollisionBehavior_Response> CODEC =
            new Codec<Ros2Franka_msgsSrvSetFullCollisionBehavior_Response>() {
                public byte[] encode(Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Franka_msgsSrvSetFullCollisionBehavior_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Franka_msgsSrvSetFullCollisionBehavior_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value = readRos2Franka_msgsSrvSetFullCollisionBehavior_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Franka_msgsSrvSetFullCollisionBehavior_Response(Codecs.Writer writer,
                                                                                 Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsSrvSetFullCollisionBehavior_Response readRos2Franka_msgsSrvSetFullCollisionBehavior_Response(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value = new Ros2Franka_msgsSrvSetFullCollisionBehavior_Response();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetJointStiffness_Request.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetJointStiffness_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetJointStiffness_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief Impedance for each joint in the internal controller
         * @details Original franka_msgs/srv/SetJointStiffness_Request.joint_stiffness; native type float64.
         * Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] joint_stiffness = new double[7];

        public Ros2Franka_msgsSrvSetJointStiffness_Request()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetJointStiffness_Request> CODEC = new Codec<Ros2Franka_msgsSrvSetJointStiffness_Request>() {
            public byte[] encode(Ros2Franka_msgsSrvSetJointStiffness_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetJointStiffness_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetJointStiffness_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetJointStiffness_Request value = readRos2Franka_msgsSrvSetJointStiffness_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetJointStiffness_Request(Codecs.Writer writer, Ros2Franka_msgsSrvSetJointStiffness_Request value)
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

    private static Ros2Franka_msgsSrvSetJointStiffness_Request readRos2Franka_msgsSrvSetJointStiffness_Request(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetJointStiffness_Request value = new Ros2Franka_msgsSrvSetJointStiffness_Request();
        value.joint_stiffness = new double[7];
        for(int i = 0; i < value.joint_stiffness.length; ++i)
            value.joint_stiffness[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetJointStiffness_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetJointStiffness_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetJointStiffness_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetJointStiffness_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetJointStiffness_Response.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String error = "";

        public Ros2Franka_msgsSrvSetJointStiffness_Response()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetJointStiffness_Response> CODEC = new Codec<Ros2Franka_msgsSrvSetJointStiffness_Response>() {
            public byte[] encode(Ros2Franka_msgsSrvSetJointStiffness_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetJointStiffness_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetJointStiffness_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetJointStiffness_Response value = readRos2Franka_msgsSrvSetJointStiffness_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetJointStiffness_Response(Codecs.Writer writer, Ros2Franka_msgsSrvSetJointStiffness_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsSrvSetJointStiffness_Response readRos2Franka_msgsSrvSetJointStiffness_Response(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetJointStiffness_Response value = new Ros2Franka_msgsSrvSetJointStiffness_Response();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetLoad_Request.
    // @details Canonical extent 104..104 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetLoad_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetLoad_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8";
        public static final int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;
        /**
         * @brief The mass of the object
         * @details Original franka_msgs/srv/SetLoad_Request.mass; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double mass = 0;
        /**
         * @brief Position of the center of mass
         * @details Original franka_msgs/srv/SetLoad_Request.center_of_mass; native type float64. Exactly 3
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] center_of_mass = new double[3];
        /**
         * @brief Inertia of the object - the provided 3x3 matrix is in column major form.
         * @details Original franka_msgs/srv/SetLoad_Request.load_inertia; native type float64. Exactly 9
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] load_inertia = new double[9];

        public Ros2Franka_msgsSrvSetLoad_Request()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetLoad_Request> CODEC = new Codec<Ros2Franka_msgsSrvSetLoad_Request>() {
            public byte[] encode(Ros2Franka_msgsSrvSetLoad_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetLoad_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetLoad_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetLoad_Request value = readRos2Franka_msgsSrvSetLoad_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetLoad_Request(Codecs.Writer writer, Ros2Franka_msgsSrvSetLoad_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.mass;
        writer.f64(part0);
        double[] part1 = value.center_of_mass;
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

    private static Ros2Franka_msgsSrvSetLoad_Request readRos2Franka_msgsSrvSetLoad_Request(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetLoad_Request value = new Ros2Franka_msgsSrvSetLoad_Request();
        value.mass = reader.f64();
        value.center_of_mass = new double[3];
        for(int i = 0; i < value.center_of_mass.length; ++i)
            value.center_of_mass[i] = reader.f64();
        value.load_inertia = new double[9];
        for(int i = 0; i < value.load_inertia.length; ++i)
            value.load_inertia[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetLoad_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetLoad_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetLoad_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetLoad_Response.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetLoad_Response.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros2Franka_msgsSrvSetLoad_Response()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetLoad_Response> CODEC = new Codec<Ros2Franka_msgsSrvSetLoad_Response>() {
            public byte[] encode(Ros2Franka_msgsSrvSetLoad_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetLoad_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetLoad_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetLoad_Response value = readRos2Franka_msgsSrvSetLoad_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetLoad_Response(Codecs.Writer writer, Ros2Franka_msgsSrvSetLoad_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsSrvSetLoad_Response readRos2Franka_msgsSrvSetLoad_Response(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetLoad_Response value = new Ros2Franka_msgsSrvSetLoad_Response();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Request.
    // @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetStiffnessFrame_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetStiffnessFrame_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402";
        public static final int MIN_WIRE_BYTES = 128, MAX_WIRE_BYTES = 128;
        /**
         * @brief Sets the transformation matrix describing the stiffness frame relative to the TCP frame. A
         * 4x4 column-major transformation matrix representing the position and orientation.
         * @details Original franka_msgs/srv/SetStiffnessFrame_Request.transformation; native type float64.
         * Exactly 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] transformation = new double[16];

        public Ros2Franka_msgsSrvSetStiffnessFrame_Request()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetStiffnessFrame_Request> CODEC = new Codec<Ros2Franka_msgsSrvSetStiffnessFrame_Request>() {
            public byte[] encode(Ros2Franka_msgsSrvSetStiffnessFrame_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetStiffnessFrame_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetStiffnessFrame_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetStiffnessFrame_Request value = readRos2Franka_msgsSrvSetStiffnessFrame_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetStiffnessFrame_Request(Codecs.Writer writer, Ros2Franka_msgsSrvSetStiffnessFrame_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.transformation;
        if(part0 == null || part0.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros2Franka_msgsSrvSetStiffnessFrame_Request readRos2Franka_msgsSrvSetStiffnessFrame_Request(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetStiffnessFrame_Request value = new Ros2Franka_msgsSrvSetStiffnessFrame_Request();
        value.transformation = new double[16];
        for(int i = 0; i < value.transformation.length; ++i)
            value.transformation[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetStiffnessFrame_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetStiffnessFrame_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetStiffnessFrame_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetStiffnessFrame_Response.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String error = "";

        public Ros2Franka_msgsSrvSetStiffnessFrame_Response()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetStiffnessFrame_Response> CODEC = new Codec<Ros2Franka_msgsSrvSetStiffnessFrame_Response>() {
            public byte[] encode(Ros2Franka_msgsSrvSetStiffnessFrame_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetStiffnessFrame_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetStiffnessFrame_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetStiffnessFrame_Response value = readRos2Franka_msgsSrvSetStiffnessFrame_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetStiffnessFrame_Response(Codecs.Writer writer, Ros2Franka_msgsSrvSetStiffnessFrame_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsSrvSetStiffnessFrame_Response readRos2Franka_msgsSrvSetStiffnessFrame_Response(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetStiffnessFrame_Response value = new Ros2Franka_msgsSrvSetStiffnessFrame_Response();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetTCPFrame_Request.
    // @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetTCPFrame_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetTCPFrame_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f";
        public static final int MIN_WIRE_BYTES = 128, MAX_WIRE_BYTES = 128;
        /**
         * @brief Sets the transformation matrix describing the tcp frame to the end-effector frame. A 4x4
         * column-major transformation matrix representing the position and orientation.
         * @details Original franka_msgs/srv/SetTCPFrame_Request.transformation; native type float64. Exactly
         * 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] transformation = new double[16];

        public Ros2Franka_msgsSrvSetTCPFrame_Request()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetTCPFrame_Request> CODEC = new Codec<Ros2Franka_msgsSrvSetTCPFrame_Request>() {
            public byte[] encode(Ros2Franka_msgsSrvSetTCPFrame_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetTCPFrame_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetTCPFrame_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetTCPFrame_Request value = readRos2Franka_msgsSrvSetTCPFrame_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetTCPFrame_Request(Codecs.Writer writer, Ros2Franka_msgsSrvSetTCPFrame_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.transformation;
        if(part0 == null || part0.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros2Franka_msgsSrvSetTCPFrame_Request readRos2Franka_msgsSrvSetTCPFrame_Request(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetTCPFrame_Request value = new Ros2Franka_msgsSrvSetTCPFrame_Request();
        value.transformation = new double[16];
        for(int i = 0; i < value.transformation.length; ++i)
            value.transformation[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetTCPFrame_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_msgsSrvSetTCPFrame_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_msgs/srv/SetTCPFrame_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetTCPFrame_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetTCPFrame_Response.error; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros2Franka_msgsSrvSetTCPFrame_Response()
        {
        }

        public static final Codec<Ros2Franka_msgsSrvSetTCPFrame_Response> CODEC = new Codec<Ros2Franka_msgsSrvSetTCPFrame_Response>() {
            public byte[] encode(Ros2Franka_msgsSrvSetTCPFrame_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_msgsSrvSetTCPFrame_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_msgsSrvSetTCPFrame_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_msgsSrvSetTCPFrame_Response value = readRos2Franka_msgsSrvSetTCPFrame_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_msgsSrvSetTCPFrame_Response(Codecs.Writer writer, Ros2Franka_msgsSrvSetTCPFrame_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Franka_msgsSrvSetTCPFrame_Response readRos2Franka_msgsSrvSetTCPFrame_Response(Codecs.Reader reader)
    {
        Ros2Franka_msgsSrvSetTCPFrame_Response value = new Ros2Franka_msgsSrvSetTCPFrame_Response();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Goal.
    // @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsActionMoveAbsolute_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/action/MoveAbsolute_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        /**
         * @brief Command an absolute move of the Franka Spine. Target position [m]
         * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.position; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double position = 0;
        /**
         * @brief Motion velocity [m/s], must be > 0
         * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.velocity; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double velocity = 0;
        /**
         * @brief Motion acceleration [m/s²], must be > 0
         * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.acceleration; native type float64.
         * Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double acceleration = 0;
        /**
         * @brief Motion deceleration [m/s²], must be > 0
         * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.deceleration; native type float64.
         * Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double deceleration = 0;

        public Ros2Franka_spine_msgsActionMoveAbsolute_Goal()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsActionMoveAbsolute_Goal> CODEC = new Codec<Ros2Franka_spine_msgsActionMoveAbsolute_Goal>() {
            public byte[] encode(Ros2Franka_spine_msgsActionMoveAbsolute_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsActionMoveAbsolute_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsActionMoveAbsolute_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsActionMoveAbsolute_Goal value = readRos2Franka_spine_msgsActionMoveAbsolute_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsActionMoveAbsolute_Goal(Codecs.Writer writer, Ros2Franka_spine_msgsActionMoveAbsolute_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.position;
        writer.f64(part0);
        double part1 = value.velocity;
        writer.f64(part1);
        double part2 = value.acceleration;
        writer.f64(part2);
        double part3 = value.deceleration;
        writer.f64(part3);
    }

    private static Ros2Franka_spine_msgsActionMoveAbsolute_Goal readRos2Franka_spine_msgsActionMoveAbsolute_Goal(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsActionMoveAbsolute_Goal value = new Ros2Franka_spine_msgsActionMoveAbsolute_Goal();
        value.position = reader.f64();
        value.velocity = reader.f64();
        value.acceleration = reader.f64();
        value.deceleration = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Result.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsActionMoveAbsolute_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/action/MoveAbsolute_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        /**
         * @brief True if the target position was reached
         * @details Original franka_spine_msgs/action/MoveAbsolute_Result.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief How the motion was stopped (from spine response)
         * @details Original franka_spine_msgs/action/MoveAbsolute_Result.stop_by; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String stop_by = "";
        /**
         * @brief Error description if success is false
         * @details Original franka_spine_msgs/action/MoveAbsolute_Result.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String error = "";

        public Ros2Franka_spine_msgsActionMoveAbsolute_Result()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsActionMoveAbsolute_Result> CODEC = new Codec<Ros2Franka_spine_msgsActionMoveAbsolute_Result>() {
            public byte[] encode(Ros2Franka_spine_msgsActionMoveAbsolute_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsActionMoveAbsolute_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsActionMoveAbsolute_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsActionMoveAbsolute_Result value = readRos2Franka_spine_msgsActionMoveAbsolute_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsActionMoveAbsolute_Result(Codecs.Writer writer, Ros2Franka_spine_msgsActionMoveAbsolute_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.stop_by;
        writeText(writer, part1, 256);
        String part2 = value.error;
        writeText(writer, part2, 256);
    }

    private static Ros2Franka_spine_msgsActionMoveAbsolute_Result readRos2Franka_spine_msgsActionMoveAbsolute_Result(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsActionMoveAbsolute_Result value = new Ros2Franka_spine_msgsActionMoveAbsolute_Result();
        value.success = readBool(reader);
        value.stop_by = readText(reader, 256);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Feedback.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/action/MoveAbsolute_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Current spine position [m]
         * @details Original franka_spine_msgs/action/MoveAbsolute_Feedback.current_position; native type
         * float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double current_position = 0;

        public Ros2Franka_spine_msgsActionMoveAbsolute_Feedback()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsActionMoveAbsolute_Feedback> CODEC = new Codec<Ros2Franka_spine_msgsActionMoveAbsolute_Feedback>() {
            public byte[] encode(Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsActionMoveAbsolute_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsActionMoveAbsolute_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value = readRos2Franka_spine_msgsActionMoveAbsolute_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsActionMoveAbsolute_Feedback(Codecs.Writer writer, Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.current_position;
        writer.f64(part0);
    }

    private static Ros2Franka_spine_msgsActionMoveAbsolute_Feedback readRos2Franka_spine_msgsActionMoveAbsolute_Feedback(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value = new Ros2Franka_spine_msgsActionMoveAbsolute_Feedback();
        value.current_position = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/msg/UserLimits.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsMsgUserLimits
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/msg/UserLimits";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief User-defined soft motion limits for the spine. Lower motion limit [m]
         * @details Original franka_spine_msgs/msg/UserLimits.lower_limit; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double lower_limit = 0;
        /**
         * @brief Upper motion limit [m]
         * @details Original franka_spine_msgs/msg/UserLimits.upper_limit; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double upper_limit = 0;

        public Ros2Franka_spine_msgsMsgUserLimits()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsMsgUserLimits> CODEC = new Codec<Ros2Franka_spine_msgsMsgUserLimits>() {
            public byte[] encode(Ros2Franka_spine_msgsMsgUserLimits value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsMsgUserLimits(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsMsgUserLimits decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsMsgUserLimits value = readRos2Franka_spine_msgsMsgUserLimits(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsMsgUserLimits(Codecs.Writer writer, Ros2Franka_spine_msgsMsgUserLimits value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.lower_limit;
        writer.f64(part0);
        double part1 = value.upper_limit;
        writer.f64(part1);
    }

    private static Ros2Franka_spine_msgsMsgUserLimits readRos2Franka_spine_msgsMsgUserLimits(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsMsgUserLimits value = new Ros2Franka_spine_msgsMsgUserLimits();
        value.lower_limit = reader.f64();
        value.upper_limit = reader.f64();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/msg/SpineParameters.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsMsgSpineParameters
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/msg/SpineParameters";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Aggregated spine parameters returned by the GetParameters service. User-defined motion limits
         * @details Original franka_spine_msgs/msg/SpineParameters.user_limits; native type
         * franka_spine_msgs/msg/UserLimits. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public Ros2Franka_spine_msgsMsgUserLimits user_limits = new Ros2Franka_spine_msgsMsgUserLimits();

        public Ros2Franka_spine_msgsMsgSpineParameters()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsMsgSpineParameters> CODEC = new Codec<Ros2Franka_spine_msgsMsgSpineParameters>() {
            public byte[] encode(Ros2Franka_spine_msgsMsgSpineParameters value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsMsgSpineParameters(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsMsgSpineParameters decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsMsgSpineParameters value = readRos2Franka_spine_msgsMsgSpineParameters(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsMsgSpineParameters(Codecs.Writer writer, Ros2Franka_spine_msgsMsgSpineParameters value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Franka_spine_msgsMsgUserLimits part0 = value.user_limits;
        writeRos2Franka_spine_msgsMsgUserLimits(writer, part0);
    }

    private static Ros2Franka_spine_msgsMsgSpineParameters readRos2Franka_spine_msgsMsgSpineParameters(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsMsgSpineParameters value = new Ros2Franka_spine_msgsMsgSpineParameters();
        value.user_limits = readRos2Franka_spine_msgsMsgUserLimits(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/msg/SpinePosition.
    // @details Canonical extent 21..149 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsMsgSpinePosition
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/msg/SpinePosition";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775";
        public static final int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 149;
        /**
         * @brief Periodic spine position sample published on ~/position. Subscribe to this instead of polling
         * the GetPosition service in a loop.
         * @details Original franka_spine_msgs/msg/SpinePosition.header; native type std_msgs/msg/Header.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Last known position [m]
         * @details Original franka_spine_msgs/msg/SpinePosition.position; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double position = 0;
        /**
         * @brief False when the sample is stale because the REST read failed
         * @details Original franka_spine_msgs/msg/SpinePosition.valid; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean valid = false;

        public Ros2Franka_spine_msgsMsgSpinePosition()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsMsgSpinePosition> CODEC = new Codec<Ros2Franka_spine_msgsMsgSpinePosition>() {
            public byte[] encode(Ros2Franka_spine_msgsMsgSpinePosition value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsMsgSpinePosition(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsMsgSpinePosition decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsMsgSpinePosition value = readRos2Franka_spine_msgsMsgSpinePosition(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsMsgSpinePosition(Codecs.Writer writer, Ros2Franka_spine_msgsMsgSpinePosition value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        double part1 = value.position;
        writer.f64(part1);
        boolean part2 = value.valid;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Franka_spine_msgsMsgSpinePosition readRos2Franka_spine_msgsMsgSpinePosition(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsMsgSpinePosition value = new Ros2Franka_spine_msgsMsgSpinePosition();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.position = reader.f64();
        value.valid = readBool(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/msg/SpineState.
    // @details Canonical extent 25..921 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsMsgSpineState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/msg/SpineState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 921;
        /**
         * @brief Periodic spine state sample published on ~/state. Subscribe to this instead of polling the
         * GetSpineState service in a loop. Possible states: NotReadyToSwitchOn, SwitchedOff, ReadyToSwitchOn,
         * MotorOff, SwitchedOn, QuickStopActive, FaultReactionActive, Fault, Unknown.
         * @details Original franka_spine_msgs/msg/SpineState.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Current spine state
         * @details Original franka_spine_msgs/msg/SpineState.state; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String state = "";
        /**
         * @brief Error code (empty when no error)
         * @details Original franka_spine_msgs/msg/SpineState.error_code; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error_code = "";
        /**
         * @brief Human-readable error description
         * @details Original franka_spine_msgs/msg/SpineState.error_description; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String error_description = "";
        /**
         * @brief False when the sample is stale because the REST read failed
         * @details Original franka_spine_msgs/msg/SpineState.valid; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean valid = false;

        public Ros2Franka_spine_msgsMsgSpineState()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsMsgSpineState> CODEC = new Codec<Ros2Franka_spine_msgsMsgSpineState>() {
            public byte[] encode(Ros2Franka_spine_msgsMsgSpineState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsMsgSpineState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsMsgSpineState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsMsgSpineState value = readRos2Franka_spine_msgsMsgSpineState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsMsgSpineState(Codecs.Writer writer, Ros2Franka_spine_msgsMsgSpineState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String part1 = value.state;
        writeText(writer, part1, 256);
        String part2 = value.error_code;
        writeText(writer, part2, 256);
        String part3 = value.error_description;
        writeText(writer, part3, 256);
        boolean part4 = value.valid;
        writer.integer(part4 ? 1 : 0, 1, false);
    }

    private static Ros2Franka_spine_msgsMsgSpineState readRos2Franka_spine_msgsMsgSpineState(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsMsgSpineState value = new Ros2Franka_spine_msgsMsgSpineState();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.state = readText(reader, 256);
        value.error_code = readText(reader, 256);
        value.error_description = readText(reader, 256);
        value.valid = readBool(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/FaultReset_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvFaultReset_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/FaultReset_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_spine_msgsSrvFaultReset_Request()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvFaultReset_Request> CODEC = new Codec<Ros2Franka_spine_msgsSrvFaultReset_Request>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvFaultReset_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvFaultReset_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvFaultReset_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvFaultReset_Request value = readRos2Franka_spine_msgsSrvFaultReset_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvFaultReset_Request(Codecs.Writer writer, Ros2Franka_spine_msgsSrvFaultReset_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_spine_msgsSrvFaultReset_Request readRos2Franka_spine_msgsSrvFaultReset_Request(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvFaultReset_Request value = new Ros2Franka_spine_msgsSrvFaultReset_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/FaultReset_Response.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvFaultReset_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/FaultReset_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        /**
         * @brief Spine state after the reset
         * @details Original franka_spine_msgs/srv/FaultReset_Response.state; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String state = "";
        /**
         * @brief True if the fault was cleared
         * @details Original franka_spine_msgs/srv/FaultReset_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/FaultReset_Response.message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String message = "";

        public Ros2Franka_spine_msgsSrvFaultReset_Response()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvFaultReset_Response> CODEC = new Codec<Ros2Franka_spine_msgsSrvFaultReset_Response>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvFaultReset_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvFaultReset_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvFaultReset_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvFaultReset_Response value = readRos2Franka_spine_msgsSrvFaultReset_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvFaultReset_Response(Codecs.Writer writer, Ros2Franka_spine_msgsSrvFaultReset_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.state;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        String part2 = value.message;
        writeText(writer, part2, 256);
    }

    private static Ros2Franka_spine_msgsSrvFaultReset_Response readRos2Franka_spine_msgsSrvFaultReset_Response(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvFaultReset_Response value = new Ros2Franka_spine_msgsSrvFaultReset_Response();
        value.state = readText(reader, 256);
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetParameters_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvGetParameters_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/GetParameters_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_spine_msgsSrvGetParameters_Request()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvGetParameters_Request> CODEC = new Codec<Ros2Franka_spine_msgsSrvGetParameters_Request>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvGetParameters_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvGetParameters_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvGetParameters_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvGetParameters_Request value = readRos2Franka_spine_msgsSrvGetParameters_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvGetParameters_Request(Codecs.Writer writer, Ros2Franka_spine_msgsSrvGetParameters_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_spine_msgsSrvGetParameters_Request readRos2Franka_spine_msgsSrvGetParameters_Request(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvGetParameters_Request value = new Ros2Franka_spine_msgsSrvGetParameters_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetParameters_Response.
    // @details Canonical extent 21..277 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvGetParameters_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/GetParameters_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed";
        public static final int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 277;
        /**
         * @brief Calibration and limit values
         * @details Original franka_spine_msgs/srv/GetParameters_Response.parameters; native type
         * franka_spine_msgs/msg/SpineParameters. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Franka_spine_msgsMsgSpineParameters parameters = new Ros2Franka_spine_msgsMsgSpineParameters();
        /**
         * @brief True if the REST call succeeded
         * @details Original franka_spine_msgs/srv/GetParameters_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/GetParameters_Response.message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String message = "";

        public Ros2Franka_spine_msgsSrvGetParameters_Response()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvGetParameters_Response> CODEC = new Codec<Ros2Franka_spine_msgsSrvGetParameters_Response>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvGetParameters_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvGetParameters_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvGetParameters_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvGetParameters_Response value = readRos2Franka_spine_msgsSrvGetParameters_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvGetParameters_Response(Codecs.Writer writer, Ros2Franka_spine_msgsSrvGetParameters_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Franka_spine_msgsMsgSpineParameters part0 = value.parameters;
        writeRos2Franka_spine_msgsMsgSpineParameters(writer, part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        String part2 = value.message;
        writeText(writer, part2, 256);
    }

    private static Ros2Franka_spine_msgsSrvGetParameters_Response readRos2Franka_spine_msgsSrvGetParameters_Response(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvGetParameters_Response value = new Ros2Franka_spine_msgsSrvGetParameters_Response();
        value.parameters = readRos2Franka_spine_msgsMsgSpineParameters(reader);
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetPosition_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvGetPosition_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/GetPosition_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_spine_msgsSrvGetPosition_Request()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvGetPosition_Request> CODEC = new Codec<Ros2Franka_spine_msgsSrvGetPosition_Request>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvGetPosition_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvGetPosition_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvGetPosition_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvGetPosition_Request value = readRos2Franka_spine_msgsSrvGetPosition_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvGetPosition_Request(Codecs.Writer writer, Ros2Franka_spine_msgsSrvGetPosition_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_spine_msgsSrvGetPosition_Request readRos2Franka_spine_msgsSrvGetPosition_Request(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvGetPosition_Request value = new Ros2Franka_spine_msgsSrvGetPosition_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetPosition_Response.
    // @details Canonical extent 9..9 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvGetPosition_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/GetPosition_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        /**
         * @brief Current position [m]
         * @details Original franka_spine_msgs/srv/GetPosition_Response.position; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double position = 0;
        /**
         * @brief True if the REST call succeeded
         * @details Original franka_spine_msgs/srv/GetPosition_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;

        public Ros2Franka_spine_msgsSrvGetPosition_Response()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvGetPosition_Response> CODEC = new Codec<Ros2Franka_spine_msgsSrvGetPosition_Response>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvGetPosition_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvGetPosition_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvGetPosition_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvGetPosition_Response value = readRos2Franka_spine_msgsSrvGetPosition_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvGetPosition_Response(Codecs.Writer writer, Ros2Franka_spine_msgsSrvGetPosition_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.position;
        writer.f64(part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Franka_spine_msgsSrvGetPosition_Response readRos2Franka_spine_msgsSrvGetPosition_Response(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvGetPosition_Response value = new Ros2Franka_spine_msgsSrvGetPosition_Response();
        value.position = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvGetSpineState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/GetSpineState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_spine_msgsSrvGetSpineState_Request()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvGetSpineState_Request> CODEC = new Codec<Ros2Franka_spine_msgsSrvGetSpineState_Request>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvGetSpineState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvGetSpineState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvGetSpineState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvGetSpineState_Request value = readRos2Franka_spine_msgsSrvGetSpineState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvGetSpineState_Request(Codecs.Writer writer, Ros2Franka_spine_msgsSrvGetSpineState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_spine_msgsSrvGetSpineState_Request readRos2Franka_spine_msgsSrvGetSpineState_Request(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvGetSpineState_Request value = new Ros2Franka_spine_msgsSrvGetSpineState_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Response.
    // @details Canonical extent 13..781 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvGetSpineState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/GetSpineState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 781;
        /**
         * @brief Current spine state
         * @details Original franka_spine_msgs/srv/GetSpineState_Response.state; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String state = "";
        /**
         * @brief Error code (empty when no error)
         * @details Original franka_spine_msgs/srv/GetSpineState_Response.error_code; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String error_code = "";
        /**
         * @brief Human-readable error description
         * @details Original franka_spine_msgs/srv/GetSpineState_Response.error_description; native type
         * string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public String error_description = "";
        /**
         * @brief True if the REST call succeeded
         * @details Original franka_spine_msgs/srv/GetSpineState_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;

        public Ros2Franka_spine_msgsSrvGetSpineState_Response()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvGetSpineState_Response> CODEC = new Codec<Ros2Franka_spine_msgsSrvGetSpineState_Response>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvGetSpineState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvGetSpineState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvGetSpineState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvGetSpineState_Response value = readRos2Franka_spine_msgsSrvGetSpineState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvGetSpineState_Response(Codecs.Writer writer, Ros2Franka_spine_msgsSrvGetSpineState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.state;
        writeText(writer, part0, 256);
        String part1 = value.error_code;
        writeText(writer, part1, 256);
        String part2 = value.error_description;
        writeText(writer, part2, 256);
        boolean part3 = value.success;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros2Franka_spine_msgsSrvGetSpineState_Response readRos2Franka_spine_msgsSrvGetSpineState_Response(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvGetSpineState_Response value = new Ros2Franka_spine_msgsSrvGetSpineState_Response();
        value.state = readText(reader, 256);
        value.error_code = readText(reader, 256);
        value.error_description = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/Halt_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvHalt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/Halt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_spine_msgsSrvHalt_Request()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvHalt_Request> CODEC = new Codec<Ros2Franka_spine_msgsSrvHalt_Request>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvHalt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvHalt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvHalt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvHalt_Request value = readRos2Franka_spine_msgsSrvHalt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvHalt_Request(Codecs.Writer writer, Ros2Franka_spine_msgsSrvHalt_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_spine_msgsSrvHalt_Request readRos2Franka_spine_msgsSrvHalt_Request(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvHalt_Request value = new Ros2Franka_spine_msgsSrvHalt_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/Halt_Response.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvHalt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/Halt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        /**
         * @brief Spine state after the halt
         * @details Original franka_spine_msgs/srv/Halt_Response.state; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String state = "";
        /**
         * @brief True if the halt was executed
         * @details Original franka_spine_msgs/srv/Halt_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/Halt_Response.message; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String message = "";

        public Ros2Franka_spine_msgsSrvHalt_Response()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvHalt_Response> CODEC = new Codec<Ros2Franka_spine_msgsSrvHalt_Response>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvHalt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvHalt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvHalt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvHalt_Response value = readRos2Franka_spine_msgsSrvHalt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvHalt_Response(Codecs.Writer writer, Ros2Franka_spine_msgsSrvHalt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.state;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        String part2 = value.message;
        writeText(writer, part2, 256);
    }

    private static Ros2Franka_spine_msgsSrvHalt_Response readRos2Franka_spine_msgsSrvHalt_Response(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvHalt_Response value = new Ros2Franka_spine_msgsSrvHalt_Response();
        value.state = readText(reader, 256);
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvSwitchOff_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/SwitchOff_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_spine_msgsSrvSwitchOff_Request()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvSwitchOff_Request> CODEC = new Codec<Ros2Franka_spine_msgsSrvSwitchOff_Request>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvSwitchOff_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvSwitchOff_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvSwitchOff_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvSwitchOff_Request value = readRos2Franka_spine_msgsSrvSwitchOff_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvSwitchOff_Request(Codecs.Writer writer, Ros2Franka_spine_msgsSrvSwitchOff_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_spine_msgsSrvSwitchOff_Request readRos2Franka_spine_msgsSrvSwitchOff_Request(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvSwitchOff_Request value = new Ros2Franka_spine_msgsSrvSwitchOff_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Response.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvSwitchOff_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/SwitchOff_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        /**
         * @brief Spine state after switching off
         * @details Original franka_spine_msgs/srv/SwitchOff_Response.state; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String state = "";
        /**
         * @brief True if the transition succeeded
         * @details Original franka_spine_msgs/srv/SwitchOff_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/SwitchOff_Response.message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String message = "";

        public Ros2Franka_spine_msgsSrvSwitchOff_Response()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvSwitchOff_Response> CODEC = new Codec<Ros2Franka_spine_msgsSrvSwitchOff_Response>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvSwitchOff_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvSwitchOff_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvSwitchOff_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvSwitchOff_Response value = readRos2Franka_spine_msgsSrvSwitchOff_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvSwitchOff_Response(Codecs.Writer writer, Ros2Franka_spine_msgsSrvSwitchOff_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.state;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        String part2 = value.message;
        writeText(writer, part2, 256);
    }

    private static Ros2Franka_spine_msgsSrvSwitchOff_Response readRos2Franka_spine_msgsSrvSwitchOff_Response(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvSwitchOff_Response value = new Ros2Franka_spine_msgsSrvSwitchOff_Response();
        value.state = readText(reader, 256);
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvSwitchOn_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/SwitchOn_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Franka_spine_msgsSrvSwitchOn_Request()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvSwitchOn_Request> CODEC = new Codec<Ros2Franka_spine_msgsSrvSwitchOn_Request>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvSwitchOn_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvSwitchOn_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvSwitchOn_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvSwitchOn_Request value = readRos2Franka_spine_msgsSrvSwitchOn_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvSwitchOn_Request(Codecs.Writer writer, Ros2Franka_spine_msgsSrvSwitchOn_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Franka_spine_msgsSrvSwitchOn_Request readRos2Franka_spine_msgsSrvSwitchOn_Request(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvSwitchOn_Request value = new Ros2Franka_spine_msgsSrvSwitchOn_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Response.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Franka_spine_msgsSrvSwitchOn_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "franka_spine_msgs/srv/SwitchOn_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        /**
         * @brief Spine state after switching on
         * @details Original franka_spine_msgs/srv/SwitchOn_Response.state; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String state = "";
        /**
         * @brief True if the transition succeeded
         * @details Original franka_spine_msgs/srv/SwitchOn_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/SwitchOn_Response.message; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String message = "";

        public Ros2Franka_spine_msgsSrvSwitchOn_Response()
        {
        }

        public static final Codec<Ros2Franka_spine_msgsSrvSwitchOn_Response> CODEC = new Codec<Ros2Franka_spine_msgsSrvSwitchOn_Response>() {
            public byte[] encode(Ros2Franka_spine_msgsSrvSwitchOn_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Franka_spine_msgsSrvSwitchOn_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Franka_spine_msgsSrvSwitchOn_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Franka_spine_msgsSrvSwitchOn_Response value = readRos2Franka_spine_msgsSrvSwitchOn_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Franka_spine_msgsSrvSwitchOn_Response(Codecs.Writer writer, Ros2Franka_spine_msgsSrvSwitchOn_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.state;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        String part2 = value.message;
        writeText(writer, part2, 256);
    }

    private static Ros2Franka_spine_msgsSrvSwitchOn_Response readRos2Franka_spine_msgsSrvSwitchOn_Response(Codecs.Reader reader)
    {
        Ros2Franka_spine_msgsSrvSwitchOn_Response value = new Ros2Franka_spine_msgsSrvSwitchOn_Response();
        value.state = readText(reader, 256);
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        return value;
    }
}
