// @brief Complete original flexiv ros1_noetic canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
package org.uwvm.flexiv.ros1noetic;

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

    // @brief Own every original field of flexiv_msgs/JointPosVel.
    // @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Flexiv_msgsJointPosVel
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "flexiv_msgs/JointPosVel";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa";
        public static final int MIN_WIRE_BYTES = 112, MAX_WIRE_BYTES = 112;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/JointPosVel.positions; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] positions = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/JointPosVel.velocities; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] velocities = new double[7];

        public Ros1Flexiv_msgsJointPosVel()
        {
        }

        public static final Codec<Ros1Flexiv_msgsJointPosVel> CODEC = new Codec<Ros1Flexiv_msgsJointPosVel>() {
            public byte[] encode(Ros1Flexiv_msgsJointPosVel value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Flexiv_msgsJointPosVel(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Flexiv_msgsJointPosVel decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Flexiv_msgsJointPosVel value = readRos1Flexiv_msgsJointPosVel(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Flexiv_msgsJointPosVel(Codecs.Writer writer, Ros1Flexiv_msgsJointPosVel value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.positions;
        if(part0 == null || part0.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.velocities;
        if(part1 == null || part1.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros1Flexiv_msgsJointPosVel readRos1Flexiv_msgsJointPosVel(Codecs.Reader reader)
    {
        Ros1Flexiv_msgsJointPosVel value = new Ros1Flexiv_msgsJointPosVel();
        value.positions = new double[7];
        for(int i = 0; i < value.positions.length; ++i)
            value.positions[i] = reader.f64();
        value.velocities = new double[7];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = reader.f64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/Mode.
    // @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Flexiv_msgsMode
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "flexiv_msgs/Mode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Retain the complete original int8 field.
         * @details Original flexiv_msgs/Mode.mode; native type int8. Scalar value. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public byte mode = 0;

        public Ros1Flexiv_msgsMode()
        {
        }

        public static final Codec<Ros1Flexiv_msgsMode> CODEC = new Codec<Ros1Flexiv_msgsMode>() {
            public byte[] encode(Ros1Flexiv_msgsMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Flexiv_msgsMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Flexiv_msgsMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Flexiv_msgsMode value = readRos1Flexiv_msgsMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Flexiv_msgsMode(Codecs.Writer writer, Ros1Flexiv_msgsMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.mode;
        writer.integer(part0, 1, true);
    }

    private static Ros1Flexiv_msgsMode readRos1Flexiv_msgsMode(Codecs.Reader reader)
    {
        Ros1Flexiv_msgsMode value = new Ros1Flexiv_msgsMode();
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    // @brief Own every original field of geometry_msgs/Point.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Geometry_msgsPoint
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Point";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief This contains the position of a point in free space
         * @details Original geometry_msgs/Point.x; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Point.y; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Point.z; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of geometry_msgs/Quaternion.
    // @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Geometry_msgsQuaternion
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Quaternion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        /**
         * @brief This represents an orientation in free space in quaternion form.
         * @details Original geometry_msgs/Quaternion.x; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Quaternion.y; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Quaternion.z; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double z = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Quaternion.w; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of geometry_msgs/Pose.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Geometry_msgsPose
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Pose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief A representation of pose in free space, composed of position and orientation.
         * @details Original geometry_msgs/Pose.position; native type geometry_msgs/Point. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsPoint position = new Ros1Geometry_msgsPoint();
        /**
         * @brief Retain the complete original geometry_msgs/Quaternion field.
         * @details Original geometry_msgs/Pose.orientation; native type geometry_msgs/Quaternion. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of geometry_msgs/Vector3.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Geometry_msgsVector3
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Vector3";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief This represents a vector in free space. It is only meant to represent a direction. Therefore,
         * it does not make sense to apply a translation to it (e.g., when applying a generic rigid
         * transformation to a Vector3, tf2 will only apply the rotation). If you want your data to be
         * translatable too, use the geometry_msgs/Point message instead.
         * @details Original geometry_msgs/Vector3.x; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Vector3.y; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Vector3.z; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of geometry_msgs/Accel.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Geometry_msgsAccel
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Accel";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        /**
         * @brief This expresses acceleration in free space broken into its linear and angular parts.
         * @details Original geometry_msgs/Accel.linear; native type geometry_msgs/Vector3. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsVector3 linear = new Ros1Geometry_msgsVector3();
        /**
         * @brief Retain the complete original geometry_msgs/Vector3 field.
         * @details Original geometry_msgs/Accel.angular; native type geometry_msgs/Vector3. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsVector3 angular = new Ros1Geometry_msgsVector3();

        public Ros1Geometry_msgsAccel()
        {
        }

        public static final Codec<Ros1Geometry_msgsAccel> CODEC = new Codec<Ros1Geometry_msgsAccel>() {
            public byte[] encode(Ros1Geometry_msgsAccel value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Geometry_msgsAccel(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Geometry_msgsAccel decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsAccel value = readRos1Geometry_msgsAccel(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Geometry_msgsAccel(Codecs.Writer writer, Ros1Geometry_msgsAccel value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsVector3 part0 = value.linear;
        writeRos1Geometry_msgsVector3(writer, part0);
        Ros1Geometry_msgsVector3 part1 = value.angular;
        writeRos1Geometry_msgsVector3(writer, part1);
    }

    private static Ros1Geometry_msgsAccel readRos1Geometry_msgsAccel(Codecs.Reader reader)
    {
        Ros1Geometry_msgsAccel value = new Ros1Geometry_msgsAccel();
        value.linear = readRos1Geometry_msgsVector3(reader);
        value.angular = readRos1Geometry_msgsVector3(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/Wrench.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Geometry_msgsWrench
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Wrench";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        /**
         * @brief This represents force in free space, separated into its linear and angular parts.
         * @details Original geometry_msgs/Wrench.force; native type geometry_msgs/Vector3. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsVector3 force = new Ros1Geometry_msgsVector3();
        /**
         * @brief Retain the complete original geometry_msgs/Vector3 field.
         * @details Original geometry_msgs/Wrench.torque; native type geometry_msgs/Vector3. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of flexiv_msgs/RobotStates.
    // @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros1Flexiv_msgsRobotStates
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "flexiv_msgs/RobotStates";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8";
        public static final int MIN_WIRE_BYTES = 864, MAX_WIRE_BYTES = 864;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.q; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] q = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.theta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] theta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.dq; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] dq = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.dtheta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] dtheta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.tau; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] tau = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.tau_des; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] tau_des = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.tau_dot; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] tau_dot = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.tau_ext; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] tau_ext = new double[7];
        /**
         * @brief Retain the complete original geometry_msgs/Pose field.
         * @details Original flexiv_msgs/RobotStates.tcp_pose; native type geometry_msgs/Pose. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsPose tcp_pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Retain the complete original geometry_msgs/Pose field.
         * @details Original flexiv_msgs/RobotStates.tcp_pose_des; native type geometry_msgs/Pose. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsPose tcp_pose_des = new Ros1Geometry_msgsPose();
        /**
         * @brief Retain the complete original geometry_msgs/Accel field.
         * @details Original flexiv_msgs/RobotStates.tcp_vel; native type geometry_msgs/Accel. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsAccel tcp_vel = new Ros1Geometry_msgsAccel();
        /**
         * @brief Retain the complete original geometry_msgs/Pose field.
         * @details Original flexiv_msgs/RobotStates.cam_pose; native type geometry_msgs/Pose. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsPose cam_pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Retain the complete original geometry_msgs/Pose field.
         * @details Original flexiv_msgs/RobotStates.flange_pose; native type geometry_msgs/Pose. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsPose flange_pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Retain the complete original geometry_msgs/Wrench field.
         * @details Original flexiv_msgs/RobotStates.ft_sensor_raw; native type geometry_msgs/Wrench. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsWrench ft_sensor_raw = new Ros1Geometry_msgsWrench();
        /**
         * @brief Retain the complete original geometry_msgs/Wrench field.
         * @details Original flexiv_msgs/RobotStates.ext_wrench_tcp_frame; native type geometry_msgs/Wrench.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsWrench ext_wrench_tcp_frame = new Ros1Geometry_msgsWrench();
        /**
         * @brief Retain the complete original geometry_msgs/Wrench field.
         * @details Original flexiv_msgs/RobotStates.ext_wrench_base_frame; native type geometry_msgs/Wrench.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros1Geometry_msgsWrench ext_wrench_base_frame = new Ros1Geometry_msgsWrench();

        public Ros1Flexiv_msgsRobotStates()
        {
        }

        public static final Codec<Ros1Flexiv_msgsRobotStates> CODEC = new Codec<Ros1Flexiv_msgsRobotStates>() {
            public byte[] encode(Ros1Flexiv_msgsRobotStates value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Flexiv_msgsRobotStates(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Flexiv_msgsRobotStates decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Flexiv_msgsRobotStates value = readRos1Flexiv_msgsRobotStates(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Flexiv_msgsRobotStates(Codecs.Writer writer, Ros1Flexiv_msgsRobotStates value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.q;
        if(part0 == null || part0.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.theta;
        if(part1 == null || part1.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.dq;
        if(part2 == null || part2.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.dtheta;
        if(part3 == null || part3.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.tau;
        if(part4 == null || part4.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.tau_des;
        if(part5 == null || part5.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double[] part6 = value.tau_dot;
        if(part6 == null || part6.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        double[] part7 = value.tau_ext;
        if(part7 == null || part7.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f64(part7[i]);
        }
        Ros1Geometry_msgsPose part8 = value.tcp_pose;
        writeRos1Geometry_msgsPose(writer, part8);
        Ros1Geometry_msgsPose part9 = value.tcp_pose_des;
        writeRos1Geometry_msgsPose(writer, part9);
        Ros1Geometry_msgsAccel part10 = value.tcp_vel;
        writeRos1Geometry_msgsAccel(writer, part10);
        Ros1Geometry_msgsPose part11 = value.cam_pose;
        writeRos1Geometry_msgsPose(writer, part11);
        Ros1Geometry_msgsPose part12 = value.flange_pose;
        writeRos1Geometry_msgsPose(writer, part12);
        Ros1Geometry_msgsWrench part13 = value.ft_sensor_raw;
        writeRos1Geometry_msgsWrench(writer, part13);
        Ros1Geometry_msgsWrench part14 = value.ext_wrench_tcp_frame;
        writeRos1Geometry_msgsWrench(writer, part14);
        Ros1Geometry_msgsWrench part15 = value.ext_wrench_base_frame;
        writeRos1Geometry_msgsWrench(writer, part15);
    }

    private static Ros1Flexiv_msgsRobotStates readRos1Flexiv_msgsRobotStates(Codecs.Reader reader)
    {
        Ros1Flexiv_msgsRobotStates value = new Ros1Flexiv_msgsRobotStates();
        value.q = new double[7];
        for(int i = 0; i < value.q.length; ++i)
            value.q[i] = reader.f64();
        value.theta = new double[7];
        for(int i = 0; i < value.theta.length; ++i)
            value.theta[i] = reader.f64();
        value.dq = new double[7];
        for(int i = 0; i < value.dq.length; ++i)
            value.dq[i] = reader.f64();
        value.dtheta = new double[7];
        for(int i = 0; i < value.dtheta.length; ++i)
            value.dtheta[i] = reader.f64();
        value.tau = new double[7];
        for(int i = 0; i < value.tau.length; ++i)
            value.tau[i] = reader.f64();
        value.tau_des = new double[7];
        for(int i = 0; i < value.tau_des.length; ++i)
            value.tau_des[i] = reader.f64();
        value.tau_dot = new double[7];
        for(int i = 0; i < value.tau_dot.length; ++i)
            value.tau_dot[i] = reader.f64();
        value.tau_ext = new double[7];
        for(int i = 0; i < value.tau_ext.length; ++i)
            value.tau_ext[i] = reader.f64();
        value.tcp_pose = readRos1Geometry_msgsPose(reader);
        value.tcp_pose_des = readRos1Geometry_msgsPose(reader);
        value.tcp_vel = readRos1Geometry_msgsAccel(reader);
        value.cam_pose = readRos1Geometry_msgsPose(reader);
        value.flange_pose = readRos1Geometry_msgsPose(reader);
        value.ft_sensor_raw = readRos1Geometry_msgsWrench(reader);
        value.ext_wrench_tcp_frame = readRos1Geometry_msgsWrench(reader);
        value.ext_wrench_base_frame = readRos1Geometry_msgsWrench(reader);
        return value;
    }
}
