/**
 * @file BoundedRecords.java
 * @brief Full agibot java codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v1_1_0_main values in java. 166 original records retain 552 fields and 133
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/agibot/en_US/catalog/.
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

    public static final class Ros2Aimdk_msgsMsgAgentPropertyIdType
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AgentPropertyIdType";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public int value = 0;

        public Ros2Aimdk_msgsMsgAgentPropertyIdType()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAgentPropertyIdType> CODEC = new Codec<Ros2Aimdk_msgsMsgAgentPropertyIdType>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAgentPropertyIdType value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAgentPropertyIdType(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAgentPropertyIdType decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAgentPropertyIdType value = readRos2Aimdk_msgsMsgAgentPropertyIdType(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAgentPropertyIdType(Codecs.Writer writer, Ros2Aimdk_msgsMsgAgentPropertyIdType value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgAgentPropertyIdType readRos2Aimdk_msgsMsgAgentPropertyIdType(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAgentPropertyIdType value = new Ros2Aimdk_msgsMsgAgentPropertyIdType();
        value.value = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgAgentPropertiesValue
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AgentPropertiesValue";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 133;
        public Ros2Aimdk_msgsMsgAgentPropertyIdType key = new Ros2Aimdk_msgsMsgAgentPropertyIdType();
        public String value = "";

        public Ros2Aimdk_msgsMsgAgentPropertiesValue()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAgentPropertiesValue> CODEC = new Codec<Ros2Aimdk_msgsMsgAgentPropertiesValue>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAgentPropertiesValue value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAgentPropertiesValue(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAgentPropertiesValue decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAgentPropertiesValue value = readRos2Aimdk_msgsMsgAgentPropertiesValue(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAgentPropertiesValue(Codecs.Writer writer, Ros2Aimdk_msgsMsgAgentPropertiesValue value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgAgentPropertyIdType part0 = value.key;
        writeRos2Aimdk_msgsMsgAgentPropertyIdType(writer, part0);
        String part1 = value.value;
        writeText(writer, part1, 128);
    }

    private static Ros2Aimdk_msgsMsgAgentPropertiesValue readRos2Aimdk_msgsMsgAgentPropertiesValue(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAgentPropertiesValue value = new Ros2Aimdk_msgsMsgAgentPropertiesValue();
        value.key = readRos2Aimdk_msgsMsgAgentPropertyIdType(reader);
        value.value = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgAgentProperties
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AgentProperties";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 536;
        public Ros2Aimdk_msgsMsgAgentPropertiesValue[] properties = new Ros2Aimdk_msgsMsgAgentPropertiesValue[0];

        public Ros2Aimdk_msgsMsgAgentProperties()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAgentProperties> CODEC = new Codec<Ros2Aimdk_msgsMsgAgentProperties>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAgentProperties value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAgentProperties(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAgentProperties decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAgentProperties value = readRos2Aimdk_msgsMsgAgentProperties(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAgentProperties(Codecs.Writer writer, Ros2Aimdk_msgsMsgAgentProperties value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgAgentPropertiesValue[] part0 = value.properties;
        if(part0 == null || part0.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Aimdk_msgsMsgAgentPropertiesValue(writer, part0[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgAgentProperties readRos2Aimdk_msgsMsgAgentProperties(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAgentProperties value = new Ros2Aimdk_msgsMsgAgentProperties();
        value.properties = new Ros2Aimdk_msgsMsgAgentPropertiesValue[readCount(reader, 4, 5)];
        for(int i = 0; i < value.properties.length; ++i)
            value.properties[i] = readRos2Aimdk_msgsMsgAgentPropertiesValue(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgAlertCode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AlertCode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_16e0ffe103d1d7761ff440bebfd6aa42c9471006f636c50fcd6acda8c32bc7e5";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;
        public long timestamp = 0;
        public long first_timestamp = 0;
        public String code = "";

        public Ros2Aimdk_msgsMsgAlertCode()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAlertCode> CODEC = new Codec<Ros2Aimdk_msgsMsgAlertCode>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAlertCode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAlertCode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAlertCode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAlertCode value = readRos2Aimdk_msgsMsgAlertCode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAlertCode(Codecs.Writer writer, Ros2Aimdk_msgsMsgAlertCode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.timestamp;
        writer.integer(part0, 8, false);
        long part1 = value.first_timestamp;
        writer.integer(part1, 8, false);
        String part2 = value.code;
        writeText(writer, part2, 128);
    }

    private static Ros2Aimdk_msgsMsgAlertCode readRos2Aimdk_msgsMsgAlertCode(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAlertCode value = new Ros2Aimdk_msgsMsgAlertCode();
        value.timestamp = reader.integer(8, false);
        value.first_timestamp = reader.integer(8, false);
        value.code = readText(reader, 128);
        return value;
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

    public static final class Ros2Aimdk_msgsMsgAlertCodeArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AlertCodeArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1b63520082b1874bb85d84c6be60d4464a3ce7063422d6db5597c907e70fe261";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 748;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public Ros2Aimdk_msgsMsgAlertCode[] list = new Ros2Aimdk_msgsMsgAlertCode[0];

        public Ros2Aimdk_msgsMsgAlertCodeArray()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAlertCodeArray> CODEC = new Codec<Ros2Aimdk_msgsMsgAlertCodeArray>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAlertCodeArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAlertCodeArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAlertCodeArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAlertCodeArray value = readRos2Aimdk_msgsMsgAlertCodeArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAlertCodeArray(Codecs.Writer writer, Ros2Aimdk_msgsMsgAlertCodeArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        Ros2Aimdk_msgsMsgAlertCode[] part1 = value.list;
        if(part1 == null || part1.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgAlertCode(writer, part1[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgAlertCodeArray readRos2Aimdk_msgsMsgAlertCodeArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAlertCodeArray value = new Ros2Aimdk_msgsMsgAlertCodeArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.list = new Ros2Aimdk_msgsMsgAlertCode[readCount(reader, 4, 20)];
        for(int i = 0; i < value.list.length; ++i)
            value.list[i] = readRos2Aimdk_msgsMsgAlertCode(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgAudioInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AudioInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 273;
        public int channels = 0;
        public long sample_rate = 0;
        public long size = 0;
        public String sample_format = "";
        public String coding_format = "";

        public Ros2Aimdk_msgsMsgAudioInfo()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAudioInfo> CODEC = new Codec<Ros2Aimdk_msgsMsgAudioInfo>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAudioInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAudioInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAudioInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAudioInfo value = readRos2Aimdk_msgsMsgAudioInfo(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAudioInfo(Codecs.Writer writer, Ros2Aimdk_msgsMsgAudioInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.channels;
        writer.integer(part0, 1, false);
        long part1 = value.sample_rate;
        writer.integer(part1, 4, false);
        long part2 = value.size;
        writer.integer(part2, 4, false);
        String part3 = value.sample_format;
        writeText(writer, part3, 128);
        String part4 = value.coding_format;
        writeText(writer, part4, 128);
    }

    private static Ros2Aimdk_msgsMsgAudioInfo readRos2Aimdk_msgsMsgAudioInfo(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAudioInfo value = new Ros2Aimdk_msgsMsgAudioInfo();
        value.channels = (int)reader.integer(1, false);
        value.sample_rate = reader.integer(4, false);
        value.size = reader.integer(4, false);
        value.sample_format = readText(reader, 128);
        value.coding_format = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgAudioData
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AudioData";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public int[] data = new int[0];

        public Ros2Aimdk_msgsMsgAudioData()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAudioData> CODEC = new Codec<Ros2Aimdk_msgsMsgAudioData>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAudioData value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAudioData(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAudioData decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAudioData value = readRos2Aimdk_msgsMsgAudioData(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAudioData(Codecs.Writer writer, Ros2Aimdk_msgsMsgAudioData value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.data;
        if(part0 == null || part0.length > 256)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 1, false);
        }
    }

    private static Ros2Aimdk_msgsMsgAudioData readRos2Aimdk_msgsMsgAudioData(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAudioData value = new Ros2Aimdk_msgsMsgAudioData();
        value.data = new int[readCount(reader, 256, 1)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgAudioCapture
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AudioCapture";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c";
        public static final int MIN_WIRE_BYTES = 35, MAX_WIRE_BYTES = 675;
        public Ros2Builtin_interfacesMsgTime stamps = new Ros2Builtin_interfacesMsgTime();
        public int mic_channels = 0;
        public int ref_channels = 0;
        public Ros2Aimdk_msgsMsgAudioInfo info = new Ros2Aimdk_msgsMsgAudioInfo();
        public Ros2Aimdk_msgsMsgAudioData data = new Ros2Aimdk_msgsMsgAudioData();
        public String pkg_name = "";

        public Ros2Aimdk_msgsMsgAudioCapture()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAudioCapture> CODEC = new Codec<Ros2Aimdk_msgsMsgAudioCapture>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAudioCapture value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAudioCapture(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAudioCapture decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAudioCapture value = readRos2Aimdk_msgsMsgAudioCapture(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAudioCapture(Codecs.Writer writer, Ros2Aimdk_msgsMsgAudioCapture value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Builtin_interfacesMsgTime part0 = value.stamps;
        writeRos2Builtin_interfacesMsgTime(writer, part0);
        int part1 = value.mic_channels;
        writer.integer(part1, 1, false);
        int part2 = value.ref_channels;
        writer.integer(part2, 1, false);
        Ros2Aimdk_msgsMsgAudioInfo part3 = value.info;
        writeRos2Aimdk_msgsMsgAudioInfo(writer, part3);
        Ros2Aimdk_msgsMsgAudioData part4 = value.data;
        writeRos2Aimdk_msgsMsgAudioData(writer, part4);
        String part5 = value.pkg_name;
        writeText(writer, part5, 128);
    }

    private static Ros2Aimdk_msgsMsgAudioCapture readRos2Aimdk_msgsMsgAudioCapture(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAudioCapture value = new Ros2Aimdk_msgsMsgAudioCapture();
        value.stamps = readRos2Builtin_interfacesMsgTime(reader);
        value.mic_channels = (int)reader.integer(1, false);
        value.ref_channels = (int)reader.integer(1, false);
        value.info = readRos2Aimdk_msgsMsgAudioInfo(reader);
        value.data = readRos2Aimdk_msgsMsgAudioData(reader);
        value.pkg_name = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgAudioFile
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AudioFile";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d";
        public static final int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 677;
        public String pkg_name = "";
        public String file_name = "";
        public String file_path = "";
        public Ros2Aimdk_msgsMsgAudioInfo info = new Ros2Aimdk_msgsMsgAudioInfo();
        public long priority = 0;
        public long priority_weight = 0;

        public Ros2Aimdk_msgsMsgAudioFile()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAudioFile> CODEC = new Codec<Ros2Aimdk_msgsMsgAudioFile>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAudioFile value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAudioFile(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAudioFile decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAudioFile value = readRos2Aimdk_msgsMsgAudioFile(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAudioFile(Codecs.Writer writer, Ros2Aimdk_msgsMsgAudioFile value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.pkg_name;
        writeText(writer, part0, 128);
        String part1 = value.file_name;
        writeText(writer, part1, 128);
        String part2 = value.file_path;
        writeText(writer, part2, 128);
        Ros2Aimdk_msgsMsgAudioInfo part3 = value.info;
        writeRos2Aimdk_msgsMsgAudioInfo(writer, part3);
        long part4 = value.priority;
        writer.integer(part4, 4, false);
        long part5 = value.priority_weight;
        writer.integer(part5, 4, false);
    }

    private static Ros2Aimdk_msgsMsgAudioFile readRos2Aimdk_msgsMsgAudioFile(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAudioFile value = new Ros2Aimdk_msgsMsgAudioFile();
        value.pkg_name = readText(reader, 128);
        value.file_name = readText(reader, 128);
        value.file_path = readText(reader, 128);
        value.info = readRos2Aimdk_msgsMsgAudioInfo(reader);
        value.priority = reader.integer(4, false);
        value.priority_weight = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgAudioPlayback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AudioPlayback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499";
        public static final int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 805;
        public Ros2Builtin_interfacesMsgTime stamps = new Ros2Builtin_interfacesMsgTime();
        public Ros2Aimdk_msgsMsgAudioInfo info = new Ros2Aimdk_msgsMsgAudioInfo();
        public Ros2Aimdk_msgsMsgAudioData data = new Ros2Aimdk_msgsMsgAudioData();
        public String pkg_name = "";
        public String token_id = "";

        public Ros2Aimdk_msgsMsgAudioPlayback()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAudioPlayback> CODEC = new Codec<Ros2Aimdk_msgsMsgAudioPlayback>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAudioPlayback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAudioPlayback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAudioPlayback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAudioPlayback value = readRos2Aimdk_msgsMsgAudioPlayback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAudioPlayback(Codecs.Writer writer, Ros2Aimdk_msgsMsgAudioPlayback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Builtin_interfacesMsgTime part0 = value.stamps;
        writeRos2Builtin_interfacesMsgTime(writer, part0);
        Ros2Aimdk_msgsMsgAudioInfo part1 = value.info;
        writeRos2Aimdk_msgsMsgAudioInfo(writer, part1);
        Ros2Aimdk_msgsMsgAudioData part2 = value.data;
        writeRos2Aimdk_msgsMsgAudioData(writer, part2);
        String part3 = value.pkg_name;
        writeText(writer, part3, 128);
        String part4 = value.token_id;
        writeText(writer, part4, 128);
    }

    private static Ros2Aimdk_msgsMsgAudioPlayback readRos2Aimdk_msgsMsgAudioPlayback(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAudioPlayback value = new Ros2Aimdk_msgsMsgAudioPlayback();
        value.stamps = readRos2Builtin_interfacesMsgTime(reader);
        value.info = readRos2Aimdk_msgsMsgAudioInfo(reader);
        value.data = readRos2Aimdk_msgsMsgAudioData(reader);
        value.pkg_name = readText(reader, 128);
        value.token_id = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgAudioVadStateType
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/AudioVadStateType";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public int value = 0;

        public Ros2Aimdk_msgsMsgAudioVadStateType()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgAudioVadStateType> CODEC = new Codec<Ros2Aimdk_msgsMsgAudioVadStateType>() {
            public byte[] encode(Ros2Aimdk_msgsMsgAudioVadStateType value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgAudioVadStateType(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgAudioVadStateType decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgAudioVadStateType value = readRos2Aimdk_msgsMsgAudioVadStateType(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgAudioVadStateType(Codecs.Writer writer, Ros2Aimdk_msgsMsgAudioVadStateType value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgAudioVadStateType readRos2Aimdk_msgsMsgAudioVadStateType(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgAudioVadStateType value = new Ros2Aimdk_msgsMsgAudioVadStateType();
        value.value = (int)reader.integer(1, false);
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

    public static final class Ros2Aimdk_msgsMsgCommonTaskRequest
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/CommonTaskRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0324951171581259cf0c1bfed23887bdbc0f7328659e5efdfde046612f3d5de5";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public Ros2Aimdk_msgsMsgRequestHeader header = new Ros2Aimdk_msgsMsgRequestHeader();
        public long task_id = 0;

        public Ros2Aimdk_msgsMsgCommonTaskRequest()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgCommonTaskRequest> CODEC = new Codec<Ros2Aimdk_msgsMsgCommonTaskRequest>() {
            public byte[] encode(Ros2Aimdk_msgsMsgCommonTaskRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgCommonTaskRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgCommonTaskRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgCommonTaskRequest value = readRos2Aimdk_msgsMsgCommonTaskRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgCommonTaskRequest(Codecs.Writer writer, Ros2Aimdk_msgsMsgCommonTaskRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgRequestHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgRequestHeader(writer, part0);
        long part1 = value.task_id;
        writer.integer(part1, 8, false);
    }

    private static Ros2Aimdk_msgsMsgCommonTaskRequest readRos2Aimdk_msgsMsgCommonTaskRequest(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgCommonTaskRequest value = new Ros2Aimdk_msgsMsgCommonTaskRequest();
        value.header = readRos2Aimdk_msgsMsgRequestHeader(reader);
        value.task_id = reader.integer(8, false);
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

    public static final class Ros2Aimdk_msgsMsgCurrentVersion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/CurrentVersion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 2388;
        public String version = "";
        public String name = "";
        public String[] files = new String[0];
        public long download_timestamp_seconds = 0;

        public Ros2Aimdk_msgsMsgCurrentVersion()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgCurrentVersion> CODEC = new Codec<Ros2Aimdk_msgsMsgCurrentVersion>() {
            public byte[] encode(Ros2Aimdk_msgsMsgCurrentVersion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgCurrentVersion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgCurrentVersion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgCurrentVersion value = readRos2Aimdk_msgsMsgCurrentVersion(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgCurrentVersion(Codecs.Writer writer, Ros2Aimdk_msgsMsgCurrentVersion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.version;
        writeText(writer, part0, 128);
        String part1 = value.name;
        writeText(writer, part1, 128);
        String[] part2 = value.files;
        if(part2 == null || part2.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeText(writer, part2[i], 128);
        }
        long part3 = value.download_timestamp_seconds;
        writer.integer(part3, 8, false);
    }

    private static Ros2Aimdk_msgsMsgCurrentVersion readRos2Aimdk_msgsMsgCurrentVersion(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgCurrentVersion value = new Ros2Aimdk_msgsMsgCurrentVersion();
        value.version = readText(reader, 128);
        value.name = readText(reader, 128);
        value.files = new String[readCount(reader, 16, 4)];
        for(int i = 0; i < value.files.length; ++i)
            value.files[i] = readText(reader, 128);
        value.download_timestamp_seconds = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgDiagnosticType
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/DiagnosticType";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_41bcce9c343c12c64f0d2c28282926a734361f5eb02d39be0aae5c98ae926d92";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgDiagnosticType()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgDiagnosticType> CODEC = new Codec<Ros2Aimdk_msgsMsgDiagnosticType>() {
            public byte[] encode(Ros2Aimdk_msgsMsgDiagnosticType value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgDiagnosticType(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgDiagnosticType decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgDiagnosticType value = readRos2Aimdk_msgsMsgDiagnosticType(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgDiagnosticType(Codecs.Writer writer, Ros2Aimdk_msgsMsgDiagnosticType value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgDiagnosticType readRos2Aimdk_msgsMsgDiagnosticType(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgDiagnosticType value = new Ros2Aimdk_msgsMsgDiagnosticType();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgDiagnosticInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/DiagnosticInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_989641e2dd8ef2e5e77f3455355ca8c1f08d1671874f1b920b0ae28352e20afa";
        public static final int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 165;
        public long timestamp = 0;
        public long first_timestamp = 0;
        public Ros2Aimdk_msgsMsgDiagnosticType type = new Ros2Aimdk_msgsMsgDiagnosticType();
        public int module_id = 0;
        public long code = 0;
        public long diag_code = 0;
        public String info = "";

        public Ros2Aimdk_msgsMsgDiagnosticInfo()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgDiagnosticInfo> CODEC = new Codec<Ros2Aimdk_msgsMsgDiagnosticInfo>() {
            public byte[] encode(Ros2Aimdk_msgsMsgDiagnosticInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgDiagnosticInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgDiagnosticInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgDiagnosticInfo value = readRos2Aimdk_msgsMsgDiagnosticInfo(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgDiagnosticInfo(Codecs.Writer writer, Ros2Aimdk_msgsMsgDiagnosticInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.timestamp;
        writer.integer(part0, 8, false);
        long part1 = value.first_timestamp;
        writer.integer(part1, 8, false);
        Ros2Aimdk_msgsMsgDiagnosticType part2 = value.type;
        writeRos2Aimdk_msgsMsgDiagnosticType(writer, part2);
        int part3 = value.module_id;
        writer.integer(part3, 1, false);
        long part4 = value.code;
        writer.integer(part4, 4, false);
        long part5 = value.diag_code;
        writer.integer(part5, 8, false);
        String part6 = value.info;
        writeText(writer, part6, 128);
    }

    private static Ros2Aimdk_msgsMsgDiagnosticInfo readRos2Aimdk_msgsMsgDiagnosticInfo(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgDiagnosticInfo value = new Ros2Aimdk_msgsMsgDiagnosticInfo();
        value.timestamp = reader.integer(8, false);
        value.first_timestamp = reader.integer(8, false);
        value.type = readRos2Aimdk_msgsMsgDiagnosticType(reader);
        value.module_id = (int)reader.integer(1, false);
        value.code = reader.integer(4, false);
        value.diag_code = reader.integer(8, false);
        value.info = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgDiagnosticInfoArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/DiagnosticInfoArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ea9c3022e38d875c94431babc75f890382089d9e2fb1a15573421d475d2d280b";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 816;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public Ros2Aimdk_msgsMsgDiagnosticInfo[] diagnostics = new Ros2Aimdk_msgsMsgDiagnosticInfo[0];

        public Ros2Aimdk_msgsMsgDiagnosticInfoArray()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgDiagnosticInfoArray> CODEC = new Codec<Ros2Aimdk_msgsMsgDiagnosticInfoArray>() {
            public byte[] encode(Ros2Aimdk_msgsMsgDiagnosticInfoArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgDiagnosticInfoArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgDiagnosticInfoArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgDiagnosticInfoArray value = readRos2Aimdk_msgsMsgDiagnosticInfoArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgDiagnosticInfoArray(Codecs.Writer writer, Ros2Aimdk_msgsMsgDiagnosticInfoArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        Ros2Aimdk_msgsMsgDiagnosticInfo[] part1 = value.diagnostics;
        if(part1 == null || part1.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgDiagnosticInfo(writer, part1[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgDiagnosticInfoArray readRos2Aimdk_msgsMsgDiagnosticInfoArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgDiagnosticInfoArray value = new Ros2Aimdk_msgsMsgDiagnosticInfoArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.diagnostics = new Ros2Aimdk_msgsMsgDiagnosticInfo[readCount(reader, 4, 37)];
        for(int i = 0; i < value.diagnostics.length; ++i)
            value.diagnostics[i] = readRos2Aimdk_msgsMsgDiagnosticInfo(reader);
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

    public static final class Ros2Aimdk_msgsMsgFaceEmojiStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/FaceEmojiStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a2a3346bea421c1c0756e8e74dd05564f2281d15762dd300189563e5bd0d3df4";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 2552;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public String e_path = "";
        public String[] e_path_list = new String[0];
        public int e_id = 0;
        public int mode = 0;
        public int priority = 0;
        public int status = 0;
        public double time_to_end_ms = 0;
        public int display_type = 0;
        public String trace_id = "";
        public int error_code = 0;

        public Ros2Aimdk_msgsMsgFaceEmojiStatus()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgFaceEmojiStatus> CODEC = new Codec<Ros2Aimdk_msgsMsgFaceEmojiStatus>() {
            public byte[] encode(Ros2Aimdk_msgsMsgFaceEmojiStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgFaceEmojiStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgFaceEmojiStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgFaceEmojiStatus value = readRos2Aimdk_msgsMsgFaceEmojiStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgFaceEmojiStatus(Codecs.Writer writer, Ros2Aimdk_msgsMsgFaceEmojiStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        String part1 = value.e_path;
        writeText(writer, part1, 128);
        String[] part2 = value.e_path_list;
        if(part2 == null || part2.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeText(writer, part2[i], 128);
        }
        int part3 = value.e_id;
        writer.integer(part3, 1, false);
        int part4 = value.mode;
        writer.integer(part4, 1, false);
        int part5 = value.priority;
        writer.integer(part5, 4, true);
        int part6 = value.status;
        writer.integer(part6, 1, false);
        double part7 = value.time_to_end_ms;
        writer.f64(part7);
        int part8 = value.display_type;
        writer.integer(part8, 1, false);
        String part9 = value.trace_id;
        writeText(writer, part9, 128);
        int part10 = value.error_code;
        writer.integer(part10, 4, true);
    }

    private static Ros2Aimdk_msgsMsgFaceEmojiStatus readRos2Aimdk_msgsMsgFaceEmojiStatus(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgFaceEmojiStatus value = new Ros2Aimdk_msgsMsgFaceEmojiStatus();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.e_path = readText(reader, 128);
        value.e_path_list = new String[readCount(reader, 16, 4)];
        for(int i = 0; i < value.e_path_list.length; ++i)
            value.e_path_list[i] = readText(reader, 128);
        value.e_id = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.priority = (int)reader.integer(4, true);
        value.status = (int)reader.integer(1, false);
        value.time_to_end_ms = reader.f64();
        value.display_type = (int)reader.integer(1, false);
        value.trace_id = readText(reader, 128);
        value.error_code = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgFixLineIntroState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/FixLineIntroState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f7c7b38331d9b5f0e8268f8373e254d9e9f2becd5388d0efd30927e5c4916384";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 433;
        public long set_task_id = 0;
        public String set_task_name = "";
        public String task_name = "";
        public long task_id = 0;
        public String map_name = "";
        public long map_id = 0;
        public long rest_site_number = 0;
        public int fix_line_intro_state = 0;
        public long cur_target_id = 0;

        public Ros2Aimdk_msgsMsgFixLineIntroState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgFixLineIntroState> CODEC = new Codec<Ros2Aimdk_msgsMsgFixLineIntroState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgFixLineIntroState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgFixLineIntroState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgFixLineIntroState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgFixLineIntroState value = readRos2Aimdk_msgsMsgFixLineIntroState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgFixLineIntroState(Codecs.Writer writer, Ros2Aimdk_msgsMsgFixLineIntroState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.set_task_id;
        writer.integer(part0, 8, false);
        String part1 = value.set_task_name;
        writeText(writer, part1, 128);
        String part2 = value.task_name;
        writeText(writer, part2, 128);
        long part3 = value.task_id;
        writer.integer(part3, 8, false);
        String part4 = value.map_name;
        writeText(writer, part4, 128);
        long part5 = value.map_id;
        writer.integer(part5, 8, false);
        long part6 = value.rest_site_number;
        writer.integer(part6, 4, false);
        int part7 = value.fix_line_intro_state;
        writer.integer(part7, 1, false);
        long part8 = value.cur_target_id;
        writer.integer(part8, 8, false);
    }

    private static Ros2Aimdk_msgsMsgFixLineIntroState readRos2Aimdk_msgsMsgFixLineIntroState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgFixLineIntroState value = new Ros2Aimdk_msgsMsgFixLineIntroState();
        value.set_task_id = reader.integer(8, false);
        value.set_task_name = readText(reader, 128);
        value.task_name = readText(reader, 128);
        value.task_id = reader.integer(8, false);
        value.map_name = readText(reader, 128);
        value.map_id = reader.integer(8, false);
        value.rest_site_number = reader.integer(4, false);
        value.fix_line_intro_state = (int)reader.integer(1, false);
        value.cur_target_id = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgFocusRequester
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/FocusRequester";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public String pkg_name = "";
        public long priority = 0;
        public long priority_weight = 0;

        public Ros2Aimdk_msgsMsgFocusRequester()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgFocusRequester> CODEC = new Codec<Ros2Aimdk_msgsMsgFocusRequester>() {
            public byte[] encode(Ros2Aimdk_msgsMsgFocusRequester value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgFocusRequester(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgFocusRequester decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgFocusRequester value = readRos2Aimdk_msgsMsgFocusRequester(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgFocusRequester(Codecs.Writer writer, Ros2Aimdk_msgsMsgFocusRequester value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.pkg_name;
        writeText(writer, part0, 128);
        long part1 = value.priority;
        writer.integer(part1, 4, false);
        long part2 = value.priority_weight;
        writer.integer(part2, 4, false);
    }

    private static Ros2Aimdk_msgsMsgFocusRequester readRos2Aimdk_msgsMsgFocusRequester(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgFocusRequester value = new Ros2Aimdk_msgsMsgFocusRequester();
        value.pkg_name = readText(reader, 128);
        value.priority = reader.integer(4, false);
        value.priority_weight = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgFocusResponse
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/FocusResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 133;
        public String pkg_name = "";
        public boolean focus_gain = false;

        public Ros2Aimdk_msgsMsgFocusResponse()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgFocusResponse> CODEC = new Codec<Ros2Aimdk_msgsMsgFocusResponse>() {
            public byte[] encode(Ros2Aimdk_msgsMsgFocusResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgFocusResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgFocusResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgFocusResponse value = readRos2Aimdk_msgsMsgFocusResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgFocusResponse(Codecs.Writer writer, Ros2Aimdk_msgsMsgFocusResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.pkg_name;
        writeText(writer, part0, 128);
        boolean part1 = value.focus_gain;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgFocusResponse readRos2Aimdk_msgsMsgFocusResponse(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgFocusResponse value = new Ros2Aimdk_msgsMsgFocusResponse();
        value.pkg_name = readText(reader, 128);
        value.focus_gain = readBool(reader);
        return value;
    }

    public static final class Ros2Geometry_msgsMsgPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Point";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        public double x = 0;
        public double y = 0;
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

    public static final class Ros2Geometry_msgsMsgQuaternion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Quaternion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        public double x = Double.longBitsToDouble(0x0000000000000000L);
        public double y = Double.longBitsToDouble(0x0000000000000000L);
        public double z = Double.longBitsToDouble(0x0000000000000000L);
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

    public static final class Ros2Geometry_msgsMsgPose
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Pose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        public Ros2Geometry_msgsMsgPoint position = new Ros2Geometry_msgsMsgPoint();
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

    public static final class Ros2Aimdk_msgsMsgQRCode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/QRCode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd";
        public static final int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 60;
        public int code = 0;
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();

        public Ros2Aimdk_msgsMsgQRCode()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgQRCode> CODEC = new Codec<Ros2Aimdk_msgsMsgQRCode>() {
            public byte[] encode(Ros2Aimdk_msgsMsgQRCode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgQRCode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgQRCode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgQRCode value = readRos2Aimdk_msgsMsgQRCode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgQRCode(Codecs.Writer writer, Ros2Aimdk_msgsMsgQRCode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.code;
        writer.integer(part0, 4, true);
        Ros2Geometry_msgsMsgPose part1 = value.pose;
        writeRos2Geometry_msgsMsgPose(writer, part1);
    }

    private static Ros2Aimdk_msgsMsgQRCode readRos2Aimdk_msgsMsgQRCode(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgQRCode value = new Ros2Aimdk_msgsMsgQRCode();
        value.code = (int)reader.integer(4, true);
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgHRPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HRPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645";
        public static final int MIN_WIRE_BYTES = 65, MAX_WIRE_BYTES = 305;
        public int point_id = 0;
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        public Ros2Aimdk_msgsMsgQRCode[] qr_list = new Ros2Aimdk_msgsMsgQRCode[0];
        public boolean use_head = false;

        public Ros2Aimdk_msgsMsgHRPoint()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgHRPoint> CODEC = new Codec<Ros2Aimdk_msgsMsgHRPoint>() {
            public byte[] encode(Ros2Aimdk_msgsMsgHRPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgHRPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgHRPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgHRPoint value = readRos2Aimdk_msgsMsgHRPoint(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgHRPoint(Codecs.Writer writer, Ros2Aimdk_msgsMsgHRPoint value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.point_id;
        writer.integer(part0, 4, true);
        Ros2Geometry_msgsMsgPose part1 = value.pose;
        writeRos2Geometry_msgsMsgPose(writer, part1);
        Ros2Aimdk_msgsMsgQRCode[] part2 = value.qr_list;
        if(part2 == null || part2.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Aimdk_msgsMsgQRCode(writer, part2[i]);
        }
        boolean part3 = value.use_head;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgHRPoint readRos2Aimdk_msgsMsgHRPoint(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHRPoint value = new Ros2Aimdk_msgsMsgHRPoint();
        value.point_id = (int)reader.integer(4, true);
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.qr_list = new Ros2Aimdk_msgsMsgQRCode[readCount(reader, 4, 60)];
        for(int i = 0; i < value.qr_list.length; ++i)
            value.qr_list[i] = readRos2Aimdk_msgsMsgQRCode(reader);
        value.use_head = readBool(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgHandCommand
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HandCommand";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8";
        public static final int MIN_WIRE_BYTES = 44, MAX_WIRE_BYTES = 172;
        public String name = "";
        public double position = 0;
        public double velocity = 0;
        public double acceleration = 0;
        public double deceleration = 0;
        public double effort = 0;

        public Ros2Aimdk_msgsMsgHandCommand()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgHandCommand> CODEC = new Codec<Ros2Aimdk_msgsMsgHandCommand>() {
            public byte[] encode(Ros2Aimdk_msgsMsgHandCommand value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgHandCommand(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgHandCommand decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgHandCommand value = readRos2Aimdk_msgsMsgHandCommand(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgHandCommand(Codecs.Writer writer, Ros2Aimdk_msgsMsgHandCommand value)
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
        double part4 = value.deceleration;
        writer.f64(part4);
        double part5 = value.effort;
        writer.f64(part5);
    }

    private static Ros2Aimdk_msgsMsgHandCommand readRos2Aimdk_msgsMsgHandCommand(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHandCommand value = new Ros2Aimdk_msgsMsgHandCommand();
        value.name = readText(reader, 128);
        value.position = reader.f64();
        value.velocity = reader.f64();
        value.acceleration = reader.f64();
        value.deceleration = reader.f64();
        value.effort = reader.f64();
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgHandType
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HandType";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_07c4fd4188be6fccafc5808eb58094c528c1c7219f70850d2d77b05e1466daff";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public int value = 0;

        public Ros2Aimdk_msgsMsgHandType()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgHandType> CODEC = new Codec<Ros2Aimdk_msgsMsgHandType>() {
            public byte[] encode(Ros2Aimdk_msgsMsgHandType value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgHandType(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgHandType decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgHandType value = readRos2Aimdk_msgsMsgHandType(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgHandType(Codecs.Writer writer, Ros2Aimdk_msgsMsgHandType value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgHandType readRos2Aimdk_msgsMsgHandType(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHandType value = new Ros2Aimdk_msgsMsgHandType();
        value.value = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgHandCommandArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HandCommandArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a120a6c2b4a364c358f2f76227954c9cf5a81345ad812683eea78dfe3e3c29ec";
        public static final int MIN_WIRE_BYTES = 34, MAX_WIRE_BYTES = 1538;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public Ros2Aimdk_msgsMsgHandType left_hand_type = new Ros2Aimdk_msgsMsgHandType();
        public Ros2Aimdk_msgsMsgHandCommand[] left_hands = new Ros2Aimdk_msgsMsgHandCommand[0];
        public Ros2Aimdk_msgsMsgHandType right_hand_type = new Ros2Aimdk_msgsMsgHandType();
        public Ros2Aimdk_msgsMsgHandCommand[] right_hands = new Ros2Aimdk_msgsMsgHandCommand[0];

        public Ros2Aimdk_msgsMsgHandCommandArray()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgHandCommandArray> CODEC = new Codec<Ros2Aimdk_msgsMsgHandCommandArray>() {
            public byte[] encode(Ros2Aimdk_msgsMsgHandCommandArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgHandCommandArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgHandCommandArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgHandCommandArray value = readRos2Aimdk_msgsMsgHandCommandArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgHandCommandArray(Codecs.Writer writer, Ros2Aimdk_msgsMsgHandCommandArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        Ros2Aimdk_msgsMsgHandType part1 = value.left_hand_type;
        writeRos2Aimdk_msgsMsgHandType(writer, part1);
        Ros2Aimdk_msgsMsgHandCommand[] part2 = value.left_hands;
        if(part2 == null || part2.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Aimdk_msgsMsgHandCommand(writer, part2[i]);
        }
        Ros2Aimdk_msgsMsgHandType part3 = value.right_hand_type;
        writeRos2Aimdk_msgsMsgHandType(writer, part3);
        Ros2Aimdk_msgsMsgHandCommand[] part4 = value.right_hands;
        if(part4 == null || part4.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeRos2Aimdk_msgsMsgHandCommand(writer, part4[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgHandCommandArray readRos2Aimdk_msgsMsgHandCommandArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHandCommandArray value = new Ros2Aimdk_msgsMsgHandCommandArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.left_hand_type = readRos2Aimdk_msgsMsgHandType(reader);
        value.left_hands = new Ros2Aimdk_msgsMsgHandCommand[readCount(reader, 4, 44)];
        for(int i = 0; i < value.left_hands.length; ++i)
            value.left_hands[i] = readRos2Aimdk_msgsMsgHandCommand(reader);
        value.right_hand_type = readRos2Aimdk_msgsMsgHandType(reader);
        value.right_hands = new Ros2Aimdk_msgsMsgHandCommand[readCount(reader, 4, 44)];
        for(int i = 0; i < value.right_hands.length; ++i)
            value.right_hands[i] = readRos2Aimdk_msgsMsgHandCommand(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgHandState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HandState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;
        public String name = "";
        public double position = 0;
        public double velocity = 0;
        public double effort = 0;
        public int state = 0;
        public int faultcode = 0;

        public Ros2Aimdk_msgsMsgHandState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgHandState> CODEC = new Codec<Ros2Aimdk_msgsMsgHandState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgHandState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgHandState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgHandState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgHandState value = readRos2Aimdk_msgsMsgHandState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgHandState(Codecs.Writer writer, Ros2Aimdk_msgsMsgHandState value)
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
        int part4 = value.state;
        writer.integer(part4, 4, true);
        int part5 = value.faultcode;
        writer.integer(part5, 4, true);
    }

    private static Ros2Aimdk_msgsMsgHandState readRos2Aimdk_msgsMsgHandState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHandState value = new Ros2Aimdk_msgsMsgHandState();
        value.name = readText(reader, 128);
        value.position = reader.f64();
        value.velocity = reader.f64();
        value.effort = reader.f64();
        value.state = (int)reader.integer(4, true);
        value.faultcode = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgHandTouchSensorData
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HandTouchSensorData";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;
        public int[] palm_touch_data = new int[36];
        public int[] back_of_hand_touch_data = new int[36];
        public int[] thumb_touch_data = new int[16];
        public int[] index_finger_touch_data = new int[16];
        public int[] middle_finger_touch_data = new int[16];
        public int[] ring_finger_touch_data = new int[16];
        public int[] little_finger_touch_data = new int[16];

        public Ros2Aimdk_msgsMsgHandTouchSensorData()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgHandTouchSensorData> CODEC = new Codec<Ros2Aimdk_msgsMsgHandTouchSensorData>() {
            public byte[] encode(Ros2Aimdk_msgsMsgHandTouchSensorData value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgHandTouchSensorData(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgHandTouchSensorData decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgHandTouchSensorData value = readRos2Aimdk_msgsMsgHandTouchSensorData(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgHandTouchSensorData(Codecs.Writer writer, Ros2Aimdk_msgsMsgHandTouchSensorData value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.palm_touch_data;
        if(part0 == null || part0.length != 36)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 1, false);
        }
        int[] part1 = value.back_of_hand_touch_data;
        if(part1 == null || part1.length != 36)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 1, false);
        }
        int[] part2 = value.thumb_touch_data;
        if(part2 == null || part2.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
        }
        int[] part3 = value.index_finger_touch_data;
        if(part3 == null || part3.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.integer(part3[i], 1, false);
        }
        int[] part4 = value.middle_finger_touch_data;
        if(part4 == null || part4.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.integer(part4[i], 1, false);
        }
        int[] part5 = value.ring_finger_touch_data;
        if(part5 == null || part5.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.integer(part5[i], 1, false);
        }
        int[] part6 = value.little_finger_touch_data;
        if(part6 == null || part6.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part6.length; ++i)
        {
            writer.integer(part6[i], 1, false);
        }
    }

    private static Ros2Aimdk_msgsMsgHandTouchSensorData readRos2Aimdk_msgsMsgHandTouchSensorData(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHandTouchSensorData value = new Ros2Aimdk_msgsMsgHandTouchSensorData();
        value.palm_touch_data = new int[36];
        for(int i = 0; i < value.palm_touch_data.length; ++i)
            value.palm_touch_data[i] = (int)reader.integer(1, false);
        value.back_of_hand_touch_data = new int[36];
        for(int i = 0; i < value.back_of_hand_touch_data.length; ++i)
            value.back_of_hand_touch_data[i] = (int)reader.integer(1, false);
        value.thumb_touch_data = new int[16];
        for(int i = 0; i < value.thumb_touch_data.length; ++i)
            value.thumb_touch_data[i] = (int)reader.integer(1, false);
        value.index_finger_touch_data = new int[16];
        for(int i = 0; i < value.index_finger_touch_data.length; ++i)
            value.index_finger_touch_data[i] = (int)reader.integer(1, false);
        value.middle_finger_touch_data = new int[16];
        for(int i = 0; i < value.middle_finger_touch_data.length; ++i)
            value.middle_finger_touch_data[i] = (int)reader.integer(1, false);
        value.ring_finger_touch_data = new int[16];
        for(int i = 0; i < value.ring_finger_touch_data.length; ++i)
            value.ring_finger_touch_data[i] = (int)reader.integer(1, false);
        value.little_finger_touch_data = new int[16];
        for(int i = 0; i < value.little_finger_touch_data.length; ++i)
            value.little_finger_touch_data[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgHandStateArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HandStateArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c577a4f240ca6f9f26d82d8c8ba056b2877af96ab7dd774262637286c0302944";
        public static final int MIN_WIRE_BYTES = 338, MAX_WIRE_BYTES = 1778;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public Ros2Aimdk_msgsMsgHandType left_hand_type = new Ros2Aimdk_msgsMsgHandType();
        public Ros2Aimdk_msgsMsgHandState[] left_hands = new Ros2Aimdk_msgsMsgHandState[0];
        public Ros2Aimdk_msgsMsgHandTouchSensorData left_touch_sensors = new Ros2Aimdk_msgsMsgHandTouchSensorData();
        public Ros2Aimdk_msgsMsgHandType right_hand_type = new Ros2Aimdk_msgsMsgHandType();
        public Ros2Aimdk_msgsMsgHandState[] right_hands = new Ros2Aimdk_msgsMsgHandState[0];
        public Ros2Aimdk_msgsMsgHandTouchSensorData right_touch_sensors = new Ros2Aimdk_msgsMsgHandTouchSensorData();

        public Ros2Aimdk_msgsMsgHandStateArray()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgHandStateArray> CODEC = new Codec<Ros2Aimdk_msgsMsgHandStateArray>() {
            public byte[] encode(Ros2Aimdk_msgsMsgHandStateArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgHandStateArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgHandStateArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgHandStateArray value = readRos2Aimdk_msgsMsgHandStateArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgHandStateArray(Codecs.Writer writer, Ros2Aimdk_msgsMsgHandStateArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        Ros2Aimdk_msgsMsgHandType part1 = value.left_hand_type;
        writeRos2Aimdk_msgsMsgHandType(writer, part1);
        Ros2Aimdk_msgsMsgHandState[] part2 = value.left_hands;
        if(part2 == null || part2.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Aimdk_msgsMsgHandState(writer, part2[i]);
        }
        Ros2Aimdk_msgsMsgHandTouchSensorData part3 = value.left_touch_sensors;
        writeRos2Aimdk_msgsMsgHandTouchSensorData(writer, part3);
        Ros2Aimdk_msgsMsgHandType part4 = value.right_hand_type;
        writeRos2Aimdk_msgsMsgHandType(writer, part4);
        Ros2Aimdk_msgsMsgHandState[] part5 = value.right_hands;
        if(part5 == null || part5.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writeRos2Aimdk_msgsMsgHandState(writer, part5[i]);
        }
        Ros2Aimdk_msgsMsgHandTouchSensorData part6 = value.right_touch_sensors;
        writeRos2Aimdk_msgsMsgHandTouchSensorData(writer, part6);
    }

    private static Ros2Aimdk_msgsMsgHandStateArray readRos2Aimdk_msgsMsgHandStateArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHandStateArray value = new Ros2Aimdk_msgsMsgHandStateArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.left_hand_type = readRos2Aimdk_msgsMsgHandType(reader);
        value.left_hands = new Ros2Aimdk_msgsMsgHandState[readCount(reader, 4, 36)];
        for(int i = 0; i < value.left_hands.length; ++i)
            value.left_hands[i] = readRos2Aimdk_msgsMsgHandState(reader);
        value.left_touch_sensors = readRos2Aimdk_msgsMsgHandTouchSensorData(reader);
        value.right_hand_type = readRos2Aimdk_msgsMsgHandType(reader);
        value.right_hands = new Ros2Aimdk_msgsMsgHandState[readCount(reader, 4, 36)];
        for(int i = 0; i < value.right_hands.length; ++i)
            value.right_hands[i] = readRos2Aimdk_msgsMsgHandState(reader);
        value.right_touch_sensors = readRos2Aimdk_msgsMsgHandTouchSensorData(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgHdsEventQuery
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HdsEventQuery";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bb210b5a804272bcf8eab7b9bd2217471997a8a4446032ddc0f0f0aca2734d29";
        public static final int MIN_WIRE_BYTES = 38, MAX_WIRE_BYTES = 4390;
        public long start_time = 0;
        public long end_time = 0;
        public long[] diag_codes = new long[0];
        public String[] alert_codes = new String[0];
        public String[] alert_locations = new String[0];
        public int state = 0;
        public boolean order_desc = false;
        public long offset = 0;
        public long limit = 0;

        public Ros2Aimdk_msgsMsgHdsEventQuery()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgHdsEventQuery> CODEC = new Codec<Ros2Aimdk_msgsMsgHdsEventQuery>() {
            public byte[] encode(Ros2Aimdk_msgsMsgHdsEventQuery value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgHdsEventQuery(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgHdsEventQuery decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgHdsEventQuery value = readRos2Aimdk_msgsMsgHdsEventQuery(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgHdsEventQuery(Codecs.Writer writer, Ros2Aimdk_msgsMsgHdsEventQuery value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.start_time;
        writer.integer(part0, 8, false);
        long part1 = value.end_time;
        writer.integer(part1, 8, false);
        long[] part2 = value.diag_codes;
        if(part2 == null || part2.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 8, false);
        }
        String[] part3 = value.alert_codes;
        if(part3 == null || part3.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeText(writer, part3[i], 128);
        }
        String[] part4 = value.alert_locations;
        if(part4 == null || part4.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeText(writer, part4[i], 128);
        }
        int part5 = value.state;
        writer.integer(part5, 1, false);
        boolean part6 = value.order_desc;
        writer.integer(part6 ? 1 : 0, 1, false);
        long part7 = value.offset;
        writer.integer(part7, 4, false);
        long part8 = value.limit;
        writer.integer(part8, 4, false);
    }

    private static Ros2Aimdk_msgsMsgHdsEventQuery readRos2Aimdk_msgsMsgHdsEventQuery(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHdsEventQuery value = new Ros2Aimdk_msgsMsgHdsEventQuery();
        value.start_time = reader.integer(8, false);
        value.end_time = reader.integer(8, false);
        value.diag_codes = new long[readCount(reader, 16, 8)];
        for(int i = 0; i < value.diag_codes.length; ++i)
            value.diag_codes[i] = reader.integer(8, false);
        value.alert_codes = new String[readCount(reader, 16, 4)];
        for(int i = 0; i < value.alert_codes.length; ++i)
            value.alert_codes[i] = readText(reader, 128);
        value.alert_locations = new String[readCount(reader, 16, 4)];
        for(int i = 0; i < value.alert_locations.length; ++i)
            value.alert_locations[i] = readText(reader, 128);
        value.state = (int)reader.integer(1, false);
        value.order_desc = readBool(reader);
        value.offset = reader.integer(4, false);
        value.limit = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgHdsEventRecord
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HdsEventRecord";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7fe68df37f67144d462e2c9e1a126dc539d5f7156c923a879d36215145445de4";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 313;
        public long id = 0;
        public long diag_code = 0;
        public String alert_code = "";
        public String alert_location = "";
        public long first_timestamp = 0;
        public long last_timestamp = 0;
        public long recover_timestamp = 0;
        public long duration_ns = 0;
        public boolean recovered = false;

        public Ros2Aimdk_msgsMsgHdsEventRecord()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgHdsEventRecord> CODEC = new Codec<Ros2Aimdk_msgsMsgHdsEventRecord>() {
            public byte[] encode(Ros2Aimdk_msgsMsgHdsEventRecord value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgHdsEventRecord(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgHdsEventRecord decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgHdsEventRecord value = readRos2Aimdk_msgsMsgHdsEventRecord(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgHdsEventRecord(Codecs.Writer writer, Ros2Aimdk_msgsMsgHdsEventRecord value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.id;
        writer.integer(part0, 8, false);
        long part1 = value.diag_code;
        writer.integer(part1, 8, false);
        String part2 = value.alert_code;
        writeText(writer, part2, 128);
        String part3 = value.alert_location;
        writeText(writer, part3, 128);
        long part4 = value.first_timestamp;
        writer.integer(part4, 8, false);
        long part5 = value.last_timestamp;
        writer.integer(part5, 8, false);
        long part6 = value.recover_timestamp;
        writer.integer(part6, 8, false);
        long part7 = value.duration_ns;
        writer.integer(part7, 8, false);
        boolean part8 = value.recovered;
        writer.integer(part8 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgHdsEventRecord readRos2Aimdk_msgsMsgHdsEventRecord(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHdsEventRecord value = new Ros2Aimdk_msgsMsgHdsEventRecord();
        value.id = reader.integer(8, false);
        value.diag_code = reader.integer(8, false);
        value.alert_code = readText(reader, 128);
        value.alert_location = readText(reader, 128);
        value.first_timestamp = reader.integer(8, false);
        value.last_timestamp = reader.integer(8, false);
        value.recover_timestamp = reader.integer(8, false);
        value.duration_ns = reader.integer(8, false);
        value.recovered = readBool(reader);
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

    public static final class Ros2Aimdk_msgsMsgMcAction
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McAction";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgMcAction()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcAction> CODEC = new Codec<Ros2Aimdk_msgsMsgMcAction>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcAction value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcAction(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcAction decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcAction value = readRos2Aimdk_msgsMsgMcAction(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcAction(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcAction value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcAction readRos2Aimdk_msgsMsgMcAction(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcAction value = new Ros2Aimdk_msgsMsgMcAction();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcActionCommand
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McActionCommand";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public Ros2Aimdk_msgsMsgMcAction action = new Ros2Aimdk_msgsMsgMcAction();
        public String action_desc = "";

        public Ros2Aimdk_msgsMsgMcActionCommand()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcActionCommand> CODEC = new Codec<Ros2Aimdk_msgsMsgMcActionCommand>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcActionCommand value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcActionCommand(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcActionCommand decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcActionCommand value = readRos2Aimdk_msgsMsgMcActionCommand(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcActionCommand(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcActionCommand value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMcAction part0 = value.action;
        writeRos2Aimdk_msgsMsgMcAction(writer, part0);
        String part1 = value.action_desc;
        writeText(writer, part1, 128);
    }

    private static Ros2Aimdk_msgsMsgMcActionCommand readRos2Aimdk_msgsMsgMcActionCommand(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcActionCommand value = new Ros2Aimdk_msgsMsgMcActionCommand();
        value.action = readRos2Aimdk_msgsMsgMcAction(reader);
        value.action_desc = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcActionStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McActionStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgMcActionStatus()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcActionStatus> CODEC = new Codec<Ros2Aimdk_msgsMsgMcActionStatus>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcActionStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcActionStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcActionStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcActionStatus value = readRos2Aimdk_msgsMsgMcActionStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcActionStatus(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcActionStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcActionStatus readRos2Aimdk_msgsMsgMcActionStatus(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcActionStatus value = new Ros2Aimdk_msgsMsgMcActionStatus();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcActionInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McActionInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public Ros2Aimdk_msgsMsgMcAction current_action = new Ros2Aimdk_msgsMsgMcAction();
        public String action_desc = "";
        public Ros2Aimdk_msgsMsgMcActionStatus status = new Ros2Aimdk_msgsMsgMcActionStatus();

        public Ros2Aimdk_msgsMsgMcActionInfo()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcActionInfo> CODEC = new Codec<Ros2Aimdk_msgsMsgMcActionInfo>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcActionInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcActionInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcActionInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcActionInfo value = readRos2Aimdk_msgsMsgMcActionInfo(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcActionInfo(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcActionInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMcAction part0 = value.current_action;
        writeRos2Aimdk_msgsMsgMcAction(writer, part0);
        String part1 = value.action_desc;
        writeText(writer, part1, 128);
        Ros2Aimdk_msgsMsgMcActionStatus part2 = value.status;
        writeRos2Aimdk_msgsMsgMcActionStatus(writer, part2);
    }

    private static Ros2Aimdk_msgsMsgMcActionInfo readRos2Aimdk_msgsMsgMcActionInfo(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcActionInfo value = new Ros2Aimdk_msgsMsgMcActionInfo();
        value.current_action = readRos2Aimdk_msgsMsgMcAction(reader);
        value.action_desc = readText(reader, 128);
        value.status = readRos2Aimdk_msgsMsgMcActionStatus(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcBodyPoseStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McBodyPoseStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_380976855f8c965a5c79a3688a1a2ce654dff9869441d061b464bda582fc7538";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgMcBodyPoseStatus()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcBodyPoseStatus> CODEC = new Codec<Ros2Aimdk_msgsMsgMcBodyPoseStatus>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcBodyPoseStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcBodyPoseStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcBodyPoseStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcBodyPoseStatus value = readRos2Aimdk_msgsMsgMcBodyPoseStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcBodyPoseStatus(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcBodyPoseStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcBodyPoseStatus readRos2Aimdk_msgsMsgMcBodyPoseStatus(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcBodyPoseStatus value = new Ros2Aimdk_msgsMsgMcBodyPoseStatus();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcInputSource
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McInputSource";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public String name = "";
        public int priority = 0;
        public int timeout = 0;

        public Ros2Aimdk_msgsMsgMcInputSource()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcInputSource> CODEC = new Codec<Ros2Aimdk_msgsMsgMcInputSource>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcInputSource value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcInputSource(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcInputSource decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcInputSource value = readRos2Aimdk_msgsMsgMcInputSource(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcInputSource(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcInputSource value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 128);
        int part1 = value.priority;
        writer.integer(part1, 4, true);
        int part2 = value.timeout;
        writer.integer(part2, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcInputSource readRos2Aimdk_msgsMsgMcInputSource(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcInputSource value = new Ros2Aimdk_msgsMsgMcInputSource();
        value.name = readText(reader, 128);
        value.priority = (int)reader.integer(4, true);
        value.timeout = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcHandStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McHandStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7be307301e74f7c3db44fa94093233d8ac8f7f463f1904bee8748bb6fe29c462";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgMcHandStatus()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcHandStatus> CODEC = new Codec<Ros2Aimdk_msgsMsgMcHandStatus>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcHandStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcHandStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcHandStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcHandStatus value = readRos2Aimdk_msgsMsgMcHandStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcHandStatus(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcHandStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcHandStatus readRos2Aimdk_msgsMsgMcHandStatus(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcHandStatus value = new Ros2Aimdk_msgsMsgMcHandStatus();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcRuntimeModel
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McRuntimeModel";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6a9196eaf82e74b282dfde8e9d7bf2f21712aeb537b0a6c8783445e5941254b4";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        public boolean waist_status = false;
        public Ros2Aimdk_msgsMsgMcHandStatus left_hand_status = new Ros2Aimdk_msgsMsgMcHandStatus();
        public Ros2Aimdk_msgsMsgMcHandStatus right_hand_status = new Ros2Aimdk_msgsMsgMcHandStatus();

        public Ros2Aimdk_msgsMsgMcRuntimeModel()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcRuntimeModel> CODEC = new Codec<Ros2Aimdk_msgsMsgMcRuntimeModel>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcRuntimeModel value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcRuntimeModel(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcRuntimeModel decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcRuntimeModel value = readRos2Aimdk_msgsMsgMcRuntimeModel(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcRuntimeModel(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcRuntimeModel value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.waist_status;
        writer.integer(part0 ? 1 : 0, 1, false);
        Ros2Aimdk_msgsMsgMcHandStatus part1 = value.left_hand_status;
        writeRos2Aimdk_msgsMsgMcHandStatus(writer, part1);
        Ros2Aimdk_msgsMsgMcHandStatus part2 = value.right_hand_status;
        writeRos2Aimdk_msgsMsgMcHandStatus(writer, part2);
    }

    private static Ros2Aimdk_msgsMsgMcRuntimeModel readRos2Aimdk_msgsMsgMcRuntimeModel(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcRuntimeModel value = new Ros2Aimdk_msgsMsgMcRuntimeModel();
        value.waist_status = readBool(reader);
        value.left_hand_status = readRos2Aimdk_msgsMsgMcHandStatus(reader);
        value.right_hand_status = readRos2Aimdk_msgsMsgMcHandStatus(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcPlayerState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McPlayerState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a56c1b72e364a1b70243f6280dfea28a63f8533118b491ea67e968c27614a412";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public long value = 0;

        public Ros2Aimdk_msgsMsgMcPlayerState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcPlayerState> CODEC = new Codec<Ros2Aimdk_msgsMsgMcPlayerState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcPlayerState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcPlayerState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcPlayerState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcPlayerState value = readRos2Aimdk_msgsMsgMcPlayerState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcPlayerState(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcPlayerState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.value;
        writer.integer(part0, 4, false);
    }

    private static Ros2Aimdk_msgsMsgMcPlayerState readRos2Aimdk_msgsMsgMcPlayerState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcPlayerState value = new Ros2Aimdk_msgsMsgMcPlayerState();
        value.value = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcControlArea
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McControlArea";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgMcControlArea()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcControlArea> CODEC = new Codec<Ros2Aimdk_msgsMsgMcControlArea>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcControlArea value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcControlArea(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcControlArea decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcControlArea value = readRos2Aimdk_msgsMsgMcControlArea(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcControlArea(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcControlArea value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcControlArea readRos2Aimdk_msgsMsgMcControlArea(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcControlArea value = new Ros2Aimdk_msgsMsgMcControlArea();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcMotionType
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McMotionType";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_85a53e7c11c40212c3a2972b1c36ac4bfe9cc7861985b5966459c71fbc80a9da";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgMcMotionType()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcMotionType> CODEC = new Codec<Ros2Aimdk_msgsMsgMcMotionType>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcMotionType value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcMotionType(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcMotionType decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcMotionType value = readRos2Aimdk_msgsMsgMcMotionType(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcMotionType(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcMotionType value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcMotionType readRos2Aimdk_msgsMsgMcMotionType(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcMotionType value = new Ros2Aimdk_msgsMsgMcMotionType();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcMotionStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McMotionStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4f80c178589dc4068c65c3243dbb4bd954bbcd81f1a2f0f8f844c910dea531ea";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;
        public Ros2Aimdk_msgsMsgMcPlayerState player_state = new Ros2Aimdk_msgsMsgMcPlayerState();
        public Ros2Aimdk_msgsMsgMcControlArea control_area = new Ros2Aimdk_msgsMsgMcControlArea();
        public String motion = "";
        public Ros2Aimdk_msgsMsgMcMotionType type = new Ros2Aimdk_msgsMsgMcMotionType();

        public Ros2Aimdk_msgsMsgMcMotionStatus()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcMotionStatus> CODEC = new Codec<Ros2Aimdk_msgsMsgMcMotionStatus>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcMotionStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcMotionStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcMotionStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcMotionStatus value = readRos2Aimdk_msgsMsgMcMotionStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcMotionStatus(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcMotionStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMcPlayerState part0 = value.player_state;
        writeRos2Aimdk_msgsMsgMcPlayerState(writer, part0);
        Ros2Aimdk_msgsMsgMcControlArea part1 = value.control_area;
        writeRos2Aimdk_msgsMsgMcControlArea(writer, part1);
        String part2 = value.motion;
        writeText(writer, part2, 128);
        Ros2Aimdk_msgsMsgMcMotionType part3 = value.type;
        writeRos2Aimdk_msgsMsgMcMotionType(writer, part3);
    }

    private static Ros2Aimdk_msgsMsgMcMotionStatus readRos2Aimdk_msgsMsgMcMotionStatus(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcMotionStatus value = new Ros2Aimdk_msgsMsgMcMotionStatus();
        value.player_state = readRos2Aimdk_msgsMsgMcPlayerState(reader);
        value.control_area = readRos2Aimdk_msgsMsgMcControlArea(reader);
        value.motion = readText(reader, 128);
        value.type = readRos2Aimdk_msgsMsgMcMotionType(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcServoStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McServoStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_824f5944e9dce34f459ad368cfc37e78e39a0589ff5f278417064773720b1ffa";
        public static final int MIN_WIRE_BYTES = 53, MAX_WIRE_BYTES = 53;
        public boolean squat_enable = false;
        public double squat_offset = 0;
        public long squat_limit = 0;
        public double head_yaw_offset = 0;
        public double head_pitch_offset = 0;
        public double waist_yaw_offset = 0;
        public double waist_pitch_offset = 0;
        public double waist_roll_offset = 0;

        public Ros2Aimdk_msgsMsgMcServoStatus()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcServoStatus> CODEC = new Codec<Ros2Aimdk_msgsMsgMcServoStatus>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcServoStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcServoStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcServoStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcServoStatus value = readRos2Aimdk_msgsMsgMcServoStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcServoStatus(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcServoStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.squat_enable;
        writer.integer(part0 ? 1 : 0, 1, false);
        double part1 = value.squat_offset;
        writer.f64(part1);
        long part2 = value.squat_limit;
        writer.integer(part2, 4, false);
        double part3 = value.head_yaw_offset;
        writer.f64(part3);
        double part4 = value.head_pitch_offset;
        writer.f64(part4);
        double part5 = value.waist_yaw_offset;
        writer.f64(part5);
        double part6 = value.waist_pitch_offset;
        writer.f64(part6);
        double part7 = value.waist_roll_offset;
        writer.f64(part7);
    }

    private static Ros2Aimdk_msgsMsgMcServoStatus readRos2Aimdk_msgsMsgMcServoStatus(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcServoStatus value = new Ros2Aimdk_msgsMsgMcServoStatus();
        value.squat_enable = readBool(reader);
        value.squat_offset = reader.f64();
        value.squat_limit = reader.integer(4, false);
        value.head_yaw_offset = reader.f64();
        value.head_pitch_offset = reader.f64();
        value.waist_yaw_offset = reader.f64();
        value.waist_pitch_offset = reader.f64();
        value.waist_roll_offset = reader.f64();
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcFsmState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McFsmState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2a3f0e37d5f835c8f80adc07e09bc9a162e869f662dc3ce440946b9e0ca9b047";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public long current_state = 0;

        public Ros2Aimdk_msgsMsgMcFsmState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcFsmState> CODEC = new Codec<Ros2Aimdk_msgsMsgMcFsmState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcFsmState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcFsmState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcFsmState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcFsmState value = readRos2Aimdk_msgsMsgMcFsmState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcFsmState(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcFsmState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.current_state;
        writer.integer(part0, 4, false);
    }

    private static Ros2Aimdk_msgsMsgMcFsmState readRos2Aimdk_msgsMsgMcFsmState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcFsmState value = new Ros2Aimdk_msgsMsgMcFsmState();
        value.current_state = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcLocomotionSpeedMode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McLocomotionSpeedMode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_52cf8b8e1e9a931076f9ed719deaf02d4b0c15647ff2ab8109579fb29d5fc6d6";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgMcLocomotionSpeedMode()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcLocomotionSpeedMode> CODEC = new Codec<Ros2Aimdk_msgsMsgMcLocomotionSpeedMode>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcLocomotionSpeedMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcLocomotionSpeedMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcLocomotionSpeedMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcLocomotionSpeedMode value = readRos2Aimdk_msgsMsgMcLocomotionSpeedMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcLocomotionSpeedMode(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcLocomotionSpeedMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcLocomotionSpeedMode readRos2Aimdk_msgsMsgMcLocomotionSpeedMode(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcLocomotionSpeedMode value = new Ros2Aimdk_msgsMsgMcLocomotionSpeedMode();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McLocomotionSpeedBounds";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9ba7b1992f315906d05b9f3850d31cdf1d5c422cbc3224a45b93c76c9368804d";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public double min_value = 0;
        public double max_value = 0;

        public Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds> CODEC = new Codec<Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds value = readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.min_value;
        writer.f64(part0);
        double part1 = value.max_value;
        writer.f64(part1);
    }

    private static Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds value = new Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();
        value.min_value = reader.f64();
        value.max_value = reader.f64();
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McLocomotionSpeedStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_91837c9a2783f2f2cdc09c1efc8d96a5be0bca7e43bf513a3d47162222fc8e79";
        public static final int MIN_WIRE_BYTES = 52, MAX_WIRE_BYTES = 52;
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedMode speed_mode = new Ros2Aimdk_msgsMsgMcLocomotionSpeedMode();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds forward_bounds = new Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds lateral_bounds = new Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds angular_bounds = new Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();

        public Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus> CODEC = new Codec<Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus value = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMcLocomotionSpeedMode part0 = value.speed_mode;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedMode(writer, part0);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds part1 = value.forward_bounds;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(writer, part1);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds part2 = value.lateral_bounds;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(writer, part2);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds part3 = value.angular_bounds;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(writer, part3);
    }

    private static Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus value = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        value.speed_mode = readRos2Aimdk_msgsMsgMcLocomotionSpeedMode(reader);
        value.forward_bounds = readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(reader);
        value.lateral_bounds = readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(reader);
        value.angular_bounds = readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcCommonState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McCommonState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ae0a72b7040926755e1b0542d34b6e928bedc20643ad5af9704ce86648c25558";
        public static final int MIN_WIRE_BYTES = 186, MAX_WIRE_BYTES = 698;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public Ros2Aimdk_msgsMsgMcInputSource input_source = new Ros2Aimdk_msgsMsgMcInputSource();
        public Ros2Aimdk_msgsMsgMcActionInfo action_info = new Ros2Aimdk_msgsMsgMcActionInfo();
        public Ros2Aimdk_msgsMsgMcRuntimeModel runtime_model = new Ros2Aimdk_msgsMsgMcRuntimeModel();
        public Ros2Aimdk_msgsMsgMcMotionStatus motion_status = new Ros2Aimdk_msgsMsgMcMotionStatus();
        public Ros2Aimdk_msgsMsgMcServoStatus servo_status = new Ros2Aimdk_msgsMsgMcServoStatus();
        public Ros2Aimdk_msgsMsgMcFsmState fsm_state = new Ros2Aimdk_msgsMsgMcFsmState();
        public Ros2Aimdk_msgsMsgMcBodyPoseStatus body_status = new Ros2Aimdk_msgsMsgMcBodyPoseStatus();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus speed_status = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();

        public Ros2Aimdk_msgsMsgMcCommonState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcCommonState> CODEC = new Codec<Ros2Aimdk_msgsMsgMcCommonState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcCommonState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcCommonState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcCommonState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcCommonState value = readRos2Aimdk_msgsMsgMcCommonState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcCommonState(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcCommonState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        Ros2Aimdk_msgsMsgMcInputSource part1 = value.input_source;
        writeRos2Aimdk_msgsMsgMcInputSource(writer, part1);
        Ros2Aimdk_msgsMsgMcActionInfo part2 = value.action_info;
        writeRos2Aimdk_msgsMsgMcActionInfo(writer, part2);
        Ros2Aimdk_msgsMsgMcRuntimeModel part3 = value.runtime_model;
        writeRos2Aimdk_msgsMsgMcRuntimeModel(writer, part3);
        Ros2Aimdk_msgsMsgMcMotionStatus part4 = value.motion_status;
        writeRos2Aimdk_msgsMsgMcMotionStatus(writer, part4);
        Ros2Aimdk_msgsMsgMcServoStatus part5 = value.servo_status;
        writeRos2Aimdk_msgsMsgMcServoStatus(writer, part5);
        Ros2Aimdk_msgsMsgMcFsmState part6 = value.fsm_state;
        writeRos2Aimdk_msgsMsgMcFsmState(writer, part6);
        Ros2Aimdk_msgsMsgMcBodyPoseStatus part7 = value.body_status;
        writeRos2Aimdk_msgsMsgMcBodyPoseStatus(writer, part7);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part8 = value.speed_status;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part8);
    }

    private static Ros2Aimdk_msgsMsgMcCommonState readRos2Aimdk_msgsMsgMcCommonState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcCommonState value = new Ros2Aimdk_msgsMsgMcCommonState();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.input_source = readRos2Aimdk_msgsMsgMcInputSource(reader);
        value.action_info = readRos2Aimdk_msgsMsgMcActionInfo(reader);
        value.runtime_model = readRos2Aimdk_msgsMsgMcRuntimeModel(reader);
        value.motion_status = readRos2Aimdk_msgsMsgMcMotionStatus(reader);
        value.servo_status = readRos2Aimdk_msgsMsgMcServoStatus(reader);
        value.fsm_state = readRos2Aimdk_msgsMsgMcFsmState(reader);
        value.body_status = readRos2Aimdk_msgsMsgMcBodyPoseStatus(reader);
        value.speed_status = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcInputAction
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McInputAction";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgMcInputAction()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcInputAction> CODEC = new Codec<Ros2Aimdk_msgsMsgMcInputAction>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcInputAction value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcInputAction(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcInputAction decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcInputAction value = readRos2Aimdk_msgsMsgMcInputAction(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcInputAction(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcInputAction value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcInputAction readRos2Aimdk_msgsMsgMcInputAction(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcInputAction value = new Ros2Aimdk_msgsMsgMcInputAction();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcLocomotionVelocity
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McLocomotionVelocity";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00";
        public static final int MIN_WIRE_BYTES = 52, MAX_WIRE_BYTES = 308;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public String source = "";
        public double forward_velocity = 0;
        public double lateral_velocity = 0;
        public double angular_velocity = 0;

        public Ros2Aimdk_msgsMsgMcLocomotionVelocity()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcLocomotionVelocity> CODEC = new Codec<Ros2Aimdk_msgsMsgMcLocomotionVelocity>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcLocomotionVelocity value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcLocomotionVelocity(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcLocomotionVelocity decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcLocomotionVelocity value = readRos2Aimdk_msgsMsgMcLocomotionVelocity(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcLocomotionVelocity(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcLocomotionVelocity value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        String part1 = value.source;
        writeText(writer, part1, 128);
        double part2 = value.forward_velocity;
        writer.f64(part2);
        double part3 = value.lateral_velocity;
        writer.f64(part3);
        double part4 = value.angular_velocity;
        writer.f64(part4);
    }

    private static Ros2Aimdk_msgsMsgMcLocomotionVelocity readRos2Aimdk_msgsMsgMcLocomotionVelocity(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcLocomotionVelocity value = new Ros2Aimdk_msgsMsgMcLocomotionVelocity();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.source = readText(reader, 128);
        value.forward_velocity = reader.f64();
        value.lateral_velocity = reader.f64();
        value.angular_velocity = reader.f64();
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgMcPresetMotion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/McPresetMotion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros2Aimdk_msgsMsgMcPresetMotion()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgMcPresetMotion> CODEC = new Codec<Ros2Aimdk_msgsMsgMcPresetMotion>() {
            public byte[] encode(Ros2Aimdk_msgsMsgMcPresetMotion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgMcPresetMotion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgMcPresetMotion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgMcPresetMotion value = readRos2Aimdk_msgsMsgMcPresetMotion(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgMcPresetMotion(Codecs.Writer writer, Ros2Aimdk_msgsMsgMcPresetMotion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros2Aimdk_msgsMsgMcPresetMotion readRos2Aimdk_msgsMsgMcPresetMotion(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgMcPresetMotion value = new Ros2Aimdk_msgsMsgMcPresetMotion();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Geometry_msgsMsgPose2D
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Pose2D";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        public double x = 0;
        public double y = 0;
        public double theta = 0;

        public Ros2Geometry_msgsMsgPose2D()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPose2D> CODEC = new Codec<Ros2Geometry_msgsMsgPose2D>() {
            public byte[] encode(Ros2Geometry_msgsMsgPose2D value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPose2D(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPose2D decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPose2D value = readRos2Geometry_msgsMsgPose2D(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPose2D(Codecs.Writer writer, Ros2Geometry_msgsMsgPose2D value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.x;
        writer.f64(part0);
        double part1 = value.y;
        writer.f64(part1);
        double part2 = value.theta;
        writer.f64(part2);
    }

    private static Ros2Geometry_msgsMsgPose2D readRos2Geometry_msgsMsgPose2D(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPose2D value = new Ros2Geometry_msgsMsgPose2D();
        value.x = reader.f64();
        value.y = reader.f64();
        value.theta = reader.f64();
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgNaviPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/NaviPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;
        public int point_id = 0;
        public Ros2Geometry_msgsMsgPose2D navi_point = new Ros2Geometry_msgsMsgPose2D();

        public Ros2Aimdk_msgsMsgNaviPoint()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgNaviPoint> CODEC = new Codec<Ros2Aimdk_msgsMsgNaviPoint>() {
            public byte[] encode(Ros2Aimdk_msgsMsgNaviPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgNaviPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgNaviPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgNaviPoint value = readRos2Aimdk_msgsMsgNaviPoint(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgNaviPoint(Codecs.Writer writer, Ros2Aimdk_msgsMsgNaviPoint value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.point_id;
        writer.integer(part0, 4, true);
        Ros2Geometry_msgsMsgPose2D part1 = value.navi_point;
        writeRos2Geometry_msgsMsgPose2D(writer, part1);
    }

    private static Ros2Aimdk_msgsMsgNaviPoint readRos2Aimdk_msgsMsgNaviPoint(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgNaviPoint value = new Ros2Aimdk_msgsMsgNaviPoint();
        value.point_id = (int)reader.integer(4, true);
        value.navi_point = readRos2Geometry_msgsMsgPose2D(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPath
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/Path";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 104;
        public int path_id = 0;
        public Ros2Geometry_msgsMsgPose2D[] points = new Ros2Geometry_msgsMsgPose2D[0];

        public Ros2Aimdk_msgsMsgPath()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPath> CODEC = new Codec<Ros2Aimdk_msgsMsgPath>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPath value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPath(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPath decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPath value = readRos2Aimdk_msgsMsgPath(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPath(Codecs.Writer writer, Ros2Aimdk_msgsMsgPath value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.path_id;
        writer.integer(part0, 4, true);
        Ros2Geometry_msgsMsgPose2D[] part1 = value.points;
        if(part1 == null || part1.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Geometry_msgsMsgPose2D(writer, part1[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgPath readRos2Aimdk_msgsMsgPath(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPath value = new Ros2Aimdk_msgsMsgPath();
        value.path_id = (int)reader.integer(4, true);
        value.points = new Ros2Geometry_msgsMsgPose2D[readCount(reader, 4, 24)];
        for(int i = 0; i < value.points.length; ++i)
            value.points[i] = readRos2Geometry_msgsMsgPose2D(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPilotState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PilotState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8d2421a2a13d52ea4ab7af2a6a9e57c145c4b7fb10e59701fcb2f58c421fe31a";
        public static final int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 421;
        public String target_name = "";
        public long target_id = 0;
        public String intro_task_name = "";
        public long intro_task_id = 0;
        public String map_name = "";
        public long map_id = 0;
        public int pilot_state = 0;

        public Ros2Aimdk_msgsMsgPilotState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPilotState> CODEC = new Codec<Ros2Aimdk_msgsMsgPilotState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPilotState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPilotState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPilotState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPilotState value = readRos2Aimdk_msgsMsgPilotState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPilotState(Codecs.Writer writer, Ros2Aimdk_msgsMsgPilotState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.target_name;
        writeText(writer, part0, 128);
        long part1 = value.target_id;
        writer.integer(part1, 8, false);
        String part2 = value.intro_task_name;
        writeText(writer, part2, 128);
        long part3 = value.intro_task_id;
        writer.integer(part3, 8, false);
        String part4 = value.map_name;
        writeText(writer, part4, 128);
        long part5 = value.map_id;
        writer.integer(part5, 8, false);
        int part6 = value.pilot_state;
        writer.integer(part6, 1, false);
    }

    private static Ros2Aimdk_msgsMsgPilotState readRos2Aimdk_msgsMsgPilotState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPilotState value = new Ros2Aimdk_msgsMsgPilotState();
        value.target_name = readText(reader, 128);
        value.target_id = reader.integer(8, false);
        value.intro_task_name = readText(reader, 128);
        value.intro_task_id = reader.integer(8, false);
        value.map_name = readText(reader, 128);
        value.map_id = reader.integer(8, false);
        value.pilot_state = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPlayStateType
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PlayStateType";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public int value = 0;

        public Ros2Aimdk_msgsMsgPlayStateType()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPlayStateType> CODEC = new Codec<Ros2Aimdk_msgsMsgPlayStateType>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPlayStateType value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPlayStateType(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPlayStateType decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPlayStateType value = readRos2Aimdk_msgsMsgPlayStateType(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPlayStateType(Codecs.Writer writer, Ros2Aimdk_msgsMsgPlayStateType value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgPlayStateType readRos2Aimdk_msgsMsgPlayStateType(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPlayStateType value = new Ros2Aimdk_msgsMsgPlayStateType();
        value.value = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPlayStateChange
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PlayStateChange";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 133;
        public String pkg_name = "";
        public Ros2Aimdk_msgsMsgPlayStateType state = new Ros2Aimdk_msgsMsgPlayStateType();

        public Ros2Aimdk_msgsMsgPlayStateChange()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPlayStateChange> CODEC = new Codec<Ros2Aimdk_msgsMsgPlayStateChange>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPlayStateChange value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPlayStateChange(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPlayStateChange decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPlayStateChange value = readRos2Aimdk_msgsMsgPlayStateChange(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPlayStateChange(Codecs.Writer writer, Ros2Aimdk_msgsMsgPlayStateChange value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.pkg_name;
        writeText(writer, part0, 128);
        Ros2Aimdk_msgsMsgPlayStateType part1 = value.state;
        writeRos2Aimdk_msgsMsgPlayStateType(writer, part1);
    }

    private static Ros2Aimdk_msgsMsgPlayStateChange readRos2Aimdk_msgsMsgPlayStateChange(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPlayStateChange value = new Ros2Aimdk_msgsMsgPlayStateChange();
        value.pkg_name = readText(reader, 128);
        value.state = readRos2Aimdk_msgsMsgPlayStateType(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgTtsPriorityLevel
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/TtsPriorityLevel";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public int value = 0;

        public Ros2Aimdk_msgsMsgTtsPriorityLevel()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgTtsPriorityLevel> CODEC = new Codec<Ros2Aimdk_msgsMsgTtsPriorityLevel>() {
            public byte[] encode(Ros2Aimdk_msgsMsgTtsPriorityLevel value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgTtsPriorityLevel(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgTtsPriorityLevel decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgTtsPriorityLevel value = readRos2Aimdk_msgsMsgTtsPriorityLevel(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgTtsPriorityLevel(Codecs.Writer writer, Ros2Aimdk_msgsMsgTtsPriorityLevel value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgTtsPriorityLevel readRos2Aimdk_msgsMsgTtsPriorityLevel(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgTtsPriorityLevel value = new Ros2Aimdk_msgsMsgTtsPriorityLevel();
        value.value = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPlayTtsRequest
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PlayTtsRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 402;
        public String text = "";
        public Ros2Aimdk_msgsMsgTtsPriorityLevel priority_level = new Ros2Aimdk_msgsMsgTtsPriorityLevel();
        public long priority_weight = 0;
        public String domain = "";
        public String trace_id = "";
        public boolean is_interrupted = false;

        public Ros2Aimdk_msgsMsgPlayTtsRequest()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPlayTtsRequest> CODEC = new Codec<Ros2Aimdk_msgsMsgPlayTtsRequest>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPlayTtsRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPlayTtsRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPlayTtsRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPlayTtsRequest value = readRos2Aimdk_msgsMsgPlayTtsRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPlayTtsRequest(Codecs.Writer writer, Ros2Aimdk_msgsMsgPlayTtsRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.text;
        writeText(writer, part0, 128);
        Ros2Aimdk_msgsMsgTtsPriorityLevel part1 = value.priority_level;
        writeRos2Aimdk_msgsMsgTtsPriorityLevel(writer, part1);
        long part2 = value.priority_weight;
        writer.integer(part2, 4, false);
        String part3 = value.domain;
        writeText(writer, part3, 128);
        String part4 = value.trace_id;
        writeText(writer, part4, 128);
        boolean part5 = value.is_interrupted;
        writer.integer(part5 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgPlayTtsRequest readRos2Aimdk_msgsMsgPlayTtsRequest(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPlayTtsRequest value = new Ros2Aimdk_msgsMsgPlayTtsRequest();
        value.text = readText(reader, 128);
        value.priority_level = readRos2Aimdk_msgsMsgTtsPriorityLevel(reader);
        value.priority_weight = reader.integer(4, false);
        value.domain = readText(reader, 128);
        value.trace_id = readText(reader, 128);
        value.is_interrupted = readBool(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPlayTtsResponse
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PlayTtsResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_859aaa26ebee477f028cd7836e64aeaaabdafbd8ea67fc4b563bc145e4a55dc8";
        public static final int MIN_WIRE_BYTES = 27, MAX_WIRE_BYTES = 539;
        public String text = "";
        public Ros2Aimdk_msgsMsgTtsPriorityLevel priority_level = new Ros2Aimdk_msgsMsgTtsPriorityLevel();
        public long priority_weight = 0;
        public String domain = "";
        public String trace_id = "";
        public boolean is_success = false;
        public String error_message = "";
        public long estimated_duration = 0;
        public int error_code = 0;

        public Ros2Aimdk_msgsMsgPlayTtsResponse()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPlayTtsResponse> CODEC = new Codec<Ros2Aimdk_msgsMsgPlayTtsResponse>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPlayTtsResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPlayTtsResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPlayTtsResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPlayTtsResponse value = readRos2Aimdk_msgsMsgPlayTtsResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPlayTtsResponse(Codecs.Writer writer, Ros2Aimdk_msgsMsgPlayTtsResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.text;
        writeText(writer, part0, 128);
        Ros2Aimdk_msgsMsgTtsPriorityLevel part1 = value.priority_level;
        writeRos2Aimdk_msgsMsgTtsPriorityLevel(writer, part1);
        long part2 = value.priority_weight;
        writer.integer(part2, 4, false);
        String part3 = value.domain;
        writeText(writer, part3, 128);
        String part4 = value.trace_id;
        writeText(writer, part4, 128);
        boolean part5 = value.is_success;
        writer.integer(part5 ? 1 : 0, 1, false);
        String part6 = value.error_message;
        writeText(writer, part6, 128);
        long part7 = value.estimated_duration;
        writer.integer(part7, 4, false);
        int part8 = value.error_code;
        writer.integer(part8, 1, false);
    }

    private static Ros2Aimdk_msgsMsgPlayTtsResponse readRos2Aimdk_msgsMsgPlayTtsResponse(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPlayTtsResponse value = new Ros2Aimdk_msgsMsgPlayTtsResponse();
        value.text = readText(reader, 128);
        value.priority_level = readRos2Aimdk_msgsMsgTtsPriorityLevel(reader);
        value.priority_weight = reader.integer(4, false);
        value.domain = readText(reader, 128);
        value.trace_id = readText(reader, 128);
        value.is_success = readBool(reader);
        value.error_message = readText(reader, 128);
        value.estimated_duration = reader.integer(4, false);
        value.error_code = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPmuLedState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PmuLedState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ffd9da2c79f63f9a61a4dfcefde97cb58676f61598b76c0435f33ab23e9002dc";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 292;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public String trace_id = "";
        public int led_strip_mode = 0;
        public int r = 0;
        public int g = 0;
        public int b = 0;
        public int priority = 0;

        public Ros2Aimdk_msgsMsgPmuLedState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPmuLedState> CODEC = new Codec<Ros2Aimdk_msgsMsgPmuLedState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPmuLedState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPmuLedState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPmuLedState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPmuLedState value = readRos2Aimdk_msgsMsgPmuLedState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPmuLedState(Codecs.Writer writer, Ros2Aimdk_msgsMsgPmuLedState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        String part1 = value.trace_id;
        writeText(writer, part1, 128);
        int part2 = value.led_strip_mode;
        writer.integer(part2, 1, false);
        int part3 = value.r;
        writer.integer(part3, 1, false);
        int part4 = value.g;
        writer.integer(part4, 1, false);
        int part5 = value.b;
        writer.integer(part5, 1, false);
        int part6 = value.priority;
        writer.integer(part6, 4, true);
    }

    private static Ros2Aimdk_msgsMsgPmuLedState readRos2Aimdk_msgsMsgPmuLedState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPmuLedState value = new Ros2Aimdk_msgsMsgPmuLedState();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.trace_id = readText(reader, 128);
        value.led_strip_mode = (int)reader.integer(1, false);
        value.r = (int)reader.integer(1, false);
        value.g = (int)reader.integer(1, false);
        value.b = (int)reader.integer(1, false);
        value.priority = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPmuState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PmuState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd";
        public static final int MIN_WIRE_BYTES = 218, MAX_WIRE_BYTES = 1114;
        public String pmu_software_version = "";
        public String pmu_hardware_version = "";
        public String pmu_protocol_version = "";
        public long pmu_bool_status = 0;
        public double head_power_current = 0;
        public double output_48v_current = 0;
        public double rk3588_current = 0;
        public double output_12v_current = 0;
        public double bus_48v_current = 0;
        public double orin_current = 0;
        public double bus_48v_pmos_voltage = 0;
        public double battery_voltage = 0;
        public double fan_voltage = 0;
        public double output_12v_voltage = 0;
        public double output_48v_voltage = 0;
        public double bus_48v_voltage = 0;
        public double head_power_voltage = 0;
        public double orin_voltage = 0;
        public double rk3588_voltage = 0;
        public double fan_speed = 0;
        public int fan_pecentage = 0;
        public double pmu_temperature = 0;
        public String bms_manufacturer = "";
        public String bms_serial_number = "";
        public String bms_hardware_version = "";
        public String bms_software_version = "";
        public long bms_status_bits = 0;
        public int battery_balance_line_resistance = 0;
        public double battery_pack_voltage = 0;
        public double battery_current = 0;
        public double battery_output_power = 0;
        public double battery_temperature = 0;
        public long battery_remaining_capacity = 0;
        public int battery_remaining_capacity_percentage = 0;
        public int battery_cycle_count = 0;
        public long battery_cycle_total_capacity = 0;

        public Ros2Aimdk_msgsMsgPmuState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPmuState> CODEC = new Codec<Ros2Aimdk_msgsMsgPmuState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPmuState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPmuState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPmuState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPmuState value = readRos2Aimdk_msgsMsgPmuState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPmuState(Codecs.Writer writer, Ros2Aimdk_msgsMsgPmuState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.pmu_software_version;
        writeText(writer, part0, 128);
        String part1 = value.pmu_hardware_version;
        writeText(writer, part1, 128);
        String part2 = value.pmu_protocol_version;
        writeText(writer, part2, 128);
        long part3 = value.pmu_bool_status;
        writer.integer(part3, 4, false);
        double part4 = value.head_power_current;
        writer.f64(part4);
        double part5 = value.output_48v_current;
        writer.f64(part5);
        double part6 = value.rk3588_current;
        writer.f64(part6);
        double part7 = value.output_12v_current;
        writer.f64(part7);
        double part8 = value.bus_48v_current;
        writer.f64(part8);
        double part9 = value.orin_current;
        writer.f64(part9);
        double part10 = value.bus_48v_pmos_voltage;
        writer.f64(part10);
        double part11 = value.battery_voltage;
        writer.f64(part11);
        double part12 = value.fan_voltage;
        writer.f64(part12);
        double part13 = value.output_12v_voltage;
        writer.f64(part13);
        double part14 = value.output_48v_voltage;
        writer.f64(part14);
        double part15 = value.bus_48v_voltage;
        writer.f64(part15);
        double part16 = value.head_power_voltage;
        writer.f64(part16);
        double part17 = value.orin_voltage;
        writer.f64(part17);
        double part18 = value.rk3588_voltage;
        writer.f64(part18);
        double part19 = value.fan_speed;
        writer.f64(part19);
        int part20 = value.fan_pecentage;
        writer.integer(part20, 1, false);
        double part21 = value.pmu_temperature;
        writer.f64(part21);
        String part22 = value.bms_manufacturer;
        writeText(writer, part22, 128);
        String part23 = value.bms_serial_number;
        writeText(writer, part23, 128);
        String part24 = value.bms_hardware_version;
        writeText(writer, part24, 128);
        String part25 = value.bms_software_version;
        writeText(writer, part25, 128);
        long part26 = value.bms_status_bits;
        writer.integer(part26, 4, false);
        int part27 = value.battery_balance_line_resistance;
        writer.integer(part27, 2, false);
        double part28 = value.battery_pack_voltage;
        writer.f64(part28);
        double part29 = value.battery_current;
        writer.f64(part29);
        double part30 = value.battery_output_power;
        writer.f64(part30);
        double part31 = value.battery_temperature;
        writer.f64(part31);
        long part32 = value.battery_remaining_capacity;
        writer.integer(part32, 4, false);
        int part33 = value.battery_remaining_capacity_percentage;
        writer.integer(part33, 1, false);
        int part34 = value.battery_cycle_count;
        writer.integer(part34, 2, false);
        long part35 = value.battery_cycle_total_capacity;
        writer.integer(part35, 4, false);
    }

    private static Ros2Aimdk_msgsMsgPmuState readRos2Aimdk_msgsMsgPmuState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPmuState value = new Ros2Aimdk_msgsMsgPmuState();
        value.pmu_software_version = readText(reader, 128);
        value.pmu_hardware_version = readText(reader, 128);
        value.pmu_protocol_version = readText(reader, 128);
        value.pmu_bool_status = reader.integer(4, false);
        value.head_power_current = reader.f64();
        value.output_48v_current = reader.f64();
        value.rk3588_current = reader.f64();
        value.output_12v_current = reader.f64();
        value.bus_48v_current = reader.f64();
        value.orin_current = reader.f64();
        value.bus_48v_pmos_voltage = reader.f64();
        value.battery_voltage = reader.f64();
        value.fan_voltage = reader.f64();
        value.output_12v_voltage = reader.f64();
        value.output_48v_voltage = reader.f64();
        value.bus_48v_voltage = reader.f64();
        value.head_power_voltage = reader.f64();
        value.orin_voltage = reader.f64();
        value.rk3588_voltage = reader.f64();
        value.fan_speed = reader.f64();
        value.fan_pecentage = (int)reader.integer(1, false);
        value.pmu_temperature = reader.f64();
        value.bms_manufacturer = readText(reader, 128);
        value.bms_serial_number = readText(reader, 128);
        value.bms_hardware_version = readText(reader, 128);
        value.bms_software_version = readText(reader, 128);
        value.bms_status_bits = reader.integer(4, false);
        value.battery_balance_line_resistance = (int)reader.integer(2, false);
        value.battery_pack_voltage = reader.f64();
        value.battery_current = reader.f64();
        value.battery_output_power = reader.f64();
        value.battery_temperature = reader.f64();
        value.battery_remaining_capacity = reader.integer(4, false);
        value.battery_remaining_capacity_percentage = (int)reader.integer(1, false);
        value.battery_cycle_count = (int)reader.integer(2, false);
        value.battery_cycle_total_capacity = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Std_msgsMsgHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
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
        writeText(writer, part1, 128);
    }

    private static Ros2Std_msgsMsgHeader readRos2Std_msgsMsgHeader(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgHeader value = new Ros2Std_msgsMsgHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.frame_id = readText(reader, 128);
        return value;
    }

    public static final class Ros2Geometry_msgsMsgPoseStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/PoseStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2";
        public static final int MIN_WIRE_BYTES = 68, MAX_WIRE_BYTES = 196;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
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

    public static final class Ros2Geometry_msgsMsgVector3
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Vector3";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        public double x = 0;
        public double y = 0;
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

    public static final class Ros2Geometry_msgsMsgTwist
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Twist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public Ros2Geometry_msgsMsgVector3 linear = new Ros2Geometry_msgsMsgVector3();
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

    public static final class Ros2Aimdk_msgsMsgPncTaskRequest
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PncTaskRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_70b6f57408c6a09cc52d3ce4aeaab20322737a6c4cfddbd380e87d673050469c";
        public static final int MIN_WIRE_BYTES = 215, MAX_WIRE_BYTES = 855;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public int task_type = 0;
        public int task_request = 0;
        public int pnc_mode = 0;
        public long task_id = 0;
        public long map_id = 0;
        public Ros2Geometry_msgsMsgPoseStamped target_pose = new Ros2Geometry_msgsMsgPoseStamped();
        public Ros2Geometry_msgsMsgPose2D[] reference_line = new Ros2Geometry_msgsMsgPose2D[0];
        public double target_pose_radius = 0;
        public float max_forward_speed = 0;
        public Ros2Geometry_msgsMsgPose2D[] trajectory_pos = new Ros2Geometry_msgsMsgPose2D[0];
        public Ros2Geometry_msgsMsgTwist[] trajectory_vel = new Ros2Geometry_msgsMsgTwist[0];
        public long play_timestamp = 0;
        public long time_duration = 0;
        public int[] reserve_info = new int[64];

        public Ros2Aimdk_msgsMsgPncTaskRequest()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPncTaskRequest> CODEC = new Codec<Ros2Aimdk_msgsMsgPncTaskRequest>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPncTaskRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPncTaskRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPncTaskRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPncTaskRequest value = readRos2Aimdk_msgsMsgPncTaskRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPncTaskRequest(Codecs.Writer writer, Ros2Aimdk_msgsMsgPncTaskRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        int part1 = value.task_type;
        writer.integer(part1, 1, false);
        int part2 = value.task_request;
        writer.integer(part2, 1, false);
        int part3 = value.pnc_mode;
        writer.integer(part3, 1, false);
        long part4 = value.task_id;
        writer.integer(part4, 8, false);
        long part5 = value.map_id;
        writer.integer(part5, 8, false);
        Ros2Geometry_msgsMsgPoseStamped part6 = value.target_pose;
        writeRos2Geometry_msgsMsgPoseStamped(writer, part6);
        Ros2Geometry_msgsMsgPose2D[] part7 = value.reference_line;
        if(part7 == null || part7.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writeRos2Geometry_msgsMsgPose2D(writer, part7[i]);
        }
        double part8 = value.target_pose_radius;
        writer.f64(part8);
        float part9 = value.max_forward_speed;
        writer.f32(part9);
        Ros2Geometry_msgsMsgPose2D[] part10 = value.trajectory_pos;
        if(part10 == null || part10.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part10.length, 4, false);
        for(int i = 0; i < part10.length; ++i)
        {
            writeRos2Geometry_msgsMsgPose2D(writer, part10[i]);
        }
        Ros2Geometry_msgsMsgTwist[] part11 = value.trajectory_vel;
        if(part11 == null || part11.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part11.length, 4, false);
        for(int i = 0; i < part11.length; ++i)
        {
            writeRos2Geometry_msgsMsgTwist(writer, part11[i]);
        }
        long part12 = value.play_timestamp;
        writer.integer(part12, 8, false);
        long part13 = value.time_duration;
        writer.integer(part13, 8, false);
        int[] part14 = value.reserve_info;
        if(part14 == null || part14.length != 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part14.length; ++i)
        {
            writer.integer(part14[i], 1, false);
        }
    }

    private static Ros2Aimdk_msgsMsgPncTaskRequest readRos2Aimdk_msgsMsgPncTaskRequest(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPncTaskRequest value = new Ros2Aimdk_msgsMsgPncTaskRequest();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.task_type = (int)reader.integer(1, false);
        value.task_request = (int)reader.integer(1, false);
        value.pnc_mode = (int)reader.integer(1, false);
        value.task_id = reader.integer(8, false);
        value.map_id = reader.integer(8, false);
        value.target_pose = readRos2Geometry_msgsMsgPoseStamped(reader);
        value.reference_line = new Ros2Geometry_msgsMsgPose2D[readCount(reader, 4, 24)];
        for(int i = 0; i < value.reference_line.length; ++i)
            value.reference_line[i] = readRos2Geometry_msgsMsgPose2D(reader);
        value.target_pose_radius = reader.f64();
        value.max_forward_speed = reader.f32();
        value.trajectory_pos = new Ros2Geometry_msgsMsgPose2D[readCount(reader, 4, 24)];
        for(int i = 0; i < value.trajectory_pos.length; ++i)
            value.trajectory_pos[i] = readRos2Geometry_msgsMsgPose2D(reader);
        value.trajectory_vel = new Ros2Geometry_msgsMsgTwist[readCount(reader, 4, 48)];
        for(int i = 0; i < value.trajectory_vel.length; ++i)
            value.trajectory_vel[i] = readRos2Geometry_msgsMsgTwist(reader);
        value.play_timestamp = reader.integer(8, false);
        value.time_duration = reader.integer(8, false);
        value.reserve_info = new int[64];
        for(int i = 0; i < value.reserve_info.length; ++i)
            value.reserve_info[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPncTaskResponse
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PncTaskResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b79712144fee059d6b2d3fc74a86a33ca577734d8445b446a4b80db01e87243e";
        public static final int MIN_WIRE_BYTES = 106, MAX_WIRE_BYTES = 234;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public int task_type = 0;
        public long task_id = 0;
        public long map_id = 0;
        public int task_status = 0;
        public int[] reserve_info = new int[64];

        public Ros2Aimdk_msgsMsgPncTaskResponse()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPncTaskResponse> CODEC = new Codec<Ros2Aimdk_msgsMsgPncTaskResponse>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPncTaskResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPncTaskResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPncTaskResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPncTaskResponse value = readRos2Aimdk_msgsMsgPncTaskResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPncTaskResponse(Codecs.Writer writer, Ros2Aimdk_msgsMsgPncTaskResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        int part1 = value.task_type;
        writer.integer(part1, 1, false);
        long part2 = value.task_id;
        writer.integer(part2, 8, false);
        long part3 = value.map_id;
        writer.integer(part3, 8, false);
        int part4 = value.task_status;
        writer.integer(part4, 1, false);
        int[] part5 = value.reserve_info;
        if(part5 == null || part5.length != 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.integer(part5[i], 1, false);
        }
    }

    private static Ros2Aimdk_msgsMsgPncTaskResponse readRos2Aimdk_msgsMsgPncTaskResponse(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPncTaskResponse value = new Ros2Aimdk_msgsMsgPncTaskResponse();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.task_type = (int)reader.integer(1, false);
        value.task_id = reader.integer(8, false);
        value.map_id = reader.integer(8, false);
        value.task_status = (int)reader.integer(1, false);
        value.reserve_info = new int[64];
        for(int i = 0; i < value.reserve_info.length; ++i)
            value.reserve_info[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgSigSet
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/SigSet";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_24fc701bfd984160280c2b150c2b6accee18cead254009fb4f781341efb5b8ae";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 20;
        public int robot_sig = 0;
        public int motion_sig = 0;
        public int sound_sig = 0;
        public int led_sig = 0;
        public int facial_sig = 0;
        public long reserve = 0;
        public long funcdisable_sig = 0;

        public Ros2Aimdk_msgsMsgSigSet()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgSigSet> CODEC = new Codec<Ros2Aimdk_msgsMsgSigSet>() {
            public byte[] encode(Ros2Aimdk_msgsMsgSigSet value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgSigSet(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgSigSet decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgSigSet value = readRos2Aimdk_msgsMsgSigSet(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgSigSet(Codecs.Writer writer, Ros2Aimdk_msgsMsgSigSet value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.robot_sig;
        writer.integer(part0, 4, true);
        int part1 = value.motion_sig;
        writer.integer(part1, 1, false);
        int part2 = value.sound_sig;
        writer.integer(part2, 1, false);
        int part3 = value.led_sig;
        writer.integer(part3, 1, false);
        int part4 = value.facial_sig;
        writer.integer(part4, 1, false);
        long part5 = value.reserve;
        writer.integer(part5, 4, false);
        long part6 = value.funcdisable_sig;
        writer.integer(part6, 8, false);
    }

    private static Ros2Aimdk_msgsMsgSigSet readRos2Aimdk_msgsMsgSigSet(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgSigSet value = new Ros2Aimdk_msgsMsgSigSet();
        value.robot_sig = (int)reader.integer(4, true);
        value.motion_sig = (int)reader.integer(1, false);
        value.sound_sig = (int)reader.integer(1, false);
        value.led_sig = (int)reader.integer(1, false);
        value.facial_sig = (int)reader.integer(1, false);
        value.reserve = reader.integer(4, false);
        value.funcdisable_sig = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPostProcSig
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PostProcSig";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f6eceb5eb1e64d0b68e1cfac297cec324fc4aa42ea709e1c721aefe4d4feda8b";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 36;
        public long timestamp = 0;
        public long diag_code = 0;
        public Ros2Aimdk_msgsMsgSigSet sig_set = new Ros2Aimdk_msgsMsgSigSet();

        public Ros2Aimdk_msgsMsgPostProcSig()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPostProcSig> CODEC = new Codec<Ros2Aimdk_msgsMsgPostProcSig>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPostProcSig value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPostProcSig(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPostProcSig decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPostProcSig value = readRos2Aimdk_msgsMsgPostProcSig(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPostProcSig(Codecs.Writer writer, Ros2Aimdk_msgsMsgPostProcSig value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.timestamp;
        writer.integer(part0, 8, false);
        long part1 = value.diag_code;
        writer.integer(part1, 8, false);
        Ros2Aimdk_msgsMsgSigSet part2 = value.sig_set;
        writeRos2Aimdk_msgsMsgSigSet(writer, part2);
    }

    private static Ros2Aimdk_msgsMsgPostProcSig readRos2Aimdk_msgsMsgPostProcSig(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPostProcSig value = new Ros2Aimdk_msgsMsgPostProcSig();
        value.timestamp = reader.integer(8, false);
        value.diag_code = reader.integer(8, false);
        value.sig_set = readRos2Aimdk_msgsMsgSigSet(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPostProcSigArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PostProcSigArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5a2202eb697688ee1fe7530df21d462d4a0f1a4e62e986e610e970bf04f64824";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 300;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public Ros2Aimdk_msgsMsgPostProcSig[] post_proc_sig = new Ros2Aimdk_msgsMsgPostProcSig[0];

        public Ros2Aimdk_msgsMsgPostProcSigArray()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPostProcSigArray> CODEC = new Codec<Ros2Aimdk_msgsMsgPostProcSigArray>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPostProcSigArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPostProcSigArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPostProcSigArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPostProcSigArray value = readRos2Aimdk_msgsMsgPostProcSigArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPostProcSigArray(Codecs.Writer writer, Ros2Aimdk_msgsMsgPostProcSigArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        Ros2Aimdk_msgsMsgPostProcSig[] part1 = value.post_proc_sig;
        if(part1 == null || part1.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgPostProcSig(writer, part1[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgPostProcSigArray readRos2Aimdk_msgsMsgPostProcSigArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPostProcSigArray value = new Ros2Aimdk_msgsMsgPostProcSigArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.post_proc_sig = new Ros2Aimdk_msgsMsgPostProcSig[readCount(reader, 4, 36)];
        for(int i = 0; i < value.post_proc_sig.length; ++i)
            value.post_proc_sig[i] = readRos2Aimdk_msgsMsgPostProcSig(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgProcessedAudioOutput
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/ProcessedAudioOutput";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30";
        public static final int MIN_WIRE_BYTES = 33, MAX_WIRE_BYTES = 417;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public long stream_id = 0;
        public Ros2Aimdk_msgsMsgAudioVadStateType audio_vad_state = new Ros2Aimdk_msgsMsgAudioVadStateType();
        public int[] audio_data = new int[0];

        public Ros2Aimdk_msgsMsgProcessedAudioOutput()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgProcessedAudioOutput> CODEC = new Codec<Ros2Aimdk_msgsMsgProcessedAudioOutput>() {
            public byte[] encode(Ros2Aimdk_msgsMsgProcessedAudioOutput value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgProcessedAudioOutput(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgProcessedAudioOutput decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgProcessedAudioOutput value = readRos2Aimdk_msgsMsgProcessedAudioOutput(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgProcessedAudioOutput(Codecs.Writer writer, Ros2Aimdk_msgsMsgProcessedAudioOutput value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        long part1 = value.stream_id;
        writer.integer(part1, 4, false);
        Ros2Aimdk_msgsMsgAudioVadStateType part2 = value.audio_vad_state;
        writeRos2Aimdk_msgsMsgAudioVadStateType(writer, part2);
        int[] part3 = value.audio_data;
        if(part3 == null || part3.length > 256)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.integer(part3[i], 1, false);
        }
    }

    private static Ros2Aimdk_msgsMsgProcessedAudioOutput readRos2Aimdk_msgsMsgProcessedAudioOutput(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgProcessedAudioOutput value = new Ros2Aimdk_msgsMsgProcessedAudioOutput();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.stream_id = reader.integer(4, false);
        value.audio_vad_state = readRos2Aimdk_msgsMsgAudioVadStateType(reader);
        value.audio_data = new int[readCount(reader, 256, 1)];
        for(int i = 0; i < value.audio_data.length; ++i)
            value.audio_data[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgQRPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/QRPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e";
        public static final int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 64;
        public int point_id = 0;
        public Ros2Aimdk_msgsMsgQRCode qr_code = new Ros2Aimdk_msgsMsgQRCode();

        public Ros2Aimdk_msgsMsgQRPoint()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgQRPoint> CODEC = new Codec<Ros2Aimdk_msgsMsgQRPoint>() {
            public byte[] encode(Ros2Aimdk_msgsMsgQRPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgQRPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgQRPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgQRPoint value = readRos2Aimdk_msgsMsgQRPoint(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgQRPoint(Codecs.Writer writer, Ros2Aimdk_msgsMsgQRPoint value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.point_id;
        writer.integer(part0, 4, true);
        Ros2Aimdk_msgsMsgQRCode part1 = value.qr_code;
        writeRos2Aimdk_msgsMsgQRCode(writer, part1);
    }

    private static Ros2Aimdk_msgsMsgQRPoint readRos2Aimdk_msgsMsgQRPoint(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgQRPoint value = new Ros2Aimdk_msgsMsgQRPoint();
        value.point_id = (int)reader.integer(4, true);
        value.qr_code = readRos2Aimdk_msgsMsgQRCode(reader);
        return value;
    }

    public static final class Ros2Geometry_msgsMsgPoint32
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Point32";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public float x = 0;
        public float y = 0;
        public float z = 0;

        public Ros2Geometry_msgsMsgPoint32()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPoint32> CODEC = new Codec<Ros2Geometry_msgsMsgPoint32>() {
            public byte[] encode(Ros2Geometry_msgsMsgPoint32 value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPoint32(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPoint32 decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPoint32 value = readRos2Geometry_msgsMsgPoint32(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPoint32(Codecs.Writer writer, Ros2Geometry_msgsMsgPoint32 value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
    }

    private static Ros2Geometry_msgsMsgPoint32 readRos2Geometry_msgsMsgPoint32(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPoint32 value = new Ros2Geometry_msgsMsgPoint32();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        return value;
    }

    public static final class Ros2Geometry_msgsMsgPolygon
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Polygon";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 52;
        public Ros2Geometry_msgsMsgPoint32[] points = new Ros2Geometry_msgsMsgPoint32[0];

        public Ros2Geometry_msgsMsgPolygon()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPolygon> CODEC = new Codec<Ros2Geometry_msgsMsgPolygon>() {
            public byte[] encode(Ros2Geometry_msgsMsgPolygon value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPolygon(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPolygon decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPolygon value = readRos2Geometry_msgsMsgPolygon(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPolygon(Codecs.Writer writer, Ros2Geometry_msgsMsgPolygon value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPoint32[] part0 = value.points;
        if(part0 == null || part0.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Geometry_msgsMsgPoint32(writer, part0[i]);
        }
    }

    private static Ros2Geometry_msgsMsgPolygon readRos2Geometry_msgsMsgPolygon(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPolygon value = new Ros2Geometry_msgsMsgPolygon();
        value.points = new Ros2Geometry_msgsMsgPoint32[readCount(reader, 4, 12)];
        for(int i = 0; i < value.points.length; ++i)
            value.points[i] = readRos2Geometry_msgsMsgPoint32(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgRegion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/Region";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 186;
        public int type = 0;
        public int drawing_type = 0;
        public String name = "";
        public Ros2Geometry_msgsMsgPolygon polygon = new Ros2Geometry_msgsMsgPolygon();

        public Ros2Aimdk_msgsMsgRegion()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgRegion> CODEC = new Codec<Ros2Aimdk_msgsMsgRegion>() {
            public byte[] encode(Ros2Aimdk_msgsMsgRegion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgRegion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgRegion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgRegion value = readRos2Aimdk_msgsMsgRegion(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgRegion(Codecs.Writer writer, Ros2Aimdk_msgsMsgRegion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.type;
        writer.integer(part0, 1, false);
        int part1 = value.drawing_type;
        writer.integer(part1, 1, false);
        String part2 = value.name;
        writeText(writer, part2, 128);
        Ros2Geometry_msgsMsgPolygon part3 = value.polygon;
        writeRos2Geometry_msgsMsgPolygon(writer, part3);
    }

    private static Ros2Aimdk_msgsMsgRegion readRos2Aimdk_msgsMsgRegion(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgRegion value = new Ros2Aimdk_msgsMsgRegion();
        value.type = (int)reader.integer(1, false);
        value.drawing_type = (int)reader.integer(1, false);
        value.name = readText(reader, 128);
        value.polygon = readRos2Geometry_msgsMsgPolygon(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgRobotResource
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/RobotResource";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 2520;
        public String resource_key = "";
        public Ros2Aimdk_msgsMsgCurrentVersion current_version = new Ros2Aimdk_msgsMsgCurrentVersion();

        public Ros2Aimdk_msgsMsgRobotResource()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgRobotResource> CODEC = new Codec<Ros2Aimdk_msgsMsgRobotResource>() {
            public byte[] encode(Ros2Aimdk_msgsMsgRobotResource value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgRobotResource(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgRobotResource decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgRobotResource value = readRos2Aimdk_msgsMsgRobotResource(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgRobotResource(Codecs.Writer writer, Ros2Aimdk_msgsMsgRobotResource value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.resource_key;
        writeText(writer, part0, 128);
        Ros2Aimdk_msgsMsgCurrentVersion part1 = value.current_version;
        writeRos2Aimdk_msgsMsgCurrentVersion(writer, part1);
    }

    private static Ros2Aimdk_msgsMsgRobotResource readRos2Aimdk_msgsMsgRobotResource(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgRobotResource value = new Ros2Aimdk_msgsMsgRobotResource();
        value.resource_key = readText(reader, 128);
        value.current_version = readRos2Aimdk_msgsMsgCurrentVersion(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgSlaveDevice
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/SlaveDevice";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 132;
        public String ip = "";

        public Ros2Aimdk_msgsMsgSlaveDevice()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgSlaveDevice> CODEC = new Codec<Ros2Aimdk_msgsMsgSlaveDevice>() {
            public byte[] encode(Ros2Aimdk_msgsMsgSlaveDevice value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgSlaveDevice(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgSlaveDevice decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgSlaveDevice value = readRos2Aimdk_msgsMsgSlaveDevice(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgSlaveDevice(Codecs.Writer writer, Ros2Aimdk_msgsMsgSlaveDevice value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.ip;
        writeText(writer, part0, 128);
    }

    private static Ros2Aimdk_msgsMsgSlaveDevice readRos2Aimdk_msgsMsgSlaveDevice(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgSlaveDevice value = new Ros2Aimdk_msgsMsgSlaveDevice();
        value.ip = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgSystemStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/SystemStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public int value = 0;

        public Ros2Aimdk_msgsMsgSystemStatus()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgSystemStatus> CODEC = new Codec<Ros2Aimdk_msgsMsgSystemStatus>() {
            public byte[] encode(Ros2Aimdk_msgsMsgSystemStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgSystemStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgSystemStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgSystemStatus value = readRos2Aimdk_msgsMsgSystemStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgSystemStatus(Codecs.Writer writer, Ros2Aimdk_msgsMsgSystemStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgSystemStatus readRos2Aimdk_msgsMsgSystemStatus(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgSystemStatus value = new Ros2Aimdk_msgsMsgSystemStatus();
        value.value = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgSmSystemState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/SmSystemState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_32df2f2ac235992629e4fd98257feaac52917482d1065071a4513eaf611980ce";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public String cur_state = "";
        public Ros2Aimdk_msgsMsgSystemStatus cur_status = new Ros2Aimdk_msgsMsgSystemStatus();

        public Ros2Aimdk_msgsMsgSmSystemState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgSmSystemState> CODEC = new Codec<Ros2Aimdk_msgsMsgSmSystemState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgSmSystemState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgSmSystemState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgSmSystemState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgSmSystemState value = readRos2Aimdk_msgsMsgSmSystemState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgSmSystemState(Codecs.Writer writer, Ros2Aimdk_msgsMsgSmSystemState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        String part1 = value.cur_state;
        writeText(writer, part1, 128);
        Ros2Aimdk_msgsMsgSystemStatus part2 = value.cur_status;
        writeRos2Aimdk_msgsMsgSystemStatus(writer, part2);
    }

    private static Ros2Aimdk_msgsMsgSmSystemState readRos2Aimdk_msgsMsgSmSystemState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgSmSystemState value = new Ros2Aimdk_msgsMsgSmSystemState();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.cur_state = readText(reader, 128);
        value.cur_status = readRos2Aimdk_msgsMsgSystemStatus(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgTaskMasterState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/TaskMasterState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_90307681af8de801b0fac5e757fb89f1d23e33efdbdf939666b884b8d260a7a4";
        public static final int MIN_WIRE_BYTES = 105, MAX_WIRE_BYTES = 1129;
        public int main_state = 0;
        public int sub_state = 0;
        public int slam_state = 0;
        public long loc_map_id = 0;
        public String loc_map_name = "";
        public Ros2Aimdk_msgsMsgFixLineIntroState fix_line_intro_state = new Ros2Aimdk_msgsMsgFixLineIntroState();
        public Ros2Aimdk_msgsMsgPilotState pilot_state = new Ros2Aimdk_msgsMsgPilotState();
        public String reserve_info = "";

        public Ros2Aimdk_msgsMsgTaskMasterState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgTaskMasterState> CODEC = new Codec<Ros2Aimdk_msgsMsgTaskMasterState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgTaskMasterState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgTaskMasterState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgTaskMasterState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgTaskMasterState value = readRos2Aimdk_msgsMsgTaskMasterState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgTaskMasterState(Codecs.Writer writer, Ros2Aimdk_msgsMsgTaskMasterState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.main_state;
        writer.integer(part0, 1, false);
        int part1 = value.sub_state;
        writer.integer(part1, 1, false);
        int part2 = value.slam_state;
        writer.integer(part2, 1, false);
        long part3 = value.loc_map_id;
        writer.integer(part3, 8, false);
        String part4 = value.loc_map_name;
        writeText(writer, part4, 128);
        Ros2Aimdk_msgsMsgFixLineIntroState part5 = value.fix_line_intro_state;
        writeRos2Aimdk_msgsMsgFixLineIntroState(writer, part5);
        Ros2Aimdk_msgsMsgPilotState part6 = value.pilot_state;
        writeRos2Aimdk_msgsMsgPilotState(writer, part6);
        String part7 = value.reserve_info;
        writeText(writer, part7, 128);
    }

    private static Ros2Aimdk_msgsMsgTaskMasterState readRos2Aimdk_msgsMsgTaskMasterState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgTaskMasterState value = new Ros2Aimdk_msgsMsgTaskMasterState();
        value.main_state = (int)reader.integer(1, false);
        value.sub_state = (int)reader.integer(1, false);
        value.slam_state = (int)reader.integer(1, false);
        value.loc_map_id = reader.integer(8, false);
        value.loc_map_name = readText(reader, 128);
        value.fix_line_intro_state = readRos2Aimdk_msgsMsgFixLineIntroState(reader);
        value.pilot_state = readRos2Aimdk_msgsMsgPilotState(reader);
        value.reserve_info = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgTouchState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/TouchState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564";
        public static final int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 225;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public int event_type = 0;
        public long[] data = new long[8];
        public long[] threshold = new long[8];
        public boolean[] is_touched = new boolean[8];

        public Ros2Aimdk_msgsMsgTouchState()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgTouchState> CODEC = new Codec<Ros2Aimdk_msgsMsgTouchState>() {
            public byte[] encode(Ros2Aimdk_msgsMsgTouchState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgTouchState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgTouchState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgTouchState value = readRos2Aimdk_msgsMsgTouchState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgTouchState(Codecs.Writer writer, Ros2Aimdk_msgsMsgTouchState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        int part1 = value.event_type;
        writer.integer(part1, 1, false);
        long[] part2 = value.data;
        if(part2 == null || part2.length != 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 4, false);
        }
        long[] part3 = value.threshold;
        if(part3 == null || part3.length != 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.integer(part3[i], 4, false);
        }
        boolean[] part4 = value.is_touched;
        if(part4 == null || part4.length != 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.integer(part4[i] ? 1 : 0, 1, false);
        }
    }

    private static Ros2Aimdk_msgsMsgTouchState readRos2Aimdk_msgsMsgTouchState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgTouchState value = new Ros2Aimdk_msgsMsgTouchState();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.event_type = (int)reader.integer(1, false);
        value.data = new long[8];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = reader.integer(4, false);
        value.threshold = new long[8];
        for(int i = 0; i < value.threshold.length; ++i)
            value.threshold[i] = reader.integer(4, false);
        value.is_touched = new boolean[8];
        for(int i = 0; i < value.is_touched.length; ++i)
            value.is_touched[i] = readBool(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgUpperBodyCommandArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/UpperBodyCommandArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7f283521eed5b5febcba3cd0b19e1948749c2898c753e8b57983ec966a4ccbe0";
        public static final int MIN_WIRE_BYTES = 161, MAX_WIRE_BYTES = 545;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public String source = "";
        public int hand_sub_mode = 0;
        public double[] head_pos = new double[2];
        public double[] arm_pos = new double[14];
        public double[] hand_pos = new double[0];

        public Ros2Aimdk_msgsMsgUpperBodyCommandArray()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgUpperBodyCommandArray> CODEC = new Codec<Ros2Aimdk_msgsMsgUpperBodyCommandArray>() {
            public byte[] encode(Ros2Aimdk_msgsMsgUpperBodyCommandArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgUpperBodyCommandArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgUpperBodyCommandArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgUpperBodyCommandArray value = readRos2Aimdk_msgsMsgUpperBodyCommandArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgUpperBodyCommandArray(Codecs.Writer writer, Ros2Aimdk_msgsMsgUpperBodyCommandArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgMessageHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        String part1 = value.source;
        writeText(writer, part1, 128);
        int part2 = value.hand_sub_mode;
        writer.integer(part2, 1, false);
        double[] part3 = value.head_pos;
        if(part3 == null || part3.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.arm_pos;
        if(part4 == null || part4.length != 14)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.hand_pos;
        if(part5 == null || part5.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgUpperBodyCommandArray readRos2Aimdk_msgsMsgUpperBodyCommandArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgUpperBodyCommandArray value = new Ros2Aimdk_msgsMsgUpperBodyCommandArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.source = readText(reader, 128);
        value.hand_sub_mode = (int)reader.integer(1, false);
        value.head_pos = new double[2];
        for(int i = 0; i < value.head_pos.length; ++i)
            value.head_pos[i] = reader.f64();
        value.arm_pos = new double[14];
        for(int i = 0; i < value.arm_pos.length; ++i)
            value.arm_pos[i] = reader.f64();
        value.hand_pos = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.hand_pos.length; ++i)
            value.hand_pos[i] = reader.f64();
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/AbandonAudioFocus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();
        public Ros2Aimdk_msgsMsgFocusRequester focus_requester = new Ros2Aimdk_msgsMsgFocusRequester();

        public Ros2Aimdk_msgsSrvAbandonAudioFocus_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvAbandonAudioFocus_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvAbandonAudioFocus_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvAbandonAudioFocus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvAbandonAudioFocus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvAbandonAudioFocus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvAbandonAudioFocus_Request value = readRos2Aimdk_msgsSrvAbandonAudioFocus_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvAbandonAudioFocus_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvAbandonAudioFocus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        Ros2Aimdk_msgsMsgFocusRequester part1 = value.focus_requester;
        writeRos2Aimdk_msgsMsgFocusRequester(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvAbandonAudioFocus_Request readRos2Aimdk_msgsSrvAbandonAudioFocus_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvAbandonAudioFocus_Request value = new Ros2Aimdk_msgsSrvAbandonAudioFocus_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.focus_requester = readRos2Aimdk_msgsMsgFocusRequester(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/AbandonAudioFocus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();
        public Ros2Aimdk_msgsMsgFocusResponse focus_response = new Ros2Aimdk_msgsMsgFocusResponse();

        public Ros2Aimdk_msgsSrvAbandonAudioFocus_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvAbandonAudioFocus_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvAbandonAudioFocus_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvAbandonAudioFocus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvAbandonAudioFocus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvAbandonAudioFocus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvAbandonAudioFocus_Response value = readRos2Aimdk_msgsSrvAbandonAudioFocus_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvAbandonAudioFocus_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvAbandonAudioFocus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        Ros2Aimdk_msgsMsgFocusResponse part1 = value.focus_response;
        writeRos2Aimdk_msgsMsgFocusResponse(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvAbandonAudioFocus_Response readRos2Aimdk_msgsSrvAbandonAudioFocus_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvAbandonAudioFocus_Response value = new Ros2Aimdk_msgsSrvAbandonAudioFocus_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.focus_response = readRos2Aimdk_msgsMsgFocusResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvExecuteActionResource_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/ExecuteActionResource_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 936;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public String resource_key = "";
        public String resource_version = "";
        public Ros2Aimdk_msgsMsgSlaveDevice[] slaves = new Ros2Aimdk_msgsMsgSlaveDevice[0];
        public String meta = "";

        public Ros2Aimdk_msgsSrvExecuteActionResource_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvExecuteActionResource_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvExecuteActionResource_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvExecuteActionResource_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvExecuteActionResource_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvExecuteActionResource_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvExecuteActionResource_Request value = readRos2Aimdk_msgsSrvExecuteActionResource_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvExecuteActionResource_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvExecuteActionResource_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        String part1 = value.resource_key;
        writeText(writer, part1, 128);
        String part2 = value.resource_version;
        writeText(writer, part2, 128);
        Ros2Aimdk_msgsMsgSlaveDevice[] part3 = value.slaves;
        if(part3 == null || part3.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Aimdk_msgsMsgSlaveDevice(writer, part3[i]);
        }
        String part4 = value.meta;
        writeText(writer, part4, 128);
    }

    private static Ros2Aimdk_msgsSrvExecuteActionResource_Request readRos2Aimdk_msgsSrvExecuteActionResource_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvExecuteActionResource_Request value = new Ros2Aimdk_msgsSrvExecuteActionResource_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.resource_key = readText(reader, 128);
        value.resource_version = readText(reader, 128);
        value.slaves = new Ros2Aimdk_msgsMsgSlaveDevice[readCount(reader, 4, 4)];
        for(int i = 0; i < value.slaves.length; ++i)
            value.slaves[i] = readRos2Aimdk_msgsMsgSlaveDevice(reader);
        value.meta = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvExecuteActionResource_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/ExecuteActionResource_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();

        public Ros2Aimdk_msgsSrvExecuteActionResource_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvExecuteActionResource_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvExecuteActionResource_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvExecuteActionResource_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvExecuteActionResource_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvExecuteActionResource_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvExecuteActionResource_Response value = readRos2Aimdk_msgsSrvExecuteActionResource_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvExecuteActionResource_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvExecuteActionResource_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvExecuteActionResource_Response readRos2Aimdk_msgsSrvExecuteActionResource_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvExecuteActionResource_Response value = new Ros2Aimdk_msgsSrvExecuteActionResource_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetAllJointState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetAllJointState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetAllJointState_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetAllJointState_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetAllJointState_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetAllJointState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetAllJointState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetAllJointState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetAllJointState_Request value = readRos2Aimdk_msgsSrvGetAllJointState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetAllJointState_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetAllJointState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetAllJointState_Request readRos2Aimdk_msgsSrvGetAllJointState_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetAllJointState_Request value = new Ros2Aimdk_msgsSrvGetAllJointState_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetAllJointState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetAllJointState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 2696;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();
        public Ros2Aimdk_msgsMsgJointState[] head_joints = new Ros2Aimdk_msgsMsgJointState[0];
        public Ros2Aimdk_msgsMsgJointState[] arm_joints = new Ros2Aimdk_msgsMsgJointState[0];
        public Ros2Aimdk_msgsMsgJointState[] waist_joints = new Ros2Aimdk_msgsMsgJointState[0];
        public Ros2Aimdk_msgsMsgJointState[] leg_joints = new Ros2Aimdk_msgsMsgJointState[0];

        public Ros2Aimdk_msgsSrvGetAllJointState_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetAllJointState_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetAllJointState_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetAllJointState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetAllJointState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetAllJointState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetAllJointState_Response value = readRos2Aimdk_msgsSrvGetAllJointState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetAllJointState_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetAllJointState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        Ros2Aimdk_msgsMsgJointState[] part1 = value.head_joints;
        if(part1 == null || part1.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgJointState(writer, part1[i]);
        }
        Ros2Aimdk_msgsMsgJointState[] part2 = value.arm_joints;
        if(part2 == null || part2.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Aimdk_msgsMsgJointState(writer, part2[i]);
        }
        Ros2Aimdk_msgsMsgJointState[] part3 = value.waist_joints;
        if(part3 == null || part3.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Aimdk_msgsMsgJointState(writer, part3[i]);
        }
        Ros2Aimdk_msgsMsgJointState[] part4 = value.leg_joints;
        if(part4 == null || part4.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeRos2Aimdk_msgsMsgJointState(writer, part4[i]);
        }
    }

    private static Ros2Aimdk_msgsSrvGetAllJointState_Response readRos2Aimdk_msgsSrvGetAllJointState_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetAllJointState_Response value = new Ros2Aimdk_msgsSrvGetAllJointState_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.head_joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 4, 30)];
        for(int i = 0; i < value.head_joints.length; ++i)
            value.head_joints[i] = readRos2Aimdk_msgsMsgJointState(reader);
        value.arm_joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 4, 30)];
        for(int i = 0; i < value.arm_joints.length; ++i)
            value.arm_joints[i] = readRos2Aimdk_msgsMsgJointState(reader);
        value.waist_joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 4, 30)];
        for(int i = 0; i < value.waist_joints.length; ++i)
            value.waist_joints[i] = readRos2Aimdk_msgsMsgJointState(reader);
        value.leg_joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 4, 30)];
        for(int i = 0; i < value.leg_joints.length; ++i)
            value.leg_joints[i] = readRos2Aimdk_msgsMsgJointState(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetCurrentInputSource_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetCurrentInputSource_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetCurrentInputSource_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetCurrentInputSource_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetCurrentInputSource_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetCurrentInputSource_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetCurrentInputSource_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetCurrentInputSource_Request value = readRos2Aimdk_msgsSrvGetCurrentInputSource_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetCurrentInputSource_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetCurrentInputSource_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetCurrentInputSource_Request readRos2Aimdk_msgsSrvGetCurrentInputSource_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetCurrentInputSource_Request value = new Ros2Aimdk_msgsSrvGetCurrentInputSource_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetCurrentInputSource_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 168;
        public Ros2Aimdk_msgsMsgCommonTaskResponse response = new Ros2Aimdk_msgsMsgCommonTaskResponse();
        public Ros2Aimdk_msgsMsgMcInputSource input_source = new Ros2Aimdk_msgsMsgMcInputSource();

        public Ros2Aimdk_msgsSrvGetCurrentInputSource_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetCurrentInputSource_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetCurrentInputSource_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetCurrentInputSource_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetCurrentInputSource_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetCurrentInputSource_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetCurrentInputSource_Response value = readRos2Aimdk_msgsSrvGetCurrentInputSource_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetCurrentInputSource_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetCurrentInputSource_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonTaskResponse part0 = value.response;
        writeRos2Aimdk_msgsMsgCommonTaskResponse(writer, part0);
        Ros2Aimdk_msgsMsgMcInputSource part1 = value.input_source;
        writeRos2Aimdk_msgsMsgMcInputSource(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvGetCurrentInputSource_Response readRos2Aimdk_msgsSrvGetCurrentInputSource_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetCurrentInputSource_Response value = new Ros2Aimdk_msgsSrvGetCurrentInputSource_Response();
        value.response = readRos2Aimdk_msgsMsgCommonTaskResponse(reader);
        value.input_source = readRos2Aimdk_msgsMsgMcInputSource(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetHandType_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetHandType_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetHandType_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetHandType_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetHandType_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetHandType_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetHandType_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetHandType_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetHandType_Request value = readRos2Aimdk_msgsSrvGetHandType_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetHandType_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetHandType_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetHandType_Request readRos2Aimdk_msgsSrvGetHandType_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetHandType_Request value = new Ros2Aimdk_msgsSrvGetHandType_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetHandType_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetHandType_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a4911dedef84b0d6702905f580cf911b4cde7b14b5beac3b516d3faca3b39726";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 154;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();
        public Ros2Aimdk_msgsMsgHandType left_hands_type = new Ros2Aimdk_msgsMsgHandType();
        public Ros2Aimdk_msgsMsgHandType right_hands_type = new Ros2Aimdk_msgsMsgHandType();

        public Ros2Aimdk_msgsSrvGetHandType_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetHandType_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetHandType_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetHandType_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetHandType_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetHandType_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetHandType_Response value = readRos2Aimdk_msgsSrvGetHandType_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetHandType_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetHandType_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        Ros2Aimdk_msgsMsgHandType part1 = value.left_hands_type;
        writeRos2Aimdk_msgsMsgHandType(writer, part1);
        Ros2Aimdk_msgsMsgHandType part2 = value.right_hands_type;
        writeRos2Aimdk_msgsMsgHandType(writer, part2);
    }

    private static Ros2Aimdk_msgsSrvGetHandType_Response readRos2Aimdk_msgsSrvGetHandType_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetHandType_Response value = new Ros2Aimdk_msgsSrvGetHandType_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.left_hands_type = readRos2Aimdk_msgsMsgHandType(reader);
        value.right_hands_type = readRos2Aimdk_msgsMsgHandType(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetHdsEventHistory_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetHdsEventHistory_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9a2916041770f7392e93bdb21736c5b3b218cbbd65b9533451db64efc670e7da";
        public static final int MIN_WIRE_BYTES = 46, MAX_WIRE_BYTES = 4398;
        public Ros2Aimdk_msgsMsgRequestHeader header = new Ros2Aimdk_msgsMsgRequestHeader();
        public Ros2Aimdk_msgsMsgHdsEventQuery query = new Ros2Aimdk_msgsMsgHdsEventQuery();

        public Ros2Aimdk_msgsSrvGetHdsEventHistory_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetHdsEventHistory_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetHdsEventHistory_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetHdsEventHistory_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetHdsEventHistory_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetHdsEventHistory_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetHdsEventHistory_Request value = readRos2Aimdk_msgsSrvGetHdsEventHistory_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetHdsEventHistory_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetHdsEventHistory_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgRequestHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgRequestHeader(writer, part0);
        Ros2Aimdk_msgsMsgHdsEventQuery part1 = value.query;
        writeRos2Aimdk_msgsMsgHdsEventQuery(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvGetHdsEventHistory_Request readRos2Aimdk_msgsSrvGetHdsEventHistory_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetHdsEventHistory_Request value = new Ros2Aimdk_msgsSrvGetHdsEventHistory_Request();
        value.header = readRos2Aimdk_msgsMsgRequestHeader(reader);
        value.query = readRos2Aimdk_msgsMsgHdsEventQuery(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetHdsEventHistory_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetHdsEventHistory_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce2d51d64e2f318ef7e8cfb294969e3e9267f9355780fd3a45acc7a001783bea";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 1277;
        public Ros2Aimdk_msgsMsgResponseHeader header = new Ros2Aimdk_msgsMsgResponseHeader();
        public Ros2Aimdk_msgsMsgHdsEventRecord[] records = new Ros2Aimdk_msgsMsgHdsEventRecord[0];
        public long total_count = 0;
        public boolean has_more = false;

        public Ros2Aimdk_msgsSrvGetHdsEventHistory_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetHdsEventHistory_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetHdsEventHistory_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetHdsEventHistory_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetHdsEventHistory_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetHdsEventHistory_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetHdsEventHistory_Response value = readRos2Aimdk_msgsSrvGetHdsEventHistory_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetHdsEventHistory_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetHdsEventHistory_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgResponseHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        Ros2Aimdk_msgsMsgHdsEventRecord[] part1 = value.records;
        if(part1 == null || part1.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgHdsEventRecord(writer, part1[i]);
        }
        long part2 = value.total_count;
        writer.integer(part2, 4, false);
        boolean part3 = value.has_more;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsSrvGetHdsEventHistory_Response readRos2Aimdk_msgsSrvGetHdsEventHistory_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetHdsEventHistory_Response value = new Ros2Aimdk_msgsSrvGetHdsEventHistory_Response();
        value.header = readRos2Aimdk_msgsMsgResponseHeader(reader);
        value.records = new Ros2Aimdk_msgsMsgHdsEventRecord[readCount(reader, 4, 57)];
        for(int i = 0; i < value.records.length; ++i)
            value.records[i] = readRos2Aimdk_msgsMsgHdsEventRecord(reader);
        value.total_count = reader.integer(4, false);
        value.has_more = readBool(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMcAction_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMcAction_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetMcAction_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMcAction_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetMcAction_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetMcAction_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetMcAction_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetMcAction_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetMcAction_Request value = readRos2Aimdk_msgsSrvGetMcAction_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetMcAction_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetMcAction_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetMcAction_Request readRos2Aimdk_msgsSrvGetMcAction_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMcAction_Request value = new Ros2Aimdk_msgsSrvGetMcAction_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMcAction_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMcAction_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;
        public Ros2Aimdk_msgsMsgResponseHeader header = new Ros2Aimdk_msgsMsgResponseHeader();
        public Ros2Aimdk_msgsMsgMcActionInfo info = new Ros2Aimdk_msgsMsgMcActionInfo();

        public Ros2Aimdk_msgsSrvGetMcAction_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMcAction_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetMcAction_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetMcAction_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetMcAction_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetMcAction_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetMcAction_Response value = readRos2Aimdk_msgsSrvGetMcAction_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetMcAction_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetMcAction_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgResponseHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        Ros2Aimdk_msgsMsgMcActionInfo part1 = value.info;
        writeRos2Aimdk_msgsMsgMcActionInfo(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvGetMcAction_Response readRos2Aimdk_msgsSrvGetMcAction_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMcAction_Response value = new Ros2Aimdk_msgsSrvGetMcAction_Response();
        value.header = readRos2Aimdk_msgsMsgResponseHeader(reader);
        value.info = readRos2Aimdk_msgsMsgMcActionInfo(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3ba1d0408e9a60f37a17a790d89bb7f7da0ba8618fc5da56a8d92122989a8b3b";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request> CODEC =
            new Codec<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request>() {
                public byte[] encode(Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request value = readRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(Codecs.Writer writer,
                                                                                 Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request readRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request value = new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6b27a64e371638dc12d2a469f6dbac32d09d2ecd9d5348b96782d94204056d54";
        public static final int MIN_WIRE_BYTES = 328, MAX_WIRE_BYTES = 328;
        public Ros2Aimdk_msgsMsgResponseHeader header = new Ros2Aimdk_msgsMsgResponseHeader();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus current_speed_status = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus none_speed_status = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus low_speed_status = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus medium_speed_status = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus high_speed_status = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus step_speed_status = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();

        public Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response> CODEC =
            new Codec<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response>() {
                public byte[] encode(Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response value = readRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(Codecs.Writer writer,
                                                                                  Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgResponseHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part1 = value.current_speed_status;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part1);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part2 = value.none_speed_status;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part2);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part3 = value.low_speed_status;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part3);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part4 = value.medium_speed_status;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part4);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part5 = value.high_speed_status;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part5);
        Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part6 = value.step_speed_status;
        writeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part6);
    }

    private static Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response readRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response value = new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response();
        value.header = readRos2Aimdk_msgsMsgResponseHeader(reader);
        value.current_speed_status = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.none_speed_status = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.low_speed_status = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.medium_speed_status = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.high_speed_status = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.step_speed_status = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMcPresetMotionState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7faee35b0b5a2494d668743b5f21e59bb167c553c5f4b61be97eabb8f044e095";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public Ros2Aimdk_msgsMsgCommonTaskRequest request = new Ros2Aimdk_msgsMsgCommonTaskRequest();

        public Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetMcPresetMotionState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request value = readRos2Aimdk_msgsSrvGetMcPresetMotionState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetMcPresetMotionState_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonTaskRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonTaskRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request readRos2Aimdk_msgsSrvGetMcPresetMotionState_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request value = new Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request();
        value.request = readRos2Aimdk_msgsMsgCommonTaskRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMcPresetMotionState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_490aef5363792dc0f0148fe1fbb3e6036238341c41de104445d9d35191e76e30";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;
        public Ros2Aimdk_msgsMsgCommonTaskResponse response = new Ros2Aimdk_msgsMsgCommonTaskResponse();

        public Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response value = readRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonTaskResponse part0 = value.response;
        writeRos2Aimdk_msgsMsgCommonTaskResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response readRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response value = new Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response();
        value.response = readRos2Aimdk_msgsMsgCommonTaskResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMicSourceRequest_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetMicSourceRequest_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMicSourceRequest_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetMicSourceRequest_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetMicSourceRequest_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetMicSourceRequest_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetMicSourceRequest_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetMicSourceRequest_Request value = readRos2Aimdk_msgsSrvGetMicSourceRequest_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetMicSourceRequest_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetMicSourceRequest_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetMicSourceRequest_Request readRos2Aimdk_msgsSrvGetMicSourceRequest_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMicSourceRequest_Request value = new Ros2Aimdk_msgsSrvGetMicSourceRequest_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMicSourceRequest_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public long mic_source = 0;

        public Ros2Aimdk_msgsSrvGetMicSourceRequest_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMicSourceRequest_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetMicSourceRequest_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetMicSourceRequest_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetMicSourceRequest_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetMicSourceRequest_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetMicSourceRequest_Response value = readRos2Aimdk_msgsSrvGetMicSourceRequest_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetMicSourceRequest_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetMicSourceRequest_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        long part1 = value.mic_source;
        writer.integer(part1, 4, false);
    }

    private static Ros2Aimdk_msgsSrvGetMicSourceRequest_Response readRos2Aimdk_msgsSrvGetMicSourceRequest_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMicSourceRequest_Response value = new Ros2Aimdk_msgsSrvGetMicSourceRequest_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.mic_source = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMute_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMute_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetMute_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMute_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetMute_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetMute_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetMute_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetMute_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetMute_Request value = readRos2Aimdk_msgsSrvGetMute_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetMute_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetMute_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetMute_Request readRos2Aimdk_msgsSrvGetMute_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMute_Request value = new Ros2Aimdk_msgsSrvGetMute_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetMute_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetMute_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 153;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();
        public boolean is_mute = false;

        public Ros2Aimdk_msgsSrvGetMute_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetMute_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetMute_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetMute_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetMute_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetMute_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetMute_Response value = readRos2Aimdk_msgsSrvGetMute_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetMute_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetMute_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        boolean part1 = value.is_mute;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsSrvGetMute_Response readRos2Aimdk_msgsSrvGetMute_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetMute_Response value = new Ros2Aimdk_msgsSrvGetMute_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.is_mute = readBool(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetRobotResources_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetRobotResources_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetRobotResources_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetRobotResources_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetRobotResources_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetRobotResources_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetRobotResources_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetRobotResources_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetRobotResources_Request value = readRos2Aimdk_msgsSrvGetRobotResources_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetRobotResources_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetRobotResources_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetRobotResources_Request readRos2Aimdk_msgsSrvGetRobotResources_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetRobotResources_Request value = new Ros2Aimdk_msgsSrvGetRobotResources_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetRobotResources_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetRobotResources_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 10236;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public Ros2Aimdk_msgsMsgRobotResource[] robot_resources = new Ros2Aimdk_msgsMsgRobotResource[0];

        public Ros2Aimdk_msgsSrvGetRobotResources_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetRobotResources_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetRobotResources_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetRobotResources_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetRobotResources_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetRobotResources_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetRobotResources_Response value = readRos2Aimdk_msgsSrvGetRobotResources_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetRobotResources_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetRobotResources_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        Ros2Aimdk_msgsMsgRobotResource[] part1 = value.robot_resources;
        if(part1 == null || part1.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgRobotResource(writer, part1[i]);
        }
    }

    private static Ros2Aimdk_msgsSrvGetRobotResources_Response readRos2Aimdk_msgsSrvGetRobotResources_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetRobotResources_Response value = new Ros2Aimdk_msgsSrvGetRobotResources_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.robot_resources = new Ros2Aimdk_msgsMsgRobotResource[readCount(reader, 4, 24)];
        for(int i = 0; i < value.robot_resources.length; ++i)
            value.robot_resources[i] = readRos2Aimdk_msgsMsgRobotResource(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetStoredMapByName_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetStoredMapByName_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public String map_name = "";

        public Ros2Aimdk_msgsSrvGetStoredMapByName_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetStoredMapByName_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetStoredMapByName_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetStoredMapByName_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetStoredMapByName_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetStoredMapByName_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetStoredMapByName_Request value = readRos2Aimdk_msgsSrvGetStoredMapByName_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetStoredMapByName_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetStoredMapByName_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String part1 = value.map_name;
        writeText(writer, part1, 128);
    }

    private static Ros2Aimdk_msgsSrvGetStoredMapByName_Request readRos2Aimdk_msgsSrvGetStoredMapByName_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetStoredMapByName_Request value = new Ros2Aimdk_msgsSrvGetStoredMapByName_Request();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.map_name = readText(reader, 128);
        return value;
    }

    public static final class Ros2Nav_msgsMsgMapMetaData
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "nav_msgs/msg/MapMetaData";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009";
        public static final int MIN_WIRE_BYTES = 76, MAX_WIRE_BYTES = 76;
        public Ros2Builtin_interfacesMsgTime map_load_time = new Ros2Builtin_interfacesMsgTime();
        public float resolution = 0;
        public long width = 0;
        public long height = 0;
        public Ros2Geometry_msgsMsgPose origin = new Ros2Geometry_msgsMsgPose();

        public Ros2Nav_msgsMsgMapMetaData()
        {
        }

        public static final Codec<Ros2Nav_msgsMsgMapMetaData> CODEC = new Codec<Ros2Nav_msgsMsgMapMetaData>() {
            public byte[] encode(Ros2Nav_msgsMsgMapMetaData value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Nav_msgsMsgMapMetaData(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Nav_msgsMsgMapMetaData decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Nav_msgsMsgMapMetaData value = readRos2Nav_msgsMsgMapMetaData(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Nav_msgsMsgMapMetaData(Codecs.Writer writer, Ros2Nav_msgsMsgMapMetaData value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Builtin_interfacesMsgTime part0 = value.map_load_time;
        writeRos2Builtin_interfacesMsgTime(writer, part0);
        float part1 = value.resolution;
        writer.f32(part1);
        long part2 = value.width;
        writer.integer(part2, 4, false);
        long part3 = value.height;
        writer.integer(part3, 4, false);
        Ros2Geometry_msgsMsgPose part4 = value.origin;
        writeRos2Geometry_msgsMsgPose(writer, part4);
    }

    private static Ros2Nav_msgsMsgMapMetaData readRos2Nav_msgsMsgMapMetaData(Codecs.Reader reader)
    {
        Ros2Nav_msgsMsgMapMetaData value = new Ros2Nav_msgsMsgMapMetaData();
        value.map_load_time = readRos2Builtin_interfacesMsgTime(reader);
        value.resolution = reader.f32();
        value.width = reader.integer(4, false);
        value.height = reader.integer(4, false);
        value.origin = readRos2Geometry_msgsMsgPose(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetStoredMapByName_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetStoredMapByName_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb";
        public static final int MIN_WIRE_BYTES = 140, MAX_WIRE_BYTES = 3400;
        public long code = 0;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2Nav_msgsMsgMapMetaData map_info = new Ros2Nav_msgsMsgMapMetaData();
        public long map_version = 0;
        public String map_path = "";
        public byte[] data = new byte[0];
        public Ros2Aimdk_msgsMsgNaviPoint[] navi_points = new Ros2Aimdk_msgsMsgNaviPoint[0];
        public Ros2Aimdk_msgsMsgQRPoint[] qr_points = new Ros2Aimdk_msgsMsgQRPoint[0];
        public Ros2Aimdk_msgsMsgHRPoint[] hr_points = new Ros2Aimdk_msgsMsgHRPoint[0];
        public Ros2Aimdk_msgsMsgPath[] paths = new Ros2Aimdk_msgsMsgPath[0];
        public Ros2Aimdk_msgsMsgRegion[] regions = new Ros2Aimdk_msgsMsgRegion[0];
        public long map_id = 0;

        public Ros2Aimdk_msgsSrvGetStoredMapByName_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetStoredMapByName_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetStoredMapByName_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetStoredMapByName_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetStoredMapByName_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetStoredMapByName_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetStoredMapByName_Response value = readRos2Aimdk_msgsSrvGetStoredMapByName_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetStoredMapByName_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetStoredMapByName_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.code;
        writer.integer(part0, 8, false);
        Ros2Std_msgsMsgHeader part1 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part1);
        Ros2Nav_msgsMsgMapMetaData part2 = value.map_info;
        writeRos2Nav_msgsMsgMapMetaData(writer, part2);
        long part3 = value.map_version;
        writer.integer(part3, 8, false);
        String part4 = value.map_path;
        writeText(writer, part4, 128);
        byte[] part5 = value.data;
        if(part5 == null || part5.length > 256)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writer.integer(part5[i], 1, true);
        }
        Ros2Aimdk_msgsMsgNaviPoint[] part6 = value.navi_points;
        if(part6 == null || part6.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part6.length, 4, false);
        for(int i = 0; i < part6.length; ++i)
        {
            writeRos2Aimdk_msgsMsgNaviPoint(writer, part6[i]);
        }
        Ros2Aimdk_msgsMsgQRPoint[] part7 = value.qr_points;
        if(part7 == null || part7.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writeRos2Aimdk_msgsMsgQRPoint(writer, part7[i]);
        }
        Ros2Aimdk_msgsMsgHRPoint[] part8 = value.hr_points;
        if(part8 == null || part8.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part8.length, 4, false);
        for(int i = 0; i < part8.length; ++i)
        {
            writeRos2Aimdk_msgsMsgHRPoint(writer, part8[i]);
        }
        Ros2Aimdk_msgsMsgPath[] part9 = value.paths;
        if(part9 == null || part9.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part9.length, 4, false);
        for(int i = 0; i < part9.length; ++i)
        {
            writeRos2Aimdk_msgsMsgPath(writer, part9[i]);
        }
        Ros2Aimdk_msgsMsgRegion[] part10 = value.regions;
        if(part10 == null || part10.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part10.length, 4, false);
        for(int i = 0; i < part10.length; ++i)
        {
            writeRos2Aimdk_msgsMsgRegion(writer, part10[i]);
        }
        long part11 = value.map_id;
        writer.integer(part11, 8, false);
    }

    private static Ros2Aimdk_msgsSrvGetStoredMapByName_Response readRos2Aimdk_msgsSrvGetStoredMapByName_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetStoredMapByName_Response value = new Ros2Aimdk_msgsSrvGetStoredMapByName_Response();
        value.code = reader.integer(8, false);
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.map_info = readRos2Nav_msgsMsgMapMetaData(reader);
        value.map_version = reader.integer(8, false);
        value.map_path = readText(reader, 128);
        value.data = new byte[readCount(reader, 256, 1)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = (byte)reader.integer(1, true);
        value.navi_points = new Ros2Aimdk_msgsMsgNaviPoint[readCount(reader, 4, 28)];
        for(int i = 0; i < value.navi_points.length; ++i)
            value.navi_points[i] = readRos2Aimdk_msgsMsgNaviPoint(reader);
        value.qr_points = new Ros2Aimdk_msgsMsgQRPoint[readCount(reader, 4, 64)];
        for(int i = 0; i < value.qr_points.length; ++i)
            value.qr_points[i] = readRos2Aimdk_msgsMsgQRPoint(reader);
        value.hr_points = new Ros2Aimdk_msgsMsgHRPoint[readCount(reader, 4, 65)];
        for(int i = 0; i < value.hr_points.length; ++i)
            value.hr_points[i] = readRos2Aimdk_msgsMsgHRPoint(reader);
        value.paths = new Ros2Aimdk_msgsMsgPath[readCount(reader, 4, 8)];
        for(int i = 0; i < value.paths.length; ++i)
            value.paths[i] = readRos2Aimdk_msgsMsgPath(reader);
        value.regions = new Ros2Aimdk_msgsMsgRegion[readCount(reader, 4, 10)];
        for(int i = 0; i < value.regions.length; ++i)
            value.regions[i] = readRos2Aimdk_msgsMsgRegion(reader);
        value.map_id = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetSystemState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetSystemState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetSystemState_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetSystemState_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetSystemState_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetSystemState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetSystemState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetSystemState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetSystemState_Request value = readRos2Aimdk_msgsSrvGetSystemState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetSystemState_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetSystemState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetSystemState_Request readRos2Aimdk_msgsSrvGetSystemState_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetSystemState_Request value = new Ros2Aimdk_msgsSrvGetSystemState_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetSystemState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetSystemState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public String cur_state = "";
        public Ros2Aimdk_msgsMsgSystemStatus curr_status = new Ros2Aimdk_msgsMsgSystemStatus();

        public Ros2Aimdk_msgsSrvGetSystemState_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetSystemState_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetSystemState_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetSystemState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetSystemState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetSystemState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetSystemState_Response value = readRos2Aimdk_msgsSrvGetSystemState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetSystemState_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetSystemState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        String part1 = value.cur_state;
        writeText(writer, part1, 128);
        Ros2Aimdk_msgsMsgSystemStatus part2 = value.curr_status;
        writeRos2Aimdk_msgsMsgSystemStatus(writer, part2);
    }

    private static Ros2Aimdk_msgsSrvGetSystemState_Response readRos2Aimdk_msgsSrvGetSystemState_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetSystemState_Response value = new Ros2Aimdk_msgsSrvGetSystemState_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.cur_state = readText(reader, 128);
        value.curr_status = readRos2Aimdk_msgsMsgSystemStatus(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetVolume_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetVolume_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvGetVolume_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetVolume_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGetVolume_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetVolume_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetVolume_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetVolume_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetVolume_Request value = readRos2Aimdk_msgsSrvGetVolume_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetVolume_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetVolume_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvGetVolume_Request readRos2Aimdk_msgsSrvGetVolume_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetVolume_Request value = new Ros2Aimdk_msgsSrvGetVolume_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGetVolume_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GetVolume_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();
        public long audio_volume = 0;

        public Ros2Aimdk_msgsSrvGetVolume_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGetVolume_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGetVolume_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGetVolume_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGetVolume_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGetVolume_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGetVolume_Response value = readRos2Aimdk_msgsSrvGetVolume_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGetVolume_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGetVolume_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        long part1 = value.audio_volume;
        writer.integer(part1, 4, false);
    }

    private static Ros2Aimdk_msgsSrvGetVolume_Response readRos2Aimdk_msgsSrvGetVolume_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGetVolume_Response value = new Ros2Aimdk_msgsSrvGetVolume_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.audio_volume = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGroupControlTimeSync_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GroupControlTimeSync_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_00f371868d2cf78c68a9824a418f7e3376c959b1f600ee1906b75ea7c6eafedd";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 540;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public Ros2Aimdk_msgsMsgSlaveDevice[] slaves = new Ros2Aimdk_msgsMsgSlaveDevice[0];

        public Ros2Aimdk_msgsSrvGroupControlTimeSync_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGroupControlTimeSync_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvGroupControlTimeSync_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGroupControlTimeSync_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGroupControlTimeSync_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGroupControlTimeSync_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGroupControlTimeSync_Request value = readRos2Aimdk_msgsSrvGroupControlTimeSync_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGroupControlTimeSync_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvGroupControlTimeSync_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        Ros2Aimdk_msgsMsgSlaveDevice[] part1 = value.slaves;
        if(part1 == null || part1.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgSlaveDevice(writer, part1[i]);
        }
    }

    private static Ros2Aimdk_msgsSrvGroupControlTimeSync_Request readRos2Aimdk_msgsSrvGroupControlTimeSync_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGroupControlTimeSync_Request value = new Ros2Aimdk_msgsSrvGroupControlTimeSync_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.slaves = new Ros2Aimdk_msgsMsgSlaveDevice[readCount(reader, 4, 4)];
        for(int i = 0; i < value.slaves.length; ++i)
            value.slaves[i] = readRos2Aimdk_msgsMsgSlaveDevice(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvGroupControlTimeSync_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/GroupControlTimeSync_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_16bf8f1d44dcecd1263dcd1b48385fe079fa29893a03e5778797d24e361695ec";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 288;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public int error_code = 0;
        public String error_msg = "";

        public Ros2Aimdk_msgsSrvGroupControlTimeSync_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvGroupControlTimeSync_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvGroupControlTimeSync_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvGroupControlTimeSync_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvGroupControlTimeSync_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvGroupControlTimeSync_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvGroupControlTimeSync_Response value = readRos2Aimdk_msgsSrvGroupControlTimeSync_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvGroupControlTimeSync_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvGroupControlTimeSync_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        int part1 = value.error_code;
        writer.integer(part1, 4, true);
        String part2 = value.error_msg;
        writeText(writer, part2, 128);
    }

    private static Ros2Aimdk_msgsSrvGroupControlTimeSync_Response readRos2Aimdk_msgsSrvGroupControlTimeSync_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvGroupControlTimeSync_Response value = new Ros2Aimdk_msgsSrvGroupControlTimeSync_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.error_code = (int)reader.integer(4, true);
        value.error_msg = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvMigrateSystemState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/MigrateSystemState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public String state = "";

        public Ros2Aimdk_msgsSrvMigrateSystemState_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvMigrateSystemState_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvMigrateSystemState_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvMigrateSystemState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvMigrateSystemState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvMigrateSystemState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvMigrateSystemState_Request value = readRos2Aimdk_msgsSrvMigrateSystemState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvMigrateSystemState_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvMigrateSystemState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        String part1 = value.state;
        writeText(writer, part1, 128);
    }

    private static Ros2Aimdk_msgsSrvMigrateSystemState_Request readRos2Aimdk_msgsSrvMigrateSystemState_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvMigrateSystemState_Request value = new Ros2Aimdk_msgsSrvMigrateSystemState_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.state = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvMigrateSystemState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/MigrateSystemState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();

        public Ros2Aimdk_msgsSrvMigrateSystemState_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvMigrateSystemState_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvMigrateSystemState_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvMigrateSystemState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvMigrateSystemState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvMigrateSystemState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvMigrateSystemState_Response value = readRos2Aimdk_msgsSrvMigrateSystemState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvMigrateSystemState_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvMigrateSystemState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvMigrateSystemState_Response readRos2Aimdk_msgsSrvMigrateSystemState_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvMigrateSystemState_Response value = new Ros2Aimdk_msgsSrvMigrateSystemState_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayAudioFile_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayAudioFile_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1";
        public static final int MIN_WIRE_BYTES = 53, MAX_WIRE_BYTES = 693;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();
        public Ros2Aimdk_msgsMsgAudioFile file = new Ros2Aimdk_msgsMsgAudioFile();
        public Ros2Builtin_interfacesMsgTime play_stamps = new Ros2Builtin_interfacesMsgTime();

        public Ros2Aimdk_msgsSrvPlayAudioFile_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayAudioFile_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayAudioFile_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayAudioFile_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayAudioFile_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayAudioFile_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayAudioFile_Request value = readRos2Aimdk_msgsSrvPlayAudioFile_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayAudioFile_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayAudioFile_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        Ros2Aimdk_msgsMsgAudioFile part1 = value.file;
        writeRos2Aimdk_msgsMsgAudioFile(writer, part1);
        Ros2Builtin_interfacesMsgTime part2 = value.play_stamps;
        writeRos2Builtin_interfacesMsgTime(writer, part2);
    }

    private static Ros2Aimdk_msgsSrvPlayAudioFile_Request readRos2Aimdk_msgsSrvPlayAudioFile_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayAudioFile_Request value = new Ros2Aimdk_msgsSrvPlayAudioFile_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.file = readRos2Aimdk_msgsMsgAudioFile(reader);
        value.play_stamps = readRos2Builtin_interfacesMsgTime(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayAudioFile_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayAudioFile_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();

        public Ros2Aimdk_msgsSrvPlayAudioFile_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayAudioFile_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayAudioFile_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayAudioFile_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayAudioFile_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayAudioFile_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayAudioFile_Response value = readRos2Aimdk_msgsSrvPlayAudioFile_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayAudioFile_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayAudioFile_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvPlayAudioFile_Response readRos2Aimdk_msgsSrvPlayAudioFile_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayAudioFile_Response value = new Ros2Aimdk_msgsSrvPlayAudioFile_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayEmoji_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayEmoji_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43";
        public static final int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 14;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public int emotion_id = 0;
        public int mode = 0;
        public int priority = 0;

        public Ros2Aimdk_msgsSrvPlayEmoji_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayEmoji_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayEmoji_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayEmoji_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayEmoji_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayEmoji_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayEmoji_Request value = readRos2Aimdk_msgsSrvPlayEmoji_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayEmoji_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayEmoji_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        int part1 = value.emotion_id;
        writer.integer(part1, 1, false);
        int part2 = value.mode;
        writer.integer(part2, 1, false);
        int part3 = value.priority;
        writer.integer(part3, 4, true);
    }

    private static Ros2Aimdk_msgsSrvPlayEmoji_Request readRos2Aimdk_msgsSrvPlayEmoji_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayEmoji_Request value = new Ros2Aimdk_msgsSrvPlayEmoji_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.emotion_id = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.priority = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayEmoji_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayEmoji_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public boolean success = false;
        public String message = "";

        public Ros2Aimdk_msgsSrvPlayEmoji_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayEmoji_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayEmoji_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayEmoji_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayEmoji_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayEmoji_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayEmoji_Response value = readRos2Aimdk_msgsSrvPlayEmoji_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayEmoji_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayEmoji_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        String part2 = value.message;
        writeText(writer, part2, 128);
    }

    private static Ros2Aimdk_msgsSrvPlayEmoji_Response readRos2Aimdk_msgsSrvPlayEmoji_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayEmoji_Response value = new Ros2Aimdk_msgsSrvPlayEmoji_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.success = readBool(reader);
        value.message = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayEmojiGroup_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayEmojiGroup_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c696b5327d31945737301b57784797762832e143c4ccb89fba9228bc47402223";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 273;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public int[] emotion_ids = new int[0];
        public int mode = 0;
        public int priority = 0;

        public Ros2Aimdk_msgsSrvPlayEmojiGroup_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayEmojiGroup_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayEmojiGroup_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayEmojiGroup_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayEmojiGroup_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayEmojiGroup_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayEmojiGroup_Request value = readRos2Aimdk_msgsSrvPlayEmojiGroup_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayEmojiGroup_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayEmojiGroup_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        int[] part1 = value.emotion_ids;
        if(part1 == null || part1.length > 256)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 1, false);
        }
        int part2 = value.mode;
        writer.integer(part2, 1, false);
        int part3 = value.priority;
        writer.integer(part3, 4, true);
    }

    private static Ros2Aimdk_msgsSrvPlayEmojiGroup_Request readRos2Aimdk_msgsSrvPlayEmojiGroup_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayEmojiGroup_Request value = new Ros2Aimdk_msgsSrvPlayEmojiGroup_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.emotion_ids = new int[readCount(reader, 256, 1)];
        for(int i = 0; i < value.emotion_ids.length; ++i)
            value.emotion_ids[i] = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.priority = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayEmojiGroup_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayEmojiGroup_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e12fb46d3a4912ee89cedafc27fffd1b984d68407e3ae45aef0f8c1e47a4d94d";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public boolean success = false;
        public String message = "";

        public Ros2Aimdk_msgsSrvPlayEmojiGroup_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayEmojiGroup_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayEmojiGroup_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayEmojiGroup_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayEmojiGroup_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayEmojiGroup_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayEmojiGroup_Response value = readRos2Aimdk_msgsSrvPlayEmojiGroup_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayEmojiGroup_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayEmojiGroup_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        String part2 = value.message;
        writeText(writer, part2, 128);
    }

    private static Ros2Aimdk_msgsSrvPlayEmojiGroup_Response readRos2Aimdk_msgsSrvPlayEmojiGroup_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayEmojiGroup_Response value = new Ros2Aimdk_msgsSrvPlayEmojiGroup_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.success = readBool(reader);
        value.message = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayTts_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayTts_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 410;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public Ros2Aimdk_msgsMsgPlayTtsRequest tts_req = new Ros2Aimdk_msgsMsgPlayTtsRequest();

        public Ros2Aimdk_msgsSrvPlayTts_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayTts_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayTts_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayTts_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayTts_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayTts_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayTts_Request value = readRos2Aimdk_msgsSrvPlayTts_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayTts_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayTts_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        Ros2Aimdk_msgsMsgPlayTtsRequest part1 = value.tts_req;
        writeRos2Aimdk_msgsMsgPlayTtsRequest(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvPlayTts_Request readRos2Aimdk_msgsSrvPlayTts_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayTts_Request value = new Ros2Aimdk_msgsSrvPlayTts_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.tts_req = readRos2Aimdk_msgsMsgPlayTtsRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayTts_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayTts_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1d77e2009a7a486e392cec8aa4a045257140839b22ba4001c1c06d0deffab57d";
        public static final int MIN_WIRE_BYTES = 51, MAX_WIRE_BYTES = 691;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public Ros2Aimdk_msgsMsgPlayTtsResponse tts_resp = new Ros2Aimdk_msgsMsgPlayTtsResponse();

        public Ros2Aimdk_msgsSrvPlayTts_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayTts_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayTts_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayTts_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayTts_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayTts_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayTts_Response value = readRos2Aimdk_msgsSrvPlayTts_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayTts_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayTts_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        Ros2Aimdk_msgsMsgPlayTtsResponse part1 = value.tts_resp;
        writeRos2Aimdk_msgsMsgPlayTtsResponse(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvPlayTts_Response readRos2Aimdk_msgsSrvPlayTts_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayTts_Response value = new Ros2Aimdk_msgsSrvPlayTts_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.tts_resp = readRos2Aimdk_msgsMsgPlayTtsResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayVideo_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayVideo_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 145;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public String video_path = "";
        public int mode = 0;
        public int priority = 0;

        public Ros2Aimdk_msgsSrvPlayVideo_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayVideo_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayVideo_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayVideo_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayVideo_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayVideo_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayVideo_Request value = readRos2Aimdk_msgsSrvPlayVideo_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayVideo_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayVideo_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        String part1 = value.video_path;
        writeText(writer, part1, 128);
        int part2 = value.mode;
        writer.integer(part2, 1, false);
        int part3 = value.priority;
        writer.integer(part3, 4, true);
    }

    private static Ros2Aimdk_msgsSrvPlayVideo_Request readRos2Aimdk_msgsSrvPlayVideo_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayVideo_Request value = new Ros2Aimdk_msgsSrvPlayVideo_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.video_path = readText(reader, 128);
        value.mode = (int)reader.integer(1, false);
        value.priority = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayVideo_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayVideo_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public boolean success = false;
        public String message = "";

        public Ros2Aimdk_msgsSrvPlayVideo_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayVideo_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayVideo_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayVideo_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayVideo_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayVideo_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayVideo_Response value = readRos2Aimdk_msgsSrvPlayVideo_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayVideo_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayVideo_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        String part2 = value.message;
        writeText(writer, part2, 128);
    }

    private static Ros2Aimdk_msgsSrvPlayVideo_Response readRos2Aimdk_msgsSrvPlayVideo_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayVideo_Response value = new Ros2Aimdk_msgsSrvPlayVideo_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.success = readBool(reader);
        value.message = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayVideoGroup_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayVideoGroup_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 2129;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public String[] video_path_list = new String[0];
        public int mode = 0;
        public int priority = 0;

        public Ros2Aimdk_msgsSrvPlayVideoGroup_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayVideoGroup_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayVideoGroup_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayVideoGroup_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayVideoGroup_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayVideoGroup_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayVideoGroup_Request value = readRos2Aimdk_msgsSrvPlayVideoGroup_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayVideoGroup_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayVideoGroup_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        String[] part1 = value.video_path_list;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 128);
        }
        int part2 = value.mode;
        writer.integer(part2, 1, false);
        int part3 = value.priority;
        writer.integer(part3, 4, true);
    }

    private static Ros2Aimdk_msgsSrvPlayVideoGroup_Request readRos2Aimdk_msgsSrvPlayVideoGroup_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayVideoGroup_Request value = new Ros2Aimdk_msgsSrvPlayVideoGroup_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.video_path_list = new String[readCount(reader, 16, 4)];
        for(int i = 0; i < value.video_path_list.length; ++i)
            value.video_path_list[i] = readText(reader, 128);
        value.mode = (int)reader.integer(1, false);
        value.priority = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayVideoGroup_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayVideoGroup_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public boolean success = false;
        public String message = "";

        public Ros2Aimdk_msgsSrvPlayVideoGroup_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayVideoGroup_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayVideoGroup_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayVideoGroup_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayVideoGroup_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayVideoGroup_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayVideoGroup_Response value = readRos2Aimdk_msgsSrvPlayVideoGroup_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayVideoGroup_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayVideoGroup_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        String part2 = value.message;
        writeText(writer, part2, 128);
    }

    private static Ros2Aimdk_msgsSrvPlayVideoGroup_Response readRos2Aimdk_msgsSrvPlayVideoGroup_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayVideoGroup_Response value = new Ros2Aimdk_msgsSrvPlayVideoGroup_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.success = readBool(reader);
        value.message = readText(reader, 128);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvRequestAudioFocus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/RequestAudioFocus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();
        public Ros2Aimdk_msgsMsgFocusRequester focus_requester = new Ros2Aimdk_msgsMsgFocusRequester();

        public Ros2Aimdk_msgsSrvRequestAudioFocus_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvRequestAudioFocus_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvRequestAudioFocus_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvRequestAudioFocus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvRequestAudioFocus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvRequestAudioFocus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvRequestAudioFocus_Request value = readRos2Aimdk_msgsSrvRequestAudioFocus_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvRequestAudioFocus_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvRequestAudioFocus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        Ros2Aimdk_msgsMsgFocusRequester part1 = value.focus_requester;
        writeRos2Aimdk_msgsMsgFocusRequester(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvRequestAudioFocus_Request readRos2Aimdk_msgsSrvRequestAudioFocus_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvRequestAudioFocus_Request value = new Ros2Aimdk_msgsSrvRequestAudioFocus_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.focus_requester = readRos2Aimdk_msgsMsgFocusRequester(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvRequestAudioFocus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/RequestAudioFocus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180";
        public static final int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();
        public Ros2Aimdk_msgsMsgFocusResponse focus_response = new Ros2Aimdk_msgsMsgFocusResponse();

        public Ros2Aimdk_msgsSrvRequestAudioFocus_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvRequestAudioFocus_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvRequestAudioFocus_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvRequestAudioFocus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvRequestAudioFocus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvRequestAudioFocus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvRequestAudioFocus_Response value = readRos2Aimdk_msgsSrvRequestAudioFocus_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvRequestAudioFocus_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvRequestAudioFocus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        Ros2Aimdk_msgsMsgFocusResponse part1 = value.focus_response;
        writeRos2Aimdk_msgsMsgFocusResponse(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvRequestAudioFocus_Response readRos2Aimdk_msgsSrvRequestAudioFocus_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvRequestAudioFocus_Response value = new Ros2Aimdk_msgsSrvRequestAudioFocus_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.focus_response = readRos2Aimdk_msgsMsgFocusResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetAgentPropertiesRequest_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 544;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public Ros2Aimdk_msgsMsgAgentProperties contents = new Ros2Aimdk_msgsMsgAgentProperties();

        public Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value = readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        Ros2Aimdk_msgsMsgAgentProperties part1 = value.contents;
        writeRos2Aimdk_msgsMsgAgentProperties(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value = new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.contents = readRos2Aimdk_msgsMsgAgentProperties(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetAgentPropertiesRequest_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();

        public Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response> CODEC =
            new Codec<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response>() {
                public byte[] encode(Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value = readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(Codecs.Writer writer,
                                                                                 Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value = new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMcAction_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMcAction_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 276;
        public Ros2Aimdk_msgsMsgRequestHeader header = new Ros2Aimdk_msgsMsgRequestHeader();
        public String source = "";
        public Ros2Aimdk_msgsMsgMcActionCommand command = new Ros2Aimdk_msgsMsgMcActionCommand();

        public Ros2Aimdk_msgsSrvSetMcAction_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMcAction_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMcAction_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMcAction_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMcAction_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMcAction_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMcAction_Request value = readRos2Aimdk_msgsSrvSetMcAction_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMcAction_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMcAction_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgRequestHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgRequestHeader(writer, part0);
        String part1 = value.source;
        writeText(writer, part1, 128);
        Ros2Aimdk_msgsMsgMcActionCommand part2 = value.command;
        writeRos2Aimdk_msgsMsgMcActionCommand(writer, part2);
    }

    private static Ros2Aimdk_msgsSrvSetMcAction_Request readRos2Aimdk_msgsSrvSetMcAction_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMcAction_Request value = new Ros2Aimdk_msgsSrvSetMcAction_Request();
        value.header = readRos2Aimdk_msgsMsgRequestHeader(reader);
        value.source = readText(reader, 128);
        value.command = readRos2Aimdk_msgsMsgMcActionCommand(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMcAction_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMcAction_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Aimdk_msgsMsgCommonResponse response = new Ros2Aimdk_msgsMsgCommonResponse();

        public Ros2Aimdk_msgsSrvSetMcAction_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMcAction_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMcAction_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMcAction_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMcAction_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMcAction_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMcAction_Response value = readRos2Aimdk_msgsSrvSetMcAction_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMcAction_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMcAction_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.response;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvSetMcAction_Response readRos2Aimdk_msgsSrvSetMcAction_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMcAction_Response value = new Ros2Aimdk_msgsSrvSetMcAction_Response();
        value.response = readRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMcInputSource_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMcInputSource_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();
        public Ros2Aimdk_msgsMsgMcInputAction action = new Ros2Aimdk_msgsMsgMcInputAction();
        public Ros2Aimdk_msgsMsgMcInputSource input_source = new Ros2Aimdk_msgsMsgMcInputSource();

        public Ros2Aimdk_msgsSrvSetMcInputSource_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMcInputSource_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMcInputSource_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMcInputSource_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMcInputSource_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMcInputSource_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMcInputSource_Request value = readRos2Aimdk_msgsSrvSetMcInputSource_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMcInputSource_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMcInputSource_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        Ros2Aimdk_msgsMsgMcInputAction part1 = value.action;
        writeRos2Aimdk_msgsMsgMcInputAction(writer, part1);
        Ros2Aimdk_msgsMsgMcInputSource part2 = value.input_source;
        writeRos2Aimdk_msgsMsgMcInputSource(writer, part2);
    }

    private static Ros2Aimdk_msgsSrvSetMcInputSource_Request readRos2Aimdk_msgsSrvSetMcInputSource_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMcInputSource_Request value = new Ros2Aimdk_msgsSrvSetMcInputSource_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.action = readRos2Aimdk_msgsMsgMcInputAction(reader);
        value.input_source = readRos2Aimdk_msgsMsgMcInputSource(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMcInputSource_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMcInputSource_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;
        public Ros2Aimdk_msgsMsgCommonTaskResponse response = new Ros2Aimdk_msgsMsgCommonTaskResponse();

        public Ros2Aimdk_msgsSrvSetMcInputSource_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMcInputSource_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMcInputSource_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMcInputSource_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMcInputSource_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMcInputSource_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMcInputSource_Response value = readRos2Aimdk_msgsSrvSetMcInputSource_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMcInputSource_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMcInputSource_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonTaskResponse part0 = value.response;
        writeRos2Aimdk_msgsMsgCommonTaskResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvSetMcInputSource_Response readRos2Aimdk_msgsSrvSetMcInputSource_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMcInputSource_Response value = new Ros2Aimdk_msgsSrvSetMcInputSource_Response();
        value.response = readRos2Aimdk_msgsMsgCommonTaskResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMcPresetMotion_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1bc0bdea042012300548f5d9845b37dfc192d9680bb3beda186a69a11870ca96";
        public static final int MIN_WIRE_BYTES = 41, MAX_WIRE_BYTES = 297;
        public Ros2Aimdk_msgsMsgRequestHeader header = new Ros2Aimdk_msgsMsgRequestHeader();
        public Ros2Aimdk_msgsMsgMcInputSource input_source = new Ros2Aimdk_msgsMsgMcInputSource();
        public Ros2Aimdk_msgsMsgMcControlArea area = new Ros2Aimdk_msgsMsgMcControlArea();
        public Ros2Aimdk_msgsMsgMcPresetMotion motion = new Ros2Aimdk_msgsMsgMcPresetMotion();
        public boolean interrupt = false;
        public String ani_path = "";
        public long play_timestamp = 0;

        public Ros2Aimdk_msgsSrvSetMcPresetMotion_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMcPresetMotion_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMcPresetMotion_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMcPresetMotion_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMcPresetMotion_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value = readRos2Aimdk_msgsSrvSetMcPresetMotion_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMcPresetMotion_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgRequestHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgRequestHeader(writer, part0);
        Ros2Aimdk_msgsMsgMcInputSource part1 = value.input_source;
        writeRos2Aimdk_msgsMsgMcInputSource(writer, part1);
        Ros2Aimdk_msgsMsgMcControlArea part2 = value.area;
        writeRos2Aimdk_msgsMsgMcControlArea(writer, part2);
        Ros2Aimdk_msgsMsgMcPresetMotion part3 = value.motion;
        writeRos2Aimdk_msgsMsgMcPresetMotion(writer, part3);
        boolean part4 = value.interrupt;
        writer.integer(part4 ? 1 : 0, 1, false);
        String part5 = value.ani_path;
        writeText(writer, part5, 128);
        long part6 = value.play_timestamp;
        writer.integer(part6, 8, false);
    }

    private static Ros2Aimdk_msgsSrvSetMcPresetMotion_Request readRos2Aimdk_msgsSrvSetMcPresetMotion_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value = new Ros2Aimdk_msgsSrvSetMcPresetMotion_Request();
        value.header = readRos2Aimdk_msgsMsgRequestHeader(reader);
        value.input_source = readRos2Aimdk_msgsMsgMcInputSource(reader);
        value.area = readRos2Aimdk_msgsMsgMcControlArea(reader);
        value.motion = readRos2Aimdk_msgsMsgMcPresetMotion(reader);
        value.interrupt = readBool(reader);
        value.ani_path = readText(reader, 128);
        value.play_timestamp = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMcPresetMotion_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;
        public Ros2Aimdk_msgsMsgCommonTaskResponse response = new Ros2Aimdk_msgsMsgCommonTaskResponse();

        public Ros2Aimdk_msgsSrvSetMcPresetMotion_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMcPresetMotion_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMcPresetMotion_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMcPresetMotion_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMcPresetMotion_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMcPresetMotion_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMcPresetMotion_Response value = readRos2Aimdk_msgsSrvSetMcPresetMotion_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMcPresetMotion_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMcPresetMotion_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonTaskResponse part0 = value.response;
        writeRos2Aimdk_msgsMsgCommonTaskResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvSetMcPresetMotion_Response readRos2Aimdk_msgsSrvSetMcPresetMotion_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMcPresetMotion_Response value = new Ros2Aimdk_msgsSrvSetMcPresetMotion_Response();
        value.response = readRos2Aimdk_msgsMsgCommonTaskResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMicSourceRequest_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public long mic_source = 0;

        public Ros2Aimdk_msgsSrvSetMicSourceRequest_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMicSourceRequest_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMicSourceRequest_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMicSourceRequest_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMicSourceRequest_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMicSourceRequest_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMicSourceRequest_Request value = readRos2Aimdk_msgsSrvSetMicSourceRequest_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMicSourceRequest_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMicSourceRequest_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        long part1 = value.mic_source;
        writer.integer(part1, 4, false);
    }

    private static Ros2Aimdk_msgsSrvSetMicSourceRequest_Request readRos2Aimdk_msgsSrvSetMicSourceRequest_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMicSourceRequest_Request value = new Ros2Aimdk_msgsSrvSetMicSourceRequest_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.mic_source = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMicSourceRequest_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();

        public Ros2Aimdk_msgsSrvSetMicSourceRequest_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMicSourceRequest_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMicSourceRequest_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMicSourceRequest_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMicSourceRequest_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMicSourceRequest_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMicSourceRequest_Response value = readRos2Aimdk_msgsSrvSetMicSourceRequest_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMicSourceRequest_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMicSourceRequest_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvSetMicSourceRequest_Response readRos2Aimdk_msgsSrvSetMicSourceRequest_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMicSourceRequest_Response value = new Ros2Aimdk_msgsSrvSetMicSourceRequest_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMute_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMute_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();
        public boolean is_mute = false;

        public Ros2Aimdk_msgsSrvSetMute_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMute_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMute_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMute_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMute_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMute_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMute_Request value = readRos2Aimdk_msgsSrvSetMute_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMute_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMute_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        boolean part1 = value.is_mute;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsSrvSetMute_Request readRos2Aimdk_msgsSrvSetMute_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMute_Request value = new Ros2Aimdk_msgsSrvSetMute_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.is_mute = readBool(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetMute_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetMute_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 153;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();
        public boolean is_mute = false;

        public Ros2Aimdk_msgsSrvSetMute_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetMute_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvSetMute_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetMute_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetMute_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetMute_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetMute_Response value = readRos2Aimdk_msgsSrvSetMute_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetMute_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetMute_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        boolean part1 = value.is_mute;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsSrvSetMute_Response readRos2Aimdk_msgsSrvSetMute_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMute_Response value = new Ros2Aimdk_msgsSrvSetMute_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.is_mute = readBool(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetPmuLed_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetPmuLed_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e";
        public static final int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 149;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();
        public String trace_id = "";
        public int led_strip_mode = 0;
        public int r = 0;
        public int g = 0;
        public int b = 0;
        public int priority = 0;
        public boolean reset_priority = false;

        public Ros2Aimdk_msgsSrvSetPmuLed_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetPmuLed_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvSetPmuLed_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetPmuLed_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetPmuLed_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetPmuLed_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetPmuLed_Request value = readRos2Aimdk_msgsSrvSetPmuLed_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetPmuLed_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetPmuLed_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        String part1 = value.trace_id;
        writeText(writer, part1, 128);
        int part2 = value.led_strip_mode;
        writer.integer(part2, 1, false);
        int part3 = value.r;
        writer.integer(part3, 1, false);
        int part4 = value.g;
        writer.integer(part4, 1, false);
        int part5 = value.b;
        writer.integer(part5, 1, false);
        int part6 = value.priority;
        writer.integer(part6, 4, true);
        boolean part7 = value.reset_priority;
        writer.integer(part7 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsSrvSetPmuLed_Request readRos2Aimdk_msgsSrvSetPmuLed_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetPmuLed_Request value = new Ros2Aimdk_msgsSrvSetPmuLed_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.trace_id = readText(reader, 128);
        value.led_strip_mode = (int)reader.integer(1, false);
        value.r = (int)reader.integer(1, false);
        value.g = (int)reader.integer(1, false);
        value.b = (int)reader.integer(1, false);
        value.priority = (int)reader.integer(4, true);
        value.reset_priority = readBool(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetPmuLed_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetPmuLed_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;
        public Ros2Aimdk_msgsMsgResponseHeader header = new Ros2Aimdk_msgsMsgResponseHeader();
        public int status_code = 0;

        public Ros2Aimdk_msgsSrvSetPmuLed_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetPmuLed_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvSetPmuLed_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetPmuLed_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetPmuLed_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetPmuLed_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetPmuLed_Response value = readRos2Aimdk_msgsSrvSetPmuLed_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetPmuLed_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetPmuLed_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgResponseHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        int part1 = value.status_code;
        writer.integer(part1, 2, false);
    }

    private static Ros2Aimdk_msgsSrvSetPmuLed_Response readRos2Aimdk_msgsSrvSetPmuLed_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetPmuLed_Response value = new Ros2Aimdk_msgsSrvSetPmuLed_Response();
        value.header = readRos2Aimdk_msgsMsgResponseHeader(reader);
        value.status_code = (int)reader.integer(2, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetVolume_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetVolume_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();
        public long audio_volume = 0;

        public Ros2Aimdk_msgsSrvSetVolume_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetVolume_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvSetVolume_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetVolume_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetVolume_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetVolume_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetVolume_Request value = readRos2Aimdk_msgsSrvSetVolume_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetVolume_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetVolume_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        long part1 = value.audio_volume;
        writer.integer(part1, 4, false);
    }

    private static Ros2Aimdk_msgsSrvSetVolume_Request readRos2Aimdk_msgsSrvSetVolume_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetVolume_Request value = new Ros2Aimdk_msgsSrvSetVolume_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.audio_volume = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvSetVolume_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetVolume_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();
        public long audio_volume = 0;

        public Ros2Aimdk_msgsSrvSetVolume_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvSetVolume_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvSetVolume_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvSetVolume_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvSetVolume_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvSetVolume_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvSetVolume_Response value = readRos2Aimdk_msgsSrvSetVolume_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvSetVolume_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvSetVolume_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        long part1 = value.audio_volume;
        writer.integer(part1, 4, false);
    }

    private static Ros2Aimdk_msgsSrvSetVolume_Response readRos2Aimdk_msgsSrvSetVolume_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetVolume_Response value = new Ros2Aimdk_msgsSrvSetVolume_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.audio_volume = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvStopAudioPlay_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/StopAudioPlay_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_477159e3e8f462376693e7d0051c4b49cf5170520a056be2a2bd5a72d83e24b9";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();

        public Ros2Aimdk_msgsSrvStopAudioPlay_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvStopAudioPlay_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvStopAudioPlay_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvStopAudioPlay_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvStopAudioPlay_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvStopAudioPlay_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvStopAudioPlay_Request value = readRos2Aimdk_msgsSrvStopAudioPlay_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvStopAudioPlay_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvStopAudioPlay_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvStopAudioPlay_Request readRos2Aimdk_msgsSrvStopAudioPlay_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvStopAudioPlay_Request value = new Ros2Aimdk_msgsSrvStopAudioPlay_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvStopAudioPlay_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/StopAudioPlay_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9a21b16e6eb5642e5bf5e0e64b15999a661142a65d2cc8ea68d8c62a2a1fbcb4";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;
        public Ros2Aimdk_msgsMsgCommonResponse reponse = new Ros2Aimdk_msgsMsgCommonResponse();

        public Ros2Aimdk_msgsSrvStopAudioPlay_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvStopAudioPlay_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvStopAudioPlay_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvStopAudioPlay_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvStopAudioPlay_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvStopAudioPlay_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvStopAudioPlay_Response value = readRos2Aimdk_msgsSrvStopAudioPlay_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvStopAudioPlay_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvStopAudioPlay_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.reponse;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static Ros2Aimdk_msgsSrvStopAudioPlay_Response readRos2Aimdk_msgsSrvStopAudioPlay_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvStopAudioPlay_Response value = new Ros2Aimdk_msgsSrvStopAudioPlay_Response();
        value.reponse = readRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }
}
