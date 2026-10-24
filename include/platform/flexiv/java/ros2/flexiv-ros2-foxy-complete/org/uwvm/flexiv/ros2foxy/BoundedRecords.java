// @brief Complete original flexiv ros2_foxy canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
package org.uwvm.flexiv.ros2foxy;

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

    // @brief Own every original field of flexiv_msgs/msg/JointPosVel.
    // @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgJointPosVel
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/JointPosVel";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8";
        public static final int MIN_WIRE_BYTES = 112, MAX_WIRE_BYTES = 112;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] positions = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] velocities = new double[7];

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

    private static Ros2Flexiv_msgsMsgJointPosVel readRos2Flexiv_msgsMsgJointPosVel(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgJointPosVel value = new Ros2Flexiv_msgsMsgJointPosVel();
        value.positions = new double[7];
        for(int i = 0; i < value.positions.length; ++i)
            value.positions[i] = reader.f64();
        value.velocities = new double[7];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = reader.f64();
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
        public static final String CODEC_IDENTITY = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f";
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

    // @brief Own every original field of flexiv_msgs/msg/RobotStates.
    // @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Flexiv_msgsMsgRobotStates
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "flexiv_msgs/msg/RobotStates";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b";
        public static final int MIN_WIRE_BYTES = 864, MAX_WIRE_BYTES = 864;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.q; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] q = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] theta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] dq = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] dtheta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] tau = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.tau_des; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] tau_des = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] tau_dot = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] tau_ext = new double[7];
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/Pose. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgPose tcp_pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original flexiv_msgs/msg/RobotStates.tcp_pose_des; native type geometry_msgs/msg/Pose.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgPose tcp_pose_des = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Accel field.
         * @details Original flexiv_msgs/msg/RobotStates.tcp_vel; native type geometry_msgs/msg/Accel. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgAccel tcp_vel = new Ros2Geometry_msgsMsgAccel();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original flexiv_msgs/msg/RobotStates.cam_pose; native type geometry_msgs/msg/Pose. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgPose cam_pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type geometry_msgs/msg/Pose.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgPose flange_pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Wrench field.
         * @details Original flexiv_msgs/msg/RobotStates.ft_sensor_raw; native type geometry_msgs/msg/Wrench.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgWrench ft_sensor_raw = new Ros2Geometry_msgsMsgWrench();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Wrench field.
         * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_tcp_frame; native type
         * geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Geometry_msgsMsgWrench ext_wrench_tcp_frame = new Ros2Geometry_msgsMsgWrench();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Wrench field.
         * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_base_frame; native type
         * geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Geometry_msgsMsgWrench ext_wrench_base_frame = new Ros2Geometry_msgsMsgWrench();

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
        Ros2Geometry_msgsMsgPose part8 = value.tcp_pose;
        writeRos2Geometry_msgsMsgPose(writer, part8);
        Ros2Geometry_msgsMsgPose part9 = value.tcp_pose_des;
        writeRos2Geometry_msgsMsgPose(writer, part9);
        Ros2Geometry_msgsMsgAccel part10 = value.tcp_vel;
        writeRos2Geometry_msgsMsgAccel(writer, part10);
        Ros2Geometry_msgsMsgPose part11 = value.cam_pose;
        writeRos2Geometry_msgsMsgPose(writer, part11);
        Ros2Geometry_msgsMsgPose part12 = value.flange_pose;
        writeRos2Geometry_msgsMsgPose(writer, part12);
        Ros2Geometry_msgsMsgWrench part13 = value.ft_sensor_raw;
        writeRos2Geometry_msgsMsgWrench(writer, part13);
        Ros2Geometry_msgsMsgWrench part14 = value.ext_wrench_tcp_frame;
        writeRos2Geometry_msgsMsgWrench(writer, part14);
        Ros2Geometry_msgsMsgWrench part15 = value.ext_wrench_base_frame;
        writeRos2Geometry_msgsMsgWrench(writer, part15);
    }

    private static Ros2Flexiv_msgsMsgRobotStates readRos2Flexiv_msgsMsgRobotStates(Codecs.Reader reader)
    {
        Ros2Flexiv_msgsMsgRobotStates value = new Ros2Flexiv_msgsMsgRobotStates();
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
        value.tcp_pose = readRos2Geometry_msgsMsgPose(reader);
        value.tcp_pose_des = readRos2Geometry_msgsMsgPose(reader);
        value.tcp_vel = readRos2Geometry_msgsMsgAccel(reader);
        value.cam_pose = readRos2Geometry_msgsMsgPose(reader);
        value.flange_pose = readRos2Geometry_msgsMsgPose(reader);
        value.ft_sensor_raw = readRos2Geometry_msgsMsgWrench(reader);
        value.ext_wrench_tcp_frame = readRos2Geometry_msgsMsgWrench(reader);
        value.ext_wrench_base_frame = readRos2Geometry_msgsMsgWrench(reader);
        return value;
    }
}
