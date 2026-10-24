// @brief Complete original flexiv ros2_humble_v2_2 canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
package org.uwvm.flexiv.ros2humblev22;

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

    // @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Goal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsActionErrorRecovery_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/action/ErrorRecovery_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Flexiv_msgsActionErrorRecovery_Goal()
        {
        }

        public static final Codec<Ros2Flexiv_msgsActionErrorRecovery_Goal> CODEC = new Codec<Ros2Flexiv_msgsActionErrorRecovery_Goal>() {
            public byte[] encode(Ros2Flexiv_msgsActionErrorRecovery_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsActionErrorRecovery_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsActionErrorRecovery_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsActionErrorRecovery_Goal value = readRos2Flexiv_msgsActionErrorRecovery_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsActionErrorRecovery_Goal(Codecs.Writer writer, Ros2Flexiv_msgsActionErrorRecovery_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Flexiv_msgsActionErrorRecovery_Goal readRos2Flexiv_msgsActionErrorRecovery_Goal(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsActionErrorRecovery_Goal value = new Ros2Flexiv_msgsActionErrorRecovery_Goal();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Result.
    // @details Canonical extent 7..263 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsActionErrorRecovery_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/action/ErrorRecovery_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc";
        public static final int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 263;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/action/ErrorRecovery_Result.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Operator-facing explanation of the outcome
         * @details Original flexiv_msgs/action/ErrorRecovery_Result.message; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String message = "";
        /**
         * @brief True when the robot is operational again but controllers must be restarted to resume motion
         * @details Original flexiv_msgs/action/ErrorRecovery_Result.requires_controller_restart; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean requires_controller_restart = false;
        /**
         * @brief Policy that applied to the condition found, values defined in RecoveryPolicy.msg
         * @details Original flexiv_msgs/action/ErrorRecovery_Result.recovery_policy; native type uint8. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public int recovery_policy = 0;

        public Ros2Flexiv_msgsActionErrorRecovery_Result()
        {
        }

        public static final Codec<Ros2Flexiv_msgsActionErrorRecovery_Result> CODEC = new Codec<Ros2Flexiv_msgsActionErrorRecovery_Result>() {
            public byte[] encode(Ros2Flexiv_msgsActionErrorRecovery_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsActionErrorRecovery_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsActionErrorRecovery_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsActionErrorRecovery_Result value = readRos2Flexiv_msgsActionErrorRecovery_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsActionErrorRecovery_Result(Codecs.Writer writer, Ros2Flexiv_msgsActionErrorRecovery_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.message;
        writeText(writer, part1, 256);
        boolean part2 = value.requires_controller_restart;
        writer.integer(part2 ? 1 : 0, 1, false);
        int part3 = value.recovery_policy;
        writer.integer(part3, 1, false);
    }

    private static Ros2Flexiv_msgsActionErrorRecovery_Result readRos2Flexiv_msgsActionErrorRecovery_Result(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsActionErrorRecovery_Result value = new Ros2Flexiv_msgsActionErrorRecovery_Result();
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        value.requires_controller_restart = readBool(reader);
        value.recovery_policy = (int)reader.integer(1, false);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Feedback.
    // @details Canonical extent 9..265 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsActionErrorRecovery_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/action/ErrorRecovery_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 265;
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state; native type uint8.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public int recovery_state = 0;
        /**
         * @brief Human-readable name of the recovery state above
         * @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state_name; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String recovery_state_name = "";
        /**
         * @brief Seconds elapsed since the recovery started
         * @details Original flexiv_msgs/action/ErrorRecovery_Feedback.elapsed_seconds; native type float32.
         * Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public float elapsed_seconds = 0;

        public Ros2Flexiv_msgsActionErrorRecovery_Feedback()
        {
        }

        public static final Codec<Ros2Flexiv_msgsActionErrorRecovery_Feedback> CODEC = new Codec<Ros2Flexiv_msgsActionErrorRecovery_Feedback>() {
            public byte[] encode(Ros2Flexiv_msgsActionErrorRecovery_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsActionErrorRecovery_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsActionErrorRecovery_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsActionErrorRecovery_Feedback value = readRos2Flexiv_msgsActionErrorRecovery_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsActionErrorRecovery_Feedback(Codecs.Writer writer, Ros2Flexiv_msgsActionErrorRecovery_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.recovery_state;
        writer.integer(part0, 1, false);
        String part1 = value.recovery_state_name;
        writeText(writer, part1, 256);
        float part2 = value.elapsed_seconds;
        writer.f32(part2);
    }

    private static Ros2Flexiv_msgsActionErrorRecovery_Feedback readRos2Flexiv_msgsActionErrorRecovery_Feedback(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsActionErrorRecovery_Feedback value = new Ros2Flexiv_msgsActionErrorRecovery_Feedback();
        value.recovery_state = (int)reader.integer(1, false);
        value.recovery_state_name = readText(reader, 256);
        value.elapsed_seconds = reader.f32();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Grasp_Goal.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsActionGrasp_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/action/Grasp_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief N
         * @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double force = 0;

        public Ros2Flexiv_msgsActionGrasp_Goal()
        {
        }

        public static final Codec<Ros2Flexiv_msgsActionGrasp_Goal> CODEC = new Codec<Ros2Flexiv_msgsActionGrasp_Goal>() {
            public byte[] encode(Ros2Flexiv_msgsActionGrasp_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsActionGrasp_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsActionGrasp_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsActionGrasp_Goal value = readRos2Flexiv_msgsActionGrasp_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsActionGrasp_Goal(Codecs.Writer writer, Ros2Flexiv_msgsActionGrasp_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.force;
        writer.f64(part0);
    }

    private static Ros2Flexiv_msgsActionGrasp_Goal readRos2Flexiv_msgsActionGrasp_Goal(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsActionGrasp_Goal value = new Ros2Flexiv_msgsActionGrasp_Goal();
        value.force = reader.f64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Grasp_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsActionGrasp_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/action/Grasp_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros2Flexiv_msgsActionGrasp_Result()
        {
        }

        public static final Codec<Ros2Flexiv_msgsActionGrasp_Result> CODEC = new Codec<Ros2Flexiv_msgsActionGrasp_Result>() {
            public byte[] encode(Ros2Flexiv_msgsActionGrasp_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsActionGrasp_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsActionGrasp_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsActionGrasp_Result value = readRos2Flexiv_msgsActionGrasp_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsActionGrasp_Result(Codecs.Writer writer, Ros2Flexiv_msgsActionGrasp_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Flexiv_msgsActionGrasp_Result readRos2Flexiv_msgsActionGrasp_Result(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsActionGrasp_Result value = new Ros2Flexiv_msgsActionGrasp_Result();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Grasp_Feedback.
    // @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsActionGrasp_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/action/Grasp_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        /**
         * @brief m
         * @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double current_width = 0;
        /**
         * @brief N
         * @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double current_force = 0;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean moving = false;

        public Ros2Flexiv_msgsActionGrasp_Feedback()
        {
        }

        public static final Codec<Ros2Flexiv_msgsActionGrasp_Feedback> CODEC = new Codec<Ros2Flexiv_msgsActionGrasp_Feedback>() {
            public byte[] encode(Ros2Flexiv_msgsActionGrasp_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsActionGrasp_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsActionGrasp_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsActionGrasp_Feedback value = readRos2Flexiv_msgsActionGrasp_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsActionGrasp_Feedback(Codecs.Writer writer, Ros2Flexiv_msgsActionGrasp_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.current_width;
        writer.f64(part0);
        double part1 = value.current_force;
        writer.f64(part1);
        boolean part2 = value.moving;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Flexiv_msgsActionGrasp_Feedback readRos2Flexiv_msgsActionGrasp_Feedback(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsActionGrasp_Feedback value = new Ros2Flexiv_msgsActionGrasp_Feedback();
        value.current_width = reader.f64();
        value.current_force = reader.f64();
        value.moving = readBool(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Move_Goal.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsActionMove_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/action/Move_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief m
         * @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double width = 0;
        /**
         * @brief m/s
         * @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double velocity = 0;
        /**
         * @brief N
         * @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double max_force = 0;

        public Ros2Flexiv_msgsActionMove_Goal()
        {
        }

        public static final Codec<Ros2Flexiv_msgsActionMove_Goal> CODEC = new Codec<Ros2Flexiv_msgsActionMove_Goal>() {
            public byte[] encode(Ros2Flexiv_msgsActionMove_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsActionMove_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsActionMove_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsActionMove_Goal value = readRos2Flexiv_msgsActionMove_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsActionMove_Goal(Codecs.Writer writer, Ros2Flexiv_msgsActionMove_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.width;
        writer.f64(part0);
        double part1 = value.velocity;
        writer.f64(part1);
        double part2 = value.max_force;
        writer.f64(part2);
    }

    private static Ros2Flexiv_msgsActionMove_Goal readRos2Flexiv_msgsActionMove_Goal(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsActionMove_Goal value = new Ros2Flexiv_msgsActionMove_Goal();
        value.width = reader.f64();
        value.velocity = reader.f64();
        value.max_force = reader.f64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Move_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsActionMove_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/action/Move_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String error = "";

        public Ros2Flexiv_msgsActionMove_Result()
        {
        }

        public static final Codec<Ros2Flexiv_msgsActionMove_Result> CODEC = new Codec<Ros2Flexiv_msgsActionMove_Result>() {
            public byte[] encode(Ros2Flexiv_msgsActionMove_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsActionMove_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsActionMove_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsActionMove_Result value = readRos2Flexiv_msgsActionMove_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsActionMove_Result(Codecs.Writer writer, Ros2Flexiv_msgsActionMove_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.error;
        writeText(writer, part1, 256);
    }

    private static Ros2Flexiv_msgsActionMove_Result readRos2Flexiv_msgsActionMove_Result(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsActionMove_Result value = new Ros2Flexiv_msgsActionMove_Result();
        value.success = readBool(reader);
        value.error = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Move_Feedback.
    // @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsActionMove_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/action/Move_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        /**
         * @brief m
         * @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double current_width = 0;
        /**
         * @brief N
         * @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double current_force = 0;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean moving = false;

        public Ros2Flexiv_msgsActionMove_Feedback()
        {
        }

        public static final Codec<Ros2Flexiv_msgsActionMove_Feedback> CODEC = new Codec<Ros2Flexiv_msgsActionMove_Feedback>() {
            public byte[] encode(Ros2Flexiv_msgsActionMove_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsActionMove_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsActionMove_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsActionMove_Feedback value = readRos2Flexiv_msgsActionMove_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsActionMove_Feedback(Codecs.Writer writer, Ros2Flexiv_msgsActionMove_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.current_width;
        writer.f64(part0);
        double part1 = value.current_force;
        writer.f64(part1);
        boolean part2 = value.moving;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Flexiv_msgsActionMove_Feedback readRos2Flexiv_msgsActionMove_Feedback(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsActionMove_Feedback value = new Ros2Flexiv_msgsActionMove_Feedback();
        value.current_width = reader.f64();
        value.current_force = reader.f64();
        value.moving = readBool(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/Digital.
    // @details Canonical extent 2..2 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgDigital
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/Digital";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
         * the complete value and acquires no ROS resource.
         */
        public int pin = 0;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
         * the complete value and acquires no ROS resource.
         */
        public boolean state = false;

        public Ros2Flexiv_msgsMsgDigital()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgDigital> CODEC = new Codec<Ros2Flexiv_msgsMsgDigital>() {
            public byte[] encode(Ros2Flexiv_msgsMsgDigital value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgDigital(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgDigital decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgDigital value = readRos2Flexiv_msgsMsgDigital(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgDigital(Codecs.Writer writer, Ros2Flexiv_msgsMsgDigital value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pin;
        writer.integer(part0, 1, false);
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Flexiv_msgsMsgDigital readRos2Flexiv_msgsMsgDigital(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgDigital value = new Ros2Flexiv_msgsMsgDigital();
        value.pin = (int)reader.integer(1, false);
        value.state = readBool(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/GPIOStates.
    // @details Canonical extent 4..68 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgGPIOStates
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/GPIOStates";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Retain the complete original flexiv_msgs/msg/Digital field.
         * @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
         * elements. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Flexiv_msgsMsgDigital[] states = new Ros2Flexiv_msgsMsgDigital[0];

        public Ros2Flexiv_msgsMsgGPIOStates()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgGPIOStates> CODEC = new Codec<Ros2Flexiv_msgsMsgGPIOStates>() {
            public byte[] encode(Ros2Flexiv_msgsMsgGPIOStates value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgGPIOStates(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgGPIOStates decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgGPIOStates value = readRos2Flexiv_msgsMsgGPIOStates(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgGPIOStates(Codecs.Writer writer, Ros2Flexiv_msgsMsgGPIOStates value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Flexiv_msgsMsgDigital[] part0 = value.states;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Flexiv_msgsMsgDigital(writer, part0[i]);
        }
    }

    private static Ros2Flexiv_msgsMsgGPIOStates readRos2Flexiv_msgsMsgGPIOStates(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgGPIOStates value = new Ros2Flexiv_msgsMsgGPIOStates();
        value.states = new Ros2Flexiv_msgsMsgDigital[readCount(reader, 32, 2)];
        for(int i = 0; i < value.states.length; ++i)
            value.states[i] = readRos2Flexiv_msgsMsgDigital(reader);
        return value;
    }

    // @brief Own every original field of std_msgs/msg/Header.
    // @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Std_msgsMsgHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
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
         * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
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
        writeText(writer, part1, 256);
    }

    private static Ros2Std_msgsMsgHeader readRos2Std_msgsMsgHeader(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgHeader value = new Ros2Std_msgsMsgHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.frame_id = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/JointImpedance.
    // @details Canonical extent 29..9373 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgJointImpedance
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/JointImpedance";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 9373;
        /**
         * @brief Impedance properties of the robot's joint motion controller, used in the joint impedance
         * control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header
         * @details Original flexiv_msgs/msg/JointImpedance.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
         * robot are covered: the robot reports no nominal joint stiffness for external axes.
         * @details Original flexiv_msgs/msg/JointImpedance.joint_names; native type string. At most 32
         * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad]
         * @details Original flexiv_msgs/msg/JointImpedance.k_q; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] k_q = new double[0];
        /**
         * @brief Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7
         * @details Original flexiv_msgs/msg/JointImpedance.z_q; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] z_q = new double[0];
        /**
         * @brief Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad]
         * @details Original flexiv_msgs/msg/JointImpedance.k_q_nom; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] k_q_nom = new double[0];
        /**
         * @brief Whether these values are in effect on the robot. False while the robot is not in a joint
         * impedance control mode: they are held and applied on the next controller start.
         * @details Original flexiv_msgs/msg/JointImpedance.in_effect; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean in_effect = false;

        public Ros2Flexiv_msgsMsgJointImpedance()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgJointImpedance> CODEC = new Codec<Ros2Flexiv_msgsMsgJointImpedance>() {
            public byte[] encode(Ros2Flexiv_msgsMsgJointImpedance value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgJointImpedance(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgJointImpedance decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgJointImpedance value = readRos2Flexiv_msgsMsgJointImpedance(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgJointImpedance(Codecs.Writer writer, Ros2Flexiv_msgsMsgJointImpedance value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String[] part1 = value.joint_names;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        double[] part2 = value.k_q;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.z_q;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.k_q_nom;
        if(part4 == null || part4.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        boolean part5 = value.in_effect;
        writer.integer(part5 ? 1 : 0, 1, false);
    }

    private static Ros2Flexiv_msgsMsgJointImpedance readRos2Flexiv_msgsMsgJointImpedance(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgJointImpedance value = new Ros2Flexiv_msgsMsgJointImpedance();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.joint_names = new String[readCount(reader, 32, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.k_q = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.k_q.length; ++i)
            value.k_q[i] = reader.f64();
        value.z_q = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.z_q.length; ++i)
            value.z_q[i] = reader.f64();
        value.k_q_nom = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.k_q_nom.length; ++i)
            value.k_q_nom[i] = reader.f64();
        value.in_effect = readBool(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/JointInertiaScale.
    // @details Canonical extent 21..8853 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgJointInertiaScale
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/JointInertiaScale";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f";
        public static final int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 8853;
        /**
         * @brief Inertia shaping scales of the robot's joint motion controller, used in the joint impedance
         * control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header
         * @details Original flexiv_msgs/msg/JointInertiaScale.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
         * robot are covered, matching JointImpedance.msg.
         * @details Original flexiv_msgs/msg/JointInertiaScale.joint_names; native type string. At most 32
         * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0
         * means no shaping; a smaller scale makes the joint behave as if it were lighter.
         * @details Original flexiv_msgs/msg/JointInertiaScale.inertia_scales; native type float64. At most 32
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] inertia_scales = new double[0];
        /**
         * @brief Whether these values are in effect on the robot. False while the robot is not in a joint
         * impedance control mode: they are held and applied on the next controller start.
         * @details Original flexiv_msgs/msg/JointInertiaScale.in_effect; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean in_effect = false;

        public Ros2Flexiv_msgsMsgJointInertiaScale()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgJointInertiaScale> CODEC = new Codec<Ros2Flexiv_msgsMsgJointInertiaScale>() {
            public byte[] encode(Ros2Flexiv_msgsMsgJointInertiaScale value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgJointInertiaScale(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgJointInertiaScale decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgJointInertiaScale value = readRos2Flexiv_msgsMsgJointInertiaScale(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgJointInertiaScale(Codecs.Writer writer, Ros2Flexiv_msgsMsgJointInertiaScale value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String[] part1 = value.joint_names;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        double[] part2 = value.inertia_scales;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        boolean part3 = value.in_effect;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros2Flexiv_msgsMsgJointInertiaScale readRos2Flexiv_msgsMsgJointInertiaScale(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgJointInertiaScale value = new Ros2Flexiv_msgsMsgJointInertiaScale();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.joint_names = new String[readCount(reader, 32, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.inertia_scales = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.inertia_scales.length; ++i)
            value.inertia_scales[i] = reader.f64();
        value.in_effect = readBool(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/JointPosVel.
    // @details Canonical extent 8..520 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgJointPosVel
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/JointPosVel";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] positions = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] velocities = new double[0];

        public Ros2Flexiv_msgsMsgJointPosVel()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgJointPosVel> CODEC = new Codec<Ros2Flexiv_msgsMsgJointPosVel>() {
            public byte[] encode(Ros2Flexiv_msgsMsgJointPosVel value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgJointPosVel(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgJointPosVel decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgJointPosVel value = readRos2Flexiv_msgsMsgJointPosVel(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgJointPosVel(Codecs.Writer writer, Ros2Flexiv_msgsMsgJointPosVel value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.positions;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.velocities;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros2Flexiv_msgsMsgJointPosVel readRos2Flexiv_msgsMsgJointPosVel(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgJointPosVel value = new Ros2Flexiv_msgsMsgJointPosVel();
        value.positions = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.positions.length; ++i)
            value.positions[i] = reader.f64();
        value.velocities = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/MaxContactTorque.
    // @details Canonical extent 25..9113 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgMaxContactTorque
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/MaxContactTorque";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 9113;
        /**
         * @brief Maximum contact torques of the robot's joint motion controller, used in the joint impedance
         * control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header
         * @details Original flexiv_msgs/msg/MaxContactTorque.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
         * robot are covered, matching JointImpedance.msg.
         * @details Original flexiv_msgs/msg/MaxContactTorque.joint_names; native type string. At most 32
         * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Maximum contact torque the controller regulates its output to maintain. [Nm]
         * @details Original flexiv_msgs/msg/MaxContactTorque.max_contact_torques; native type float64. At most
         * 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] max_contact_torques = new double[0];
        /**
         * @brief Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm]
         * @details Original flexiv_msgs/msg/MaxContactTorque.tau_max; native type float64. At most 32
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] tau_max = new double[0];
        /**
         * @brief Whether these values are in effect on the robot. False while the robot is not in a joint
         * impedance control mode: they are held and applied on the next controller start.
         * @details Original flexiv_msgs/msg/MaxContactTorque.in_effect; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean in_effect = false;

        public Ros2Flexiv_msgsMsgMaxContactTorque()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgMaxContactTorque> CODEC = new Codec<Ros2Flexiv_msgsMsgMaxContactTorque>() {
            public byte[] encode(Ros2Flexiv_msgsMsgMaxContactTorque value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgMaxContactTorque(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgMaxContactTorque decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgMaxContactTorque value = readRos2Flexiv_msgsMsgMaxContactTorque(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgMaxContactTorque(Codecs.Writer writer, Ros2Flexiv_msgsMsgMaxContactTorque value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String[] part1 = value.joint_names;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        double[] part2 = value.max_contact_torques;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.tau_max;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        boolean part4 = value.in_effect;
        writer.integer(part4 ? 1 : 0, 1, false);
    }

    private static Ros2Flexiv_msgsMsgMaxContactTorque readRos2Flexiv_msgsMsgMaxContactTorque(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgMaxContactTorque value = new Ros2Flexiv_msgsMsgMaxContactTorque();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.joint_names = new String[readCount(reader, 32, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.max_contact_torques = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.max_contact_torques.length; ++i)
            value.max_contact_torques[i] = reader.f64();
        value.tau_max = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.tau_max.length; ++i)
            value.tau_max[i] = reader.f64();
        value.in_effect = readBool(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/Mode.
    // @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgMode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/Mode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Retain the complete original int8 field.
         * @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public byte mode = 0;

        public Ros2Flexiv_msgsMsgMode()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgMode> CODEC = new Codec<Ros2Flexiv_msgsMsgMode>() {
            public byte[] encode(Ros2Flexiv_msgsMsgMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgMode value = readRos2Flexiv_msgsMsgMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgMode(Codecs.Writer writer, Ros2Flexiv_msgsMsgMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.mode;
        writer.integer(part0, 1, true);
    }

    private static Ros2Flexiv_msgsMsgMode readRos2Flexiv_msgsMsgMode(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgMode value = new Ros2Flexiv_msgsMsgMode();
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/RobotEvent.
    // @details Canonical extent 29..1053 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgRobotEvent
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/RobotEvent";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 1053;
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original flexiv_msgs/msg/RobotEvent.level; native type uint8. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public int level = 0;
        /**
         * @brief Unique ID of the event
         * @details Original flexiv_msgs/msg/RobotEvent.id; native type int32. Scalar value. Storage belongs to
         * the complete value and acquires no ROS resource.
         */
        public int id = 0;
        /**
         * @brief Brief description of the event
         * @details Original flexiv_msgs/msg/RobotEvent.description; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String description = "";
        /**
         * @brief Consequences caused by the event
         * @details Original flexiv_msgs/msg/RobotEvent.consequences; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String consequences = "";
        /**
         * @brief Probable causes of the event
         * @details Original flexiv_msgs/msg/RobotEvent.probable_causes; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String probable_causes = "";
        /**
         * @brief Recommended actions after the event
         * @details Original flexiv_msgs/msg/RobotEvent.recommended_actions; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String recommended_actions = "";
        /**
         * @brief Timestamp of the event
         * @details Original flexiv_msgs/msg/RobotEvent.timestamp; native type builtin_interfaces/msg/Time.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Builtin_interfacesMsgTime timestamp = new Ros2Builtin_interfacesMsgTime();

        public Ros2Flexiv_msgsMsgRobotEvent()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgRobotEvent> CODEC = new Codec<Ros2Flexiv_msgsMsgRobotEvent>() {
            public byte[] encode(Ros2Flexiv_msgsMsgRobotEvent value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgRobotEvent(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgRobotEvent decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgRobotEvent value = readRos2Flexiv_msgsMsgRobotEvent(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgRobotEvent(Codecs.Writer writer, Ros2Flexiv_msgsMsgRobotEvent value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.level;
        writer.integer(part0, 1, false);
        int part1 = value.id;
        writer.integer(part1, 4, true);
        String part2 = value.description;
        writeText(writer, part2, 256);
        String part3 = value.consequences;
        writeText(writer, part3, 256);
        String part4 = value.probable_causes;
        writeText(writer, part4, 256);
        String part5 = value.recommended_actions;
        writeText(writer, part5, 256);
        Ros2Builtin_interfacesMsgTime part6 = value.timestamp;
        writeRos2Builtin_interfacesMsgTime(writer, part6);
    }

    private static Ros2Flexiv_msgsMsgRobotEvent readRos2Flexiv_msgsMsgRobotEvent(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgRobotEvent value = new Ros2Flexiv_msgsMsgRobotEvent();
        value.level = (int)reader.integer(1, false);
        value.id = (int)reader.integer(4, true);
        value.description = readText(reader, 256);
        value.consequences = readText(reader, 256);
        value.probable_causes = readText(reader, 256);
        value.recommended_actions = readText(reader, 256);
        value.timestamp = readRos2Builtin_interfacesMsgTime(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/OperationalStatus.
    // @details Canonical extent 34..17650 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgOperationalStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/OperationalStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62";
        public static final int MIN_WIRE_BYTES = 34, MAX_WIRE_BYTES = 17650;
        /**
         * @brief Operational status of the robot and of the driver supervising it. The status values mirror
         * flexiv::rdk::OperationalStatus one-for-one. Header
         * @details Original flexiv_msgs/msg/OperationalStatus.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original flexiv_msgs/msg/OperationalStatus.operational_status; native type uint8. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public int operational_status = 0;
        /**
         * @brief Human-readable name of the operational status above
         * @details Original flexiv_msgs/msg/OperationalStatus.operational_status_name; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String operational_status_name = "";
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original flexiv_msgs/msg/OperationalStatus.driver_state; native type uint8. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public int driver_state = 0;
        /**
         * @brief Robot condition flags
         * @details Original flexiv_msgs/msg/OperationalStatus.connected; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean connected = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/msg/OperationalStatus.fault; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean fault = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/msg/OperationalStatus.operational; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean operational = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/msg/OperationalStatus.estop_released; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean estop_released = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/msg/OperationalStatus.reduced; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public boolean reduced = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/msg/OperationalStatus.recovery_state; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean recovery_state = false;
        /**
         * @brief Current robot control mode, values defined in Mode.msg
         * @details Original flexiv_msgs/msg/OperationalStatus.control_mode; native type int8. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public byte control_mode = 0;
        /**
         * @brief How the current condition should be recovered from, values defined in RecoveryPolicy.msg
         * @details Original flexiv_msgs/msg/OperationalStatus.recovery_policy; native type uint8. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public int recovery_policy = 0;
        /**
         * @brief Operator-facing explanation of the current condition and what to do about it
         * @details Original flexiv_msgs/msg/OperationalStatus.message; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String message = "";
        /**
         * @brief Most recent error and critical events reported by the robot
         * @details Original flexiv_msgs/msg/OperationalStatus.recent_events; native type
         * flexiv_msgs/msg/RobotEvent. At most 16 elements. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public Ros2Flexiv_msgsMsgRobotEvent[] recent_events = new Ros2Flexiv_msgsMsgRobotEvent[0];

        public Ros2Flexiv_msgsMsgOperationalStatus()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgOperationalStatus> CODEC = new Codec<Ros2Flexiv_msgsMsgOperationalStatus>() {
            public byte[] encode(Ros2Flexiv_msgsMsgOperationalStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgOperationalStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgOperationalStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgOperationalStatus value = readRos2Flexiv_msgsMsgOperationalStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgOperationalStatus(Codecs.Writer writer, Ros2Flexiv_msgsMsgOperationalStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        int part1 = value.operational_status;
        writer.integer(part1, 1, false);
        String part2 = value.operational_status_name;
        writeText(writer, part2, 256);
        int part3 = value.driver_state;
        writer.integer(part3, 1, false);
        boolean part4 = value.connected;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.fault;
        writer.integer(part5 ? 1 : 0, 1, false);
        boolean part6 = value.operational;
        writer.integer(part6 ? 1 : 0, 1, false);
        boolean part7 = value.estop_released;
        writer.integer(part7 ? 1 : 0, 1, false);
        boolean part8 = value.reduced;
        writer.integer(part8 ? 1 : 0, 1, false);
        boolean part9 = value.recovery_state;
        writer.integer(part9 ? 1 : 0, 1, false);
        byte part10 = value.control_mode;
        writer.integer(part10, 1, true);
        int part11 = value.recovery_policy;
        writer.integer(part11, 1, false);
        String part12 = value.message;
        writeText(writer, part12, 256);
        Ros2Flexiv_msgsMsgRobotEvent[] part13 = value.recent_events;
        if(part13 == null || part13.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part13.length, 4, false);
        for(int i = 0; i < part13.length; ++i)
        {
            writeRos2Flexiv_msgsMsgRobotEvent(writer, part13[i]);
        }
    }

    private static Ros2Flexiv_msgsMsgOperationalStatus readRos2Flexiv_msgsMsgOperationalStatus(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgOperationalStatus value = new Ros2Flexiv_msgsMsgOperationalStatus();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.operational_status = (int)reader.integer(1, false);
        value.operational_status_name = readText(reader, 256);
        value.driver_state = (int)reader.integer(1, false);
        value.connected = readBool(reader);
        value.fault = readBool(reader);
        value.operational = readBool(reader);
        value.estop_released = readBool(reader);
        value.reduced = readBool(reader);
        value.recovery_state = readBool(reader);
        value.control_mode = (byte)reader.integer(1, true);
        value.recovery_policy = (int)reader.integer(1, false);
        value.message = readText(reader, 256);
        value.recent_events = new Ros2Flexiv_msgsMsgRobotEvent[readCount(reader, 16, 29)];
        for(int i = 0; i < value.recent_events.length; ++i)
            value.recent_events[i] = readRos2Flexiv_msgsMsgRobotEvent(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/RecoveryPolicy.
    // @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgRecoveryPolicy
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/RecoveryPolicy";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original flexiv_msgs/msg/RecoveryPolicy.recovery_policy; native type uint8. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public int recovery_policy = 0;

        public Ros2Flexiv_msgsMsgRecoveryPolicy()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgRecoveryPolicy> CODEC = new Codec<Ros2Flexiv_msgsMsgRecoveryPolicy>() {
            public byte[] encode(Ros2Flexiv_msgsMsgRecoveryPolicy value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgRecoveryPolicy(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgRecoveryPolicy decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgRecoveryPolicy value = readRos2Flexiv_msgsMsgRecoveryPolicy(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgRecoveryPolicy(Codecs.Writer writer, Ros2Flexiv_msgsMsgRecoveryPolicy value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.recovery_policy;
        writer.integer(part0, 1, false);
    }

    private static Ros2Flexiv_msgsMsgRecoveryPolicy readRos2Flexiv_msgsMsgRecoveryPolicy(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgRecoveryPolicy value = new Ros2Flexiv_msgsMsgRecoveryPolicy();
        value.recovery_policy = (int)reader.integer(1, false);
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
    // @details Canonical extent 68..324 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgPoseStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/PoseStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad";
        public static final int MIN_WIRE_BYTES = 68, MAX_WIRE_BYTES = 324;
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
    // @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgTwistStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/TwistStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308";
        public static final int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 316;
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
    // @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgWrenchStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/WrenchStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177";
        public static final int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 316;
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

    // @brief Own every original field of flexiv_msgs/msg/RobotStates.
    // @details Canonical extent 552..5160 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgRobotStates
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/RobotStates";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a";
        public static final int MIN_WIRE_BYTES = 552, MAX_WIRE_BYTES = 5160;
        /**
         * @brief Header
         * @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Robot system timestamp
         * @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
         * builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Builtin_interfacesMsgTime robot_timestamp = new Ros2Builtin_interfacesMsgTime();
        /**
         * @brief Measured joint positions using link-side encoder
         * @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] q = new double[0];
        /**
         * @brief Measured joint positions using motor-side encoder
         * @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] theta = new double[0];
        /**
         * @brief Measured joint velocities using link-side encoder
         * @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] dq = new double[0];
        /**
         * @brief Measured joint velocities using motor-side encoder
         * @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] dtheta = new double[0];
        /**
         * @brief Measured joint torques
         * @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] tau = new double[0];
        /**
         * @brief Numerical derivative of measured joint torques
         * @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] tau_dot = new double[0];
        /**
         * @brief Estimated external joint torques
         * @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] tau_ext = new double[0];
        /**
         * @brief Estimated interaction joint torques
         * @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] tau_interact = new double[0];
        /**
         * @brief Measured joint temperatures
         * @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] temperature = new double[0];
        /**
         * @brief Measured TCP pose expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgPoseStamped tcp_pose = new Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Measured TCP twist expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgTwistStamped tcp_twist = new Ros2Geometry_msgsMsgTwistStamped();
        /**
         * @brief Measured flange pose expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgPoseStamped flange_pose = new Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Raw force-torque (FT) sensor reading in flange frame
         * @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgWrenchStamped raw_ft_sensor = new Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief Estimated external wrench applied on TCP and expressed in TCP frame
         * @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgWrenchStamped tcp_wrench_local = new Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief Estimated external wrench applied on TCP and expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgWrenchStamped tcp_wrench = new Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
         * @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgWrenchStamped raw_tcp_wrench_local = new Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief Unfiltered external wrench applied on TCP and expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgWrenchStamped raw_tcp_wrench = new Ros2Geometry_msgsMsgWrenchStamped();

        public Ros2Flexiv_msgsMsgRobotStates()
        {
        }

        public static final Codec<Ros2Flexiv_msgsMsgRobotStates> CODEC = new Codec<Ros2Flexiv_msgsMsgRobotStates>() {
            public byte[] encode(Ros2Flexiv_msgsMsgRobotStates value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsMsgRobotStates(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsMsgRobotStates decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsMsgRobotStates value = readRos2Flexiv_msgsMsgRobotStates(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsMsgRobotStates(Codecs.Writer writer, Ros2Flexiv_msgsMsgRobotStates value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Builtin_interfacesMsgTime part1 = value.robot_timestamp;
        writeRos2Builtin_interfacesMsgTime(writer, part1);
        double[] part2 = value.q;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.theta;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.dq;
        if(part4 == null || part4.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.dtheta;
        if(part5 == null || part5.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double[] part6 = value.tau;
        if(part6 == null || part6.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part6.length, 4, false);
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        double[] part7 = value.tau_dot;
        if(part7 == null || part7.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f64(part7[i]);
        }
        double[] part8 = value.tau_ext;
        if(part8 == null || part8.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part8.length, 4, false);
        for(int i = 0; i < part8.length; ++i)
        {
            writer.f64(part8[i]);
        }
        double[] part9 = value.tau_interact;
        if(part9 == null || part9.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part9.length, 4, false);
        for(int i = 0; i < part9.length; ++i)
        {
            writer.f64(part9[i]);
        }
        double[] part10 = value.temperature;
        if(part10 == null || part10.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part10.length, 4, false);
        for(int i = 0; i < part10.length; ++i)
        {
            writer.f64(part10[i]);
        }
        Ros2Geometry_msgsMsgPoseStamped part11 = value.tcp_pose;
        writeRos2Geometry_msgsMsgPoseStamped(writer, part11);
        Ros2Geometry_msgsMsgTwistStamped part12 = value.tcp_twist;
        writeRos2Geometry_msgsMsgTwistStamped(writer, part12);
        Ros2Geometry_msgsMsgPoseStamped part13 = value.flange_pose;
        writeRos2Geometry_msgsMsgPoseStamped(writer, part13);
        Ros2Geometry_msgsMsgWrenchStamped part14 = value.raw_ft_sensor;
        writeRos2Geometry_msgsMsgWrenchStamped(writer, part14);
        Ros2Geometry_msgsMsgWrenchStamped part15 = value.tcp_wrench_local;
        writeRos2Geometry_msgsMsgWrenchStamped(writer, part15);
        Ros2Geometry_msgsMsgWrenchStamped part16 = value.tcp_wrench;
        writeRos2Geometry_msgsMsgWrenchStamped(writer, part16);
        Ros2Geometry_msgsMsgWrenchStamped part17 = value.raw_tcp_wrench_local;
        writeRos2Geometry_msgsMsgWrenchStamped(writer, part17);
        Ros2Geometry_msgsMsgWrenchStamped part18 = value.raw_tcp_wrench;
        writeRos2Geometry_msgsMsgWrenchStamped(writer, part18);
    }

    private static Ros2Flexiv_msgsMsgRobotStates readRos2Flexiv_msgsMsgRobotStates(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgRobotStates value = new Ros2Flexiv_msgsMsgRobotStates();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.robot_timestamp = readRos2Builtin_interfacesMsgTime(reader);
        value.q = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.q.length; ++i)
            value.q[i] = reader.f64();
        value.theta = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.theta.length; ++i)
            value.theta[i] = reader.f64();
        value.dq = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.dq.length; ++i)
            value.dq[i] = reader.f64();
        value.dtheta = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.dtheta.length; ++i)
            value.dtheta[i] = reader.f64();
        value.tau = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.tau.length; ++i)
            value.tau[i] = reader.f64();
        value.tau_dot = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.tau_dot.length; ++i)
            value.tau_dot[i] = reader.f64();
        value.tau_ext = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.tau_ext.length; ++i)
            value.tau_ext[i] = reader.f64();
        value.tau_interact = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.tau_interact.length; ++i)
            value.tau_interact[i] = reader.f64();
        value.temperature = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.temperature.length; ++i)
            value.temperature[i] = reader.f64();
        value.tcp_pose = readRos2Geometry_msgsMsgPoseStamped(reader);
        value.tcp_twist = readRos2Geometry_msgsMsgTwistStamped(reader);
        value.flange_pose = readRos2Geometry_msgsMsgPoseStamped(reader);
        value.raw_ft_sensor = readRos2Geometry_msgsMsgWrenchStamped(reader);
        value.tcp_wrench_local = readRos2Geometry_msgsMsgWrenchStamped(reader);
        value.tcp_wrench = readRos2Geometry_msgsMsgWrenchStamped(reader);
        value.raw_tcp_wrench_local = readRos2Geometry_msgsMsgWrenchStamped(reader);
        value.raw_tcp_wrench = readRos2Geometry_msgsMsgWrenchStamped(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/srv/GetOperationalStatus_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsSrvGetOperationalStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/srv/GetOperationalStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Flexiv_msgsSrvGetOperationalStatus_Request()
        {
        }

        public static final Codec<Ros2Flexiv_msgsSrvGetOperationalStatus_Request> CODEC = new Codec<Ros2Flexiv_msgsSrvGetOperationalStatus_Request>() {
            public byte[] encode(Ros2Flexiv_msgsSrvGetOperationalStatus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsSrvGetOperationalStatus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsSrvGetOperationalStatus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsSrvGetOperationalStatus_Request value = readRos2Flexiv_msgsSrvGetOperationalStatus_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsSrvGetOperationalStatus_Request(Codecs.Writer writer, Ros2Flexiv_msgsSrvGetOperationalStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Flexiv_msgsSrvGetOperationalStatus_Request readRos2Flexiv_msgsSrvGetOperationalStatus_Request(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsSrvGetOperationalStatus_Request value = new Ros2Flexiv_msgsSrvGetOperationalStatus_Request();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/srv/GetOperationalStatus_Response.
    // @details Canonical extent 34..17650 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsSrvGetOperationalStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/srv/GetOperationalStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da";
        public static final int MIN_WIRE_BYTES = 34, MAX_WIRE_BYTES = 17650;
        /**
         * @brief Retain the complete original flexiv_msgs/msg/OperationalStatus field.
         * @details Original flexiv_msgs/srv/GetOperationalStatus_Response.status; native type
         * flexiv_msgs/msg/OperationalStatus. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public Ros2Flexiv_msgsMsgOperationalStatus status = new Ros2Flexiv_msgsMsgOperationalStatus();

        public Ros2Flexiv_msgsSrvGetOperationalStatus_Response()
        {
        }

        public static final Codec<Ros2Flexiv_msgsSrvGetOperationalStatus_Response> CODEC = new Codec<Ros2Flexiv_msgsSrvGetOperationalStatus_Response>() {
            public byte[] encode(Ros2Flexiv_msgsSrvGetOperationalStatus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsSrvGetOperationalStatus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsSrvGetOperationalStatus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsSrvGetOperationalStatus_Response value = readRos2Flexiv_msgsSrvGetOperationalStatus_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsSrvGetOperationalStatus_Response(Codecs.Writer writer, Ros2Flexiv_msgsSrvGetOperationalStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Flexiv_msgsMsgOperationalStatus part0 = value.status;
        writeRos2Flexiv_msgsMsgOperationalStatus(writer, part0);
    }

    private static Ros2Flexiv_msgsSrvGetOperationalStatus_Response readRos2Flexiv_msgsSrvGetOperationalStatus_Response(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsSrvGetOperationalStatus_Response value = new Ros2Flexiv_msgsSrvGetOperationalStatus_Response();
        value.status = readRos2Flexiv_msgsMsgOperationalStatus(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/srv/SetJointImpedance_Request.
    // @details Canonical extent 12..8844 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsSrvSetJointImpedance_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/srv/SetJointImpedance_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 8844;
        /**
         * @brief Set impedance properties of the robot's joint motion controller. Requires the driver to run
         * with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
         * changes. Joints to set, named exactly as published on ~/joint_impedance. Leave empty to address
         * every joint the interface covers, in that published order. On a dual-arm robot this is how a single
         * arm is set on its own: name that arm's joints and the other arm is left untouched.
         * @details Original flexiv_msgs/srv/SetJointImpedance_Request.joint_names; native type string. At most
         * 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Joint motion stiffness K_q, one entry per joint in joint_names, or one per covered joint when
         * joint_names is empty. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which
         * in this position-streaming driver means the joint will sag under gravity. [Nm/rad]
         * @details Original flexiv_msgs/srv/SetJointImpedance_Request.k_q; native type float64. At most 32
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] k_q = new double[0];
        /**
         * @brief Joint motion damping ratio Z_q, matching k_q entry for entry, or empty for the nominal 0.7.
         * Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues.
         * @details Original flexiv_msgs/srv/SetJointImpedance_Request.z_q; native type float64. At most 32
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] z_q = new double[0];

        public Ros2Flexiv_msgsSrvSetJointImpedance_Request()
        {
        }

        public static final Codec<Ros2Flexiv_msgsSrvSetJointImpedance_Request> CODEC = new Codec<Ros2Flexiv_msgsSrvSetJointImpedance_Request>() {
            public byte[] encode(Ros2Flexiv_msgsSrvSetJointImpedance_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsSrvSetJointImpedance_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsSrvSetJointImpedance_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsSrvSetJointImpedance_Request value = readRos2Flexiv_msgsSrvSetJointImpedance_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsSrvSetJointImpedance_Request(Codecs.Writer writer, Ros2Flexiv_msgsSrvSetJointImpedance_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String[] part0 = value.joint_names;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeText(writer, part0[i], 256);
        }
        double[] part1 = value.k_q;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.z_q;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros2Flexiv_msgsSrvSetJointImpedance_Request readRos2Flexiv_msgsSrvSetJointImpedance_Request(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsSrvSetJointImpedance_Request value = new Ros2Flexiv_msgsSrvSetJointImpedance_Request();
        value.joint_names = new String[readCount(reader, 32, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.k_q = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.k_q.length; ++i)
            value.k_q[i] = reader.f64();
        value.z_q = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.z_q.length; ++i)
            value.z_q[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/srv/SetJointImpedance_Response.
    // @details Canonical extent 34..9634 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsSrvSetJointImpedance_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/srv/SetJointImpedance_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96";
        public static final int MIN_WIRE_BYTES = 34, MAX_WIRE_BYTES = 9634;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/srv/SetJointImpedance_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
         * @details Original flexiv_msgs/srv/SetJointImpedance_Response.message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String message = "";
        /**
         * @brief Every joint the interface covers and the values now held for it, unchanged from before on a
         * rejection. Joints the request did not name keep the value they already had.
         * @details Original flexiv_msgs/srv/SetJointImpedance_Response.setting; native type
         * flexiv_msgs/msg/JointImpedance. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Flexiv_msgsMsgJointImpedance setting = new Ros2Flexiv_msgsMsgJointImpedance();

        public Ros2Flexiv_msgsSrvSetJointImpedance_Response()
        {
        }

        public static final Codec<Ros2Flexiv_msgsSrvSetJointImpedance_Response> CODEC = new Codec<Ros2Flexiv_msgsSrvSetJointImpedance_Response>() {
            public byte[] encode(Ros2Flexiv_msgsSrvSetJointImpedance_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsSrvSetJointImpedance_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsSrvSetJointImpedance_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsSrvSetJointImpedance_Response value = readRos2Flexiv_msgsSrvSetJointImpedance_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsSrvSetJointImpedance_Response(Codecs.Writer writer, Ros2Flexiv_msgsSrvSetJointImpedance_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.message;
        writeText(writer, part1, 256);
        Ros2Flexiv_msgsMsgJointImpedance part2 = value.setting;
        writeRos2Flexiv_msgsMsgJointImpedance(writer, part2);
    }

    private static Ros2Flexiv_msgsSrvSetJointImpedance_Response readRos2Flexiv_msgsSrvSetJointImpedance_Response(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsSrvSetJointImpedance_Response value = new Ros2Flexiv_msgsSrvSetJointImpedance_Response();
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        value.setting = readRos2Flexiv_msgsMsgJointImpedance(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/srv/SetJointInertiaScale_Request.
    // @details Canonical extent 8..8584 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/srv/SetJointInertiaScale_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8584;
        /**
         * @brief Set inertia shaping scales of the robot's joint motion controller, which make the joints
         * behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.
         * An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as
         * published on ~/joint_inertia_scale. Leave empty to address every joint the interface covers, in that
         * published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's
         * joints and the other arm is left untouched.
         * @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.joint_names; native type string. At
         * most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Inertia shaping scale sigma_q, one entry per joint in joint_names, or one per covered joint
         * when joint_names is empty. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a
         * smaller scale corresponds to lighter inertia.
         * @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.inertia_scales; native type float64.
         * At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] inertia_scales = new double[0];

        public Ros2Flexiv_msgsSrvSetJointInertiaScale_Request()
        {
        }

        public static final Codec<Ros2Flexiv_msgsSrvSetJointInertiaScale_Request> CODEC = new Codec<Ros2Flexiv_msgsSrvSetJointInertiaScale_Request>() {
            public byte[] encode(Ros2Flexiv_msgsSrvSetJointInertiaScale_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsSrvSetJointInertiaScale_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsSrvSetJointInertiaScale_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsSrvSetJointInertiaScale_Request value = readRos2Flexiv_msgsSrvSetJointInertiaScale_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsSrvSetJointInertiaScale_Request(Codecs.Writer writer, Ros2Flexiv_msgsSrvSetJointInertiaScale_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String[] part0 = value.joint_names;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeText(writer, part0[i], 256);
        }
        double[] part1 = value.inertia_scales;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros2Flexiv_msgsSrvSetJointInertiaScale_Request readRos2Flexiv_msgsSrvSetJointInertiaScale_Request(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsSrvSetJointInertiaScale_Request value = new Ros2Flexiv_msgsSrvSetJointInertiaScale_Request();
        value.joint_names = new String[readCount(reader, 32, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.inertia_scales = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.inertia_scales.length; ++i)
            value.inertia_scales[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/srv/SetJointInertiaScale_Response.
    // @details Canonical extent 26..9114 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/srv/SetJointInertiaScale_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 9114;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
         * @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String message = "";
        /**
         * @brief Every joint the interface covers and the values now held for it, unchanged from before on a
         * rejection. Joints the request did not name keep the value they already had.
         * @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.setting; native type
         * flexiv_msgs/msg/JointInertiaScale. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public Ros2Flexiv_msgsMsgJointInertiaScale setting = new Ros2Flexiv_msgsMsgJointInertiaScale();

        public Ros2Flexiv_msgsSrvSetJointInertiaScale_Response()
        {
        }

        public static final Codec<Ros2Flexiv_msgsSrvSetJointInertiaScale_Response> CODEC = new Codec<Ros2Flexiv_msgsSrvSetJointInertiaScale_Response>() {
            public byte[] encode(Ros2Flexiv_msgsSrvSetJointInertiaScale_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsSrvSetJointInertiaScale_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsSrvSetJointInertiaScale_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsSrvSetJointInertiaScale_Response value = readRos2Flexiv_msgsSrvSetJointInertiaScale_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsSrvSetJointInertiaScale_Response(Codecs.Writer writer, Ros2Flexiv_msgsSrvSetJointInertiaScale_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.message;
        writeText(writer, part1, 256);
        Ros2Flexiv_msgsMsgJointInertiaScale part2 = value.setting;
        writeRos2Flexiv_msgsMsgJointInertiaScale(writer, part2);
    }

    private static Ros2Flexiv_msgsSrvSetJointInertiaScale_Response readRos2Flexiv_msgsSrvSetJointInertiaScale_Response(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsSrvSetJointInertiaScale_Response value = new Ros2Flexiv_msgsSrvSetJointInertiaScale_Response();
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        value.setting = readRos2Flexiv_msgsMsgJointInertiaScale(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/srv/SetMaxContactTorque_Request.
    // @details Canonical extent 8..8584 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/srv/SetMaxContactTorque_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8584;
        /**
         * @brief Set maximum contact torques of the robot's joint motion controller. The controller regulates
         * its output to keep contact torques with the environment under these values. Requires the driver to
         * run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
         * changes. Joints to set, named exactly as published on ~/max_contact_torque. Leave empty to address
         * every joint the interface covers, in that published order. On a dual-arm robot this is how a single
         * arm is set on its own: name that arm's joints and the other arm is left untouched.
         * @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.joint_names; native type string. At
         * most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Maximum contact torque, one entry per joint in joint_names, or one per covered joint when
         * joint_names is empty. Valid range [0, tau_max]. Raising this increases the force the robot may exert
         * on its surroundings. [Nm]
         * @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.max_contact_torques; native type
         * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
         * the complete value and acquires no ROS resource.
         */
        public double[] max_contact_torques = new double[0];

        public Ros2Flexiv_msgsSrvSetMaxContactTorque_Request()
        {
        }

        public static final Codec<Ros2Flexiv_msgsSrvSetMaxContactTorque_Request> CODEC = new Codec<Ros2Flexiv_msgsSrvSetMaxContactTorque_Request>() {
            public byte[] encode(Ros2Flexiv_msgsSrvSetMaxContactTorque_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsSrvSetMaxContactTorque_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsSrvSetMaxContactTorque_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsSrvSetMaxContactTorque_Request value = readRos2Flexiv_msgsSrvSetMaxContactTorque_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsSrvSetMaxContactTorque_Request(Codecs.Writer writer, Ros2Flexiv_msgsSrvSetMaxContactTorque_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String[] part0 = value.joint_names;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeText(writer, part0[i], 256);
        }
        double[] part1 = value.max_contact_torques;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros2Flexiv_msgsSrvSetMaxContactTorque_Request readRos2Flexiv_msgsSrvSetMaxContactTorque_Request(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsSrvSetMaxContactTorque_Request value = new Ros2Flexiv_msgsSrvSetMaxContactTorque_Request();
        value.joint_names = new String[readCount(reader, 32, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.max_contact_torques = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.max_contact_torques.length; ++i)
            value.max_contact_torques[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/srv/SetMaxContactTorque_Response.
    // @details Canonical extent 30..9374 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/srv/SetMaxContactTorque_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c";
        public static final int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 9374;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public boolean success = false;
        /**
         * @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
         * @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String message = "";
        /**
         * @brief Every joint the interface covers and the values now held for it, unchanged from before on a
         * rejection. Joints the request did not name keep the value they already had.
         * @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.setting; native type
         * flexiv_msgs/msg/MaxContactTorque. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public Ros2Flexiv_msgsMsgMaxContactTorque setting = new Ros2Flexiv_msgsMsgMaxContactTorque();

        public Ros2Flexiv_msgsSrvSetMaxContactTorque_Response()
        {
        }

        public static final Codec<Ros2Flexiv_msgsSrvSetMaxContactTorque_Response> CODEC = new Codec<Ros2Flexiv_msgsSrvSetMaxContactTorque_Response>() {
            public byte[] encode(Ros2Flexiv_msgsSrvSetMaxContactTorque_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Flexiv_msgsSrvSetMaxContactTorque_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Flexiv_msgsSrvSetMaxContactTorque_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Flexiv_msgsSrvSetMaxContactTorque_Response value = readRos2Flexiv_msgsSrvSetMaxContactTorque_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Flexiv_msgsSrvSetMaxContactTorque_Response(Codecs.Writer writer, Ros2Flexiv_msgsSrvSetMaxContactTorque_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.message;
        writeText(writer, part1, 256);
        Ros2Flexiv_msgsMsgMaxContactTorque part2 = value.setting;
        writeRos2Flexiv_msgsMsgMaxContactTorque(writer, part2);
    }

    private static Ros2Flexiv_msgsSrvSetMaxContactTorque_Response readRos2Flexiv_msgsSrvSetMaxContactTorque_Response(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsSrvSetMaxContactTorque_Response value = new Ros2Flexiv_msgsSrvSetMaxContactTorque_Response();
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        value.setting = readRos2Flexiv_msgsMsgMaxContactTorque(reader);
        return value;
    }
}
