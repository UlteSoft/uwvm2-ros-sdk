/**
 * @file BoundedRecords.java
 * @brief Full agibot java codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v0_8_1_main values in java. 72 original records retain 227 fields and 55
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
        public static final String CODEC_IDENTITY = "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b";
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
        public static final String CODEC_IDENTITY = "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a";
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
        public static final String CODEC_IDENTITY = "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f";
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

    public static final class Ros2Aimdk_msgsMsgFaceEmojiStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/FaceEmojiStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7";
        public static final int MIN_WIRE_BYTES = 47, MAX_WIRE_BYTES = 2415;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public String e_path = "";
        public String[] e_path_list = new String[0];
        public int e_id = 0;
        public int mode = 0;
        public int priority = 0;
        public int status = 0;
        public double time_to_end_ms = 0;

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
        public static final String CODEC_IDENTITY = "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6";
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
        public static final String CODEC_IDENTITY = "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e";
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

    public static final class Ros2Aimdk_msgsMsgHandStateArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/HandStateArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d";
        public static final int MIN_WIRE_BYTES = 34, MAX_WIRE_BYTES = 1474;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
        public Ros2Aimdk_msgsMsgHandType left_hand_type = new Ros2Aimdk_msgsMsgHandType();
        public Ros2Aimdk_msgsMsgHandState[] left_hands = new Ros2Aimdk_msgsMsgHandState[0];
        public Ros2Aimdk_msgsMsgHandType right_hand_type = new Ros2Aimdk_msgsMsgHandType();
        public Ros2Aimdk_msgsMsgHandState[] right_hands = new Ros2Aimdk_msgsMsgHandState[0];

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
        Ros2Aimdk_msgsMsgHandType part3 = value.right_hand_type;
        writeRos2Aimdk_msgsMsgHandType(writer, part3);
        Ros2Aimdk_msgsMsgHandState[] part4 = value.right_hands;
        if(part4 == null || part4.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeRos2Aimdk_msgsMsgHandState(writer, part4[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgHandStateArray readRos2Aimdk_msgsMsgHandStateArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgHandStateArray value = new Ros2Aimdk_msgsMsgHandStateArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.left_hand_type = readRos2Aimdk_msgsMsgHandType(reader);
        value.left_hands = new Ros2Aimdk_msgsMsgHandState[readCount(reader, 4, 36)];
        for(int i = 0; i < value.left_hands.length; ++i)
            value.left_hands[i] = readRos2Aimdk_msgsMsgHandState(reader);
        value.right_hand_type = readRos2Aimdk_msgsMsgHandType(reader);
        value.right_hands = new Ros2Aimdk_msgsMsgHandState[readCount(reader, 4, 36)];
        for(int i = 0; i < value.right_hands.length; ++i)
            value.right_hands[i] = readRos2Aimdk_msgsMsgHandState(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f";
        public static final int MIN_WIRE_BYTES = 31, MAX_WIRE_BYTES = 159;
        public String name = "";
        public double position = 0;
        public double velocity = 0;
        public double effort = 0;
        public int coil_temp = 0;
        public int motor_temp = 0;
        public int motor_vol = 0;

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
        int part4 = value.coil_temp;
        writer.integer(part4, 1, false);
        int part5 = value.motor_temp;
        writer.integer(part5, 1, false);
        int part6 = value.motor_vol;
        writer.integer(part6, 1, false);
    }

    private static Ros2Aimdk_msgsMsgJointState readRos2Aimdk_msgsMsgJointState(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgJointState value = new Ros2Aimdk_msgsMsgJointState();
        value.name = readText(reader, 128);
        value.position = reader.f64();
        value.velocity = reader.f64();
        value.effort = reader.f64();
        value.coil_temp = (int)reader.integer(1, false);
        value.motor_temp = (int)reader.integer(1, false);
        value.motor_vol = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgJointStateArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/JointStateArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 10332;
        public Ros2Aimdk_msgsMsgMessageHeader header = new Ros2Aimdk_msgsMsgMessageHeader();
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
        Ros2Aimdk_msgsMsgJointState[] part1 = value.joints;
        if(part1 == null || part1.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Aimdk_msgsMsgJointState(writer, part1[i]);
        }
    }

    private static Ros2Aimdk_msgsMsgJointStateArray readRos2Aimdk_msgsMsgJointStateArray(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgJointStateArray value = new Ros2Aimdk_msgsMsgJointStateArray();
        value.header = readRos2Aimdk_msgsMsgMessageHeader(reader);
        value.joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 64, 31)];
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

    public static final class Ros2Aimdk_msgsMsgTtsPriorityLevel
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/TtsPriorityLevel";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a";
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

    public static final class Ros2Aimdk_msgsMsgPlayMediaFileRequest
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PlayMediaFileRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254";
        public static final int MIN_WIRE_BYTES = 22, MAX_WIRE_BYTES = 406;
        public String file_name = "";
        public long sample_rate = 0;
        public Ros2Aimdk_msgsMsgTtsPriorityLevel priority_level = new Ros2Aimdk_msgsMsgTtsPriorityLevel();
        public long priority_weight = 0;
        public String domain = "";
        public String trace_id = "";
        public boolean is_interrupted = false;

        public Ros2Aimdk_msgsMsgPlayMediaFileRequest()
        {
        }

        public static final Codec<Ros2Aimdk_msgsMsgPlayMediaFileRequest> CODEC = new Codec<Ros2Aimdk_msgsMsgPlayMediaFileRequest>() {
            public byte[] encode(Ros2Aimdk_msgsMsgPlayMediaFileRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsMsgPlayMediaFileRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsMsgPlayMediaFileRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsMsgPlayMediaFileRequest value = readRos2Aimdk_msgsMsgPlayMediaFileRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsMsgPlayMediaFileRequest(Codecs.Writer writer, Ros2Aimdk_msgsMsgPlayMediaFileRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.file_name;
        writeText(writer, part0, 128);
        long part1 = value.sample_rate;
        writer.integer(part1, 4, false);
        Ros2Aimdk_msgsMsgTtsPriorityLevel part2 = value.priority_level;
        writeRos2Aimdk_msgsMsgTtsPriorityLevel(writer, part2);
        long part3 = value.priority_weight;
        writer.integer(part3, 4, false);
        String part4 = value.domain;
        writeText(writer, part4, 128);
        String part5 = value.trace_id;
        writeText(writer, part5, 128);
        boolean part6 = value.is_interrupted;
        writer.integer(part6 ? 1 : 0, 1, false);
    }

    private static Ros2Aimdk_msgsMsgPlayMediaFileRequest readRos2Aimdk_msgsMsgPlayMediaFileRequest(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsMsgPlayMediaFileRequest value = new Ros2Aimdk_msgsMsgPlayMediaFileRequest();
        value.file_name = readText(reader, 128);
        value.sample_rate = reader.integer(4, false);
        value.priority_level = readRos2Aimdk_msgsMsgTtsPriorityLevel(reader);
        value.priority_weight = reader.integer(4, false);
        value.domain = readText(reader, 128);
        value.trace_id = readText(reader, 128);
        value.is_interrupted = readBool(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPlayTtsRequest
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PlayTtsRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd";
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
        public static final String CODEC_IDENTITY = "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 538;
        public String text = "";
        public Ros2Aimdk_msgsMsgTtsPriorityLevel priority_level = new Ros2Aimdk_msgsMsgTtsPriorityLevel();
        public long priority_weight = 0;
        public String domain = "";
        public String trace_id = "";
        public boolean is_success = false;
        public String error_message = "";
        public long estimated_duration = 0;

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
        return value;
    }

    public static final class Ros2Aimdk_msgsMsgPmuState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/msg/PmuState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c";
        public static final int MIN_WIRE_BYTES = 201, MAX_WIRE_BYTES = 1097;
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
        String part19 = value.bms_manufacturer;
        writeText(writer, part19, 128);
        String part20 = value.bms_serial_number;
        writeText(writer, part20, 128);
        String part21 = value.bms_hardware_version;
        writeText(writer, part21, 128);
        String part22 = value.bms_software_version;
        writeText(writer, part22, 128);
        long part23 = value.bms_status_bits;
        writer.integer(part23, 4, false);
        int part24 = value.battery_balance_line_resistance;
        writer.integer(part24, 2, false);
        double part25 = value.battery_pack_voltage;
        writer.f64(part25);
        double part26 = value.battery_current;
        writer.f64(part26);
        double part27 = value.battery_output_power;
        writer.f64(part27);
        double part28 = value.battery_temperature;
        writer.f64(part28);
        long part29 = value.battery_remaining_capacity;
        writer.integer(part29, 4, false);
        int part30 = value.battery_remaining_capacity_percentage;
        writer.integer(part30, 1, false);
        int part31 = value.battery_cycle_count;
        writer.integer(part31, 2, false);
        long part32 = value.battery_cycle_total_capacity;
        writer.integer(part32, 4, false);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 2712;
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
        value.head_joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 4, 31)];
        for(int i = 0; i < value.head_joints.length; ++i)
            value.head_joints[i] = readRos2Aimdk_msgsMsgJointState(reader);
        value.arm_joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 4, 31)];
        for(int i = 0; i < value.arm_joints.length; ++i)
            value.arm_joints[i] = readRos2Aimdk_msgsMsgJointState(reader);
        value.waist_joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 4, 31)];
        for(int i = 0; i < value.waist_joints.length; ++i)
            value.waist_joints[i] = readRos2Aimdk_msgsMsgJointState(reader);
        value.leg_joints = new Ros2Aimdk_msgsMsgJointState[readCount(reader, 4, 31)];
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
        public static final String CODEC_IDENTITY = "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c";
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

    public static final class Ros2Aimdk_msgsSrvLedStripCommand_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/LedStripCommand_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public Ros2Aimdk_msgsMsgCommonRequest request = new Ros2Aimdk_msgsMsgCommonRequest();
        public int led_strip_mode = 0;
        public int r = 0;
        public int g = 0;
        public int b = 0;

        public Ros2Aimdk_msgsSrvLedStripCommand_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvLedStripCommand_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvLedStripCommand_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvLedStripCommand_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvLedStripCommand_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvLedStripCommand_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvLedStripCommand_Request value = readRos2Aimdk_msgsSrvLedStripCommand_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvLedStripCommand_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvLedStripCommand_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.request;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        int part1 = value.led_strip_mode;
        writer.integer(part1, 1, false);
        int part2 = value.r;
        writer.integer(part2, 1, false);
        int part3 = value.g;
        writer.integer(part3, 1, false);
        int part4 = value.b;
        writer.integer(part4, 1, false);
    }

    private static Ros2Aimdk_msgsSrvLedStripCommand_Request readRos2Aimdk_msgsSrvLedStripCommand_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvLedStripCommand_Request value = new Ros2Aimdk_msgsSrvLedStripCommand_Request();
        value.request = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.led_strip_mode = (int)reader.integer(1, false);
        value.r = (int)reader.integer(1, false);
        value.g = (int)reader.integer(1, false);
        value.b = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvLedStripCommand_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/LedStripCommand_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;
        public Ros2Aimdk_msgsMsgResponseHeader header = new Ros2Aimdk_msgsMsgResponseHeader();
        public int status_code = 0;

        public Ros2Aimdk_msgsSrvLedStripCommand_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvLedStripCommand_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvLedStripCommand_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvLedStripCommand_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvLedStripCommand_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvLedStripCommand_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvLedStripCommand_Response value = readRos2Aimdk_msgsSrvLedStripCommand_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvLedStripCommand_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvLedStripCommand_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgResponseHeader part0 = value.header;
        writeRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        int part1 = value.status_code;
        writer.integer(part1, 2, false);
    }

    private static Ros2Aimdk_msgsSrvLedStripCommand_Response readRos2Aimdk_msgsSrvLedStripCommand_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvLedStripCommand_Response value = new Ros2Aimdk_msgsSrvLedStripCommand_Response();
        value.header = readRos2Aimdk_msgsMsgResponseHeader(reader);
        value.status_code = (int)reader.integer(2, false);
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

    public static final class Ros2Aimdk_msgsSrvPlayMediaFile_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayMediaFile_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c";
        public static final int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 414;
        public Ros2Aimdk_msgsMsgCommonRequest header = new Ros2Aimdk_msgsMsgCommonRequest();
        public Ros2Aimdk_msgsMsgPlayMediaFileRequest media_file_req = new Ros2Aimdk_msgsMsgPlayMediaFileRequest();

        public Ros2Aimdk_msgsSrvPlayMediaFile_Request()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayMediaFile_Request> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayMediaFile_Request>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayMediaFile_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayMediaFile_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayMediaFile_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayMediaFile_Request value = readRos2Aimdk_msgsSrvPlayMediaFile_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayMediaFile_Request(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayMediaFile_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonRequest part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        Ros2Aimdk_msgsMsgPlayMediaFileRequest part1 = value.media_file_req;
        writeRos2Aimdk_msgsMsgPlayMediaFileRequest(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvPlayMediaFile_Request readRos2Aimdk_msgsSrvPlayMediaFile_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayMediaFile_Request value = new Ros2Aimdk_msgsSrvPlayMediaFile_Request();
        value.header = readRos2Aimdk_msgsMsgCommonRequest(reader);
        value.media_file_req = readRos2Aimdk_msgsMsgPlayMediaFileRequest(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayMediaFile_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayMediaFile_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 690;
        public Ros2Aimdk_msgsMsgCommonResponse header = new Ros2Aimdk_msgsMsgCommonResponse();
        public Ros2Aimdk_msgsMsgPlayTtsResponse tts_resp = new Ros2Aimdk_msgsMsgPlayTtsResponse();

        public Ros2Aimdk_msgsSrvPlayMediaFile_Response()
        {
        }

        public static final Codec<Ros2Aimdk_msgsSrvPlayMediaFile_Response> CODEC = new Codec<Ros2Aimdk_msgsSrvPlayMediaFile_Response>() {
            public byte[] encode(Ros2Aimdk_msgsSrvPlayMediaFile_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Aimdk_msgsSrvPlayMediaFile_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Aimdk_msgsSrvPlayMediaFile_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Aimdk_msgsSrvPlayMediaFile_Response value = readRos2Aimdk_msgsSrvPlayMediaFile_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Aimdk_msgsSrvPlayMediaFile_Response(Codecs.Writer writer, Ros2Aimdk_msgsSrvPlayMediaFile_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Aimdk_msgsMsgCommonResponse part0 = value.header;
        writeRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        Ros2Aimdk_msgsMsgPlayTtsResponse part1 = value.tts_resp;
        writeRos2Aimdk_msgsMsgPlayTtsResponse(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvPlayMediaFile_Response readRos2Aimdk_msgsSrvPlayMediaFile_Response(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvPlayMediaFile_Response value = new Ros2Aimdk_msgsSrvPlayMediaFile_Response();
        value.header = readRos2Aimdk_msgsMsgCommonResponse(reader);
        value.tts_resp = readRos2Aimdk_msgsMsgPlayTtsResponse(reader);
        return value;
    }

    public static final class Ros2Aimdk_msgsSrvPlayTts_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/PlayTts_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7";
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
        public static final String CODEC_IDENTITY = "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 690;
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

    public static final class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "aimdk_msgs/srv/SetAgentPropertiesRequest_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec";
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
        public static final String CODEC_IDENTITY = "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;
        public Ros2Aimdk_msgsMsgRequestHeader header = new Ros2Aimdk_msgsMsgRequestHeader();
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
        Ros2Aimdk_msgsMsgMcActionCommand part1 = value.command;
        writeRos2Aimdk_msgsMsgMcActionCommand(writer, part1);
    }

    private static Ros2Aimdk_msgsSrvSetMcAction_Request readRos2Aimdk_msgsSrvSetMcAction_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMcAction_Request value = new Ros2Aimdk_msgsSrvSetMcAction_Request();
        value.header = readRos2Aimdk_msgsMsgRequestHeader(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea";
        public static final int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 149;
        public Ros2Aimdk_msgsMsgRequestHeader header = new Ros2Aimdk_msgsMsgRequestHeader();
        public Ros2Aimdk_msgsMsgMcControlArea area = new Ros2Aimdk_msgsMsgMcControlArea();
        public Ros2Aimdk_msgsMsgMcPresetMotion motion = new Ros2Aimdk_msgsMsgMcPresetMotion();
        public boolean interrupt = false;
        public String ani_path = "";

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
        Ros2Aimdk_msgsMsgMcControlArea part1 = value.area;
        writeRos2Aimdk_msgsMsgMcControlArea(writer, part1);
        Ros2Aimdk_msgsMsgMcPresetMotion part2 = value.motion;
        writeRos2Aimdk_msgsMsgMcPresetMotion(writer, part2);
        boolean part3 = value.interrupt;
        writer.integer(part3 ? 1 : 0, 1, false);
        String part4 = value.ani_path;
        writeText(writer, part4, 128);
    }

    private static Ros2Aimdk_msgsSrvSetMcPresetMotion_Request readRos2Aimdk_msgsSrvSetMcPresetMotion_Request(Codecs.Reader reader)
    {
        Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value = new Ros2Aimdk_msgsSrvSetMcPresetMotion_Request();
        value.header = readRos2Aimdk_msgsMsgRequestHeader(reader);
        value.area = readRos2Aimdk_msgsMsgMcControlArea(reader);
        value.motion = readRos2Aimdk_msgsMsgMcPresetMotion(reader);
        value.interrupt = readBool(reader);
        value.ani_path = readText(reader, 128);
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
}
