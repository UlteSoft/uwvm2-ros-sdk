/**
 * @file BoundedRecords.java
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros1-aws-simulation-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

package org.uwvm.doosan.doosan_ros1_aws_simulation_complete;

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

    public static final class Ros1Dsr_msgsConfigCreateModbusRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigCreateModbusRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f";
        public static final int MIN_WIRE_BYTES = 19, MAX_WIRE_BYTES = 531;
        public String name = "";
        public String ip = "";
        public int port = 0;
        public byte reg_type = 0;
        public byte index = 0;
        public byte value = 0;
        public int slave_id = 0;

        public Ros1Dsr_msgsConfigCreateModbusRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigCreateModbusRequest> CODEC = new Codec<Ros1Dsr_msgsConfigCreateModbusRequest>() {
            public byte[] encode(Ros1Dsr_msgsConfigCreateModbusRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigCreateModbusRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigCreateModbusRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigCreateModbusRequest value = readRos1Dsr_msgsConfigCreateModbusRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigCreateModbusRequest(Codecs.Writer writer, Ros1Dsr_msgsConfigCreateModbusRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
        String part1 = value.ip;
        writeText(writer, part1, 256);
        int part2 = value.port;
        writer.integer(part2, 4, true);
        byte part3 = value.reg_type;
        writer.integer(part3, 1, true);
        byte part4 = value.index;
        writer.integer(part4, 1, true);
        byte part5 = value.value;
        writer.integer(part5, 1, true);
        int part6 = value.slave_id;
        writer.integer(part6, 4, true);
    }

    private static Ros1Dsr_msgsConfigCreateModbusRequest readRos1Dsr_msgsConfigCreateModbusRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigCreateModbusRequest value = new Ros1Dsr_msgsConfigCreateModbusRequest();
        value.name = readText(reader, 256);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
        value.reg_type = (byte)reader.integer(1, true);
        value.index = (byte)reader.integer(1, true);
        value.value = (byte)reader.integer(1, true);
        value.slave_id = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Dsr_msgsConfigCreateModbusResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigCreateModbusResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsConfigCreateModbusResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigCreateModbusResponse> CODEC = new Codec<Ros1Dsr_msgsConfigCreateModbusResponse>() {
            public byte[] encode(Ros1Dsr_msgsConfigCreateModbusResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigCreateModbusResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigCreateModbusResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigCreateModbusResponse value = readRos1Dsr_msgsConfigCreateModbusResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigCreateModbusResponse(Codecs.Writer writer, Ros1Dsr_msgsConfigCreateModbusResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsConfigCreateModbusResponse readRos1Dsr_msgsConfigCreateModbusResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigCreateModbusResponse value = new Ros1Dsr_msgsConfigCreateModbusResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsConfigCreateTcpRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigCreateTcpRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744";
        public static final int MIN_WIRE_BYTES = 52, MAX_WIRE_BYTES = 308;
        public String name = "";
        public double[] pos = new double[6];

        public Ros1Dsr_msgsConfigCreateTcpRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigCreateTcpRequest> CODEC = new Codec<Ros1Dsr_msgsConfigCreateTcpRequest>() {
            public byte[] encode(Ros1Dsr_msgsConfigCreateTcpRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigCreateTcpRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigCreateTcpRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigCreateTcpRequest value = readRos1Dsr_msgsConfigCreateTcpRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigCreateTcpRequest(Codecs.Writer writer, Ros1Dsr_msgsConfigCreateTcpRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
        double[] part1 = value.pos;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros1Dsr_msgsConfigCreateTcpRequest readRos1Dsr_msgsConfigCreateTcpRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigCreateTcpRequest value = new Ros1Dsr_msgsConfigCreateTcpRequest();
        value.name = readText(reader, 256);
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsConfigCreateTcpResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigCreateTcpResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsConfigCreateTcpResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigCreateTcpResponse> CODEC = new Codec<Ros1Dsr_msgsConfigCreateTcpResponse>() {
            public byte[] encode(Ros1Dsr_msgsConfigCreateTcpResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigCreateTcpResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigCreateTcpResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigCreateTcpResponse value = readRos1Dsr_msgsConfigCreateTcpResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigCreateTcpResponse(Codecs.Writer writer, Ros1Dsr_msgsConfigCreateTcpResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsConfigCreateTcpResponse readRos1Dsr_msgsConfigCreateTcpResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigCreateTcpResponse value = new Ros1Dsr_msgsConfigCreateTcpResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsConfigCreateToolRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigCreateToolRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44";
        public static final int MIN_WIRE_BYTES = 84, MAX_WIRE_BYTES = 340;
        public String name = "";
        public double weight = 0;
        public double[] cog = new double[3];
        public double[] inertia = new double[6];

        public Ros1Dsr_msgsConfigCreateToolRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigCreateToolRequest> CODEC = new Codec<Ros1Dsr_msgsConfigCreateToolRequest>() {
            public byte[] encode(Ros1Dsr_msgsConfigCreateToolRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigCreateToolRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigCreateToolRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigCreateToolRequest value = readRos1Dsr_msgsConfigCreateToolRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigCreateToolRequest(Codecs.Writer writer, Ros1Dsr_msgsConfigCreateToolRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
        double part1 = value.weight;
        writer.f64(part1);
        double[] part2 = value.cog;
        if(part2 == null || part2.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.inertia;
        if(part3 == null || part3.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
    }

    private static Ros1Dsr_msgsConfigCreateToolRequest readRos1Dsr_msgsConfigCreateToolRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigCreateToolRequest value = new Ros1Dsr_msgsConfigCreateToolRequest();
        value.name = readText(reader, 256);
        value.weight = reader.f64();
        value.cog = new double[3];
        for(int i = 0; i < value.cog.length; ++i)
            value.cog[i] = reader.f64();
        value.inertia = new double[6];
        for(int i = 0; i < value.inertia.length; ++i)
            value.inertia[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsConfigCreateToolResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigCreateToolResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsConfigCreateToolResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigCreateToolResponse> CODEC = new Codec<Ros1Dsr_msgsConfigCreateToolResponse>() {
            public byte[] encode(Ros1Dsr_msgsConfigCreateToolResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigCreateToolResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigCreateToolResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigCreateToolResponse value = readRos1Dsr_msgsConfigCreateToolResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigCreateToolResponse(Codecs.Writer writer, Ros1Dsr_msgsConfigCreateToolResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsConfigCreateToolResponse readRos1Dsr_msgsConfigCreateToolResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigCreateToolResponse value = new Ros1Dsr_msgsConfigCreateToolResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsConfigDeleteModbusRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigDeleteModbusRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros1Dsr_msgsConfigDeleteModbusRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigDeleteModbusRequest> CODEC = new Codec<Ros1Dsr_msgsConfigDeleteModbusRequest>() {
            public byte[] encode(Ros1Dsr_msgsConfigDeleteModbusRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigDeleteModbusRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigDeleteModbusRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigDeleteModbusRequest value = readRos1Dsr_msgsConfigDeleteModbusRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigDeleteModbusRequest(Codecs.Writer writer, Ros1Dsr_msgsConfigDeleteModbusRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsConfigDeleteModbusRequest readRos1Dsr_msgsConfigDeleteModbusRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigDeleteModbusRequest value = new Ros1Dsr_msgsConfigDeleteModbusRequest();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsConfigDeleteModbusResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigDeleteModbusResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsConfigDeleteModbusResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigDeleteModbusResponse> CODEC = new Codec<Ros1Dsr_msgsConfigDeleteModbusResponse>() {
            public byte[] encode(Ros1Dsr_msgsConfigDeleteModbusResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigDeleteModbusResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigDeleteModbusResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigDeleteModbusResponse value = readRos1Dsr_msgsConfigDeleteModbusResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigDeleteModbusResponse(Codecs.Writer writer, Ros1Dsr_msgsConfigDeleteModbusResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsConfigDeleteModbusResponse readRos1Dsr_msgsConfigDeleteModbusResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigDeleteModbusResponse value = new Ros1Dsr_msgsConfigDeleteModbusResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsConfigDeleteTcpRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigDeleteTcpRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros1Dsr_msgsConfigDeleteTcpRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigDeleteTcpRequest> CODEC = new Codec<Ros1Dsr_msgsConfigDeleteTcpRequest>() {
            public byte[] encode(Ros1Dsr_msgsConfigDeleteTcpRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigDeleteTcpRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigDeleteTcpRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigDeleteTcpRequest value = readRos1Dsr_msgsConfigDeleteTcpRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigDeleteTcpRequest(Codecs.Writer writer, Ros1Dsr_msgsConfigDeleteTcpRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsConfigDeleteTcpRequest readRos1Dsr_msgsConfigDeleteTcpRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigDeleteTcpRequest value = new Ros1Dsr_msgsConfigDeleteTcpRequest();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsConfigDeleteTcpResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigDeleteTcpResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsConfigDeleteTcpResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigDeleteTcpResponse> CODEC = new Codec<Ros1Dsr_msgsConfigDeleteTcpResponse>() {
            public byte[] encode(Ros1Dsr_msgsConfigDeleteTcpResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigDeleteTcpResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigDeleteTcpResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigDeleteTcpResponse value = readRos1Dsr_msgsConfigDeleteTcpResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigDeleteTcpResponse(Codecs.Writer writer, Ros1Dsr_msgsConfigDeleteTcpResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsConfigDeleteTcpResponse readRos1Dsr_msgsConfigDeleteTcpResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigDeleteTcpResponse value = new Ros1Dsr_msgsConfigDeleteTcpResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsConfigDeleteToolRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigDeleteToolRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros1Dsr_msgsConfigDeleteToolRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigDeleteToolRequest> CODEC = new Codec<Ros1Dsr_msgsConfigDeleteToolRequest>() {
            public byte[] encode(Ros1Dsr_msgsConfigDeleteToolRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigDeleteToolRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigDeleteToolRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigDeleteToolRequest value = readRos1Dsr_msgsConfigDeleteToolRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigDeleteToolRequest(Codecs.Writer writer, Ros1Dsr_msgsConfigDeleteToolRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsConfigDeleteToolRequest readRos1Dsr_msgsConfigDeleteToolRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigDeleteToolRequest value = new Ros1Dsr_msgsConfigDeleteToolRequest();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsConfigDeleteToolResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConfigDeleteToolResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsConfigDeleteToolResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsConfigDeleteToolResponse> CODEC = new Codec<Ros1Dsr_msgsConfigDeleteToolResponse>() {
            public byte[] encode(Ros1Dsr_msgsConfigDeleteToolResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConfigDeleteToolResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConfigDeleteToolResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConfigDeleteToolResponse value = readRos1Dsr_msgsConfigDeleteToolResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConfigDeleteToolResponse(Codecs.Writer writer, Ros1Dsr_msgsConfigDeleteToolResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsConfigDeleteToolResponse readRos1Dsr_msgsConfigDeleteToolResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConfigDeleteToolResponse value = new Ros1Dsr_msgsConfigDeleteToolResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsDrlPauseRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DrlPauseRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsDrlPauseRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsDrlPauseRequest> CODEC = new Codec<Ros1Dsr_msgsDrlPauseRequest>() {
            public byte[] encode(Ros1Dsr_msgsDrlPauseRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDrlPauseRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDrlPauseRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDrlPauseRequest value = readRos1Dsr_msgsDrlPauseRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDrlPauseRequest(Codecs.Writer writer, Ros1Dsr_msgsDrlPauseRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsDrlPauseRequest readRos1Dsr_msgsDrlPauseRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDrlPauseRequest value = new Ros1Dsr_msgsDrlPauseRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsDrlPauseResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DrlPauseResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsDrlPauseResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsDrlPauseResponse> CODEC = new Codec<Ros1Dsr_msgsDrlPauseResponse>() {
            public byte[] encode(Ros1Dsr_msgsDrlPauseResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDrlPauseResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDrlPauseResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDrlPauseResponse value = readRos1Dsr_msgsDrlPauseResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDrlPauseResponse(Codecs.Writer writer, Ros1Dsr_msgsDrlPauseResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsDrlPauseResponse readRos1Dsr_msgsDrlPauseResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDrlPauseResponse value = new Ros1Dsr_msgsDrlPauseResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsDrlResumeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DrlResumeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsDrlResumeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsDrlResumeRequest> CODEC = new Codec<Ros1Dsr_msgsDrlResumeRequest>() {
            public byte[] encode(Ros1Dsr_msgsDrlResumeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDrlResumeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDrlResumeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDrlResumeRequest value = readRos1Dsr_msgsDrlResumeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDrlResumeRequest(Codecs.Writer writer, Ros1Dsr_msgsDrlResumeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsDrlResumeRequest readRos1Dsr_msgsDrlResumeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDrlResumeRequest value = new Ros1Dsr_msgsDrlResumeRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsDrlResumeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DrlResumeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsDrlResumeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsDrlResumeResponse> CODEC = new Codec<Ros1Dsr_msgsDrlResumeResponse>() {
            public byte[] encode(Ros1Dsr_msgsDrlResumeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDrlResumeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDrlResumeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDrlResumeResponse value = readRos1Dsr_msgsDrlResumeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDrlResumeResponse(Codecs.Writer writer, Ros1Dsr_msgsDrlResumeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsDrlResumeResponse readRos1Dsr_msgsDrlResumeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDrlResumeResponse value = new Ros1Dsr_msgsDrlResumeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsDrlStartRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DrlStartRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public byte robotSystem = 0;
        public String code = "";

        public Ros1Dsr_msgsDrlStartRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsDrlStartRequest> CODEC = new Codec<Ros1Dsr_msgsDrlStartRequest>() {
            public byte[] encode(Ros1Dsr_msgsDrlStartRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDrlStartRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDrlStartRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDrlStartRequest value = readRos1Dsr_msgsDrlStartRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDrlStartRequest(Codecs.Writer writer, Ros1Dsr_msgsDrlStartRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robotSystem;
        writer.integer(part0, 1, true);
        String part1 = value.code;
        writeText(writer, part1, 256);
    }

    private static Ros1Dsr_msgsDrlStartRequest readRos1Dsr_msgsDrlStartRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDrlStartRequest value = new Ros1Dsr_msgsDrlStartRequest();
        value.robotSystem = (byte)reader.integer(1, true);
        value.code = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsDrlStartResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DrlStartResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsDrlStartResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsDrlStartResponse> CODEC = new Codec<Ros1Dsr_msgsDrlStartResponse>() {
            public byte[] encode(Ros1Dsr_msgsDrlStartResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDrlStartResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDrlStartResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDrlStartResponse value = readRos1Dsr_msgsDrlStartResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDrlStartResponse(Codecs.Writer writer, Ros1Dsr_msgsDrlStartResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsDrlStartResponse readRos1Dsr_msgsDrlStartResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDrlStartResponse value = new Ros1Dsr_msgsDrlStartResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsDrlStopRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DrlStopRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte stop_mode = 0;

        public Ros1Dsr_msgsDrlStopRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsDrlStopRequest> CODEC = new Codec<Ros1Dsr_msgsDrlStopRequest>() {
            public byte[] encode(Ros1Dsr_msgsDrlStopRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDrlStopRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDrlStopRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDrlStopRequest value = readRos1Dsr_msgsDrlStopRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDrlStopRequest(Codecs.Writer writer, Ros1Dsr_msgsDrlStopRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.stop_mode;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsDrlStopRequest readRos1Dsr_msgsDrlStopRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDrlStopRequest value = new Ros1Dsr_msgsDrlStopRequest();
        value.stop_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsDrlStopResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DrlStopResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsDrlStopResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsDrlStopResponse> CODEC = new Codec<Ros1Dsr_msgsDrlStopResponse>() {
            public byte[] encode(Ros1Dsr_msgsDrlStopResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDrlStopResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDrlStopResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDrlStopResponse value = readRos1Dsr_msgsDrlStopResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDrlStopResponse(Codecs.Writer writer, Ros1Dsr_msgsDrlStopResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsDrlStopResponse readRos1Dsr_msgsDrlStopResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDrlStopResponse value = new Ros1Dsr_msgsDrlStopResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCtrlBoxAnalogInputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte channel = 0;

        public Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest> CODEC = new Codec<Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCtrlBoxAnalogInputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest value = readRos1Dsr_msgsGetCtrlBoxAnalogInputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCtrlBoxAnalogInputRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.channel;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest readRos1Dsr_msgsGetCtrlBoxAnalogInputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest value = new Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest();
        value.channel = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCtrlBoxAnalogInputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_53fc14db79f9c63ee04e5e055961e397d6ceefa553e0912c4c944f858376b4b2";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public double value = 0;

        public Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse> CODEC = new Codec<Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse value = readRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.value;
        writer.f64(part0);
    }

    private static Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse readRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse value = new Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse();
        value.value = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCtrlBoxDigitalInputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte index = 0;

        public Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest> CODEC = new Codec<Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCtrlBoxDigitalInputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest value = readRos1Dsr_msgsGetCtrlBoxDigitalInputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCtrlBoxDigitalInputRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest readRos1Dsr_msgsGetCtrlBoxDigitalInputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest value = new Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest();
        value.index = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCtrlBoxDigitalInputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b24172ba7a1d82456b33bcbfccde50c1e0a40d4ce870dae704c00a553591a6a2";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean value = false;

        public Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse> CODEC = new Codec<Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse value = readRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.value;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse readRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse value = new Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse();
        value.value = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentPoseRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentPoseRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte space_type = 0;

        public Ros1Dsr_msgsGetCurrentPoseRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentPoseRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentPoseRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentPoseRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentPoseRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentPoseRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentPoseRequest value = readRos1Dsr_msgsGetCurrentPoseRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentPoseRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentPoseRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.space_type;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetCurrentPoseRequest readRos1Dsr_msgsGetCurrentPoseRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentPoseRequest value = new Ros1Dsr_msgsGetCurrentPoseRequest();
        value.space_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentPoseResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentPoseResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cae2a551df6b2c548e171cdb181bbbe1fcbfe9fc3039b68f4edab2043ef8b9d6";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros1Dsr_msgsGetCurrentPoseResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentPoseResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentPoseResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentPoseResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentPoseResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentPoseResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentPoseResponse value = readRos1Dsr_msgsGetCurrentPoseResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentPoseResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentPoseResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.pos;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Dsr_msgsGetCurrentPoseResponse readRos1Dsr_msgsGetCurrentPoseResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentPoseResponse value = new Ros1Dsr_msgsGetCurrentPoseResponse();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentSolutionSpaceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentSolutionSpaceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetCurrentSolutionSpaceRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentSolutionSpaceRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentSolutionSpaceRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentSolutionSpaceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentSolutionSpaceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentSolutionSpaceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentSolutionSpaceRequest value = readRos1Dsr_msgsGetCurrentSolutionSpaceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentSolutionSpaceRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentSolutionSpaceRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetCurrentSolutionSpaceRequest readRos1Dsr_msgsGetCurrentSolutionSpaceRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentSolutionSpaceRequest value = new Ros1Dsr_msgsGetCurrentSolutionSpaceRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentSolutionSpaceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentSolutionSpaceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_57e390c7f039b26fc69fe35d07420ee94084ce9d9531e7e8c6d6a09729b5986f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte solution_space = 0;

        public Ros1Dsr_msgsGetCurrentSolutionSpaceResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentSolutionSpaceResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentSolutionSpaceResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentSolutionSpaceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentSolutionSpaceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentSolutionSpaceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentSolutionSpaceResponse value = readRos1Dsr_msgsGetCurrentSolutionSpaceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentSolutionSpaceResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentSolutionSpaceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.solution_space;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetCurrentSolutionSpaceResponse readRos1Dsr_msgsGetCurrentSolutionSpaceResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentSolutionSpaceResponse value = new Ros1Dsr_msgsGetCurrentSolutionSpaceResponse();
        value.solution_space = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentTcpRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentTcpRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetCurrentTcpRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentTcpRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentTcpRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentTcpRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentTcpRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentTcpRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentTcpRequest value = readRos1Dsr_msgsGetCurrentTcpRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentTcpRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentTcpRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetCurrentTcpRequest readRos1Dsr_msgsGetCurrentTcpRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentTcpRequest value = new Ros1Dsr_msgsGetCurrentTcpRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentTcpResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentTcpResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8076cd565188d0adcda508a0637b240969a434a924daeed7cf3b7e442b901ee3";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String info = "";

        public Ros1Dsr_msgsGetCurrentTcpResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentTcpResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentTcpResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentTcpResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentTcpResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentTcpResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentTcpResponse value = readRos1Dsr_msgsGetCurrentTcpResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentTcpResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentTcpResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.info;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsGetCurrentTcpResponse readRos1Dsr_msgsGetCurrentTcpResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentTcpResponse value = new Ros1Dsr_msgsGetCurrentTcpResponse();
        value.info = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentToolRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentToolRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetCurrentToolRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentToolRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentToolRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentToolRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentToolRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentToolRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentToolRequest value = readRos1Dsr_msgsGetCurrentToolRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentToolRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentToolRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetCurrentToolRequest readRos1Dsr_msgsGetCurrentToolRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentToolRequest value = new Ros1Dsr_msgsGetCurrentToolRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentToolResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentToolResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8afef46263fd34fe71e4c33d9add7d71672cb9d95aa237a60e17c3c3cdd58e43";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String info = "";

        public Ros1Dsr_msgsGetCurrentToolResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentToolResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentToolResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentToolResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentToolResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentToolResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentToolResponse value = readRos1Dsr_msgsGetCurrentToolResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentToolResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentToolResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.info;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsGetCurrentToolResponse readRos1Dsr_msgsGetCurrentToolResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentToolResponse value = new Ros1Dsr_msgsGetCurrentToolResponse();
        value.info = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsGetDrlStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDrlStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetDrlStateRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDrlStateRequest> CODEC = new Codec<Ros1Dsr_msgsGetDrlStateRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetDrlStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDrlStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDrlStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDrlStateRequest value = readRos1Dsr_msgsGetDrlStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDrlStateRequest(Codecs.Writer writer, Ros1Dsr_msgsGetDrlStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetDrlStateRequest readRos1Dsr_msgsGetDrlStateRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDrlStateRequest value = new Ros1Dsr_msgsGetDrlStateRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetDrlStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDrlStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d8238b34c53f1da07057059fadfc1bbc767be38453b0410a90bccb84d99d1a94";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte drl_state = 0;

        public Ros1Dsr_msgsGetDrlStateResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDrlStateResponse> CODEC = new Codec<Ros1Dsr_msgsGetDrlStateResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetDrlStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDrlStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDrlStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDrlStateResponse value = readRos1Dsr_msgsGetDrlStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDrlStateResponse(Codecs.Writer writer, Ros1Dsr_msgsGetDrlStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.drl_state;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetDrlStateResponse readRos1Dsr_msgsGetDrlStateResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDrlStateResponse value = new Ros1Dsr_msgsGetDrlStateResponse();
        value.drl_state = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetExternalTorqueRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetExternalTorqueRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetExternalTorqueRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetExternalTorqueRequest> CODEC = new Codec<Ros1Dsr_msgsGetExternalTorqueRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetExternalTorqueRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetExternalTorqueRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetExternalTorqueRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetExternalTorqueRequest value = readRos1Dsr_msgsGetExternalTorqueRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetExternalTorqueRequest(Codecs.Writer writer, Ros1Dsr_msgsGetExternalTorqueRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetExternalTorqueRequest readRos1Dsr_msgsGetExternalTorqueRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetExternalTorqueRequest value = new Ros1Dsr_msgsGetExternalTorqueRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetExternalTorqueResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetExternalTorqueResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_52c063acee790649e0e439390ee3c8bd4e7ac2a124911093ba0fd00f06a07ff2";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] ext_torque = new double[6];

        public Ros1Dsr_msgsGetExternalTorqueResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetExternalTorqueResponse> CODEC = new Codec<Ros1Dsr_msgsGetExternalTorqueResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetExternalTorqueResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetExternalTorqueResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetExternalTorqueResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetExternalTorqueResponse value = readRos1Dsr_msgsGetExternalTorqueResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetExternalTorqueResponse(Codecs.Writer writer, Ros1Dsr_msgsGetExternalTorqueResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.ext_torque;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Dsr_msgsGetExternalTorqueResponse readRos1Dsr_msgsGetExternalTorqueResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetExternalTorqueResponse value = new Ros1Dsr_msgsGetExternalTorqueResponse();
        value.ext_torque = new double[6];
        for(int i = 0; i < value.ext_torque.length; ++i)
            value.ext_torque[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsGetJointTorqueRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetJointTorqueRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetJointTorqueRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetJointTorqueRequest> CODEC = new Codec<Ros1Dsr_msgsGetJointTorqueRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetJointTorqueRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetJointTorqueRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetJointTorqueRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetJointTorqueRequest value = readRos1Dsr_msgsGetJointTorqueRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetJointTorqueRequest(Codecs.Writer writer, Ros1Dsr_msgsGetJointTorqueRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetJointTorqueRequest readRos1Dsr_msgsGetJointTorqueRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetJointTorqueRequest value = new Ros1Dsr_msgsGetJointTorqueRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetJointTorqueResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetJointTorqueResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_25bda80075428cb48858ba2ab3d38b52d4fe631596e919c001cf1a4f96391bf1";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] joint_torque = new double[6];

        public Ros1Dsr_msgsGetJointTorqueResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetJointTorqueResponse> CODEC = new Codec<Ros1Dsr_msgsGetJointTorqueResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetJointTorqueResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetJointTorqueResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetJointTorqueResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetJointTorqueResponse value = readRos1Dsr_msgsGetJointTorqueResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetJointTorqueResponse(Codecs.Writer writer, Ros1Dsr_msgsGetJointTorqueResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.joint_torque;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Dsr_msgsGetJointTorqueResponse readRos1Dsr_msgsGetJointTorqueResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetJointTorqueResponse value = new Ros1Dsr_msgsGetJointTorqueResponse();
        value.joint_torque = new double[6];
        for(int i = 0; i < value.joint_torque.length; ++i)
            value.joint_torque[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsGetLastAlarmRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetLastAlarmRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetLastAlarmRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetLastAlarmRequest> CODEC = new Codec<Ros1Dsr_msgsGetLastAlarmRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetLastAlarmRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetLastAlarmRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetLastAlarmRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetLastAlarmRequest value = readRos1Dsr_msgsGetLastAlarmRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetLastAlarmRequest(Codecs.Writer writer, Ros1Dsr_msgsGetLastAlarmRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetLastAlarmRequest readRos1Dsr_msgsGetLastAlarmRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetLastAlarmRequest value = new Ros1Dsr_msgsGetLastAlarmRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsLogAlarm
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/LogAlarm";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;
        public int level = 0;
        public int group = 0;
        public int index = 0;
        public String[] param = new String[3];

        public Ros1Dsr_msgsLogAlarm()
        {
            for(int i = 0; i < 3; ++i)
                this.param[i] = "";
        }

        public static final Codec<Ros1Dsr_msgsLogAlarm> CODEC = new Codec<Ros1Dsr_msgsLogAlarm>() {
            public byte[] encode(Ros1Dsr_msgsLogAlarm value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsLogAlarm(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsLogAlarm decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsLogAlarm value = readRos1Dsr_msgsLogAlarm(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsLogAlarm(Codecs.Writer writer, Ros1Dsr_msgsLogAlarm value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.level;
        writer.integer(part0, 4, true);
        int part1 = value.group;
        writer.integer(part1, 4, true);
        int part2 = value.index;
        writer.integer(part2, 4, true);
        String[] part3 = value.param;
        if(part3 == null || part3.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writeText(writer, part3[i], 256);
        }
    }

    private static Ros1Dsr_msgsLogAlarm readRos1Dsr_msgsLogAlarm(Codecs.Reader reader)
    {
        Ros1Dsr_msgsLogAlarm value = new Ros1Dsr_msgsLogAlarm();
        value.level = (int)reader.integer(4, true);
        value.group = (int)reader.integer(4, true);
        value.index = (int)reader.integer(4, true);
        value.param = new String[3];
        for(int i = 0; i < value.param.length; ++i)
            value.param[i] = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsGetLastAlarmResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetLastAlarmResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cbf970486efc6fc6dbda7ecfd673f3642f228b27e1a406156d2592d71467995c";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;
        public Ros1Dsr_msgsLogAlarm log_alarm = new Ros1Dsr_msgsLogAlarm();

        public Ros1Dsr_msgsGetLastAlarmResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetLastAlarmResponse> CODEC = new Codec<Ros1Dsr_msgsGetLastAlarmResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetLastAlarmResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetLastAlarmResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetLastAlarmResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetLastAlarmResponse value = readRos1Dsr_msgsGetLastAlarmResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetLastAlarmResponse(Codecs.Writer writer, Ros1Dsr_msgsGetLastAlarmResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Dsr_msgsLogAlarm part0 = value.log_alarm;
        writeRos1Dsr_msgsLogAlarm(writer, part0);
    }

    private static Ros1Dsr_msgsGetLastAlarmResponse readRos1Dsr_msgsGetLastAlarmResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetLastAlarmResponse value = new Ros1Dsr_msgsGetLastAlarmResponse();
        value.log_alarm = readRos1Dsr_msgsLogAlarm(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetModbusInputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetModbusInputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros1Dsr_msgsGetModbusInputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetModbusInputRequest> CODEC = new Codec<Ros1Dsr_msgsGetModbusInputRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetModbusInputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetModbusInputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetModbusInputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetModbusInputRequest value = readRos1Dsr_msgsGetModbusInputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetModbusInputRequest(Codecs.Writer writer, Ros1Dsr_msgsGetModbusInputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsGetModbusInputRequest readRos1Dsr_msgsGetModbusInputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetModbusInputRequest value = new Ros1Dsr_msgsGetModbusInputRequest();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsGetModbusInputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetModbusInputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5a9baa85959370b7562c32510a9ebe6bd48ccb01b5d71d3898126e69fe60afb3";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int value = 0;

        public Ros1Dsr_msgsGetModbusInputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetModbusInputResponse> CODEC = new Codec<Ros1Dsr_msgsGetModbusInputResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetModbusInputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetModbusInputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetModbusInputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetModbusInputResponse value = readRos1Dsr_msgsGetModbusInputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetModbusInputResponse(Codecs.Writer writer, Ros1Dsr_msgsGetModbusInputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
    }

    private static Ros1Dsr_msgsGetModbusInputResponse readRos1Dsr_msgsGetModbusInputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetModbusInputResponse value = new Ros1Dsr_msgsGetModbusInputResponse();
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRobotModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRobotModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetRobotModeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRobotModeRequest> CODEC = new Codec<Ros1Dsr_msgsGetRobotModeRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetRobotModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRobotModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRobotModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRobotModeRequest value = readRos1Dsr_msgsGetRobotModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRobotModeRequest(Codecs.Writer writer, Ros1Dsr_msgsGetRobotModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetRobotModeRequest readRos1Dsr_msgsGetRobotModeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotModeRequest value = new Ros1Dsr_msgsGetRobotModeRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetRobotModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRobotModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3049e13cf2157e75860253953231b258ac495b2fc424aa2c6343fcf0f91044b5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte robot_mode = 0;

        public Ros1Dsr_msgsGetRobotModeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRobotModeResponse> CODEC = new Codec<Ros1Dsr_msgsGetRobotModeResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetRobotModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRobotModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRobotModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRobotModeResponse value = readRos1Dsr_msgsGetRobotModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRobotModeResponse(Codecs.Writer writer, Ros1Dsr_msgsGetRobotModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_mode;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetRobotModeResponse readRos1Dsr_msgsGetRobotModeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotModeResponse value = new Ros1Dsr_msgsGetRobotModeResponse();
        value.robot_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRobotSpeedModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRobotSpeedModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetRobotSpeedModeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRobotSpeedModeRequest> CODEC = new Codec<Ros1Dsr_msgsGetRobotSpeedModeRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetRobotSpeedModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRobotSpeedModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRobotSpeedModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRobotSpeedModeRequest value = readRos1Dsr_msgsGetRobotSpeedModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRobotSpeedModeRequest(Codecs.Writer writer, Ros1Dsr_msgsGetRobotSpeedModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetRobotSpeedModeRequest readRos1Dsr_msgsGetRobotSpeedModeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotSpeedModeRequest value = new Ros1Dsr_msgsGetRobotSpeedModeRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetRobotSpeedModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRobotSpeedModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e67a5a94c55ea30657ecdf83201cac431e89c11817bb12831d31023d4fd2cec1";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte speed_mode = 0;

        public Ros1Dsr_msgsGetRobotSpeedModeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRobotSpeedModeResponse> CODEC = new Codec<Ros1Dsr_msgsGetRobotSpeedModeResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetRobotSpeedModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRobotSpeedModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRobotSpeedModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRobotSpeedModeResponse value = readRos1Dsr_msgsGetRobotSpeedModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRobotSpeedModeResponse(Codecs.Writer writer, Ros1Dsr_msgsGetRobotSpeedModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.speed_mode;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetRobotSpeedModeResponse readRos1Dsr_msgsGetRobotSpeedModeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotSpeedModeResponse value = new Ros1Dsr_msgsGetRobotSpeedModeResponse();
        value.speed_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRobotStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRobotStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetRobotStateRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRobotStateRequest> CODEC = new Codec<Ros1Dsr_msgsGetRobotStateRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetRobotStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRobotStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRobotStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRobotStateRequest value = readRos1Dsr_msgsGetRobotStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRobotStateRequest(Codecs.Writer writer, Ros1Dsr_msgsGetRobotStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetRobotStateRequest readRos1Dsr_msgsGetRobotStateRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotStateRequest value = new Ros1Dsr_msgsGetRobotStateRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetRobotStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRobotStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2fdea6418150a77db99b9e1bcecb11a9a10f826690b18853d6adfbdc2b6f8d4d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte robot_state = 0;

        public Ros1Dsr_msgsGetRobotStateResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRobotStateResponse> CODEC = new Codec<Ros1Dsr_msgsGetRobotStateResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetRobotStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRobotStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRobotStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRobotStateResponse value = readRos1Dsr_msgsGetRobotStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRobotStateResponse(Codecs.Writer writer, Ros1Dsr_msgsGetRobotStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_state;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetRobotStateResponse readRos1Dsr_msgsGetRobotStateResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotStateResponse value = new Ros1Dsr_msgsGetRobotStateResponse();
        value.robot_state = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRobotSystemRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRobotSystemRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetRobotSystemRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRobotSystemRequest> CODEC = new Codec<Ros1Dsr_msgsGetRobotSystemRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetRobotSystemRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRobotSystemRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRobotSystemRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRobotSystemRequest value = readRos1Dsr_msgsGetRobotSystemRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRobotSystemRequest(Codecs.Writer writer, Ros1Dsr_msgsGetRobotSystemRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetRobotSystemRequest readRos1Dsr_msgsGetRobotSystemRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotSystemRequest value = new Ros1Dsr_msgsGetRobotSystemRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetRobotSystemResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRobotSystemResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ecdbadad1fa8a9e22bf20bbb5c7aa489b739a6d0ef725ea20e37d50feb92a570";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte robot_system = 0;

        public Ros1Dsr_msgsGetRobotSystemResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRobotSystemResponse> CODEC = new Codec<Ros1Dsr_msgsGetRobotSystemResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetRobotSystemResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRobotSystemResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRobotSystemResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRobotSystemResponse value = readRos1Dsr_msgsGetRobotSystemResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRobotSystemResponse(Codecs.Writer writer, Ros1Dsr_msgsGetRobotSystemResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_system;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetRobotSystemResponse readRos1Dsr_msgsGetRobotSystemResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotSystemResponse value = new Ros1Dsr_msgsGetRobotSystemResponse();
        value.robot_system = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetToolDigitalInputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetToolDigitalInputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte index = 0;

        public Ros1Dsr_msgsGetToolDigitalInputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetToolDigitalInputRequest> CODEC = new Codec<Ros1Dsr_msgsGetToolDigitalInputRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetToolDigitalInputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetToolDigitalInputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetToolDigitalInputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetToolDigitalInputRequest value = readRos1Dsr_msgsGetToolDigitalInputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetToolDigitalInputRequest(Codecs.Writer writer, Ros1Dsr_msgsGetToolDigitalInputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetToolDigitalInputRequest readRos1Dsr_msgsGetToolDigitalInputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetToolDigitalInputRequest value = new Ros1Dsr_msgsGetToolDigitalInputRequest();
        value.index = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetToolDigitalInputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetToolDigitalInputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ee2a97dbab5eb6f818d5165e68ebc9077f8ebae391f79445f35205158e0d7f92";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean value = false;

        public Ros1Dsr_msgsGetToolDigitalInputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetToolDigitalInputResponse> CODEC = new Codec<Ros1Dsr_msgsGetToolDigitalInputResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetToolDigitalInputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetToolDigitalInputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetToolDigitalInputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetToolDigitalInputResponse value = readRos1Dsr_msgsGetToolDigitalInputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetToolDigitalInputResponse(Codecs.Writer writer, Ros1Dsr_msgsGetToolDigitalInputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.value;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetToolDigitalInputResponse readRos1Dsr_msgsGetToolDigitalInputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetToolDigitalInputResponse value = new Ros1Dsr_msgsGetToolDigitalInputResponse();
        value.value = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetToolForceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetToolForceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_27ccf47d48432cce678c6dad5ecff2aac258f4b17e4172556fa05183bc5111b7";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetToolForceRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetToolForceRequest> CODEC = new Codec<Ros1Dsr_msgsGetToolForceRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetToolForceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetToolForceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetToolForceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetToolForceRequest value = readRos1Dsr_msgsGetToolForceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetToolForceRequest(Codecs.Writer writer, Ros1Dsr_msgsGetToolForceRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetToolForceRequest readRos1Dsr_msgsGetToolForceRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetToolForceRequest value = new Ros1Dsr_msgsGetToolForceRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetToolForceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetToolForceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_752d1690a4d3b7b6842ce45d1ae599de4cbfdde9bf7da96193cbf3a9e4205026";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] tool_force = new double[6];

        public Ros1Dsr_msgsGetToolForceResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetToolForceResponse> CODEC = new Codec<Ros1Dsr_msgsGetToolForceResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetToolForceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetToolForceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetToolForceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetToolForceResponse value = readRos1Dsr_msgsGetToolForceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetToolForceResponse(Codecs.Writer writer, Ros1Dsr_msgsGetToolForceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.tool_force;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Dsr_msgsGetToolForceResponse readRos1Dsr_msgsGetToolForceResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetToolForceResponse value = new Ros1Dsr_msgsGetToolForceResponse();
        value.tool_force = new double[6];
        for(int i = 0; i < value.tool_force.length; ++i)
            value.tool_force[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsJogRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/JogRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;
        public byte jog_axis = 0;
        public byte move_reference = 0;
        public double speed = 0;

        public Ros1Dsr_msgsJogRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsJogRequest> CODEC = new Codec<Ros1Dsr_msgsJogRequest>() {
            public byte[] encode(Ros1Dsr_msgsJogRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsJogRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsJogRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsJogRequest value = readRos1Dsr_msgsJogRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsJogRequest(Codecs.Writer writer, Ros1Dsr_msgsJogRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.jog_axis;
        writer.integer(part0, 1, true);
        byte part1 = value.move_reference;
        writer.integer(part1, 1, true);
        double part2 = value.speed;
        writer.f64(part2);
    }

    private static Ros1Dsr_msgsJogRequest readRos1Dsr_msgsJogRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsJogRequest value = new Ros1Dsr_msgsJogRequest();
        value.jog_axis = (byte)reader.integer(1, true);
        value.move_reference = (byte)reader.integer(1, true);
        value.speed = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsJogResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/JogResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsJogResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsJogResponse> CODEC = new Codec<Ros1Dsr_msgsJogResponse>() {
            public byte[] encode(Ros1Dsr_msgsJogResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsJogResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsJogResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsJogResponse value = readRos1Dsr_msgsJogResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsJogResponse(Codecs.Writer writer, Ros1Dsr_msgsJogResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsJogResponse readRos1Dsr_msgsJogResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsJogResponse value = new Ros1Dsr_msgsJogResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsJogMultiRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/JogMultiRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;
        public double[] jog_axis = new double[6];
        public byte move_reference = 0;
        public double speed = 0;

        public Ros1Dsr_msgsJogMultiRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsJogMultiRequest> CODEC = new Codec<Ros1Dsr_msgsJogMultiRequest>() {
            public byte[] encode(Ros1Dsr_msgsJogMultiRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsJogMultiRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsJogMultiRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsJogMultiRequest value = readRos1Dsr_msgsJogMultiRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsJogMultiRequest(Codecs.Writer writer, Ros1Dsr_msgsJogMultiRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.jog_axis;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        byte part1 = value.move_reference;
        writer.integer(part1, 1, true);
        double part2 = value.speed;
        writer.f64(part2);
    }

    private static Ros1Dsr_msgsJogMultiRequest readRos1Dsr_msgsJogMultiRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsJogMultiRequest value = new Ros1Dsr_msgsJogMultiRequest();
        value.jog_axis = new double[6];
        for(int i = 0; i < value.jog_axis.length; ++i)
            value.jog_axis[i] = reader.f64();
        value.move_reference = (byte)reader.integer(1, true);
        value.speed = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsJogMultiResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/JogMultiResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsJogMultiResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsJogMultiResponse> CODEC = new Codec<Ros1Dsr_msgsJogMultiResponse>() {
            public byte[] encode(Ros1Dsr_msgsJogMultiResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsJogMultiResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsJogMultiResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsJogMultiResponse value = readRos1Dsr_msgsJogMultiResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsJogMultiResponse(Codecs.Writer writer, Ros1Dsr_msgsJogMultiResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsJogMultiResponse readRos1Dsr_msgsJogMultiResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsJogMultiResponse value = new Ros1Dsr_msgsJogMultiResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsJogMultiAxis
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/JogMultiAxis";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;
        public double[] jog_axis = new double[6];
        public byte move_reference = 0;
        public double speed = 0;

        public Ros1Dsr_msgsJogMultiAxis()
        {
        }

        public static final Codec<Ros1Dsr_msgsJogMultiAxis> CODEC = new Codec<Ros1Dsr_msgsJogMultiAxis>() {
            public byte[] encode(Ros1Dsr_msgsJogMultiAxis value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsJogMultiAxis(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsJogMultiAxis decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsJogMultiAxis value = readRos1Dsr_msgsJogMultiAxis(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsJogMultiAxis(Codecs.Writer writer, Ros1Dsr_msgsJogMultiAxis value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.jog_axis;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        byte part1 = value.move_reference;
        writer.integer(part1, 1, true);
        double part2 = value.speed;
        writer.f64(part2);
    }

    private static Ros1Dsr_msgsJogMultiAxis readRos1Dsr_msgsJogMultiAxis(Codecs.Reader reader)
    {
        Ros1Dsr_msgsJogMultiAxis value = new Ros1Dsr_msgsJogMultiAxis();
        value.jog_axis = new double[6];
        for(int i = 0; i < value.jog_axis.length; ++i)
            value.jog_axis[i] = reader.f64();
        value.move_reference = (byte)reader.integer(1, true);
        value.speed = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsModbusState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ModbusState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        public String modbus_symbol = "";
        public int modbus_value = 0;

        public Ros1Dsr_msgsModbusState()
        {
        }

        public static final Codec<Ros1Dsr_msgsModbusState> CODEC = new Codec<Ros1Dsr_msgsModbusState>() {
            public byte[] encode(Ros1Dsr_msgsModbusState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsModbusState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsModbusState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsModbusState value = readRos1Dsr_msgsModbusState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsModbusState(Codecs.Writer writer, Ros1Dsr_msgsModbusState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.modbus_symbol;
        writeText(writer, part0, 256);
        int part1 = value.modbus_value;
        writer.integer(part1, 4, true);
    }

    private static Ros1Dsr_msgsModbusState readRos1Dsr_msgsModbusState(Codecs.Reader reader)
    {
        Ros1Dsr_msgsModbusState value = new Ros1Dsr_msgsModbusState();
        value.modbus_symbol = readText(reader, 256);
        value.modbus_value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Std_msgsMultiArrayDimension
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "std_msgs/MultiArrayDimension";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 76;
        public String label = "";
        public long size = 0;
        public long stride = 0;

        public Ros1Std_msgsMultiArrayDimension()
        {
        }

        public static final Codec<Ros1Std_msgsMultiArrayDimension> CODEC = new Codec<Ros1Std_msgsMultiArrayDimension>() {
            public byte[] encode(Ros1Std_msgsMultiArrayDimension value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Std_msgsMultiArrayDimension(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Std_msgsMultiArrayDimension decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Std_msgsMultiArrayDimension value = readRos1Std_msgsMultiArrayDimension(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Std_msgsMultiArrayDimension(Codecs.Writer writer, Ros1Std_msgsMultiArrayDimension value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.label;
        writeText(writer, part0, 64);
        long part1 = value.size;
        writer.integer(part1, 4, false);
        long part2 = value.stride;
        writer.integer(part2, 4, false);
    }

    private static Ros1Std_msgsMultiArrayDimension readRos1Std_msgsMultiArrayDimension(Codecs.Reader reader)
    {
        Ros1Std_msgsMultiArrayDimension value = new Ros1Std_msgsMultiArrayDimension();
        value.label = readText(reader, 64);
        value.size = reader.integer(4, false);
        value.stride = reader.integer(4, false);
        return value;
    }

    public static final class Ros1Std_msgsMultiArrayLayout
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "std_msgs/MultiArrayLayout";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 236;
        public Ros1Std_msgsMultiArrayDimension[] dim = new Ros1Std_msgsMultiArrayDimension[0];
        public long data_offset = 0;

        public Ros1Std_msgsMultiArrayLayout()
        {
        }

        public static final Codec<Ros1Std_msgsMultiArrayLayout> CODEC = new Codec<Ros1Std_msgsMultiArrayLayout>() {
            public byte[] encode(Ros1Std_msgsMultiArrayLayout value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Std_msgsMultiArrayLayout(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Std_msgsMultiArrayLayout decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Std_msgsMultiArrayLayout value = readRos1Std_msgsMultiArrayLayout(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Std_msgsMultiArrayLayout(Codecs.Writer writer, Ros1Std_msgsMultiArrayLayout value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsMultiArrayDimension[] part0 = value.dim;
        if(part0 == null || part0.length > 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos1Std_msgsMultiArrayDimension(writer, part0[i]);
        }
        long part1 = value.data_offset;
        writer.integer(part1, 4, false);
    }

    private static Ros1Std_msgsMultiArrayLayout readRos1Std_msgsMultiArrayLayout(Codecs.Reader reader)
    {
        Ros1Std_msgsMultiArrayLayout value = new Ros1Std_msgsMultiArrayLayout();
        value.dim = new Ros1Std_msgsMultiArrayDimension[readCount(reader, 3, 12)];
        for(int i = 0; i < value.dim.length; ++i)
            value.dim[i] = readRos1Std_msgsMultiArrayDimension(reader);
        value.data_offset = reader.integer(4, false);
        return value;
    }

    public static final class Ros1Std_msgsFloat64MultiArray
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "std_msgs/Float64MultiArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 368;
        public Ros1Std_msgsMultiArrayLayout layout = new Ros1Std_msgsMultiArrayLayout();
        public double[] data = new double[0];

        public Ros1Std_msgsFloat64MultiArray()
        {
        }

        public static final Codec<Ros1Std_msgsFloat64MultiArray> CODEC = new Codec<Ros1Std_msgsFloat64MultiArray>() {
            public byte[] encode(Ros1Std_msgsFloat64MultiArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Std_msgsFloat64MultiArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Std_msgsFloat64MultiArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Std_msgsFloat64MultiArray value = readRos1Std_msgsFloat64MultiArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Std_msgsFloat64MultiArray(Codecs.Writer writer, Ros1Std_msgsFloat64MultiArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsMultiArrayLayout part0 = value.layout;
        writeRos1Std_msgsMultiArrayLayout(writer, part0);
        double[] part1 = value.data;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros1Std_msgsFloat64MultiArray readRos1Std_msgsFloat64MultiArray(Codecs.Reader reader)
    {
        Ros1Std_msgsFloat64MultiArray value = new Ros1Std_msgsFloat64MultiArray();
        value.layout = readRos1Std_msgsMultiArrayLayout(reader);
        value.data = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsMoveBlendingRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveBlendingRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 2256;
        public Ros1Std_msgsFloat64MultiArray[] segment = new Ros1Std_msgsFloat64MultiArray[0];
        public byte posCnt = 0;
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public byte ref = 0;
        public byte mode = 0;
        public byte syncType = 0;

        public Ros1Dsr_msgsMoveBlendingRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveBlendingRequest> CODEC = new Codec<Ros1Dsr_msgsMoveBlendingRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveBlendingRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveBlendingRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveBlendingRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveBlendingRequest value = readRos1Dsr_msgsMoveBlendingRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveBlendingRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveBlendingRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsFloat64MultiArray[] part0 = value.segment;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part0[i]);
        }
        byte part1 = value.posCnt;
        writer.integer(part1, 1, true);
        double[] part2 = value.vel;
        if(part2 == null || part2.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.acc;
        if(part3 == null || part3.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double part4 = value.time;
        writer.f64(part4);
        byte part5 = value.ref;
        writer.integer(part5, 1, true);
        byte part6 = value.mode;
        writer.integer(part6, 1, true);
        byte part7 = value.syncType;
        writer.integer(part7, 1, true);
    }

    private static Ros1Dsr_msgsMoveBlendingRequest readRos1Dsr_msgsMoveBlendingRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveBlendingRequest value = new Ros1Dsr_msgsMoveBlendingRequest();
        value.segment = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.segment.length; ++i)
            value.segment[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.posCnt = (byte)reader.integer(1, true);
        value.vel = new double[2];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[2];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.syncType = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveBlendingResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveBlendingResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveBlendingResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveBlendingResponse> CODEC = new Codec<Ros1Dsr_msgsMoveBlendingResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveBlendingResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveBlendingResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveBlendingResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveBlendingResponse value = readRos1Dsr_msgsMoveBlendingResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveBlendingResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveBlendingResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveBlendingResponse readRos1Dsr_msgsMoveBlendingResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveBlendingResponse value = new Ros1Dsr_msgsMoveBlendingResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveCircleRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveCircleRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4";
        public static final int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 2280;
        public Ros1Std_msgsFloat64MultiArray[] pos = new Ros1Std_msgsFloat64MultiArray[0];
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public double radius = 0;
        public byte ref = 0;
        public byte mode = 0;
        public double angle1 = 0;
        public double angle2 = 0;
        public byte blendType = 0;
        public byte syncType = 0;

        public Ros1Dsr_msgsMoveCircleRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveCircleRequest> CODEC = new Codec<Ros1Dsr_msgsMoveCircleRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveCircleRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveCircleRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveCircleRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveCircleRequest value = readRos1Dsr_msgsMoveCircleRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveCircleRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveCircleRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsFloat64MultiArray[] part0 = value.pos;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part0[i]);
        }
        double[] part1 = value.vel;
        if(part1 == null || part1.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.acc;
        if(part2 == null || part2.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double part3 = value.time;
        writer.f64(part3);
        double part4 = value.radius;
        writer.f64(part4);
        byte part5 = value.ref;
        writer.integer(part5, 1, true);
        byte part6 = value.mode;
        writer.integer(part6, 1, true);
        double part7 = value.angle1;
        writer.f64(part7);
        double part8 = value.angle2;
        writer.f64(part8);
        byte part9 = value.blendType;
        writer.integer(part9, 1, true);
        byte part10 = value.syncType;
        writer.integer(part10, 1, true);
    }

    private static Ros1Dsr_msgsMoveCircleRequest readRos1Dsr_msgsMoveCircleRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveCircleRequest value = new Ros1Dsr_msgsMoveCircleRequest();
        value.pos = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.vel = new double[2];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[2];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        value.radius = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.angle1 = reader.f64();
        value.angle2 = reader.f64();
        value.blendType = (byte)reader.integer(1, true);
        value.syncType = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveCircleResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveCircleResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveCircleResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveCircleResponse> CODEC = new Codec<Ros1Dsr_msgsMoveCircleResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveCircleResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveCircleResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveCircleResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveCircleResponse value = readRos1Dsr_msgsMoveCircleResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveCircleResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveCircleResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveCircleResponse readRos1Dsr_msgsMoveCircleResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveCircleResponse value = new Ros1Dsr_msgsMoveCircleResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveJointRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveJointRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03";
        public static final int MIN_WIRE_BYTES = 83, MAX_WIRE_BYTES = 83;
        public double[] pos = new double[6];
        public double vel = 0;
        public double acc = 0;
        public double time = 0;
        public double radius = 0;
        public byte mode = 0;
        public byte blendType = 0;
        public byte syncType = 0;

        public Ros1Dsr_msgsMoveJointRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveJointRequest> CODEC = new Codec<Ros1Dsr_msgsMoveJointRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveJointRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveJointRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveJointRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveJointRequest value = readRos1Dsr_msgsMoveJointRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveJointRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveJointRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.pos;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double part1 = value.vel;
        writer.f64(part1);
        double part2 = value.acc;
        writer.f64(part2);
        double part3 = value.time;
        writer.f64(part3);
        double part4 = value.radius;
        writer.f64(part4);
        byte part5 = value.mode;
        writer.integer(part5, 1, true);
        byte part6 = value.blendType;
        writer.integer(part6, 1, true);
        byte part7 = value.syncType;
        writer.integer(part7, 1, true);
    }

    private static Ros1Dsr_msgsMoveJointRequest readRos1Dsr_msgsMoveJointRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveJointRequest value = new Ros1Dsr_msgsMoveJointRequest();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.vel = reader.f64();
        value.acc = reader.f64();
        value.time = reader.f64();
        value.radius = reader.f64();
        value.mode = (byte)reader.integer(1, true);
        value.blendType = (byte)reader.integer(1, true);
        value.syncType = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveJointResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveJointResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveJointResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveJointResponse> CODEC = new Codec<Ros1Dsr_msgsMoveJointResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveJointResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveJointResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveJointResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveJointResponse value = readRos1Dsr_msgsMoveJointResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveJointResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveJointResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveJointResponse readRos1Dsr_msgsMoveJointResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveJointResponse value = new Ros1Dsr_msgsMoveJointResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveJointxRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveJointxRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db";
        public static final int MIN_WIRE_BYTES = 85, MAX_WIRE_BYTES = 85;
        public double[] pos = new double[6];
        public double vel = 0;
        public double acc = 0;
        public double time = 0;
        public double radius = 0;
        public byte ref = 0;
        public byte mode = 0;
        public byte blendType = 0;
        public byte sol = 0;
        public byte syncType = 0;

        public Ros1Dsr_msgsMoveJointxRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveJointxRequest> CODEC = new Codec<Ros1Dsr_msgsMoveJointxRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveJointxRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveJointxRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveJointxRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveJointxRequest value = readRos1Dsr_msgsMoveJointxRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveJointxRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveJointxRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.pos;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double part1 = value.vel;
        writer.f64(part1);
        double part2 = value.acc;
        writer.f64(part2);
        double part3 = value.time;
        writer.f64(part3);
        double part4 = value.radius;
        writer.f64(part4);
        byte part5 = value.ref;
        writer.integer(part5, 1, true);
        byte part6 = value.mode;
        writer.integer(part6, 1, true);
        byte part7 = value.blendType;
        writer.integer(part7, 1, true);
        byte part8 = value.sol;
        writer.integer(part8, 1, true);
        byte part9 = value.syncType;
        writer.integer(part9, 1, true);
    }

    private static Ros1Dsr_msgsMoveJointxRequest readRos1Dsr_msgsMoveJointxRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveJointxRequest value = new Ros1Dsr_msgsMoveJointxRequest();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.vel = reader.f64();
        value.acc = reader.f64();
        value.time = reader.f64();
        value.radius = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.blendType = (byte)reader.integer(1, true);
        value.sol = (byte)reader.integer(1, true);
        value.syncType = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveJointxResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveJointxResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveJointxResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveJointxResponse> CODEC = new Codec<Ros1Dsr_msgsMoveJointxResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveJointxResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveJointxResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveJointxResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveJointxResponse value = readRos1Dsr_msgsMoveJointxResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveJointxResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveJointxResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveJointxResponse readRos1Dsr_msgsMoveJointxResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveJointxResponse value = new Ros1Dsr_msgsMoveJointxResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveLineRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveLineRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e";
        public static final int MIN_WIRE_BYTES = 100, MAX_WIRE_BYTES = 100;
        public double[] pos = new double[6];
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public double radius = 0;
        public byte ref = 0;
        public byte mode = 0;
        public byte blendType = 0;
        public byte syncType = 0;

        public Ros1Dsr_msgsMoveLineRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveLineRequest> CODEC = new Codec<Ros1Dsr_msgsMoveLineRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveLineRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveLineRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveLineRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveLineRequest value = readRos1Dsr_msgsMoveLineRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveLineRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveLineRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.pos;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.vel;
        if(part1 == null || part1.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.acc;
        if(part2 == null || part2.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double part3 = value.time;
        writer.f64(part3);
        double part4 = value.radius;
        writer.f64(part4);
        byte part5 = value.ref;
        writer.integer(part5, 1, true);
        byte part6 = value.mode;
        writer.integer(part6, 1, true);
        byte part7 = value.blendType;
        writer.integer(part7, 1, true);
        byte part8 = value.syncType;
        writer.integer(part8, 1, true);
    }

    private static Ros1Dsr_msgsMoveLineRequest readRos1Dsr_msgsMoveLineRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveLineRequest value = new Ros1Dsr_msgsMoveLineRequest();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.vel = new double[2];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[2];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        value.radius = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.blendType = (byte)reader.integer(1, true);
        value.syncType = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveLineResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveLineResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveLineResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveLineResponse> CODEC = new Codec<Ros1Dsr_msgsMoveLineResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveLineResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveLineResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveLineResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveLineResponse value = readRos1Dsr_msgsMoveLineResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveLineResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveLineResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveLineResponse readRos1Dsr_msgsMoveLineResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveLineResponse value = new Ros1Dsr_msgsMoveLineResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMovePauseRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MovePauseRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsMovePauseRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMovePauseRequest> CODEC = new Codec<Ros1Dsr_msgsMovePauseRequest>() {
            public byte[] encode(Ros1Dsr_msgsMovePauseRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMovePauseRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMovePauseRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMovePauseRequest value = readRos1Dsr_msgsMovePauseRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMovePauseRequest(Codecs.Writer writer, Ros1Dsr_msgsMovePauseRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsMovePauseRequest readRos1Dsr_msgsMovePauseRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMovePauseRequest value = new Ros1Dsr_msgsMovePauseRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsMovePauseResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MovePauseResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMovePauseResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMovePauseResponse> CODEC = new Codec<Ros1Dsr_msgsMovePauseResponse>() {
            public byte[] encode(Ros1Dsr_msgsMovePauseResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMovePauseResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMovePauseResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMovePauseResponse value = readRos1Dsr_msgsMovePauseResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMovePauseResponse(Codecs.Writer writer, Ros1Dsr_msgsMovePauseResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMovePauseResponse readRos1Dsr_msgsMovePauseResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMovePauseResponse value = new Ros1Dsr_msgsMovePauseResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMovePeriodicRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MovePeriodicRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69";
        public static final int MIN_WIRE_BYTES = 107, MAX_WIRE_BYTES = 107;
        public double[] amp = new double[6];
        public double[] periodic = new double[6];
        public double acc = 0;
        public byte repeat = 0;
        public byte ref = 0;
        public byte syncType = 0;

        public Ros1Dsr_msgsMovePeriodicRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMovePeriodicRequest> CODEC = new Codec<Ros1Dsr_msgsMovePeriodicRequest>() {
            public byte[] encode(Ros1Dsr_msgsMovePeriodicRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMovePeriodicRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMovePeriodicRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMovePeriodicRequest value = readRos1Dsr_msgsMovePeriodicRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMovePeriodicRequest(Codecs.Writer writer, Ros1Dsr_msgsMovePeriodicRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.amp;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.periodic;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double part2 = value.acc;
        writer.f64(part2);
        byte part3 = value.repeat;
        writer.integer(part3, 1, true);
        byte part4 = value.ref;
        writer.integer(part4, 1, true);
        byte part5 = value.syncType;
        writer.integer(part5, 1, true);
    }

    private static Ros1Dsr_msgsMovePeriodicRequest readRos1Dsr_msgsMovePeriodicRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMovePeriodicRequest value = new Ros1Dsr_msgsMovePeriodicRequest();
        value.amp = new double[6];
        for(int i = 0; i < value.amp.length; ++i)
            value.amp[i] = reader.f64();
        value.periodic = new double[6];
        for(int i = 0; i < value.periodic.length; ++i)
            value.periodic[i] = reader.f64();
        value.acc = reader.f64();
        value.repeat = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        value.syncType = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMovePeriodicResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MovePeriodicResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMovePeriodicResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMovePeriodicResponse> CODEC = new Codec<Ros1Dsr_msgsMovePeriodicResponse>() {
            public byte[] encode(Ros1Dsr_msgsMovePeriodicResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMovePeriodicResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMovePeriodicResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMovePeriodicResponse value = readRos1Dsr_msgsMovePeriodicResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMovePeriodicResponse(Codecs.Writer writer, Ros1Dsr_msgsMovePeriodicResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMovePeriodicResponse readRos1Dsr_msgsMovePeriodicResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMovePeriodicResponse value = new Ros1Dsr_msgsMovePeriodicResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveResumeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveResumeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsMoveResumeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveResumeRequest> CODEC = new Codec<Ros1Dsr_msgsMoveResumeRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveResumeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveResumeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveResumeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveResumeRequest value = readRos1Dsr_msgsMoveResumeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveResumeRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveResumeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsMoveResumeRequest readRos1Dsr_msgsMoveResumeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveResumeRequest value = new Ros1Dsr_msgsMoveResumeRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsMoveResumeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveResumeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveResumeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveResumeResponse> CODEC = new Codec<Ros1Dsr_msgsMoveResumeResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveResumeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveResumeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveResumeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveResumeResponse value = readRos1Dsr_msgsMoveResumeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveResumeResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveResumeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveResumeResponse readRos1Dsr_msgsMoveResumeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveResumeResponse value = new Ros1Dsr_msgsMoveResumeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveSpiralRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveSpiralRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c";
        public static final int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;
        public double revolution = 0;
        public double maxRadius = 0;
        public double maxLength = 0;
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public byte taskAxis = 0;
        public byte ref = 0;
        public byte syncType = 0;

        public Ros1Dsr_msgsMoveSpiralRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveSpiralRequest> CODEC = new Codec<Ros1Dsr_msgsMoveSpiralRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveSpiralRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveSpiralRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveSpiralRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveSpiralRequest value = readRos1Dsr_msgsMoveSpiralRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveSpiralRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveSpiralRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.revolution;
        writer.f64(part0);
        double part1 = value.maxRadius;
        writer.f64(part1);
        double part2 = value.maxLength;
        writer.f64(part2);
        double[] part3 = value.vel;
        if(part3 == null || part3.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.acc;
        if(part4 == null || part4.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double part5 = value.time;
        writer.f64(part5);
        byte part6 = value.taskAxis;
        writer.integer(part6, 1, true);
        byte part7 = value.ref;
        writer.integer(part7, 1, true);
        byte part8 = value.syncType;
        writer.integer(part8, 1, true);
    }

    private static Ros1Dsr_msgsMoveSpiralRequest readRos1Dsr_msgsMoveSpiralRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveSpiralRequest value = new Ros1Dsr_msgsMoveSpiralRequest();
        value.revolution = reader.f64();
        value.maxRadius = reader.f64();
        value.maxLength = reader.f64();
        value.vel = new double[2];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[2];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        value.taskAxis = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        value.syncType = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveSpiralResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveSpiralResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveSpiralResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveSpiralResponse> CODEC = new Codec<Ros1Dsr_msgsMoveSpiralResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveSpiralResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveSpiralResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveSpiralResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveSpiralResponse value = readRos1Dsr_msgsMoveSpiralResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveSpiralResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveSpiralResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveSpiralResponse readRos1Dsr_msgsMoveSpiralResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveSpiralResponse value = new Ros1Dsr_msgsMoveSpiralResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveSplineJointRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveSplineJointRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6e386632864f2315ba8737001727f9c03bb17a0e70b8eb990ce39fed669aac33";
        public static final int MIN_WIRE_BYTES = 31, MAX_WIRE_BYTES = 2239;
        public Ros1Std_msgsFloat64MultiArray[] pos = new Ros1Std_msgsFloat64MultiArray[0];
        public byte posCnt = 0;
        public double vel = 0;
        public double acc = 0;
        public double time = 0;
        public byte mode = 0;
        public byte syncType = 0;

        public Ros1Dsr_msgsMoveSplineJointRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveSplineJointRequest> CODEC = new Codec<Ros1Dsr_msgsMoveSplineJointRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveSplineJointRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveSplineJointRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveSplineJointRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveSplineJointRequest value = readRos1Dsr_msgsMoveSplineJointRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveSplineJointRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveSplineJointRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsFloat64MultiArray[] part0 = value.pos;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part0[i]);
        }
        byte part1 = value.posCnt;
        writer.integer(part1, 1, true);
        double part2 = value.vel;
        writer.f64(part2);
        double part3 = value.acc;
        writer.f64(part3);
        double part4 = value.time;
        writer.f64(part4);
        byte part5 = value.mode;
        writer.integer(part5, 1, true);
        byte part6 = value.syncType;
        writer.integer(part6, 1, true);
    }

    private static Ros1Dsr_msgsMoveSplineJointRequest readRos1Dsr_msgsMoveSplineJointRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveSplineJointRequest value = new Ros1Dsr_msgsMoveSplineJointRequest();
        value.pos = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.posCnt = (byte)reader.integer(1, true);
        value.vel = reader.f64();
        value.acc = reader.f64();
        value.time = reader.f64();
        value.mode = (byte)reader.integer(1, true);
        value.syncType = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveSplineJointResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveSplineJointResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveSplineJointResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveSplineJointResponse> CODEC = new Codec<Ros1Dsr_msgsMoveSplineJointResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveSplineJointResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveSplineJointResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveSplineJointResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveSplineJointResponse value = readRos1Dsr_msgsMoveSplineJointResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveSplineJointResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveSplineJointResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveSplineJointResponse readRos1Dsr_msgsMoveSplineJointResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveSplineJointResponse value = new Ros1Dsr_msgsMoveSplineJointResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveSplineTaskRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveSplineTaskRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 2257;
        public Ros1Std_msgsFloat64MultiArray[] pos = new Ros1Std_msgsFloat64MultiArray[0];
        public byte posCnt = 0;
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public byte ref = 0;
        public byte mode = 0;
        public byte opt = 0;
        public byte syncType = 0;

        public Ros1Dsr_msgsMoveSplineTaskRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveSplineTaskRequest> CODEC = new Codec<Ros1Dsr_msgsMoveSplineTaskRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveSplineTaskRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveSplineTaskRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveSplineTaskRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveSplineTaskRequest value = readRos1Dsr_msgsMoveSplineTaskRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveSplineTaskRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveSplineTaskRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsFloat64MultiArray[] part0 = value.pos;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part0[i]);
        }
        byte part1 = value.posCnt;
        writer.integer(part1, 1, true);
        double[] part2 = value.vel;
        if(part2 == null || part2.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.acc;
        if(part3 == null || part3.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double part4 = value.time;
        writer.f64(part4);
        byte part5 = value.ref;
        writer.integer(part5, 1, true);
        byte part6 = value.mode;
        writer.integer(part6, 1, true);
        byte part7 = value.opt;
        writer.integer(part7, 1, true);
        byte part8 = value.syncType;
        writer.integer(part8, 1, true);
    }

    private static Ros1Dsr_msgsMoveSplineTaskRequest readRos1Dsr_msgsMoveSplineTaskRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveSplineTaskRequest value = new Ros1Dsr_msgsMoveSplineTaskRequest();
        value.pos = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.posCnt = (byte)reader.integer(1, true);
        value.vel = new double[2];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[2];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.opt = (byte)reader.integer(1, true);
        value.syncType = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveSplineTaskResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveSplineTaskResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveSplineTaskResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveSplineTaskResponse> CODEC = new Codec<Ros1Dsr_msgsMoveSplineTaskResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveSplineTaskResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveSplineTaskResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveSplineTaskResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveSplineTaskResponse value = readRos1Dsr_msgsMoveSplineTaskResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveSplineTaskResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveSplineTaskResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveSplineTaskResponse readRos1Dsr_msgsMoveSplineTaskResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveSplineTaskResponse value = new Ros1Dsr_msgsMoveSplineTaskResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveStopRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveStopRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int stop_mode = 0;

        public Ros1Dsr_msgsMoveStopRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveStopRequest> CODEC = new Codec<Ros1Dsr_msgsMoveStopRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveStopRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveStopRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveStopRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveStopRequest value = readRos1Dsr_msgsMoveStopRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveStopRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveStopRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.stop_mode;
        writer.integer(part0, 4, true);
    }

    private static Ros1Dsr_msgsMoveStopRequest readRos1Dsr_msgsMoveStopRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveStopRequest value = new Ros1Dsr_msgsMoveStopRequest();
        value.stop_mode = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveStopResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveStopResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveStopResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveStopResponse> CODEC = new Codec<Ros1Dsr_msgsMoveStopResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveStopResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveStopResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveStopResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveStopResponse value = readRos1Dsr_msgsMoveStopResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveStopResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveStopResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveStopResponse readRos1Dsr_msgsMoveStopResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveStopResponse value = new Ros1Dsr_msgsMoveStopResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveWaitRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveWaitRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsMoveWaitRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveWaitRequest> CODEC = new Codec<Ros1Dsr_msgsMoveWaitRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveWaitRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveWaitRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveWaitRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveWaitRequest value = readRos1Dsr_msgsMoveWaitRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveWaitRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveWaitRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsMoveWaitRequest readRos1Dsr_msgsMoveWaitRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveWaitRequest value = new Ros1Dsr_msgsMoveWaitRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsMoveWaitResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveWaitResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsMoveWaitResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveWaitResponse> CODEC = new Codec<Ros1Dsr_msgsMoveWaitResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveWaitResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveWaitResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveWaitResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveWaitResponse value = readRos1Dsr_msgsMoveWaitResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveWaitResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveWaitResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveWaitResponse readRos1Dsr_msgsMoveWaitResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveWaitResponse value = new Ros1Dsr_msgsMoveWaitResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsRobotError
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/RobotError";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;
        public int level = 0;
        public int group = 0;
        public int code = 0;
        public String msg1 = "";
        public String msg2 = "";
        public String msg3 = "";

        public Ros1Dsr_msgsRobotError()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotError> CODEC = new Codec<Ros1Dsr_msgsRobotError>() {
            public byte[] encode(Ros1Dsr_msgsRobotError value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotError(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotError decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotError value = readRos1Dsr_msgsRobotError(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotError(Codecs.Writer writer, Ros1Dsr_msgsRobotError value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.level;
        writer.integer(part0, 4, true);
        int part1 = value.group;
        writer.integer(part1, 4, true);
        int part2 = value.code;
        writer.integer(part2, 4, true);
        String part3 = value.msg1;
        writeText(writer, part3, 256);
        String part4 = value.msg2;
        writeText(writer, part4, 256);
        String part5 = value.msg3;
        writeText(writer, part5, 256);
    }

    private static Ros1Dsr_msgsRobotError readRos1Dsr_msgsRobotError(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotError value = new Ros1Dsr_msgsRobotError();
        value.level = (int)reader.integer(4, true);
        value.group = (int)reader.integer(4, true);
        value.code = (int)reader.integer(4, true);
        value.msg1 = readText(reader, 256);
        value.msg2 = readText(reader, 256);
        value.msg3 = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsRobotState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/RobotState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_67691d32d7b73ab123439c6f14dca8f626ad9e9a6f09f9ecb0e631b5f63d2574";
        public static final int MIN_WIRE_BYTES = 907, MAX_WIRE_BYTES = 7595;
        public int robot_state = 0;
        public String robot_state_str = "";
        public byte actual_mode = 0;
        public byte actual_space = 0;
        public double[] current_posj = new double[6];
        public double[] current_velj = new double[6];
        public double[] joint_abs = new double[6];
        public double[] joint_err = new double[6];
        public double[] target_posj = new double[6];
        public double[] target_velj = new double[6];
        public double[] current_posx = new double[6];
        public double[] current_velx = new double[6];
        public double[] task_err = new double[6];
        public double[] target_velx = new double[6];
        public double[] target_posx = new double[6];
        public byte solution_space = 0;
        public Ros1Std_msgsFloat64MultiArray[] rotation_matrix = new Ros1Std_msgsFloat64MultiArray[0];
        public double[] dynamic_tor = new double[6];
        public double[] actual_jts = new double[6];
        public double[] actual_ejt = new double[6];
        public double[] actual_ett = new double[6];
        public double sync_time = 0;
        public byte[] actual_bk = new byte[6];
        public byte[] actual_bt = new byte[5];
        public double[] actual_mc = new double[6];
        public double[] actual_mt = new double[6];
        public byte[] ctrlbox_digital_input = new byte[16];
        public byte[] ctrlbox_digital_output = new byte[16];
        public byte[] flange_digital_input = new byte[6];
        public byte[] flange_digital_output = new byte[6];
        public Ros1Dsr_msgsModbusState[] modbus_state = new Ros1Dsr_msgsModbusState[0];
        public int access_control = 0;
        public boolean homming_completed = false;
        public boolean tp_initialized = false;
        public byte mastering_need = 0;
        public boolean drl_stopped = false;
        public boolean disconnected = false;

        public Ros1Dsr_msgsRobotState()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotState> CODEC = new Codec<Ros1Dsr_msgsRobotState>() {
            public byte[] encode(Ros1Dsr_msgsRobotState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotState value = readRos1Dsr_msgsRobotState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotState(Codecs.Writer writer, Ros1Dsr_msgsRobotState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.robot_state;
        writer.integer(part0, 4, true);
        String part1 = value.robot_state_str;
        writeText(writer, part1, 256);
        byte part2 = value.actual_mode;
        writer.integer(part2, 1, true);
        byte part3 = value.actual_space;
        writer.integer(part3, 1, true);
        double[] part4 = value.current_posj;
        if(part4 == null || part4.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.current_velj;
        if(part5 == null || part5.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double[] part6 = value.joint_abs;
        if(part6 == null || part6.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        double[] part7 = value.joint_err;
        if(part7 == null || part7.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f64(part7[i]);
        }
        double[] part8 = value.target_posj;
        if(part8 == null || part8.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part8.length; ++i)
        {
            writer.f64(part8[i]);
        }
        double[] part9 = value.target_velj;
        if(part9 == null || part9.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part9.length; ++i)
        {
            writer.f64(part9[i]);
        }
        double[] part10 = value.current_posx;
        if(part10 == null || part10.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part10.length; ++i)
        {
            writer.f64(part10[i]);
        }
        double[] part11 = value.current_velx;
        if(part11 == null || part11.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part11.length; ++i)
        {
            writer.f64(part11[i]);
        }
        double[] part12 = value.task_err;
        if(part12 == null || part12.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part12.length; ++i)
        {
            writer.f64(part12[i]);
        }
        double[] part13 = value.target_velx;
        if(part13 == null || part13.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part13.length; ++i)
        {
            writer.f64(part13[i]);
        }
        double[] part14 = value.target_posx;
        if(part14 == null || part14.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part14.length; ++i)
        {
            writer.f64(part14[i]);
        }
        byte part15 = value.solution_space;
        writer.integer(part15, 1, true);
        Ros1Std_msgsFloat64MultiArray[] part16 = value.rotation_matrix;
        if(part16 == null || part16.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part16.length, 4, false);
        for(int i = 0; i < part16.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part16[i]);
        }
        double[] part17 = value.dynamic_tor;
        if(part17 == null || part17.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part17.length; ++i)
        {
            writer.f64(part17[i]);
        }
        double[] part18 = value.actual_jts;
        if(part18 == null || part18.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part18.length; ++i)
        {
            writer.f64(part18[i]);
        }
        double[] part19 = value.actual_ejt;
        if(part19 == null || part19.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part19.length; ++i)
        {
            writer.f64(part19[i]);
        }
        double[] part20 = value.actual_ett;
        if(part20 == null || part20.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part20.length; ++i)
        {
            writer.f64(part20[i]);
        }
        double part21 = value.sync_time;
        writer.f64(part21);
        byte[] part22 = value.actual_bk;
        if(part22 == null || part22.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part22.length; ++i)
        {
            writer.integer(part22[i], 1, true);
        }
        byte[] part23 = value.actual_bt;
        if(part23 == null || part23.length != 5)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part23.length; ++i)
        {
            writer.integer(part23[i], 1, true);
        }
        double[] part24 = value.actual_mc;
        if(part24 == null || part24.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part24.length; ++i)
        {
            writer.f64(part24[i]);
        }
        double[] part25 = value.actual_mt;
        if(part25 == null || part25.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part25.length; ++i)
        {
            writer.f64(part25[i]);
        }
        byte[] part26 = value.ctrlbox_digital_input;
        if(part26 == null || part26.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part26.length; ++i)
        {
            writer.integer(part26[i], 1, true);
        }
        byte[] part27 = value.ctrlbox_digital_output;
        if(part27 == null || part27.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part27.length; ++i)
        {
            writer.integer(part27[i], 1, true);
        }
        byte[] part28 = value.flange_digital_input;
        if(part28 == null || part28.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part28.length; ++i)
        {
            writer.integer(part28[i], 1, true);
        }
        byte[] part29 = value.flange_digital_output;
        if(part29 == null || part29.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part29.length; ++i)
        {
            writer.integer(part29[i], 1, true);
        }
        Ros1Dsr_msgsModbusState[] part30 = value.modbus_state;
        if(part30 == null || part30.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part30.length, 4, false);
        for(int i = 0; i < part30.length; ++i)
        {
            writeRos1Dsr_msgsModbusState(writer, part30[i]);
        }
        int part31 = value.access_control;
        writer.integer(part31, 4, true);
        boolean part32 = value.homming_completed;
        writer.integer(part32 ? 1 : 0, 1, false);
        boolean part33 = value.tp_initialized;
        writer.integer(part33 ? 1 : 0, 1, false);
        byte part34 = value.mastering_need;
        writer.integer(part34, 1, true);
        boolean part35 = value.drl_stopped;
        writer.integer(part35 ? 1 : 0, 1, false);
        boolean part36 = value.disconnected;
        writer.integer(part36 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsRobotState readRos1Dsr_msgsRobotState(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotState value = new Ros1Dsr_msgsRobotState();
        value.robot_state = (int)reader.integer(4, true);
        value.robot_state_str = readText(reader, 256);
        value.actual_mode = (byte)reader.integer(1, true);
        value.actual_space = (byte)reader.integer(1, true);
        value.current_posj = new double[6];
        for(int i = 0; i < value.current_posj.length; ++i)
            value.current_posj[i] = reader.f64();
        value.current_velj = new double[6];
        for(int i = 0; i < value.current_velj.length; ++i)
            value.current_velj[i] = reader.f64();
        value.joint_abs = new double[6];
        for(int i = 0; i < value.joint_abs.length; ++i)
            value.joint_abs[i] = reader.f64();
        value.joint_err = new double[6];
        for(int i = 0; i < value.joint_err.length; ++i)
            value.joint_err[i] = reader.f64();
        value.target_posj = new double[6];
        for(int i = 0; i < value.target_posj.length; ++i)
            value.target_posj[i] = reader.f64();
        value.target_velj = new double[6];
        for(int i = 0; i < value.target_velj.length; ++i)
            value.target_velj[i] = reader.f64();
        value.current_posx = new double[6];
        for(int i = 0; i < value.current_posx.length; ++i)
            value.current_posx[i] = reader.f64();
        value.current_velx = new double[6];
        for(int i = 0; i < value.current_velx.length; ++i)
            value.current_velx[i] = reader.f64();
        value.task_err = new double[6];
        for(int i = 0; i < value.task_err.length; ++i)
            value.task_err[i] = reader.f64();
        value.target_velx = new double[6];
        for(int i = 0; i < value.target_velx.length; ++i)
            value.target_velx[i] = reader.f64();
        value.target_posx = new double[6];
        for(int i = 0; i < value.target_posx.length; ++i)
            value.target_posx[i] = reader.f64();
        value.solution_space = (byte)reader.integer(1, true);
        value.rotation_matrix = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.rotation_matrix.length; ++i)
            value.rotation_matrix[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.dynamic_tor = new double[6];
        for(int i = 0; i < value.dynamic_tor.length; ++i)
            value.dynamic_tor[i] = reader.f64();
        value.actual_jts = new double[6];
        for(int i = 0; i < value.actual_jts.length; ++i)
            value.actual_jts[i] = reader.f64();
        value.actual_ejt = new double[6];
        for(int i = 0; i < value.actual_ejt.length; ++i)
            value.actual_ejt[i] = reader.f64();
        value.actual_ett = new double[6];
        for(int i = 0; i < value.actual_ett.length; ++i)
            value.actual_ett[i] = reader.f64();
        value.sync_time = reader.f64();
        value.actual_bk = new byte[6];
        for(int i = 0; i < value.actual_bk.length; ++i)
            value.actual_bk[i] = (byte)reader.integer(1, true);
        value.actual_bt = new byte[5];
        for(int i = 0; i < value.actual_bt.length; ++i)
            value.actual_bt[i] = (byte)reader.integer(1, true);
        value.actual_mc = new double[6];
        for(int i = 0; i < value.actual_mc.length; ++i)
            value.actual_mc[i] = reader.f64();
        value.actual_mt = new double[6];
        for(int i = 0; i < value.actual_mt.length; ++i)
            value.actual_mt[i] = reader.f64();
        value.ctrlbox_digital_input = new byte[16];
        for(int i = 0; i < value.ctrlbox_digital_input.length; ++i)
            value.ctrlbox_digital_input[i] = (byte)reader.integer(1, true);
        value.ctrlbox_digital_output = new byte[16];
        for(int i = 0; i < value.ctrlbox_digital_output.length; ++i)
            value.ctrlbox_digital_output[i] = (byte)reader.integer(1, true);
        value.flange_digital_input = new byte[6];
        for(int i = 0; i < value.flange_digital_input.length; ++i)
            value.flange_digital_input[i] = (byte)reader.integer(1, true);
        value.flange_digital_output = new byte[6];
        for(int i = 0; i < value.flange_digital_output.length; ++i)
            value.flange_digital_output[i] = (byte)reader.integer(1, true);
        value.modbus_state = new Ros1Dsr_msgsModbusState[readCount(reader, 16, 8)];
        for(int i = 0; i < value.modbus_state.length; ++i)
            value.modbus_state[i] = readRos1Dsr_msgsModbusState(reader);
        value.access_control = (int)reader.integer(4, true);
        value.homming_completed = readBool(reader);
        value.tp_initialized = readBool(reader);
        value.mastering_need = (byte)reader.integer(1, true);
        value.drl_stopped = readBool(reader);
        value.disconnected = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsRobotStop
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/RobotStop";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int stop_mode = 0;

        public Ros1Dsr_msgsRobotStop()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotStop> CODEC = new Codec<Ros1Dsr_msgsRobotStop>() {
            public byte[] encode(Ros1Dsr_msgsRobotStop value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotStop(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotStop decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotStop value = readRos1Dsr_msgsRobotStop(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotStop(Codecs.Writer writer, Ros1Dsr_msgsRobotStop value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.stop_mode;
        writer.integer(part0, 4, true);
    }

    private static Ros1Dsr_msgsRobotStop readRos1Dsr_msgsRobotStop(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotStop value = new Ros1Dsr_msgsRobotStop();
        value.stop_mode = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Dsr_msgsRobotiq2FCloseRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/Robotiq2FCloseRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsRobotiq2FCloseRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotiq2FCloseRequest> CODEC = new Codec<Ros1Dsr_msgsRobotiq2FCloseRequest>() {
            public byte[] encode(Ros1Dsr_msgsRobotiq2FCloseRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotiq2FCloseRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotiq2FCloseRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotiq2FCloseRequest value = readRos1Dsr_msgsRobotiq2FCloseRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotiq2FCloseRequest(Codecs.Writer writer, Ros1Dsr_msgsRobotiq2FCloseRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsRobotiq2FCloseRequest readRos1Dsr_msgsRobotiq2FCloseRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotiq2FCloseRequest value = new Ros1Dsr_msgsRobotiq2FCloseRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsRobotiq2FCloseResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/Robotiq2FCloseResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsRobotiq2FCloseResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotiq2FCloseResponse> CODEC = new Codec<Ros1Dsr_msgsRobotiq2FCloseResponse>() {
            public byte[] encode(Ros1Dsr_msgsRobotiq2FCloseResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotiq2FCloseResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotiq2FCloseResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotiq2FCloseResponse value = readRos1Dsr_msgsRobotiq2FCloseResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotiq2FCloseResponse(Codecs.Writer writer, Ros1Dsr_msgsRobotiq2FCloseResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsRobotiq2FCloseResponse readRos1Dsr_msgsRobotiq2FCloseResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotiq2FCloseResponse value = new Ros1Dsr_msgsRobotiq2FCloseResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsRobotiq2FMoveRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/Robotiq2FMoveRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public double width = 0;

        public Ros1Dsr_msgsRobotiq2FMoveRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotiq2FMoveRequest> CODEC = new Codec<Ros1Dsr_msgsRobotiq2FMoveRequest>() {
            public byte[] encode(Ros1Dsr_msgsRobotiq2FMoveRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotiq2FMoveRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotiq2FMoveRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotiq2FMoveRequest value = readRos1Dsr_msgsRobotiq2FMoveRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotiq2FMoveRequest(Codecs.Writer writer, Ros1Dsr_msgsRobotiq2FMoveRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.width;
        writer.f64(part0);
    }

    private static Ros1Dsr_msgsRobotiq2FMoveRequest readRos1Dsr_msgsRobotiq2FMoveRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotiq2FMoveRequest value = new Ros1Dsr_msgsRobotiq2FMoveRequest();
        value.width = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsRobotiq2FMoveResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/Robotiq2FMoveResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsRobotiq2FMoveResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotiq2FMoveResponse> CODEC = new Codec<Ros1Dsr_msgsRobotiq2FMoveResponse>() {
            public byte[] encode(Ros1Dsr_msgsRobotiq2FMoveResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotiq2FMoveResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotiq2FMoveResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotiq2FMoveResponse value = readRos1Dsr_msgsRobotiq2FMoveResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotiq2FMoveResponse(Codecs.Writer writer, Ros1Dsr_msgsRobotiq2FMoveResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsRobotiq2FMoveResponse readRos1Dsr_msgsRobotiq2FMoveResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotiq2FMoveResponse value = new Ros1Dsr_msgsRobotiq2FMoveResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsRobotiq2FOpenRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/Robotiq2FOpenRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsRobotiq2FOpenRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotiq2FOpenRequest> CODEC = new Codec<Ros1Dsr_msgsRobotiq2FOpenRequest>() {
            public byte[] encode(Ros1Dsr_msgsRobotiq2FOpenRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotiq2FOpenRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotiq2FOpenRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotiq2FOpenRequest value = readRos1Dsr_msgsRobotiq2FOpenRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotiq2FOpenRequest(Codecs.Writer writer, Ros1Dsr_msgsRobotiq2FOpenRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsRobotiq2FOpenRequest readRos1Dsr_msgsRobotiq2FOpenRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotiq2FOpenRequest value = new Ros1Dsr_msgsRobotiq2FOpenRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsRobotiq2FOpenResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/Robotiq2FOpenResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsRobotiq2FOpenResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotiq2FOpenResponse> CODEC = new Codec<Ros1Dsr_msgsRobotiq2FOpenResponse>() {
            public byte[] encode(Ros1Dsr_msgsRobotiq2FOpenResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotiq2FOpenResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotiq2FOpenResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotiq2FOpenResponse value = readRos1Dsr_msgsRobotiq2FOpenResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotiq2FOpenResponse(Codecs.Writer writer, Ros1Dsr_msgsRobotiq2FOpenResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsRobotiq2FOpenResponse readRos1Dsr_msgsRobotiq2FOpenResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotiq2FOpenResponse value = new Ros1Dsr_msgsRobotiq2FOpenResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSerialSendDataRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SerialSendDataRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String data = "";

        public Ros1Dsr_msgsSerialSendDataRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSerialSendDataRequest> CODEC = new Codec<Ros1Dsr_msgsSerialSendDataRequest>() {
            public byte[] encode(Ros1Dsr_msgsSerialSendDataRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSerialSendDataRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSerialSendDataRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSerialSendDataRequest value = readRos1Dsr_msgsSerialSendDataRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSerialSendDataRequest(Codecs.Writer writer, Ros1Dsr_msgsSerialSendDataRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.data;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsSerialSendDataRequest readRos1Dsr_msgsSerialSendDataRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSerialSendDataRequest value = new Ros1Dsr_msgsSerialSendDataRequest();
        value.data = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsSerialSendDataResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SerialSendDataResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSerialSendDataResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSerialSendDataResponse> CODEC = new Codec<Ros1Dsr_msgsSerialSendDataResponse>() {
            public byte[] encode(Ros1Dsr_msgsSerialSendDataResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSerialSendDataResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSerialSendDataResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSerialSendDataResponse value = readRos1Dsr_msgsSerialSendDataResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSerialSendDataResponse(Codecs.Writer writer, Ros1Dsr_msgsSerialSendDataResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSerialSendDataResponse readRos1Dsr_msgsSerialSendDataResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSerialSendDataResponse value = new Ros1Dsr_msgsSerialSendDataResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogInputTypeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte channel = 0;
        public byte mode = 0;

        public Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest> CODEC = new Codec<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest value = readRos1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(Codecs.Writer writer, Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.channel;
        writer.integer(part0, 1, true);
        byte part1 = value.mode;
        writer.integer(part1, 1, true);
    }

    private static Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest readRos1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest value = new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest();
        value.channel = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogInputTypeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse> CODEC = new Codec<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse value = readRos1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(Codecs.Writer writer, Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse readRos1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse value = new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogOutputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        public byte channel = 0;
        public double value = 0;

        public Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest> CODEC = new Codec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCtrlBoxAnalogOutputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest value = readRos1Dsr_msgsSetCtrlBoxAnalogOutputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCtrlBoxAnalogOutputRequest(Codecs.Writer writer, Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.channel;
        writer.integer(part0, 1, true);
        double part1 = value.value;
        writer.f64(part1);
    }

    private static Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest readRos1Dsr_msgsSetCtrlBoxAnalogOutputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest value = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest();
        value.channel = (byte)reader.integer(1, true);
        value.value = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogOutputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse> CODEC = new Codec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCtrlBoxAnalogOutputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse value = readRos1Dsr_msgsSetCtrlBoxAnalogOutputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCtrlBoxAnalogOutputResponse(Codecs.Writer writer, Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse readRos1Dsr_msgsSetCtrlBoxAnalogOutputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse value = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte channel = 0;
        public byte mode = 0;

        public Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest> CODEC = new Codec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest value = readRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(Codecs.Writer writer, Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.channel;
        writer.integer(part0, 1, true);
        byte part1 = value.mode;
        writer.integer(part1, 1, true);
    }

    private static Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest readRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest value = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest();
        value.channel = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse> CODEC = new Codec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse value = readRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(Codecs.Writer writer, Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse readRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse value = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCtrlBoxDigitalOutputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte index = 0;
        public byte value = 0;

        public Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest> CODEC = new Codec<Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCtrlBoxDigitalOutputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest value = readRos1Dsr_msgsSetCtrlBoxDigitalOutputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCtrlBoxDigitalOutputRequest(Codecs.Writer writer, Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
        byte part1 = value.value;
        writer.integer(part1, 1, true);
    }

    private static Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest readRos1Dsr_msgsSetCtrlBoxDigitalOutputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest value = new Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest();
        value.index = (byte)reader.integer(1, true);
        value.value = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCtrlBoxDigitalOutputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse> CODEC = new Codec<Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCtrlBoxDigitalOutputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse value = readRos1Dsr_msgsSetCtrlBoxDigitalOutputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCtrlBoxDigitalOutputResponse(Codecs.Writer writer, Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse readRos1Dsr_msgsSetCtrlBoxDigitalOutputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse value = new Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCurrentTcpRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCurrentTcpRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros1Dsr_msgsSetCurrentTcpRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCurrentTcpRequest> CODEC = new Codec<Ros1Dsr_msgsSetCurrentTcpRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetCurrentTcpRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCurrentTcpRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCurrentTcpRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCurrentTcpRequest value = readRos1Dsr_msgsSetCurrentTcpRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCurrentTcpRequest(Codecs.Writer writer, Ros1Dsr_msgsSetCurrentTcpRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsSetCurrentTcpRequest readRos1Dsr_msgsSetCurrentTcpRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCurrentTcpRequest value = new Ros1Dsr_msgsSetCurrentTcpRequest();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCurrentTcpResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCurrentTcpResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetCurrentTcpResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCurrentTcpResponse> CODEC = new Codec<Ros1Dsr_msgsSetCurrentTcpResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetCurrentTcpResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCurrentTcpResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCurrentTcpResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCurrentTcpResponse value = readRos1Dsr_msgsSetCurrentTcpResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCurrentTcpResponse(Codecs.Writer writer, Ros1Dsr_msgsSetCurrentTcpResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetCurrentTcpResponse readRos1Dsr_msgsSetCurrentTcpResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCurrentTcpResponse value = new Ros1Dsr_msgsSetCurrentTcpResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCurrentToolRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCurrentToolRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros1Dsr_msgsSetCurrentToolRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCurrentToolRequest> CODEC = new Codec<Ros1Dsr_msgsSetCurrentToolRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetCurrentToolRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCurrentToolRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCurrentToolRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCurrentToolRequest value = readRos1Dsr_msgsSetCurrentToolRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCurrentToolRequest(Codecs.Writer writer, Ros1Dsr_msgsSetCurrentToolRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsSetCurrentToolRequest readRos1Dsr_msgsSetCurrentToolRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCurrentToolRequest value = new Ros1Dsr_msgsSetCurrentToolRequest();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsSetCurrentToolResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetCurrentToolResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetCurrentToolResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetCurrentToolResponse> CODEC = new Codec<Ros1Dsr_msgsSetCurrentToolResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetCurrentToolResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetCurrentToolResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetCurrentToolResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetCurrentToolResponse value = readRos1Dsr_msgsSetCurrentToolResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetCurrentToolResponse(Codecs.Writer writer, Ros1Dsr_msgsSetCurrentToolResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetCurrentToolResponse readRos1Dsr_msgsSetCurrentToolResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetCurrentToolResponse value = new Ros1Dsr_msgsSetCurrentToolResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetModbusOutputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetModbusOutputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        public String name = "";
        public int value = 0;

        public Ros1Dsr_msgsSetModbusOutputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetModbusOutputRequest> CODEC = new Codec<Ros1Dsr_msgsSetModbusOutputRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetModbusOutputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetModbusOutputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetModbusOutputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetModbusOutputRequest value = readRos1Dsr_msgsSetModbusOutputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetModbusOutputRequest(Codecs.Writer writer, Ros1Dsr_msgsSetModbusOutputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
        int part1 = value.value;
        writer.integer(part1, 4, true);
    }

    private static Ros1Dsr_msgsSetModbusOutputRequest readRos1Dsr_msgsSetModbusOutputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetModbusOutputRequest value = new Ros1Dsr_msgsSetModbusOutputRequest();
        value.name = readText(reader, 256);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetModbusOutputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetModbusOutputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetModbusOutputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetModbusOutputResponse> CODEC = new Codec<Ros1Dsr_msgsSetModbusOutputResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetModbusOutputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetModbusOutputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetModbusOutputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetModbusOutputResponse value = readRos1Dsr_msgsSetModbusOutputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetModbusOutputResponse(Codecs.Writer writer, Ros1Dsr_msgsSetModbusOutputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetModbusOutputResponse readRos1Dsr_msgsSetModbusOutputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetModbusOutputResponse value = new Ros1Dsr_msgsSetModbusOutputResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRobotModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRobotModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte robot_mode = 0;

        public Ros1Dsr_msgsSetRobotModeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRobotModeRequest> CODEC = new Codec<Ros1Dsr_msgsSetRobotModeRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetRobotModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRobotModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRobotModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRobotModeRequest value = readRos1Dsr_msgsSetRobotModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRobotModeRequest(Codecs.Writer writer, Ros1Dsr_msgsSetRobotModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_mode;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsSetRobotModeRequest readRos1Dsr_msgsSetRobotModeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRobotModeRequest value = new Ros1Dsr_msgsSetRobotModeRequest();
        value.robot_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRobotModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRobotModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetRobotModeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRobotModeResponse> CODEC = new Codec<Ros1Dsr_msgsSetRobotModeResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetRobotModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRobotModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRobotModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRobotModeResponse value = readRos1Dsr_msgsSetRobotModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRobotModeResponse(Codecs.Writer writer, Ros1Dsr_msgsSetRobotModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetRobotModeResponse readRos1Dsr_msgsSetRobotModeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRobotModeResponse value = new Ros1Dsr_msgsSetRobotModeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRobotSpeedModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRobotSpeedModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte speed_mode = 0;

        public Ros1Dsr_msgsSetRobotSpeedModeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRobotSpeedModeRequest> CODEC = new Codec<Ros1Dsr_msgsSetRobotSpeedModeRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetRobotSpeedModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRobotSpeedModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRobotSpeedModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRobotSpeedModeRequest value = readRos1Dsr_msgsSetRobotSpeedModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRobotSpeedModeRequest(Codecs.Writer writer, Ros1Dsr_msgsSetRobotSpeedModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.speed_mode;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsSetRobotSpeedModeRequest readRos1Dsr_msgsSetRobotSpeedModeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRobotSpeedModeRequest value = new Ros1Dsr_msgsSetRobotSpeedModeRequest();
        value.speed_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRobotSpeedModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRobotSpeedModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetRobotSpeedModeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRobotSpeedModeResponse> CODEC = new Codec<Ros1Dsr_msgsSetRobotSpeedModeResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetRobotSpeedModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRobotSpeedModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRobotSpeedModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRobotSpeedModeResponse value = readRos1Dsr_msgsSetRobotSpeedModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRobotSpeedModeResponse(Codecs.Writer writer, Ros1Dsr_msgsSetRobotSpeedModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetRobotSpeedModeResponse readRos1Dsr_msgsSetRobotSpeedModeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRobotSpeedModeResponse value = new Ros1Dsr_msgsSetRobotSpeedModeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRobotSystemRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRobotSystemRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte robot_system = 0;

        public Ros1Dsr_msgsSetRobotSystemRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRobotSystemRequest> CODEC = new Codec<Ros1Dsr_msgsSetRobotSystemRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetRobotSystemRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRobotSystemRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRobotSystemRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRobotSystemRequest value = readRos1Dsr_msgsSetRobotSystemRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRobotSystemRequest(Codecs.Writer writer, Ros1Dsr_msgsSetRobotSystemRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_system;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsSetRobotSystemRequest readRos1Dsr_msgsSetRobotSystemRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRobotSystemRequest value = new Ros1Dsr_msgsSetRobotSystemRequest();
        value.robot_system = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRobotSystemResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRobotSystemResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetRobotSystemResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRobotSystemResponse> CODEC = new Codec<Ros1Dsr_msgsSetRobotSystemResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetRobotSystemResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRobotSystemResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRobotSystemResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRobotSystemResponse value = readRos1Dsr_msgsSetRobotSystemResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRobotSystemResponse(Codecs.Writer writer, Ros1Dsr_msgsSetRobotSystemResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetRobotSystemResponse readRos1Dsr_msgsSetRobotSystemResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRobotSystemResponse value = new Ros1Dsr_msgsSetRobotSystemResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetSafeStopResetTypeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetSafeStopResetTypeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte reset_type = 0;

        public Ros1Dsr_msgsSetSafeStopResetTypeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetSafeStopResetTypeRequest> CODEC = new Codec<Ros1Dsr_msgsSetSafeStopResetTypeRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetSafeStopResetTypeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetSafeStopResetTypeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetSafeStopResetTypeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetSafeStopResetTypeRequest value = readRos1Dsr_msgsSetSafeStopResetTypeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetSafeStopResetTypeRequest(Codecs.Writer writer, Ros1Dsr_msgsSetSafeStopResetTypeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.reset_type;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsSetSafeStopResetTypeRequest readRos1Dsr_msgsSetSafeStopResetTypeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetSafeStopResetTypeRequest value = new Ros1Dsr_msgsSetSafeStopResetTypeRequest();
        value.reset_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetSafeStopResetTypeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetSafeStopResetTypeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetSafeStopResetTypeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetSafeStopResetTypeResponse> CODEC = new Codec<Ros1Dsr_msgsSetSafeStopResetTypeResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetSafeStopResetTypeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetSafeStopResetTypeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetSafeStopResetTypeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetSafeStopResetTypeResponse value = readRos1Dsr_msgsSetSafeStopResetTypeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetSafeStopResetTypeResponse(Codecs.Writer writer, Ros1Dsr_msgsSetSafeStopResetTypeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetSafeStopResetTypeResponse readRos1Dsr_msgsSetSafeStopResetTypeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetSafeStopResetTypeResponse value = new Ros1Dsr_msgsSetSafeStopResetTypeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetToolDigitalOutputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetToolDigitalOutputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte index = 0;
        public byte value = 0;

        public Ros1Dsr_msgsSetToolDigitalOutputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetToolDigitalOutputRequest> CODEC = new Codec<Ros1Dsr_msgsSetToolDigitalOutputRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetToolDigitalOutputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetToolDigitalOutputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetToolDigitalOutputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetToolDigitalOutputRequest value = readRos1Dsr_msgsSetToolDigitalOutputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetToolDigitalOutputRequest(Codecs.Writer writer, Ros1Dsr_msgsSetToolDigitalOutputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
        byte part1 = value.value;
        writer.integer(part1, 1, true);
    }

    private static Ros1Dsr_msgsSetToolDigitalOutputRequest readRos1Dsr_msgsSetToolDigitalOutputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetToolDigitalOutputRequest value = new Ros1Dsr_msgsSetToolDigitalOutputRequest();
        value.index = (byte)reader.integer(1, true);
        value.value = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetToolDigitalOutputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetToolDigitalOutputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetToolDigitalOutputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetToolDigitalOutputResponse> CODEC = new Codec<Ros1Dsr_msgsSetToolDigitalOutputResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetToolDigitalOutputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetToolDigitalOutputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetToolDigitalOutputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetToolDigitalOutputResponse value = readRos1Dsr_msgsSetToolDigitalOutputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetToolDigitalOutputResponse(Codecs.Writer writer, Ros1Dsr_msgsSetToolDigitalOutputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetToolDigitalOutputResponse readRos1Dsr_msgsSetToolDigitalOutputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetToolDigitalOutputResponse value = new Ros1Dsr_msgsSetToolDigitalOutputResponse();
        value.success = readBool(reader);
        return value;
    }
}
