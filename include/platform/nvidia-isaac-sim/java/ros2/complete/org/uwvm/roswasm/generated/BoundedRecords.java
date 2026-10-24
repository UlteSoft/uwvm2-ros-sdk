package org.uwvm.roswasm.generated;

import org.uwvm.roswasm.Codec;
import org.uwvm.roswasm.Codecs;

/** @brief Generated complete canonical records; no CDR/native registration or ROS authority. */
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

    public static final class Ros2Std_msgsMsgHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 76;
        public Ros2Builtin_interfacesMsgTime stamp = new Ros2Builtin_interfacesMsgTime();
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
        writeText(writer, part1, 64);
    }

    private static Ros2Std_msgsMsgHeader readRos2Std_msgsMsgHeader(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgHeader value = new Ros2Std_msgsMsgHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.frame_id = readText(reader, 64);
        return value;
    }

    public static final class Ros2Sensor_msgsMsgJointState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "sensor_msgs/msg/JointState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 5980;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public String[] name = new String[0];
        public double[] position = new double[0];
        public double[] velocity = new double[0];
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
        if(part1 == null || part1.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 64);
        }
        double[] part2 = value.position;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.velocity;
        if(part3 == null || part3.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.effort;
        if(part4 == null || part4.length > 64)
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
        value.name = new String[readCount(reader, 64, 4)];
        for(int i = 0; i < value.name.length; ++i)
            value.name[i] = readText(reader, 64);
        value.position = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.velocity = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = reader.f64();
        value.effort = new double[readCount(reader, 64, 8)];
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

    public static final class Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_isaac_sim_bridge/msg/ClockEvent";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6";
        public static final int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 14;
        public int kind = 0;
        public int phase = 0;
        public long frame = 0;
        public int sec = 0;
        public long nanosec = 0;

        public Ros2Uwvm_isaac_sim_bridgeMsgClockEvent()
        {
        }

        public static final Codec<Ros2Uwvm_isaac_sim_bridgeMsgClockEvent> CODEC = new Codec<Ros2Uwvm_isaac_sim_bridgeMsgClockEvent>() {
            public byte[] encode(Ros2Uwvm_isaac_sim_bridgeMsgClockEvent value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_isaac_sim_bridgeMsgClockEvent(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_isaac_sim_bridgeMsgClockEvent decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_isaac_sim_bridgeMsgClockEvent value = readRos2Uwvm_isaac_sim_bridgeMsgClockEvent(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_isaac_sim_bridgeMsgClockEvent(Codecs.Writer writer, Ros2Uwvm_isaac_sim_bridgeMsgClockEvent value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.kind;
        writer.integer(part0, 1, false);
        int part1 = value.phase;
        writer.integer(part1, 1, false);
        long part2 = value.frame;
        writer.integer(part2, 4, false);
        int part3 = value.sec;
        writer.integer(part3, 4, true);
        long part4 = value.nanosec;
        writer.integer(part4, 4, false);
    }

    private static Ros2Uwvm_isaac_sim_bridgeMsgClockEvent readRos2Uwvm_isaac_sim_bridgeMsgClockEvent(Codecs.Reader reader)
    {
        Ros2Uwvm_isaac_sim_bridgeMsgClockEvent value = new Ros2Uwvm_isaac_sim_bridgeMsgClockEvent();
        value.kind = (int)reader.integer(1, false);
        value.phase = (int)reader.integer(1, false);
        value.frame = reader.integer(4, false);
        value.sec = (int)reader.integer(4, true);
        value.nanosec = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_isaac_sim_bridge/srv/ClockControl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19";
        public static final int MIN_WIRE_BYTES = 22, MAX_WIRE_BYTES = 22;
        public int operation = 0;
        public long session_nonce = 0;
        public long request_sequence = 0;
        public int phase = 0;
        public long frame = 0;
        public boolean impulse = false;
        public boolean extra_update = false;
        public int pacing_milliseconds = 0;

        public Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request()
        {
        }

        public static final Codec<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request> CODEC = new Codec<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request>() {
            public byte[] encode(Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request value = readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(Codecs.Writer writer, Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.operation;
        writer.integer(part0, 1, false);
        long part1 = value.session_nonce;
        writer.integer(part1, 8, false);
        long part2 = value.request_sequence;
        writer.integer(part2, 4, false);
        int part3 = value.phase;
        writer.integer(part3, 1, false);
        long part4 = value.frame;
        writer.integer(part4, 4, false);
        boolean part5 = value.impulse;
        writer.integer(part5 ? 1 : 0, 1, false);
        boolean part6 = value.extra_update;
        writer.integer(part6 ? 1 : 0, 1, false);
        int part7 = value.pacing_milliseconds;
        writer.integer(part7, 2, false);
    }

    private static Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request value = new Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request();
        value.operation = (int)reader.integer(1, false);
        value.session_nonce = reader.integer(8, false);
        value.request_sequence = reader.integer(4, false);
        value.phase = (int)reader.integer(1, false);
        value.frame = reader.integer(4, false);
        value.impulse = readBool(reader);
        value.extra_update = readBool(reader);
        value.pacing_milliseconds = (int)reader.integer(2, false);
        return value;
    }

    public static final class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_isaac_sim_bridge/srv/ClockControl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public long status = 0;
        public long session_nonce = 0;
        public long request_sequence = 0;
        public int state = 0;
        public long actual_app_updates = 0;
        public long completed_steps = 0;
        public boolean has_event = false;
        public Ros2Uwvm_isaac_sim_bridgeMsgClockEvent event = new Ros2Uwvm_isaac_sim_bridgeMsgClockEvent();
        public long cleanup_status = 0;

        public Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response()
        {
        }

        public static final Codec<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response> CODEC = new Codec<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>() {
            public byte[] encode(Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value = readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(Codecs.Writer writer, Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        long part1 = value.session_nonce;
        writer.integer(part1, 8, false);
        long part2 = value.request_sequence;
        writer.integer(part2, 4, false);
        int part3 = value.state;
        writer.integer(part3, 1, false);
        long part4 = value.actual_app_updates;
        writer.integer(part4, 8, false);
        long part5 = value.completed_steps;
        writer.integer(part5, 4, false);
        boolean part6 = value.has_event;
        writer.integer(part6 ? 1 : 0, 1, false);
        Ros2Uwvm_isaac_sim_bridgeMsgClockEvent part7 = value.event;
        writeRos2Uwvm_isaac_sim_bridgeMsgClockEvent(writer, part7);
        long part8 = value.cleanup_status;
        writer.integer(part8, 4, false);
    }

    private static Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value = new Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response();
        value.status = reader.integer(4, false);
        value.session_nonce = reader.integer(8, false);
        value.request_sequence = reader.integer(4, false);
        value.state = (int)reader.integer(1, false);
        value.actual_app_updates = reader.integer(8, false);
        value.completed_steps = reader.integer(4, false);
        value.has_event = readBool(reader);
        value.event = readRos2Uwvm_isaac_sim_bridgeMsgClockEvent(reader);
        value.cleanup_status = reader.integer(4, false);
        return value;
    }
}
