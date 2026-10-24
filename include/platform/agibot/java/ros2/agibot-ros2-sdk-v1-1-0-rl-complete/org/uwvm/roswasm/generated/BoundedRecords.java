/**
 * @file BoundedRecords.java
 * @brief Full agibot java codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v1_1_0_rl values in java. 19 original records retain 71 fields and 19 interface
 * descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
 * Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
 * manual under document/platform/agibot/en_US/catalog/.
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

    public static final class Ros2Builtin_interfacesMsgTime
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "builtin_interfaces/msg/Time";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public int sec = 0;
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

    public static final class Ros2Aimdk_msgsMsgRequestHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/RequestHeader";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Builtin_interfacesMsgTime stamp = new Ros2Builtin_interfacesMsgTime();

        public Ros2Aimdk_msgsMsgRequestHeader()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgRequestHeader> CODEC = new Codec<Ros2Aimdk_msgsMsgRequestHeader>() {
            public byte[] encode(Ros2Aimdk_msgsMsgRequestHeader value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgRequestHeader(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgRequestHeader decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgRequestHeader value = readRos2Aimdk_msgsMsgRequestHeader(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgRequestHeader(Codecs.Writer writer, Ros2Aimdk_msgsMsgRequestHeader value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Builtin_interfacesMsgTime part0 = value.stamp;
        writeRos2Builtin_interfacesMsgTime(writer, part0);
    }

    private static Ros2Aimdk_msgsMsgRequestHeader readRos2Aimdk_msgsMsgRequestHeader(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgRequestHeader value = new Ros2Aimdk_msgsMsgRequestHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgCommonRequest
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/CommonRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgRequestHeader header = new Ros2Aimdk_msgsMsgRequestHeader();

        public Ros2Aimdk_msgsMsgCommonRequest()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgCommonRequest> CODEC = new Codec<Ros2Aimdk_msgsMsgCommonRequest>() {
            public byte[] encode(Ros2Aimdk_msgsMsgCommonRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgCommonRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgCommonRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgCommonRequest value = readRos2Aimdk_msgsMsgCommonRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgCommonRequest(Codecs.Writer writer, Ros2Aimdk_msgsMsgCommonRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgRequestHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgRequestHeader(writer, part0);
    }

    private static Ros2Aimdk_msgsMsgCommonRequest readRos2Aimdk_msgsMsgCommonRequest(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgCommonRequest value = new Ros2Aimdk_msgsMsgCommonRequest();
        value.header = readRos2Aimdk_msgsMsgRequestHeader(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgResponseHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/ResponseHeader";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public Ros2Builtin_interfacesMsgTime stamp = new Ros2Builtin_interfacesMsgTime();
        public long code = 0;

        public Ros2Aimdk_msgsMsgResponseHeader()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgResponseHeader> CODEC = new Codec<Ros2Aimdk_msgsMsgResponseHeader>() {
            public byte[] encode(Ros2Aimdk_msgsMsgResponseHeader value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgResponseHeader(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgResponseHeader decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgResponseHeader value = readRos2Aimdk_msgsMsgResponseHeader(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgResponseHeader(Codecs.Writer writer, Ros2Aimdk_msgsMsgResponseHeader value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Builtin_interfacesMsgTime part0 = value.stamp;
        writeRos2Builtin_interfacesMsgTime(writer, part0);
        long part1 = value.code;
        writer.integer(part1, 8, true);
    }

    private static Ros2Aimdk_msgsMsgResponseHeader readRos2Aimdk_msgsMsgResponseHeader(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgResponseHeader value = new Ros2Aimdk_msgsMsgResponseHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.code = reader.integer(8, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgCommonState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/CommonState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgCommonState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgCommonState> CODEC = new Codec<Ros2Aimdk_msgsMsgCommonState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgCommonState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgCommonState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgCommonState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgCommonState value = readRos2Aimdk_msgsMsgCommonState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgCommonState(Codecs.Writer writer, Ros2Aimdk_msgsMsgCommonState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgCommonState readRos2Aimdk_msgsMsgCommonState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgCommonState value = new Ros2Aimdk_msgsMsgCommonState();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgCommonResponse
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/CommonResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Aimdk_msgsMsgResponseHeader header = new Ros2Aimdk_msgsMsgResponseHeader();
        public Ros2Aimdk_msgsMsgCommonState status = new Ros2Aimdk_msgsMsgCommonState();
        public String message = "";

        public Ros2Aimdk_msgsMsgCommonResponse()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgCommonResponse> CODEC = new Codec<Ros2Aimdk_msgsMsgCommonResponse>() {
            public byte[] encode(Ros2Aimdk_msgsMsgCommonResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgCommonResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgCommonResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgCommonResponse value = readRos2Aimdk_msgsMsgCommonResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgCommonResponse(Codecs.Writer writer, Ros2Aimdk_msgsMsgCommonResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgResponseHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        Ros2Aimdk_msgsMsgCommonState part1 = value.status;
        writeRos2Aimdk_msgsMsgCommonState(writer, part1);
        String part2 = value.message;
        writeText(writer, part2, 128);
    }

    private static Ros2Aimdk_msgsMsgCommonResponse readRos2Aimdk_msgsMsgCommonResponse(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgCommonResponse value = new Ros2Aimdk_msgsMsgCommonResponse();
        value.header = readRos2Aimdk_msgsMsgResponseHeader(reader);
        value.status = readRos2Aimdk_msgsMsgCommonState(reader);
        value.message = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgCommonTaskResponse
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/CommonTaskResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;
        public Ros2Aimdk_msgsMsgResponseHeader header = new Ros2Aimdk_msgsMsgResponseHeader();
        public long task_id = 0;
        public Ros2Aimdk_msgsMsgCommonState state = new Ros2Aimdk_msgsMsgCommonState();

        public Ros2Aimdk_msgsMsgCommonTaskResponse()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgCommonTaskResponse> CODEC = new Codec<Ros2Aimdk_msgsMsgCommonTaskResponse>() {
            public byte[] encode(Ros2Aimdk_msgsMsgCommonTaskResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgCommonTaskResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgCommonTaskResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgCommonTaskResponse value = readRos2Aimdk_msgsMsgCommonTaskResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgCommonTaskResponse(Codecs.Writer writer, Ros2Aimdk_msgsMsgCommonTaskResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgResponseHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        long part1 = value.task_id;
        writer.integer(part1, 8, false);
        Ros2Aimdk_msgsMsgCommonState part2 = value.state;
        writeRos2Aimdk_msgsMsgCommonState(writer, part2);
    }

    private static Ros2Aimdk_msgsMsgCommonTaskResponse readRos2Aimdk_msgsMsgCommonTaskResponse(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgCommonTaskResponse value = new Ros2Aimdk_msgsMsgCommonTaskResponse();
        value.header = readRos2Aimdk_msgsMsgResponseHeader(reader);
        value.task_id = reader.integer(8, false);
        value.state = readRos2Aimdk_msgsMsgCommonState(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgDomainErrorState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/DomainErrorState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public int value = 0;

        public Ros2Aimdk_msgsMsgDomainErrorState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgDomainErrorState> CODEC = new Codec<Ros2Aimdk_msgsMsgDomainErrorState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgDomainErrorState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgDomainErrorState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgDomainErrorState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgDomainErrorState value = readRos2Aimdk_msgsMsgDomainErrorState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgDomainErrorState(Codecs.Writer writer, Ros2Aimdk_msgsMsgDomainErrorState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgDomainErrorState readRos2Aimdk_msgsMsgDomainErrorState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgDomainErrorState value = new Ros2Aimdk_msgsMsgDomainErrorState();
        value.value = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgJointCommand
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/JointCommand";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f";
        public static final int MIN_WIRE_BYTES = 44, MAX_WIRE_BYTES = 172;
        public String name = "";
        public double position = 0;
        public double velocity = 0;
        public double effort = 0;
        public double stiffness = 0;
        public double damping = 0;

        public Ros2Aimdk_msgsMsgJointCommand()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgJointCommand> CODEC = new Codec<Ros2Aimdk_msgsMsgJointCommand>() {
            public byte[] encode(Ros2Aimdk_msgsMsgJointCommand value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgJointCommand(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgJointCommand decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgJointCommand value = readRos2Aimdk_msgsMsgJointCommand(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgJointCommand(Codecs.Writer writer, Ros2Aimdk_msgsMsgJointCommand value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 128);
        double part1 = value.position;
        writer.f64(part1);
        double part2 = value.velocity;
        writer.f64(part2);
        double part3 = value.effort;
        writer.f64(part3);
        double part4 = value.stiffness;
        writer.f64(part4);
        double part5 = value.damping;
        writer.f64(part5);
    }

    private static Ros2Aimdk_msgsMsgJointCommand readRos2Aimdk_msgsMsgJointCommand(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgJointCommand value = new Ros2Aimdk_msgsMsgJointCommand();
        value.name = readText(reader, 128);
        value.position = reader.f64();
        value.velocity = reader.f64();
        value.effort = reader.f64();
        value.stiffness = reader.f64();
        value.damping = reader.f64();
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMessageHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/MessageHeader";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Builtin_interfacesMsgTime stamp = new Ros2Builtin_interfacesMsgTime();
        public String frame_id = "";
        public long sequence = 0;
        public Ros2Builtin_interfacesMsgTime meas_stamp = new Ros2Builtin_interfacesMsgTime();

        public Ros2Aimdk_msgsMsgMessageHeader()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMessageHeader> CODEC = new Codec<Ros2Aimdk_msgsMsgMessageHeader>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMessageHeader value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMessageHeader(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMessageHeader decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMessageHeader value = readRos2Aimdk_msgsMsgMessageHeader(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMessageHeader(Codecs.Writer writer, Ros2Aimdk_msgsMsgMessageHeader value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Builtin_interfacesMsgTime part0 = value.stamp;
        writeRos2Builtin_interfacesMsgTime(writer, part0);
        String part1 = value.frame_id;
        writeText(writer, part1, 128);
        long part2 = value.sequence;
        writer.integer(part2, 4, false);
        Ros2Builtin_interfacesMsgTime part3 = value.meas_stamp;
        writeRos2Builtin_interfacesMsgTime(writer, part3);
    }

    private static Ros2Aimdk_msgsMsgMessageHeader readRos2Aimdk_msgsMsgMessageHeader(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMessageHeader value = new Ros2Aimdk_msgsMsgMessageHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.frame_id = readText(reader, 128);
        value.sequence = reader.integer(4, false);
        value.meas_stamp = readRos2Builtin_interfacesMsgTime(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgJointCommandArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/JointCommandArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 11164;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public Ros2Aimdk_msgsMsgJointCommand[] joints = new Ros2Aimdk_msgsMsgJointCommand[0];

        public Ros2Aimdk_msgsMsgJointCommandArray()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgJointCommandArray> CODEC = new Codec<Ros2Aimdk_msgsMsgJointCommandArray>() {
            public byte[] encode(Ros2Aimdk_msgsMsgJointCommandArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgJointCommandArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgJointCommandArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgJointCommandArray value = readRos2Aimdk_msgsMsgJointCommandArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgJointCommandArray(Codecs.Writer writer, Ros2Aimdk_msgsMsgJointCommandArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        Ros2Aimdk_msgsMsgJointCommand[] part1 = value.joints;
        if(part1 == null || part1.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgJointCommand(writer, part1[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgJointCommandArray readRos2Aimdk_msgsMsgJointCommandArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgJointCommandArray value = new Ros2Aimdk_msgsMsgJointCommandArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.joints = new Ros2Aimdk_msgsMsgJointCommand[readCount(reader, 64, 44)];
        for(int i = 0; i < value.joints.length; ++i)
            value.joints[i] = readRos2Aimdk_msgsMsgJointCommand(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgJointState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/JointState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53";
        public static final int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 158;
        public String name = "";
        public double position = 0;
        public double velocity = 0;
        public double effort = 0;
        public int error_code = 0;

        public Ros2Aimdk_msgsMsgJointState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgJointState> CODEC = new Codec<Ros2Aimdk_msgsMsgJointState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgJointState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgJointState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgJointState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgJointState value = readRos2Aimdk_msgsMsgJointState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgJointState(Codecs.Writer writer, Ros2Aimdk_msgsMsgJointState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 128);
        double part1 = value.position;
        writer.f64(part1);
        double part2 = value.velocity;
        writer.f64(part2);
        double part3 = value.effort;
        writer.f64(part3);
        int part4 = value.error_code;
        writer.integer(part4, 2, false);
    }

    private static Ros2Aimdk_msgsMsgJointState readRos2Aimdk_msgsMsgJointState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgJointState value = new Ros2Aimdk_msgsMsgJointState();
        value.name = readText(reader, 128);
        value.position = reader.f64();
        value.velocity = reader.f64();
        value.effort = reader.f64();
        value.error_code = (int)reader.integer(2, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgJointStateArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/JointStateArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 10269;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public Ros2Aimdk_msgsMsgDomainErrorState state = new Ros2Aimdk_msgsMsgDomainErrorState();
        public Ros2Aimdk_msgsMsgJointState[] joints = new Ros2Aimdk_msgsMsgJointState[0];

        public Ros2Aimdk_msgsMsgJointStateArray()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgJointStateArray> CODEC = new Codec<Ros2Aimdk_msgsMsgJointStateArray>() {
            public byte[] encode(Ros2Aimdk_msgsMsgJointStateArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgJointStateArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgJointStateArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgJointStateArray value = readRos2Aimdk_msgsMsgJointStateArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgJointStateArray(Codecs.Writer writer, Ros2Aimdk_msgsMsgJointStateArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        Ros2Aimdk_msgsMsgDomainErrorState part1 = value.state;
        writeRos2Aimdk_msgsMsgDomainErrorState(writer, part1);
        Ros2Aimdk_msgsMsgJointState[] part2 = value.joints;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Aimdk_msgsMsgJointState(writer, part2[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgJointStateArray readRos2Aimdk_msgsMsgJointStateArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgJointStateArray value = new Ros2Aimdk_msgsMsgJointStateArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.state = readRos2Aimdk_msgsMsgDomainErrorState(reader);
        value.joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 64, 30)];
        for(int i = 0; i < value.joints.length; ++i)
            value.joints[i] = readRos2Aimdk_msgsMsgJointState(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgModuleChannelInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/ModuleChannelInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696";
        public static final int MIN_WIRE_BYTES = 58, MAX_WIRE_BYTES = 586;
        public String name = "";
        public String type = "";
        public double frequency = 0;
        public double min_time_diff = 0;
        public double max_time_diff = 0;
        public double std_dev = 0;
        public int window_size = 0;
        public double timeout_threshold = 0;
        public boolean is_active = false;
        public boolean is_timeout = false;
        public String[] backends = new String[0];

        public Ros2Aimdk_msgsMsgModuleChannelInfo()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgModuleChannelInfo> CODEC = new Codec<Ros2Aimdk_msgsMsgModuleChannelInfo>() {
            public byte[] encode(Ros2Aimdk_msgsMsgModuleChannelInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgModuleChannelInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgModuleChannelInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgModuleChannelInfo value = readRos2Aimdk_msgsMsgModuleChannelInfo(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgModuleChannelInfo(Codecs.Writer writer, Ros2Aimdk_msgsMsgModuleChannelInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 128);
        String part1 = value.type;
        writeText(writer, part1, 128);
        double part2 = value.frequency;
        writer.f64(part2);
        double part3 = value.min_time_diff;
        writer.f64(part3);
        double part4 = value.max_time_diff;
        writer.f64(part4);
        double part5 = value.std_dev;
        writer.f64(part5);
        int part6 = value.window_size;
        writer.integer(part6, 4, true);
        double part7 = value.timeout_threshold;
        writer.f64(part7);
        boolean part8 = value.is_active;
        writer.integer(part8 ? 1 : 0, 1, false);
        boolean part9 = value.is_timeout;
        writer.integer(part9 ? 1 : 0, 1, false);
        String[] part10 = value.backends;
        if(part10 == null || part10.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part10.length, 4, false);
        for(int i = 0; i < part10.length; ++i)
        {
            writeText(writer, part10[i], 64);
        }
    }

    private static Ros2Aimdk_msgsMsgModuleChannelInfo readRos2Aimdk_msgsMsgModuleChannelInfo(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgModuleChannelInfo value = new Ros2Aimdk_msgsMsgModuleChannelInfo();
        value.name = readText(reader, 128);
        value.type = readText(reader, 128);
        value.frequency = reader.f64();
        value.min_time_diff = reader.f64();
        value.max_time_diff = reader.f64();
        value.std_dev = reader.f64();
        value.window_size = (int)reader.integer(4, true);
        value.timeout_threshold = reader.f64();
        value.is_active = readBool(reader);
        value.is_timeout = readBool(reader);
        value.backends = new String[readCount(reader, 4, 4)];
        for(int i = 0; i < value.backends.length; ++i)
            value.backends[i] = readText(reader, 64);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgModuleRpcInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/ModuleRpcInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 672;
        public String name = "";
        public String req_type = "";
        public String res_type = "";
        public String[] backends = new String[0];

        public Ros2Aimdk_msgsMsgModuleRpcInfo()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgModuleRpcInfo> CODEC = new Codec<Ros2Aimdk_msgsMsgModuleRpcInfo>() {
            public byte[] encode(Ros2Aimdk_msgsMsgModuleRpcInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgModuleRpcInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgModuleRpcInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgModuleRpcInfo value = readRos2Aimdk_msgsMsgModuleRpcInfo(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgModuleRpcInfo(Codecs.Writer writer, Ros2Aimdk_msgsMsgModuleRpcInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 128);
        String part1 = value.req_type;
        writeText(writer, part1, 128);
        String part2 = value.res_type;
        writeText(writer, part2, 128);
        String[] part3 = value.backends;
        if(part3 == null || part3.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeText(writer, part3[i], 64);
        }
    }

    private static Ros2Aimdk_msgsMsgModuleRpcInfo readRos2Aimdk_msgsMsgModuleRpcInfo(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgModuleRpcInfo value = new Ros2Aimdk_msgsMsgModuleRpcInfo();
        value.name = readText(reader, 128);
        value.req_type = readText(reader, 128);
        value.res_type = readText(reader, 128);
        value.backends = new String[readCount(reader, 4, 4)];
        for(int i = 0; i < value.backends.length; ++i)
            value.backends[i] = readText(reader, 64);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgModuleResourceInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/ModuleResourceInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 5180;
        public String module_name = "";
        public Ros2Aimdk_msgsMsgModuleRpcInfo[] rpc_clients = new Ros2Aimdk_msgsMsgModuleRpcInfo[0];
        public Ros2Aimdk_msgsMsgModuleRpcInfo[] rpc_services = new Ros2Aimdk_msgsMsgModuleRpcInfo[0];
        public Ros2Aimdk_msgsMsgModuleChannelInfo[] pub_channels = new Ros2Aimdk_msgsMsgModuleChannelInfo[0];
        public Ros2Aimdk_msgsMsgModuleChannelInfo[] sub_channels = new Ros2Aimdk_msgsMsgModuleChannelInfo[0];

        public Ros2Aimdk_msgsMsgModuleResourceInfo()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgModuleResourceInfo> CODEC = new Codec<Ros2Aimdk_msgsMsgModuleResourceInfo>() {
            public byte[] encode(Ros2Aimdk_msgsMsgModuleResourceInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgModuleResourceInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgModuleResourceInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgModuleResourceInfo value = readRos2Aimdk_msgsMsgModuleResourceInfo(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgModuleResourceInfo(Codecs.Writer writer, Ros2Aimdk_msgsMsgModuleResourceInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.module_name;
        writeText(writer, part0, 128);
        Ros2Aimdk_msgsMsgModuleRpcInfo[] part1 = value.rpc_clients;
        if(part1 == null || part1.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgModuleRpcInfo(writer, part1[i]);
        }
        Ros2Aimdk_msgsMsgModuleRpcInfo[] part2 = value.rpc_services;
        if(part2 == null || part2.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Aimdk_msgsMsgModuleRpcInfo(writer, part2[i]);
        }
        Ros2Aimdk_msgsMsgModuleChannelInfo[] part3 = value.pub_channels;
        if(part3 == null || part3.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Aimdk_msgsMsgModuleChannelInfo(writer, part3[i]);
        }
        Ros2Aimdk_msgsMsgModuleChannelInfo[] part4 = value.sub_channels;
        if(part4 == null || part4.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeRos2Aimdk_msgsMsgModuleChannelInfo(writer, part4[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgModuleResourceInfo readRos2Aimdk_msgsMsgModuleResourceInfo(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgModuleResourceInfo value = new Ros2Aimdk_msgsMsgModuleResourceInfo();
        value.module_name = readText(reader, 128);
        value.rpc_clients = new Ros2Aimdk_msgsMsgModuleRpcInfo[readCount(reader, 2, 16)];
        for(int i = 0; i < value.rpc_clients.length; ++i)
            value.rpc_clients[i] = readRos2Aimdk_msgsMsgModuleRpcInfo(reader);
        value.rpc_services = new Ros2Aimdk_msgsMsgModuleRpcInfo[readCount(reader, 2, 16)];
        for(int i = 0; i < value.rpc_services.length; ++i)
            value.rpc_services[i] = readRos2Aimdk_msgsMsgModuleRpcInfo(reader);
        value.pub_channels = new Ros2Aimdk_msgsMsgModuleChannelInfo[readCount(reader, 2, 58)];
        for(int i = 0; i < value.pub_channels.length; ++i)
            value.pub_channels[i] = readRos2Aimdk_msgsMsgModuleChannelInfo(reader);
        value.sub_channels = new Ros2Aimdk_msgsMsgModuleChannelInfo[readCount(reader, 2, 58)];
        for(int i = 0; i < value.sub_channels.length; ++i)
            value.sub_channels[i] = readRos2Aimdk_msgsMsgModuleChannelInfo(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgThreadResourceInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/ThreadResourceInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 352;
        public long thread_id = 0;
        public String thread_name = "";
        public double cpu_usage_ratio = 0;
        public String cpu_sched_policy = "";
        public int cpu_sched_priority = 0;
        public int[] bounding_cpus = new int[0];

        public Ros2Aimdk_msgsMsgThreadResourceInfo()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgThreadResourceInfo> CODEC = new Codec<Ros2Aimdk_msgsMsgThreadResourceInfo>() {
            public byte[] encode(Ros2Aimdk_msgsMsgThreadResourceInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgThreadResourceInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgThreadResourceInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgThreadResourceInfo value = readRos2Aimdk_msgsMsgThreadResourceInfo(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgThreadResourceInfo(Codecs.Writer writer, Ros2Aimdk_msgsMsgThreadResourceInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.thread_id;
        writer.integer(part0, 8, false);
        String part1 = value.thread_name;
        writeText(writer, part1, 128);
        double part2 = value.cpu_usage_ratio;
        writer.f64(part2);
        String part3 = value.cpu_sched_policy;
        writeText(writer, part3, 128);
        int part4 = value.cpu_sched_priority;
        writer.integer(part4, 4, true);
        int[] part5 = value.bounding_cpus;
        if(part5 == null || part5.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writer.integer(part5[i], 4, true);
        }
    }

    private static Ros2Aimdk_msgsMsgThreadResourceInfo readRos2Aimdk_msgsMsgThreadResourceInfo(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgThreadResourceInfo value = new Ros2Aimdk_msgsMsgThreadResourceInfo();
        value.thread_id = reader.integer(8, false);
        value.thread_name = readText(reader, 128);
        value.cpu_usage_ratio = reader.f64();
        value.cpu_sched_policy = readText(reader, 128);
        value.cpu_sched_priority = (int)reader.integer(4, true);
        value.bounding_cpus = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.bounding_cpus.length; ++i)
            value.bounding_cpus[i] = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgProcessResourceInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/ProcessResourceInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 1584;
        public long process_id = 0;
        public String process_name = "";
        public long process_mem_usage = 0;
        public double process_mem_usage_ratio = 0;
        public double process_cpu_usage_ratio = 0;
        public long thread_count = 0;
        public Ros2Aimdk_msgsMsgThreadResourceInfo[] threads = new Ros2Aimdk_msgsMsgThreadResourceInfo[0];

        public Ros2Aimdk_msgsMsgProcessResourceInfo()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgProcessResourceInfo> CODEC = new Codec<Ros2Aimdk_msgsMsgProcessResourceInfo>() {
            public byte[] encode(Ros2Aimdk_msgsMsgProcessResourceInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgProcessResourceInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgProcessResourceInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgProcessResourceInfo value = readRos2Aimdk_msgsMsgProcessResourceInfo(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgProcessResourceInfo(Codecs.Writer writer, Ros2Aimdk_msgsMsgProcessResourceInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.process_id;
        writer.integer(part0, 8, false);
        String part1 = value.process_name;
        writeText(writer, part1, 128);
        long part2 = value.process_mem_usage;
        writer.integer(part2, 8, false);
        double part3 = value.process_mem_usage_ratio;
        writer.f64(part3);
        double part4 = value.process_cpu_usage_ratio;
        writer.f64(part4);
        long part5 = value.thread_count;
        writer.integer(part5, 8, false);
        Ros2Aimdk_msgsMsgThreadResourceInfo[] part6 = value.threads;
        if(part6 == null || part6.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part6.length, 4, false);
        for(int i = 0; i < part6.length; ++i)
        {
            writeRos2Aimdk_msgsMsgThreadResourceInfo(writer, part6[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgProcessResourceInfo readRos2Aimdk_msgsMsgProcessResourceInfo(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgProcessResourceInfo value = new Ros2Aimdk_msgsMsgProcessResourceInfo();
        value.process_id = reader.integer(8, false);
        value.process_name = readText(reader, 128);
        value.process_mem_usage = reader.integer(8, false);
        value.process_mem_usage_ratio = reader.f64();
        value.process_cpu_usage_ratio = reader.f64();
        value.thread_count = reader.integer(8, false);
        value.threads = new Ros2Aimdk_msgsMsgThreadResourceInfo[readCount(reader, 4, 32)];
        for(int i = 0; i < value.threads.length; ++i)
            value.threads[i] = readRos2Aimdk_msgsMsgThreadResourceInfo(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgProcessInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/ProcessInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996";
        public static final int MIN_WIRE_BYTES = 80, MAX_WIRE_BYTES = 12232;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public String app_name = "";
        public Ros2Aimdk_msgsMsgProcessResourceInfo resource = new Ros2Aimdk_msgsMsgProcessResourceInfo();
        public Ros2Aimdk_msgsMsgModuleResourceInfo[] modules = new Ros2Aimdk_msgsMsgModuleResourceInfo[0];

        public Ros2Aimdk_msgsMsgProcessInfo()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgProcessInfo> CODEC = new Codec<Ros2Aimdk_msgsMsgProcessInfo>() {
            public byte[] encode(Ros2Aimdk_msgsMsgProcessInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgProcessInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgProcessInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgProcessInfo value = readRos2Aimdk_msgsMsgProcessInfo(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgProcessInfo(Codecs.Writer writer, Ros2Aimdk_msgsMsgProcessInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        String part1 = value.app_name;
        writeText(writer, part1, 128);
        Ros2Aimdk_msgsMsgProcessResourceInfo part2 = value.resource;
        writeRos2Aimdk_msgsMsgProcessResourceInfo(writer, part2);
        Ros2Aimdk_msgsMsgModuleResourceInfo[] part3 = value.modules;
        if(part3 == null || part3.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Aimdk_msgsMsgModuleResourceInfo(writer, part3[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgProcessInfo readRos2Aimdk_msgsMsgProcessInfo(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgProcessInfo value = new Ros2Aimdk_msgsMsgProcessInfo();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.app_name = readText(reader, 128);
        value.resource = readRos2Aimdk_msgsMsgProcessResourceInfo(reader);
        value.modules = new Ros2Aimdk_msgsMsgModuleResourceInfo[readCount(reader, 2, 20)];
        for(int i = 0; i < value.modules.length; ++i)
            value.modules[i] = readRos2Aimdk_msgsMsgModuleResourceInfo(reader);
        return value;
    }
}
