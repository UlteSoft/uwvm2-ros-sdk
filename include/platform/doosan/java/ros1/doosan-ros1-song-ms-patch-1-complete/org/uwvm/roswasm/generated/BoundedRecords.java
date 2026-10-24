/**
 * @file BoundedRecords.java
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros1-song-ms-patch-1-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

package org.uwvm.doosan.doosan_ros1_song_ms_patch_1_complete;

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

    public static final class Ros1Dsr_msgsAlignAxis1Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/AlignAxis1Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_708643fa3a09d74f06ee9ba327c3fc05fb60dd73447ea95e43d9d96f7c5b6e54";
        public static final int MIN_WIRE_BYTES = 170, MAX_WIRE_BYTES = 170;
        public double[] x1 = new double[6];
        public double[] x2 = new double[6];
        public double[] x3 = new double[6];
        public double[] source_vect = new double[3];
        public byte axis = 0;
        public byte ref = 0;

        public Ros1Dsr_msgsAlignAxis1Request()
        {
        }

        public static final Codec<Ros1Dsr_msgsAlignAxis1Request> CODEC = new Codec<Ros1Dsr_msgsAlignAxis1Request>() {
            public byte[] encode(Ros1Dsr_msgsAlignAxis1Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsAlignAxis1Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsAlignAxis1Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsAlignAxis1Request value = readRos1Dsr_msgsAlignAxis1Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsAlignAxis1Request(Codecs.Writer writer, Ros1Dsr_msgsAlignAxis1Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.x1;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.x2;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.x3;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.source_vect;
        if(part3 == null || part3.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        byte part4 = value.axis;
        writer.integer(part4, 1, true);
        byte part5 = value.ref;
        writer.integer(part5, 1, true);
    }

    private static Ros1Dsr_msgsAlignAxis1Request readRos1Dsr_msgsAlignAxis1Request(Codecs.Reader reader)
    {
        Ros1Dsr_msgsAlignAxis1Request value = new Ros1Dsr_msgsAlignAxis1Request();
        value.x1 = new double[6];
        for(int i = 0; i < value.x1.length; ++i)
            value.x1[i] = reader.f64();
        value.x2 = new double[6];
        for(int i = 0; i < value.x2.length; ++i)
            value.x2[i] = reader.f64();
        value.x3 = new double[6];
        for(int i = 0; i < value.x3.length; ++i)
            value.x3[i] = reader.f64();
        value.source_vect = new double[3];
        for(int i = 0; i < value.source_vect.length; ++i)
            value.source_vect[i] = reader.f64();
        value.axis = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsAlignAxis1Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/AlignAxis1Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dda31d7d89f3f8b2bb3c68c0d685a30ccfc32a9c363ea5399a1777da80d2f33d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsAlignAxis1Response()
        {
        }

        public static final Codec<Ros1Dsr_msgsAlignAxis1Response> CODEC = new Codec<Ros1Dsr_msgsAlignAxis1Response>() {
            public byte[] encode(Ros1Dsr_msgsAlignAxis1Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsAlignAxis1Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsAlignAxis1Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsAlignAxis1Response value = readRos1Dsr_msgsAlignAxis1Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsAlignAxis1Response(Codecs.Writer writer, Ros1Dsr_msgsAlignAxis1Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsAlignAxis1Response readRos1Dsr_msgsAlignAxis1Response(Codecs.Reader reader)
    {
        Ros1Dsr_msgsAlignAxis1Response value = new Ros1Dsr_msgsAlignAxis1Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsAlignAxis2Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/AlignAxis2Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3e1c136bdfe0d97015a19c2fffc6b40460933a3ada556e57142d6309f99fe1ea";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public double[] target_vect = new double[3];
        public double[] source_vect = new double[3];
        public byte axis = 0;
        public byte ref = 0;

        public Ros1Dsr_msgsAlignAxis2Request()
        {
        }

        public static final Codec<Ros1Dsr_msgsAlignAxis2Request> CODEC = new Codec<Ros1Dsr_msgsAlignAxis2Request>() {
            public byte[] encode(Ros1Dsr_msgsAlignAxis2Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsAlignAxis2Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsAlignAxis2Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsAlignAxis2Request value = readRos1Dsr_msgsAlignAxis2Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsAlignAxis2Request(Codecs.Writer writer, Ros1Dsr_msgsAlignAxis2Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.target_vect;
        if(part0 == null || part0.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.source_vect;
        if(part1 == null || part1.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        byte part2 = value.axis;
        writer.integer(part2, 1, true);
        byte part3 = value.ref;
        writer.integer(part3, 1, true);
    }

    private static Ros1Dsr_msgsAlignAxis2Request readRos1Dsr_msgsAlignAxis2Request(Codecs.Reader reader)
    {
        Ros1Dsr_msgsAlignAxis2Request value = new Ros1Dsr_msgsAlignAxis2Request();
        value.target_vect = new double[3];
        for(int i = 0; i < value.target_vect.length; ++i)
            value.target_vect[i] = reader.f64();
        value.source_vect = new double[3];
        for(int i = 0; i < value.source_vect.length; ++i)
            value.source_vect[i] = reader.f64();
        value.axis = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsAlignAxis2Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/AlignAxis2Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_79618c7ede73decd7a8cb4f0cc013b95c463ca37126d49c0b54e17ad17224ade";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsAlignAxis2Response()
        {
        }

        public static final Codec<Ros1Dsr_msgsAlignAxis2Response> CODEC = new Codec<Ros1Dsr_msgsAlignAxis2Response>() {
            public byte[] encode(Ros1Dsr_msgsAlignAxis2Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsAlignAxis2Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsAlignAxis2Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsAlignAxis2Response value = readRos1Dsr_msgsAlignAxis2Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsAlignAxis2Response(Codecs.Writer writer, Ros1Dsr_msgsAlignAxis2Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsAlignAxis2Response readRos1Dsr_msgsAlignAxis2Response(Codecs.Reader reader)
    {
        Ros1Dsr_msgsAlignAxis2Response value = new Ros1Dsr_msgsAlignAxis2Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsAlterMotionRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/AlterMotionRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2230e6b8bc09c902ab6ba9ed4e9fdb59a9e8d691cf614599e5f96fd8d2820787";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros1Dsr_msgsAlterMotionRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsAlterMotionRequest> CODEC = new Codec<Ros1Dsr_msgsAlterMotionRequest>() {
            public byte[] encode(Ros1Dsr_msgsAlterMotionRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsAlterMotionRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsAlterMotionRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsAlterMotionRequest value = readRos1Dsr_msgsAlterMotionRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsAlterMotionRequest(Codecs.Writer writer, Ros1Dsr_msgsAlterMotionRequest value)
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

    private static Ros1Dsr_msgsAlterMotionRequest readRos1Dsr_msgsAlterMotionRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsAlterMotionRequest value = new Ros1Dsr_msgsAlterMotionRequest();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsAlterMotionResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/AlterMotionResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d27db25bae1cbb78fedfb24b96acbe023949948766ed856ad91e942fe367f716";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsAlterMotionResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsAlterMotionResponse> CODEC = new Codec<Ros1Dsr_msgsAlterMotionResponse>() {
            public byte[] encode(Ros1Dsr_msgsAlterMotionResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsAlterMotionResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsAlterMotionResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsAlterMotionResponse value = readRos1Dsr_msgsAlterMotionResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsAlterMotionResponse(Codecs.Writer writer, Ros1Dsr_msgsAlterMotionResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsAlterMotionResponse readRos1Dsr_msgsAlterMotionResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsAlterMotionResponse value = new Ros1Dsr_msgsAlterMotionResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsAlterMotionStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/AlterMotionStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_18119f940783ffa402b9f51773f9eac801b70f891039aa1da99b1bea04bc50ac";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros1Dsr_msgsAlterMotionStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsAlterMotionStream> CODEC = new Codec<Ros1Dsr_msgsAlterMotionStream>() {
            public byte[] encode(Ros1Dsr_msgsAlterMotionStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsAlterMotionStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsAlterMotionStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsAlterMotionStream value = readRos1Dsr_msgsAlterMotionStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsAlterMotionStream(Codecs.Writer writer, Ros1Dsr_msgsAlterMotionStream value)
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

    private static Ros1Dsr_msgsAlterMotionStream readRos1Dsr_msgsAlterMotionStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsAlterMotionStream value = new Ros1Dsr_msgsAlterMotionStream();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsCalcCoordRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CalcCoordRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7124a7312fd476b49ef2fd9fb468ea19ce7ae644da5c8fffb3ddfc67c175c70d";
        public static final int MIN_WIRE_BYTES = 195, MAX_WIRE_BYTES = 195;
        public byte input_pos_cnt = 0;
        public double[] x1 = new double[6];
        public double[] x2 = new double[6];
        public double[] x3 = new double[6];
        public double[] x4 = new double[6];
        public byte ref = 0;
        public byte mod = 0;

        public Ros1Dsr_msgsCalcCoordRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsCalcCoordRequest> CODEC = new Codec<Ros1Dsr_msgsCalcCoordRequest>() {
            public byte[] encode(Ros1Dsr_msgsCalcCoordRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCalcCoordRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCalcCoordRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCalcCoordRequest value = readRos1Dsr_msgsCalcCoordRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCalcCoordRequest(Codecs.Writer writer, Ros1Dsr_msgsCalcCoordRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.input_pos_cnt;
        writer.integer(part0, 1, true);
        double[] part1 = value.x1;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.x2;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.x3;
        if(part3 == null || part3.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.x4;
        if(part4 == null || part4.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        byte part5 = value.ref;
        writer.integer(part5, 1, true);
        byte part6 = value.mod;
        writer.integer(part6, 1, true);
    }

    private static Ros1Dsr_msgsCalcCoordRequest readRos1Dsr_msgsCalcCoordRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCalcCoordRequest value = new Ros1Dsr_msgsCalcCoordRequest();
        value.input_pos_cnt = (byte)reader.integer(1, true);
        value.x1 = new double[6];
        for(int i = 0; i < value.x1.length; ++i)
            value.x1[i] = reader.f64();
        value.x2 = new double[6];
        for(int i = 0; i < value.x2.length; ++i)
            value.x2[i] = reader.f64();
        value.x3 = new double[6];
        for(int i = 0; i < value.x3.length; ++i)
            value.x3[i] = reader.f64();
        value.x4 = new double[6];
        for(int i = 0; i < value.x4.length; ++i)
            value.x4[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mod = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsCalcCoordResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CalcCoordResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c34ef9bfe05948a853305174e1084443e5358bc5877c0dd5d05ba6655dc6d993";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] conv_posx = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsCalcCoordResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsCalcCoordResponse> CODEC = new Codec<Ros1Dsr_msgsCalcCoordResponse>() {
            public byte[] encode(Ros1Dsr_msgsCalcCoordResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCalcCoordResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCalcCoordResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCalcCoordResponse value = readRos1Dsr_msgsCalcCoordResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCalcCoordResponse(Codecs.Writer writer, Ros1Dsr_msgsCalcCoordResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.conv_posx;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsCalcCoordResponse readRos1Dsr_msgsCalcCoordResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCalcCoordResponse value = new Ros1Dsr_msgsCalcCoordResponse();
        value.conv_posx = new double[6];
        for(int i = 0; i < value.conv_posx.length; ++i)
            value.conv_posx[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsChangeOperationSpeedRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ChangeOperationSpeedRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8d8beb40ab8ebd7d0f69509832bc71ac9e460ec01bdecc41a82f4eab28017616";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte speed = 0;

        public Ros1Dsr_msgsChangeOperationSpeedRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsChangeOperationSpeedRequest> CODEC = new Codec<Ros1Dsr_msgsChangeOperationSpeedRequest>() {
            public byte[] encode(Ros1Dsr_msgsChangeOperationSpeedRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsChangeOperationSpeedRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsChangeOperationSpeedRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsChangeOperationSpeedRequest value = readRos1Dsr_msgsChangeOperationSpeedRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsChangeOperationSpeedRequest(Codecs.Writer writer, Ros1Dsr_msgsChangeOperationSpeedRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.speed;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsChangeOperationSpeedRequest readRos1Dsr_msgsChangeOperationSpeedRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsChangeOperationSpeedRequest value = new Ros1Dsr_msgsChangeOperationSpeedRequest();
        value.speed = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsChangeOperationSpeedResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ChangeOperationSpeedResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bf8b7e30e18d38f6dde9b02576151cb57c4789cef7b7ea6c56fc8581eafc08f6";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsChangeOperationSpeedResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsChangeOperationSpeedResponse> CODEC = new Codec<Ros1Dsr_msgsChangeOperationSpeedResponse>() {
            public byte[] encode(Ros1Dsr_msgsChangeOperationSpeedResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsChangeOperationSpeedResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsChangeOperationSpeedResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsChangeOperationSpeedResponse value = readRos1Dsr_msgsChangeOperationSpeedResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsChangeOperationSpeedResponse(Codecs.Writer writer, Ros1Dsr_msgsChangeOperationSpeedResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsChangeOperationSpeedResponse readRos1Dsr_msgsChangeOperationSpeedResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsChangeOperationSpeedResponse value = new Ros1Dsr_msgsChangeOperationSpeedResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsCheckForceConditionRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckForceConditionRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_590694ea44b90bb2aa6fa1f903d129e2a58a33af58fe26c9f67f9b0272b34673";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;
        public byte axis = 0;
        public double min = 0;
        public double max = 0;
        public byte ref = 0;

        public Ros1Dsr_msgsCheckForceConditionRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckForceConditionRequest> CODEC = new Codec<Ros1Dsr_msgsCheckForceConditionRequest>() {
            public byte[] encode(Ros1Dsr_msgsCheckForceConditionRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckForceConditionRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckForceConditionRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckForceConditionRequest value = readRos1Dsr_msgsCheckForceConditionRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckForceConditionRequest(Codecs.Writer writer, Ros1Dsr_msgsCheckForceConditionRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.axis;
        writer.integer(part0, 1, true);
        double part1 = value.min;
        writer.f64(part1);
        double part2 = value.max;
        writer.f64(part2);
        byte part3 = value.ref;
        writer.integer(part3, 1, true);
    }

    private static Ros1Dsr_msgsCheckForceConditionRequest readRos1Dsr_msgsCheckForceConditionRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckForceConditionRequest value = new Ros1Dsr_msgsCheckForceConditionRequest();
        value.axis = (byte)reader.integer(1, true);
        value.min = reader.f64();
        value.max = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsCheckForceConditionResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckForceConditionResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6d0cb8413b824c1a469f77cd592946e67dd0a0c15d5945b0ea908c0e0e7a3270";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsCheckForceConditionResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckForceConditionResponse> CODEC = new Codec<Ros1Dsr_msgsCheckForceConditionResponse>() {
            public byte[] encode(Ros1Dsr_msgsCheckForceConditionResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckForceConditionResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckForceConditionResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckForceConditionResponse value = readRos1Dsr_msgsCheckForceConditionResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckForceConditionResponse(Codecs.Writer writer, Ros1Dsr_msgsCheckForceConditionResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsCheckForceConditionResponse readRos1Dsr_msgsCheckForceConditionResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckForceConditionResponse value = new Ros1Dsr_msgsCheckForceConditionResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsCheckMotionRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckMotionRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f38bee5e76ececdf4868a092e4ee673da6bcd95db9baacd504ef31017b94b7d5";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsCheckMotionRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckMotionRequest> CODEC = new Codec<Ros1Dsr_msgsCheckMotionRequest>() {
            public byte[] encode(Ros1Dsr_msgsCheckMotionRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckMotionRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckMotionRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckMotionRequest value = readRos1Dsr_msgsCheckMotionRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckMotionRequest(Codecs.Writer writer, Ros1Dsr_msgsCheckMotionRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsCheckMotionRequest readRos1Dsr_msgsCheckMotionRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckMotionRequest value = new Ros1Dsr_msgsCheckMotionRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsCheckMotionResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckMotionResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2e11dbf1b2a447dd3b6f302f3839b2383f6c3e0c0408c138cb7acb12062df480";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte status = 0;
        public boolean success = false;

        public Ros1Dsr_msgsCheckMotionResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckMotionResponse> CODEC = new Codec<Ros1Dsr_msgsCheckMotionResponse>() {
            public byte[] encode(Ros1Dsr_msgsCheckMotionResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckMotionResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckMotionResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckMotionResponse value = readRos1Dsr_msgsCheckMotionResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckMotionResponse(Codecs.Writer writer, Ros1Dsr_msgsCheckMotionResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.status;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsCheckMotionResponse readRos1Dsr_msgsCheckMotionResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckMotionResponse value = new Ros1Dsr_msgsCheckMotionResponse();
        value.status = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsCheckOrientationCondition1Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckOrientationCondition1Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_048532f02d47e889e7299755886812a454c0457d4c70fda58bd090c959a52c6e";
        public static final int MIN_WIRE_BYTES = 99, MAX_WIRE_BYTES = 99;
        public byte axis = 0;
        public double[] min = new double[6];
        public double[] max = new double[6];
        public byte ref = 0;
        public byte mode = 0;

        public Ros1Dsr_msgsCheckOrientationCondition1Request()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckOrientationCondition1Request> CODEC = new Codec<Ros1Dsr_msgsCheckOrientationCondition1Request>() {
            public byte[] encode(Ros1Dsr_msgsCheckOrientationCondition1Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckOrientationCondition1Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckOrientationCondition1Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckOrientationCondition1Request value = readRos1Dsr_msgsCheckOrientationCondition1Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckOrientationCondition1Request(Codecs.Writer writer, Ros1Dsr_msgsCheckOrientationCondition1Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.axis;
        writer.integer(part0, 1, true);
        double[] part1 = value.min;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.max;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        byte part3 = value.ref;
        writer.integer(part3, 1, true);
        byte part4 = value.mode;
        writer.integer(part4, 1, true);
    }

    private static Ros1Dsr_msgsCheckOrientationCondition1Request readRos1Dsr_msgsCheckOrientationCondition1Request(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckOrientationCondition1Request value = new Ros1Dsr_msgsCheckOrientationCondition1Request();
        value.axis = (byte)reader.integer(1, true);
        value.min = new double[6];
        for(int i = 0; i < value.min.length; ++i)
            value.min[i] = reader.f64();
        value.max = new double[6];
        for(int i = 0; i < value.max.length; ++i)
            value.max[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsCheckOrientationCondition1Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckOrientationCondition1Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4b8359166eedb70a505b0d1829168618088cbedada2bc5d6f7d9e9a5dfa79b32";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsCheckOrientationCondition1Response()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckOrientationCondition1Response> CODEC = new Codec<Ros1Dsr_msgsCheckOrientationCondition1Response>() {
            public byte[] encode(Ros1Dsr_msgsCheckOrientationCondition1Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckOrientationCondition1Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckOrientationCondition1Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckOrientationCondition1Response value = readRos1Dsr_msgsCheckOrientationCondition1Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckOrientationCondition1Response(Codecs.Writer writer, Ros1Dsr_msgsCheckOrientationCondition1Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsCheckOrientationCondition1Response readRos1Dsr_msgsCheckOrientationCondition1Response(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckOrientationCondition1Response value = new Ros1Dsr_msgsCheckOrientationCondition1Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsCheckOrientationCondition2Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckOrientationCondition2Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_42287a8e7cef2b93a1bd5778de6ae4ef4d1aa484dd0c74fcd29c660b400b6ff0";
        public static final int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;
        public byte axis = 0;
        public double min = 0;
        public double max = 0;
        public byte ref = 0;
        public byte mode = 0;
        public double[] pos = new double[6];

        public Ros1Dsr_msgsCheckOrientationCondition2Request()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckOrientationCondition2Request> CODEC = new Codec<Ros1Dsr_msgsCheckOrientationCondition2Request>() {
            public byte[] encode(Ros1Dsr_msgsCheckOrientationCondition2Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckOrientationCondition2Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckOrientationCondition2Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckOrientationCondition2Request value = readRos1Dsr_msgsCheckOrientationCondition2Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckOrientationCondition2Request(Codecs.Writer writer, Ros1Dsr_msgsCheckOrientationCondition2Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.axis;
        writer.integer(part0, 1, true);
        double part1 = value.min;
        writer.f64(part1);
        double part2 = value.max;
        writer.f64(part2);
        byte part3 = value.ref;
        writer.integer(part3, 1, true);
        byte part4 = value.mode;
        writer.integer(part4, 1, true);
        double[] part5 = value.pos;
        if(part5 == null || part5.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
    }

    private static Ros1Dsr_msgsCheckOrientationCondition2Request readRos1Dsr_msgsCheckOrientationCondition2Request(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckOrientationCondition2Request value = new Ros1Dsr_msgsCheckOrientationCondition2Request();
        value.axis = (byte)reader.integer(1, true);
        value.min = reader.f64();
        value.max = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsCheckOrientationCondition2Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckOrientationCondition2Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_334774329557c04594f02ee344f0af39d250c482c3f9c4b2dd5f275e87880e83";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsCheckOrientationCondition2Response()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckOrientationCondition2Response> CODEC = new Codec<Ros1Dsr_msgsCheckOrientationCondition2Response>() {
            public byte[] encode(Ros1Dsr_msgsCheckOrientationCondition2Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckOrientationCondition2Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckOrientationCondition2Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckOrientationCondition2Response value = readRos1Dsr_msgsCheckOrientationCondition2Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckOrientationCondition2Response(Codecs.Writer writer, Ros1Dsr_msgsCheckOrientationCondition2Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsCheckOrientationCondition2Response readRos1Dsr_msgsCheckOrientationCondition2Response(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckOrientationCondition2Response value = new Ros1Dsr_msgsCheckOrientationCondition2Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsCheckPositionConditionRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckPositionConditionRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_973c397ac52f4eba5f5956bd25c6552749d14ebd070ea659cea7601bf2bfdbeb";
        public static final int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;
        public byte axis = 0;
        public double min = 0;
        public double max = 0;
        public byte ref = 0;
        public byte mode = 0;
        public double[] pos = new double[6];

        public Ros1Dsr_msgsCheckPositionConditionRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckPositionConditionRequest> CODEC = new Codec<Ros1Dsr_msgsCheckPositionConditionRequest>() {
            public byte[] encode(Ros1Dsr_msgsCheckPositionConditionRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckPositionConditionRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckPositionConditionRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckPositionConditionRequest value = readRos1Dsr_msgsCheckPositionConditionRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckPositionConditionRequest(Codecs.Writer writer, Ros1Dsr_msgsCheckPositionConditionRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.axis;
        writer.integer(part0, 1, true);
        double part1 = value.min;
        writer.f64(part1);
        double part2 = value.max;
        writer.f64(part2);
        byte part3 = value.ref;
        writer.integer(part3, 1, true);
        byte part4 = value.mode;
        writer.integer(part4, 1, true);
        double[] part5 = value.pos;
        if(part5 == null || part5.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
    }

    private static Ros1Dsr_msgsCheckPositionConditionRequest readRos1Dsr_msgsCheckPositionConditionRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckPositionConditionRequest value = new Ros1Dsr_msgsCheckPositionConditionRequest();
        value.axis = (byte)reader.integer(1, true);
        value.min = reader.f64();
        value.max = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsCheckPositionConditionResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CheckPositionConditionResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e809f6231e9bea172a7c00c6d32bb553e97026a607a6070e6fa82d007c3bf94a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsCheckPositionConditionResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsCheckPositionConditionResponse> CODEC = new Codec<Ros1Dsr_msgsCheckPositionConditionResponse>() {
            public byte[] encode(Ros1Dsr_msgsCheckPositionConditionResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCheckPositionConditionResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCheckPositionConditionResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCheckPositionConditionResponse value = readRos1Dsr_msgsCheckPositionConditionResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCheckPositionConditionResponse(Codecs.Writer writer, Ros1Dsr_msgsCheckPositionConditionResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsCheckPositionConditionResponse readRos1Dsr_msgsCheckPositionConditionResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCheckPositionConditionResponse value = new Ros1Dsr_msgsCheckPositionConditionResponse();
        value.success = readBool(reader);
        return value;
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

    public static final class Ros1Dsr_msgsConnectRTControlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConnectRTControlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c9843ae994672ab18e264c025f929a10d208952e0583da7200b6aa26ec3eb755";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        public String ip_address = "";
        public long port = 0;

        public Ros1Dsr_msgsConnectRTControlRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsConnectRTControlRequest> CODEC = new Codec<Ros1Dsr_msgsConnectRTControlRequest>() {
            public byte[] encode(Ros1Dsr_msgsConnectRTControlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConnectRTControlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConnectRTControlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConnectRTControlRequest value = readRos1Dsr_msgsConnectRTControlRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConnectRTControlRequest(Codecs.Writer writer, Ros1Dsr_msgsConnectRTControlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.ip_address;
        writeText(writer, part0, 256);
        long part1 = value.port;
        writer.integer(part1, 4, false);
    }

    private static Ros1Dsr_msgsConnectRTControlRequest readRos1Dsr_msgsConnectRTControlRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConnectRTControlRequest value = new Ros1Dsr_msgsConnectRTControlRequest();
        value.ip_address = readText(reader, 256);
        value.port = reader.integer(4, false);
        return value;
    }

    public static final class Ros1Dsr_msgsConnectRTControlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ConnectRTControlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_716d95e3f734dff8442935476028644077836389e8d54f73661fd3c52804f5a4";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsConnectRTControlResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsConnectRTControlResponse> CODEC = new Codec<Ros1Dsr_msgsConnectRTControlResponse>() {
            public byte[] encode(Ros1Dsr_msgsConnectRTControlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsConnectRTControlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsConnectRTControlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsConnectRTControlResponse value = readRos1Dsr_msgsConnectRTControlResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsConnectRTControlResponse(Codecs.Writer writer, Ros1Dsr_msgsConnectRTControlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsConnectRTControlResponse readRos1Dsr_msgsConnectRTControlResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsConnectRTControlResponse value = new Ros1Dsr_msgsConnectRTControlResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsCoordTransformRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CoordTransformRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_28b33cdb83f95f41982ccc99d276cc4efb34ff33707101e1d56cf63580095436";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public double[] pos_in = new double[6];
        public byte ref_in = 0;
        public byte ref_out = 0;

        public Ros1Dsr_msgsCoordTransformRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsCoordTransformRequest> CODEC = new Codec<Ros1Dsr_msgsCoordTransformRequest>() {
            public byte[] encode(Ros1Dsr_msgsCoordTransformRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCoordTransformRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCoordTransformRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCoordTransformRequest value = readRos1Dsr_msgsCoordTransformRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCoordTransformRequest(Codecs.Writer writer, Ros1Dsr_msgsCoordTransformRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.pos_in;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        byte part1 = value.ref_in;
        writer.integer(part1, 1, true);
        byte part2 = value.ref_out;
        writer.integer(part2, 1, true);
    }

    private static Ros1Dsr_msgsCoordTransformRequest readRos1Dsr_msgsCoordTransformRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCoordTransformRequest value = new Ros1Dsr_msgsCoordTransformRequest();
        value.pos_in = new double[6];
        for(int i = 0; i < value.pos_in.length; ++i)
            value.pos_in[i] = reader.f64();
        value.ref_in = (byte)reader.integer(1, true);
        value.ref_out = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsCoordTransformResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/CoordTransformResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1b9492d45f096bfd2a53e1ed8a701d53698a7aebc525b70e95de70c6275035c9";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] conv_posx = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsCoordTransformResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsCoordTransformResponse> CODEC = new Codec<Ros1Dsr_msgsCoordTransformResponse>() {
            public byte[] encode(Ros1Dsr_msgsCoordTransformResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsCoordTransformResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsCoordTransformResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsCoordTransformResponse value = readRos1Dsr_msgsCoordTransformResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsCoordTransformResponse(Codecs.Writer writer, Ros1Dsr_msgsCoordTransformResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.conv_posx;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsCoordTransformResponse readRos1Dsr_msgsCoordTransformResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsCoordTransformResponse value = new Ros1Dsr_msgsCoordTransformResponse();
        value.conv_posx = new double[6];
        for(int i = 0; i < value.conv_posx.length; ++i)
            value.conv_posx[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsDisableAlterMotionRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DisableAlterMotionRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4ff4905d3843c08022003c96abd4031a5438078e919e0b8e43554aae3229bbc1";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsDisableAlterMotionRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsDisableAlterMotionRequest> CODEC = new Codec<Ros1Dsr_msgsDisableAlterMotionRequest>() {
            public byte[] encode(Ros1Dsr_msgsDisableAlterMotionRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDisableAlterMotionRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDisableAlterMotionRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDisableAlterMotionRequest value = readRos1Dsr_msgsDisableAlterMotionRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDisableAlterMotionRequest(Codecs.Writer writer, Ros1Dsr_msgsDisableAlterMotionRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsDisableAlterMotionRequest readRos1Dsr_msgsDisableAlterMotionRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDisableAlterMotionRequest value = new Ros1Dsr_msgsDisableAlterMotionRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsDisableAlterMotionResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DisableAlterMotionResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_feff25cf5412112d1ebc9fd4dd0aca62f1a9af7f63673a0633f6f32e915a27b1";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsDisableAlterMotionResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsDisableAlterMotionResponse> CODEC = new Codec<Ros1Dsr_msgsDisableAlterMotionResponse>() {
            public byte[] encode(Ros1Dsr_msgsDisableAlterMotionResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDisableAlterMotionResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDisableAlterMotionResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDisableAlterMotionResponse value = readRos1Dsr_msgsDisableAlterMotionResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDisableAlterMotionResponse(Codecs.Writer writer, Ros1Dsr_msgsDisableAlterMotionResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsDisableAlterMotionResponse readRos1Dsr_msgsDisableAlterMotionResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDisableAlterMotionResponse value = new Ros1Dsr_msgsDisableAlterMotionResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsDisconnectRTControlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DisconnectRTControlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4fb305bf56dfd6e1cbaa3f5a9e86f7fdb9cd3c5822447dbdd953944545686d82";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsDisconnectRTControlRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsDisconnectRTControlRequest> CODEC = new Codec<Ros1Dsr_msgsDisconnectRTControlRequest>() {
            public byte[] encode(Ros1Dsr_msgsDisconnectRTControlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDisconnectRTControlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDisconnectRTControlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDisconnectRTControlRequest value = readRos1Dsr_msgsDisconnectRTControlRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDisconnectRTControlRequest(Codecs.Writer writer, Ros1Dsr_msgsDisconnectRTControlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsDisconnectRTControlRequest readRos1Dsr_msgsDisconnectRTControlRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDisconnectRTControlRequest value = new Ros1Dsr_msgsDisconnectRTControlRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsDisconnectRTControlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/DisconnectRTControlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4e9481ecb0b6a13cf344d2fab2f044eb7a75d9d3277fd5dba87bd73f107c822e";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsDisconnectRTControlResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsDisconnectRTControlResponse> CODEC = new Codec<Ros1Dsr_msgsDisconnectRTControlResponse>() {
            public byte[] encode(Ros1Dsr_msgsDisconnectRTControlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsDisconnectRTControlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsDisconnectRTControlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsDisconnectRTControlResponse value = readRos1Dsr_msgsDisconnectRTControlResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsDisconnectRTControlResponse(Codecs.Writer writer, Ros1Dsr_msgsDisconnectRTControlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsDisconnectRTControlResponse readRos1Dsr_msgsDisconnectRTControlResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsDisconnectRTControlResponse value = new Ros1Dsr_msgsDisconnectRTControlResponse();
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

    public static final class Ros1Dsr_msgsEnableAlterMotionRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/EnableAlterMotionRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa62f478a04e6d92a170e62e1ea690f6e6827e3784388fab3ecc58966c25c99f";
        public static final int MIN_WIRE_BYTES = 38, MAX_WIRE_BYTES = 38;
        public int n = 0;
        public byte mode = 0;
        public byte ref = 0;
        public double[] limit_dPOS = new double[2];
        public double[] limit_dPOS_per = new double[2];

        public Ros1Dsr_msgsEnableAlterMotionRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsEnableAlterMotionRequest> CODEC = new Codec<Ros1Dsr_msgsEnableAlterMotionRequest>() {
            public byte[] encode(Ros1Dsr_msgsEnableAlterMotionRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsEnableAlterMotionRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsEnableAlterMotionRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsEnableAlterMotionRequest value = readRos1Dsr_msgsEnableAlterMotionRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsEnableAlterMotionRequest(Codecs.Writer writer, Ros1Dsr_msgsEnableAlterMotionRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.n;
        writer.integer(part0, 4, true);
        byte part1 = value.mode;
        writer.integer(part1, 1, true);
        byte part2 = value.ref;
        writer.integer(part2, 1, true);
        double[] part3 = value.limit_dPOS;
        if(part3 == null || part3.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.limit_dPOS_per;
        if(part4 == null || part4.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
    }

    private static Ros1Dsr_msgsEnableAlterMotionRequest readRos1Dsr_msgsEnableAlterMotionRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsEnableAlterMotionRequest value = new Ros1Dsr_msgsEnableAlterMotionRequest();
        value.n = (int)reader.integer(4, true);
        value.mode = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        value.limit_dPOS = new double[2];
        for(int i = 0; i < value.limit_dPOS.length; ++i)
            value.limit_dPOS[i] = reader.f64();
        value.limit_dPOS_per = new double[2];
        for(int i = 0; i < value.limit_dPOS_per.length; ++i)
            value.limit_dPOS_per[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsEnableAlterMotionResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/EnableAlterMotionResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_24f3d751a4b49ff5f3280893ecb2f896ae57a9a05309a8827c5ae8eb18daf885";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsEnableAlterMotionResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsEnableAlterMotionResponse> CODEC = new Codec<Ros1Dsr_msgsEnableAlterMotionResponse>() {
            public byte[] encode(Ros1Dsr_msgsEnableAlterMotionResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsEnableAlterMotionResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsEnableAlterMotionResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsEnableAlterMotionResponse value = readRos1Dsr_msgsEnableAlterMotionResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsEnableAlterMotionResponse(Codecs.Writer writer, Ros1Dsr_msgsEnableAlterMotionResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsEnableAlterMotionResponse readRos1Dsr_msgsEnableAlterMotionResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsEnableAlterMotionResponse value = new Ros1Dsr_msgsEnableAlterMotionResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsFkinRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/FkinRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6bbd7ead217dd4d6ed0f5d044df5a32d3be159fcc929a395396ec7c1208c325d";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros1Dsr_msgsFkinRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsFkinRequest> CODEC = new Codec<Ros1Dsr_msgsFkinRequest>() {
            public byte[] encode(Ros1Dsr_msgsFkinRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsFkinRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsFkinRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsFkinRequest value = readRos1Dsr_msgsFkinRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsFkinRequest(Codecs.Writer writer, Ros1Dsr_msgsFkinRequest value)
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
        byte part1 = value.ref;
        writer.integer(part1, 1, true);
    }

    private static Ros1Dsr_msgsFkinRequest readRos1Dsr_msgsFkinRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsFkinRequest value = new Ros1Dsr_msgsFkinRequest();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsFkinResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/FkinResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_86e79e02833be0498aef75436df542063454b0e5b0a46fb153467afc5a492c94";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] conv_posx = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsFkinResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsFkinResponse> CODEC = new Codec<Ros1Dsr_msgsFkinResponse>() {
            public byte[] encode(Ros1Dsr_msgsFkinResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsFkinResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsFkinResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsFkinResponse value = readRos1Dsr_msgsFkinResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsFkinResponse(Codecs.Writer writer, Ros1Dsr_msgsFkinResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.conv_posx;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsFkinResponse readRos1Dsr_msgsFkinResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsFkinResponse value = new Ros1Dsr_msgsFkinResponse();
        value.conv_posx = new double[6];
        for(int i = 0; i < value.conv_posx.length; ++i)
            value.conv_posx[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetControlModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetControlModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c7872f67adf097ccf8b60b910ea0c9ce8831a88b1ab82827b3789355b19fbaab";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetControlModeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetControlModeRequest> CODEC = new Codec<Ros1Dsr_msgsGetControlModeRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetControlModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetControlModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetControlModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetControlModeRequest value = readRos1Dsr_msgsGetControlModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetControlModeRequest(Codecs.Writer writer, Ros1Dsr_msgsGetControlModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetControlModeRequest readRos1Dsr_msgsGetControlModeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetControlModeRequest value = new Ros1Dsr_msgsGetControlModeRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetControlModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetControlModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_29bcb7b65473a8e0c70660a270b9110c95d486358b6ccece3580214cb47d8f4f";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte control_mode = 0;
        public boolean success = false;

        public Ros1Dsr_msgsGetControlModeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetControlModeResponse> CODEC = new Codec<Ros1Dsr_msgsGetControlModeResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetControlModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetControlModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetControlModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetControlModeResponse value = readRos1Dsr_msgsGetControlModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetControlModeResponse(Codecs.Writer writer, Ros1Dsr_msgsGetControlModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.control_mode;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetControlModeResponse readRos1Dsr_msgsGetControlModeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetControlModeResponse value = new Ros1Dsr_msgsGetControlModeResponse();
        value.control_mode = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetControlSpaceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetControlSpaceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_eaff6359de691c20936219f59c4c63b1a439ef1367afee1e554d22c013bf74cf";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetControlSpaceRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetControlSpaceRequest> CODEC = new Codec<Ros1Dsr_msgsGetControlSpaceRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetControlSpaceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetControlSpaceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetControlSpaceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetControlSpaceRequest value = readRos1Dsr_msgsGetControlSpaceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetControlSpaceRequest(Codecs.Writer writer, Ros1Dsr_msgsGetControlSpaceRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetControlSpaceRequest readRos1Dsr_msgsGetControlSpaceRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetControlSpaceRequest value = new Ros1Dsr_msgsGetControlSpaceRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetControlSpaceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetControlSpaceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4ef8cc2465e8d38e5d44fa83e907ea5658f14f5f4f95776f8044f791e8311dfb";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte space = 0;
        public boolean success = false;

        public Ros1Dsr_msgsGetControlSpaceResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetControlSpaceResponse> CODEC = new Codec<Ros1Dsr_msgsGetControlSpaceResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetControlSpaceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetControlSpaceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetControlSpaceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetControlSpaceResponse value = readRos1Dsr_msgsGetControlSpaceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetControlSpaceResponse(Codecs.Writer writer, Ros1Dsr_msgsGetControlSpaceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.space;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetControlSpaceResponse readRos1Dsr_msgsGetControlSpaceResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetControlSpaceResponse value = new Ros1Dsr_msgsGetControlSpaceResponse();
        value.space = (byte)reader.integer(1, true);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_a23bcb46f249dc92a614e37a44ebb9e683921ee4104a22446855c8f3b35a6be7";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        public double value = 0;
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse readRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse value = new Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse();
        value.value = reader.f64();
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_f838432468390d51d64a6d9bc714b503b168a9fedfabcfb96cce7a202a34613f";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte value = 0;
        public boolean success = false;

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
        byte part0 = value.value;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse readRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse value = new Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse();
        value.value = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCtrlBoxDigitalOutputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a33419794c2431ab9d5b6c3a96becb14edca0d7b00953aa7a7ec1f11ea7bbdb5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte index = 0;

        public Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest> CODEC = new Codec<Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCtrlBoxDigitalOutputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest value = readRos1Dsr_msgsGetCtrlBoxDigitalOutputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCtrlBoxDigitalOutputRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest readRos1Dsr_msgsGetCtrlBoxDigitalOutputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest value = new Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest();
        value.index = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCtrlBoxDigitalOutputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cf472a4ed84d8005ce6ea97ae3c2fd72aba049015924069ee16c79ad41c76534";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte value = 0;
        public boolean success = false;

        public Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse> CODEC = new Codec<Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCtrlBoxDigitalOutputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse value = readRos1Dsr_msgsGetCtrlBoxDigitalOutputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCtrlBoxDigitalOutputResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.value;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse readRos1Dsr_msgsGetCtrlBoxDigitalOutputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse value = new Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse();
        value.value = (byte)reader.integer(1, true);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_8b57d2561b1a04d2ddb60c29f9a4ffb6ba6eeb2f73e8b7e704ee091b49861fe1";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentPoseResponse readRos1Dsr_msgsGetCurrentPoseResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentPoseResponse value = new Ros1Dsr_msgsGetCurrentPoseResponse();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentPosjRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentPosjRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5a4d2e7f7304671d96e5ee9ff83ad957d6e74f49ac2562aea6e3dbfcc1726be7";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetCurrentPosjRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentPosjRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentPosjRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentPosjRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentPosjRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentPosjRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentPosjRequest value = readRos1Dsr_msgsGetCurrentPosjRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentPosjRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentPosjRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetCurrentPosjRequest readRos1Dsr_msgsGetCurrentPosjRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentPosjRequest value = new Ros1Dsr_msgsGetCurrentPosjRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentPosjResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentPosjResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6d9f277e82052e84ee2494991ffcca6b8cb8457c2d0fdeb805122f99ae583c29";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsGetCurrentPosjResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentPosjResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentPosjResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentPosjResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentPosjResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentPosjResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentPosjResponse value = readRos1Dsr_msgsGetCurrentPosjResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentPosjResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentPosjResponse value)
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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentPosjResponse readRos1Dsr_msgsGetCurrentPosjResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentPosjResponse value = new Ros1Dsr_msgsGetCurrentPosjResponse();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentPosxRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentPosxRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e134a62a318034e8ab66c88085f8e9f0380500394b9d61bb2998a618fc7d3437";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros1Dsr_msgsGetCurrentPosxRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentPosxRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentPosxRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentPosxRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentPosxRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentPosxRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentPosxRequest value = readRos1Dsr_msgsGetCurrentPosxRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentPosxRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentPosxRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetCurrentPosxRequest readRos1Dsr_msgsGetCurrentPosxRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentPosxRequest value = new Ros1Dsr_msgsGetCurrentPosxRequest();
        value.ref = (byte)reader.integer(1, true);
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

    public static final class Ros1Dsr_msgsGetCurrentPosxResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentPosxResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2fb411b9e660dddd17fcd65507bd6437db63aa41b3d1eeecd5c0048405828bf4";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 2213;
        public Ros1Std_msgsFloat64MultiArray[] task_pos_info = new Ros1Std_msgsFloat64MultiArray[0];
        public boolean success = false;

        public Ros1Dsr_msgsGetCurrentPosxResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentPosxResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentPosxResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentPosxResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentPosxResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentPosxResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentPosxResponse value = readRos1Dsr_msgsGetCurrentPosxResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentPosxResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentPosxResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsFloat64MultiArray[] part0 = value.task_pos_info;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentPosxResponse readRos1Dsr_msgsGetCurrentPosxResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentPosxResponse value = new Ros1Dsr_msgsGetCurrentPosxResponse();
        value.task_pos_info = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.task_pos_info.length; ++i)
            value.task_pos_info[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentRotmRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentRotmRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e0f4ee3e0c208a87004cca9771a0696f4acfa8a09ab6a861b8a83bd28ccfb436";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros1Dsr_msgsGetCurrentRotmRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentRotmRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentRotmRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentRotmRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentRotmRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentRotmRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentRotmRequest value = readRos1Dsr_msgsGetCurrentRotmRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentRotmRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentRotmRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetCurrentRotmRequest readRos1Dsr_msgsGetCurrentRotmRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentRotmRequest value = new Ros1Dsr_msgsGetCurrentRotmRequest();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentRotmResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentRotmResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6cfa5fffb8e5c1575cb821b9330dd9e1f60ab3b325d54ff4d00bc8859e7535d1";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 2213;
        public Ros1Std_msgsFloat64MultiArray[] rot_matrix = new Ros1Std_msgsFloat64MultiArray[0];
        public boolean success = false;

        public Ros1Dsr_msgsGetCurrentRotmResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentRotmResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentRotmResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentRotmResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentRotmResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentRotmResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentRotmResponse value = readRos1Dsr_msgsGetCurrentRotmResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentRotmResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentRotmResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsFloat64MultiArray[] part0 = value.rot_matrix;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentRotmResponse readRos1Dsr_msgsGetCurrentRotmResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentRotmResponse value = new Ros1Dsr_msgsGetCurrentRotmResponse();
        value.rot_matrix = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.rot_matrix.length; ++i)
            value.rot_matrix[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_e7ef22b6516c92acb76e6173e0d14f0b7c25a7ec669ef18060b4f1158e877c68";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte sol_space = 0;
        public boolean success = false;

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
        byte part0 = value.sol_space;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentSolutionSpaceResponse readRos1Dsr_msgsGetCurrentSolutionSpaceResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentSolutionSpaceResponse value = new Ros1Dsr_msgsGetCurrentSolutionSpaceResponse();
        value.sol_space = (byte)reader.integer(1, true);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_e0041507b5cdc970e31a6df40a0af22a4115724b1e4c4f615b54c788cf2f27b6";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String info = "";
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentTcpResponse readRos1Dsr_msgsGetCurrentTcpResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentTcpResponse value = new Ros1Dsr_msgsGetCurrentTcpResponse();
        value.info = readText(reader, 256);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_ab0de7b251e53fe03818ec0169e428bf70c27bdef187c792c54e65e37b2e717b";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String info = "";
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentToolResponse readRos1Dsr_msgsGetCurrentToolResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentToolResponse value = new Ros1Dsr_msgsGetCurrentToolResponse();
        value.info = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentToolFlangePosxRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentToolFlangePosxRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c5377881231716926a6e0abeff2b115eaf5292f0d7e41478a7f1b4ccf7896d53";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros1Dsr_msgsGetCurrentToolFlangePosxRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentToolFlangePosxRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentToolFlangePosxRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentToolFlangePosxRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentToolFlangePosxRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentToolFlangePosxRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentToolFlangePosxRequest value = readRos1Dsr_msgsGetCurrentToolFlangePosxRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentToolFlangePosxRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentToolFlangePosxRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetCurrentToolFlangePosxRequest readRos1Dsr_msgsGetCurrentToolFlangePosxRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentToolFlangePosxRequest value = new Ros1Dsr_msgsGetCurrentToolFlangePosxRequest();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentToolFlangePosxResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentToolFlangePosxResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0de91ced161ef1b14003e0e248887f641fd366500674aae15cbbb0f7d915caac";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsGetCurrentToolFlangePosxResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentToolFlangePosxResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentToolFlangePosxResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentToolFlangePosxResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentToolFlangePosxResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentToolFlangePosxResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentToolFlangePosxResponse value = readRos1Dsr_msgsGetCurrentToolFlangePosxResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentToolFlangePosxResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentToolFlangePosxResponse value)
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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentToolFlangePosxResponse readRos1Dsr_msgsGetCurrentToolFlangePosxResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentToolFlangePosxResponse value = new Ros1Dsr_msgsGetCurrentToolFlangePosxResponse();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentVeljRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentVeljRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ee4ef9a4e0b65ed58844e3b545094c569113b23d2478717306a14edb399242fa";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetCurrentVeljRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentVeljRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentVeljRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentVeljRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentVeljRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentVeljRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentVeljRequest value = readRos1Dsr_msgsGetCurrentVeljRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentVeljRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentVeljRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetCurrentVeljRequest readRos1Dsr_msgsGetCurrentVeljRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentVeljRequest value = new Ros1Dsr_msgsGetCurrentVeljRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentVeljResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentVeljResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_000fed042d8de5fd8a1d95fe6b45cec5e4ad20ea2833199d7836ebb9e3ae5b2c";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] joint_speed = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsGetCurrentVeljResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentVeljResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentVeljResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentVeljResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentVeljResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentVeljResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentVeljResponse value = readRos1Dsr_msgsGetCurrentVeljResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentVeljResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentVeljResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.joint_speed;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentVeljResponse readRos1Dsr_msgsGetCurrentVeljResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentVeljResponse value = new Ros1Dsr_msgsGetCurrentVeljResponse();
        value.joint_speed = new double[6];
        for(int i = 0; i < value.joint_speed.length; ++i)
            value.joint_speed[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentVelxRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentVelxRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6f37a0ffd22a29a6b7812d551680cacb146192c25b234806ff16686992c34efb";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros1Dsr_msgsGetCurrentVelxRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentVelxRequest> CODEC = new Codec<Ros1Dsr_msgsGetCurrentVelxRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentVelxRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentVelxRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentVelxRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentVelxRequest value = readRos1Dsr_msgsGetCurrentVelxRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentVelxRequest(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentVelxRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetCurrentVelxRequest readRos1Dsr_msgsGetCurrentVelxRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentVelxRequest value = new Ros1Dsr_msgsGetCurrentVelxRequest();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetCurrentVelxResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetCurrentVelxResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_98c1cd7ae5663063ce12ea61d9be3dbfd37e9e0b10b6a7f4cc1c212419392f40";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] vel = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsGetCurrentVelxResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetCurrentVelxResponse> CODEC = new Codec<Ros1Dsr_msgsGetCurrentVelxResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetCurrentVelxResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetCurrentVelxResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetCurrentVelxResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetCurrentVelxResponse value = readRos1Dsr_msgsGetCurrentVelxResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetCurrentVelxResponse(Codecs.Writer writer, Ros1Dsr_msgsGetCurrentVelxResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.vel;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetCurrentVelxResponse readRos1Dsr_msgsGetCurrentVelxResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetCurrentVelxResponse value = new Ros1Dsr_msgsGetCurrentVelxResponse();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetDesiredPosjRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDesiredPosjRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2937a5625d07a7681c80c13557018978107abc537a22ee85ff562f15925caf1e";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetDesiredPosjRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDesiredPosjRequest> CODEC = new Codec<Ros1Dsr_msgsGetDesiredPosjRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetDesiredPosjRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDesiredPosjRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDesiredPosjRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDesiredPosjRequest value = readRos1Dsr_msgsGetDesiredPosjRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDesiredPosjRequest(Codecs.Writer writer, Ros1Dsr_msgsGetDesiredPosjRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetDesiredPosjRequest readRos1Dsr_msgsGetDesiredPosjRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDesiredPosjRequest value = new Ros1Dsr_msgsGetDesiredPosjRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetDesiredPosjResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDesiredPosjResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_11ac4a05e65b0142f18a152904020780179fadfe540fbff7d5c53e4f177bc833";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsGetDesiredPosjResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDesiredPosjResponse> CODEC = new Codec<Ros1Dsr_msgsGetDesiredPosjResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetDesiredPosjResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDesiredPosjResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDesiredPosjResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDesiredPosjResponse value = readRos1Dsr_msgsGetDesiredPosjResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDesiredPosjResponse(Codecs.Writer writer, Ros1Dsr_msgsGetDesiredPosjResponse value)
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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetDesiredPosjResponse readRos1Dsr_msgsGetDesiredPosjResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDesiredPosjResponse value = new Ros1Dsr_msgsGetDesiredPosjResponse();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetDesiredPosxRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDesiredPosxRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_812744777c143dfb5c4b60f71ab9461b3e95ead9e599473f87f88ba4f21d3563";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros1Dsr_msgsGetDesiredPosxRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDesiredPosxRequest> CODEC = new Codec<Ros1Dsr_msgsGetDesiredPosxRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetDesiredPosxRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDesiredPosxRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDesiredPosxRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDesiredPosxRequest value = readRos1Dsr_msgsGetDesiredPosxRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDesiredPosxRequest(Codecs.Writer writer, Ros1Dsr_msgsGetDesiredPosxRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetDesiredPosxRequest readRos1Dsr_msgsGetDesiredPosxRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDesiredPosxRequest value = new Ros1Dsr_msgsGetDesiredPosxRequest();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetDesiredPosxResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDesiredPosxResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2cf88bb8a14a1c2083a659a509fc1d29531aed1a1f9eb18590ad4381ff00a10a";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsGetDesiredPosxResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDesiredPosxResponse> CODEC = new Codec<Ros1Dsr_msgsGetDesiredPosxResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetDesiredPosxResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDesiredPosxResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDesiredPosxResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDesiredPosxResponse value = readRos1Dsr_msgsGetDesiredPosxResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDesiredPosxResponse(Codecs.Writer writer, Ros1Dsr_msgsGetDesiredPosxResponse value)
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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetDesiredPosxResponse readRos1Dsr_msgsGetDesiredPosxResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDesiredPosxResponse value = new Ros1Dsr_msgsGetDesiredPosxResponse();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetDesiredVeljRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDesiredVeljRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0b93381c0f1e5f57e086d316056912ecb10e3697346e5f250fa5efa612d76e99";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetDesiredVeljRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDesiredVeljRequest> CODEC = new Codec<Ros1Dsr_msgsGetDesiredVeljRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetDesiredVeljRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDesiredVeljRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDesiredVeljRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDesiredVeljRequest value = readRos1Dsr_msgsGetDesiredVeljRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDesiredVeljRequest(Codecs.Writer writer, Ros1Dsr_msgsGetDesiredVeljRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetDesiredVeljRequest readRos1Dsr_msgsGetDesiredVeljRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDesiredVeljRequest value = new Ros1Dsr_msgsGetDesiredVeljRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetDesiredVeljResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDesiredVeljResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_753747a45767aad1a06f610e11bfd405d07aa365ff1ede44c4b78de99ef6ef22";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] joint_vel = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsGetDesiredVeljResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDesiredVeljResponse> CODEC = new Codec<Ros1Dsr_msgsGetDesiredVeljResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetDesiredVeljResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDesiredVeljResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDesiredVeljResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDesiredVeljResponse value = readRos1Dsr_msgsGetDesiredVeljResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDesiredVeljResponse(Codecs.Writer writer, Ros1Dsr_msgsGetDesiredVeljResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.joint_vel;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetDesiredVeljResponse readRos1Dsr_msgsGetDesiredVeljResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDesiredVeljResponse value = new Ros1Dsr_msgsGetDesiredVeljResponse();
        value.joint_vel = new double[6];
        for(int i = 0; i < value.joint_vel.length; ++i)
            value.joint_vel[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetDesiredVelxRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDesiredVelxRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f26e4ab51d82b3afdaf0f628f62346c740e2bb331d7f482001662884fd6d8aff";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros1Dsr_msgsGetDesiredVelxRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDesiredVelxRequest> CODEC = new Codec<Ros1Dsr_msgsGetDesiredVelxRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetDesiredVelxRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDesiredVelxRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDesiredVelxRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDesiredVelxRequest value = readRos1Dsr_msgsGetDesiredVelxRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDesiredVelxRequest(Codecs.Writer writer, Ros1Dsr_msgsGetDesiredVelxRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetDesiredVelxRequest readRos1Dsr_msgsGetDesiredVelxRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDesiredVelxRequest value = new Ros1Dsr_msgsGetDesiredVelxRequest();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetDesiredVelxResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetDesiredVelxResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_30fd91ceb67fa5a2cdaf78fc9b537befc89bac4e3db1203f1da10181fb7d9e51";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] vel = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsGetDesiredVelxResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetDesiredVelxResponse> CODEC = new Codec<Ros1Dsr_msgsGetDesiredVelxResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetDesiredVelxResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetDesiredVelxResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetDesiredVelxResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetDesiredVelxResponse value = readRos1Dsr_msgsGetDesiredVelxResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetDesiredVelxResponse(Codecs.Writer writer, Ros1Dsr_msgsGetDesiredVelxResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.vel;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetDesiredVelxResponse readRos1Dsr_msgsGetDesiredVelxResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDesiredVelxResponse value = new Ros1Dsr_msgsGetDesiredVelxResponse();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_2d0e1a81d0a1b5cda2cc3c4a9a5e627878324c67a0843e8a47583d4d86c149c9";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte drl_state = 0;
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetDrlStateResponse readRos1Dsr_msgsGetDrlStateResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetDrlStateResponse value = new Ros1Dsr_msgsGetDrlStateResponse();
        value.drl_state = (byte)reader.integer(1, true);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_bdcda8b96e5a22a9143c70f5af6ea56deabe1c68fbf03eb176689c14cc2f50e4";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] ext_torque = new double[6];
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetExternalTorqueResponse readRos1Dsr_msgsGetExternalTorqueResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetExternalTorqueResponse value = new Ros1Dsr_msgsGetExternalTorqueResponse();
        value.ext_torque = new double[6];
        for(int i = 0; i < value.ext_torque.length; ++i)
            value.ext_torque[i] = reader.f64();
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_da41dbdbac4580eaab3ad355caaa9e0075b87894256722521303559c698b9962";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] jts = new double[6];
        public boolean success = false;

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
        double[] part0 = value.jts;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetJointTorqueResponse readRos1Dsr_msgsGetJointTorqueResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetJointTorqueResponse value = new Ros1Dsr_msgsGetJointTorqueResponse();
        value.jts = new double[6];
        for(int i = 0; i < value.jts.length; ++i)
            value.jts[i] = reader.f64();
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_477c434da50cd9b26e93b02ca9072542afc22b62084cf5a9eb785cd43cb4d61e";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 793;
        public Ros1Dsr_msgsLogAlarm log_alarm = new Ros1Dsr_msgsLogAlarm();
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetLastAlarmResponse readRos1Dsr_msgsGetLastAlarmResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetLastAlarmResponse value = new Ros1Dsr_msgsGetLastAlarmResponse();
        value.log_alarm = readRos1Dsr_msgsLogAlarm(reader);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_29360b7702eec80f1dd7915cc8bb58fb5126d93b545cb921b7eb9c3ffa0b49d5";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public int value = 0;
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetModbusInputResponse readRos1Dsr_msgsGetModbusInputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetModbusInputResponse value = new Ros1Dsr_msgsGetModbusInputResponse();
        value.value = (int)reader.integer(4, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetOrientationErrorRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetOrientationErrorRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_db1e637c2f187602b5c3aaa2b3e33fb1b7636b28281832d393d3516984e9e01e";
        public static final int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 97;
        public double[] xd = new double[6];
        public double[] xc = new double[6];
        public byte axis = 0;

        public Ros1Dsr_msgsGetOrientationErrorRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetOrientationErrorRequest> CODEC = new Codec<Ros1Dsr_msgsGetOrientationErrorRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetOrientationErrorRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetOrientationErrorRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetOrientationErrorRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetOrientationErrorRequest value = readRos1Dsr_msgsGetOrientationErrorRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetOrientationErrorRequest(Codecs.Writer writer, Ros1Dsr_msgsGetOrientationErrorRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.xd;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.xc;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        byte part2 = value.axis;
        writer.integer(part2, 1, true);
    }

    private static Ros1Dsr_msgsGetOrientationErrorRequest readRos1Dsr_msgsGetOrientationErrorRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetOrientationErrorRequest value = new Ros1Dsr_msgsGetOrientationErrorRequest();
        value.xd = new double[6];
        for(int i = 0; i < value.xd.length; ++i)
            value.xd[i] = reader.f64();
        value.xc = new double[6];
        for(int i = 0; i < value.xc.length; ++i)
            value.xc[i] = reader.f64();
        value.axis = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetOrientationErrorResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetOrientationErrorResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_909be18b65c95198ce5c5a7b2a11ae97cfad9509c360aec833bbfd239497b9e6";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public float ori_error = 0;
        public boolean success = false;

        public Ros1Dsr_msgsGetOrientationErrorResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetOrientationErrorResponse> CODEC = new Codec<Ros1Dsr_msgsGetOrientationErrorResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetOrientationErrorResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetOrientationErrorResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetOrientationErrorResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetOrientationErrorResponse value = readRos1Dsr_msgsGetOrientationErrorResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetOrientationErrorResponse(Codecs.Writer writer, Ros1Dsr_msgsGetOrientationErrorResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.ori_error;
        writer.f32(part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetOrientationErrorResponse readRos1Dsr_msgsGetOrientationErrorResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetOrientationErrorResponse value = new Ros1Dsr_msgsGetOrientationErrorResponse();
        value.ori_error = reader.f32();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRTControlInputDataListRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRTControlInputDataListRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7f10baf8b008b8de00c2fcc20aea49615584980c73d20b6018e39e5a6b98542e";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String version = "";

        public Ros1Dsr_msgsGetRTControlInputDataListRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRTControlInputDataListRequest> CODEC = new Codec<Ros1Dsr_msgsGetRTControlInputDataListRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetRTControlInputDataListRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRTControlInputDataListRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRTControlInputDataListRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRTControlInputDataListRequest value = readRos1Dsr_msgsGetRTControlInputDataListRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRTControlInputDataListRequest(Codecs.Writer writer, Ros1Dsr_msgsGetRTControlInputDataListRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.version;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsGetRTControlInputDataListRequest readRos1Dsr_msgsGetRTControlInputDataListRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRTControlInputDataListRequest value = new Ros1Dsr_msgsGetRTControlInputDataListRequest();
        value.version = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRTControlInputDataListResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRTControlInputDataListResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e930906de3694556f29baaacac82899dab1ad90716d52c67789e2494ed64ec63";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String data = "";

        public Ros1Dsr_msgsGetRTControlInputDataListResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRTControlInputDataListResponse> CODEC = new Codec<Ros1Dsr_msgsGetRTControlInputDataListResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetRTControlInputDataListResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRTControlInputDataListResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRTControlInputDataListResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRTControlInputDataListResponse value = readRos1Dsr_msgsGetRTControlInputDataListResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRTControlInputDataListResponse(Codecs.Writer writer, Ros1Dsr_msgsGetRTControlInputDataListResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.data;
        writeText(writer, part1, 256);
    }

    private static Ros1Dsr_msgsGetRTControlInputDataListResponse readRos1Dsr_msgsGetRTControlInputDataListResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRTControlInputDataListResponse value = new Ros1Dsr_msgsGetRTControlInputDataListResponse();
        value.success = readBool(reader);
        value.data = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRTControlInputVersionListRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRTControlInputVersionListRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e9bef63b747d0b01343249f0df32a27a7f97a5b031ec2215fac346a9df113fb8";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetRTControlInputVersionListRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRTControlInputVersionListRequest> CODEC = new Codec<Ros1Dsr_msgsGetRTControlInputVersionListRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetRTControlInputVersionListRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRTControlInputVersionListRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRTControlInputVersionListRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRTControlInputVersionListRequest value = readRos1Dsr_msgsGetRTControlInputVersionListRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRTControlInputVersionListRequest(Codecs.Writer writer, Ros1Dsr_msgsGetRTControlInputVersionListRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetRTControlInputVersionListRequest readRos1Dsr_msgsGetRTControlInputVersionListRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRTControlInputVersionListRequest value = new Ros1Dsr_msgsGetRTControlInputVersionListRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetRTControlInputVersionListResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRTControlInputVersionListResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d7c478e4dce0983f786db7df29798eee087e500169b9e1f676a3c57c835d94f1";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String version = "";

        public Ros1Dsr_msgsGetRTControlInputVersionListResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRTControlInputVersionListResponse> CODEC = new Codec<Ros1Dsr_msgsGetRTControlInputVersionListResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetRTControlInputVersionListResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRTControlInputVersionListResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRTControlInputVersionListResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRTControlInputVersionListResponse value = readRos1Dsr_msgsGetRTControlInputVersionListResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRTControlInputVersionListResponse(Codecs.Writer writer, Ros1Dsr_msgsGetRTControlInputVersionListResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.version;
        writeText(writer, part1, 256);
    }

    private static Ros1Dsr_msgsGetRTControlInputVersionListResponse readRos1Dsr_msgsGetRTControlInputVersionListResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRTControlInputVersionListResponse value = new Ros1Dsr_msgsGetRTControlInputVersionListResponse();
        value.success = readBool(reader);
        value.version = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRTControlOutputDataListRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRTControlOutputDataListRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce20938bf62ee2d5389c4151d16af5e0cb8f935b5cf4c7e14070f269a0baa524";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String version = "";

        public Ros1Dsr_msgsGetRTControlOutputDataListRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRTControlOutputDataListRequest> CODEC = new Codec<Ros1Dsr_msgsGetRTControlOutputDataListRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetRTControlOutputDataListRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRTControlOutputDataListRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRTControlOutputDataListRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRTControlOutputDataListRequest value = readRos1Dsr_msgsGetRTControlOutputDataListRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRTControlOutputDataListRequest(Codecs.Writer writer, Ros1Dsr_msgsGetRTControlOutputDataListRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.version;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsGetRTControlOutputDataListRequest readRos1Dsr_msgsGetRTControlOutputDataListRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRTControlOutputDataListRequest value = new Ros1Dsr_msgsGetRTControlOutputDataListRequest();
        value.version = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRTControlOutputDataListResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRTControlOutputDataListResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_030d3e350790b44f0101b263558518a807d97c772289c2eb16763808be6b1d5f";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String data = "";

        public Ros1Dsr_msgsGetRTControlOutputDataListResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRTControlOutputDataListResponse> CODEC = new Codec<Ros1Dsr_msgsGetRTControlOutputDataListResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetRTControlOutputDataListResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRTControlOutputDataListResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRTControlOutputDataListResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRTControlOutputDataListResponse value = readRos1Dsr_msgsGetRTControlOutputDataListResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRTControlOutputDataListResponse(Codecs.Writer writer, Ros1Dsr_msgsGetRTControlOutputDataListResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.data;
        writeText(writer, part1, 256);
    }

    private static Ros1Dsr_msgsGetRTControlOutputDataListResponse readRos1Dsr_msgsGetRTControlOutputDataListResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRTControlOutputDataListResponse value = new Ros1Dsr_msgsGetRTControlOutputDataListResponse();
        value.success = readBool(reader);
        value.data = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsGetRTControlOutputVersionListRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRTControlOutputVersionListRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_67330fd6822948e262d4d68e48593e67189bada0e5281607a074235f086b34d0";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetRTControlOutputVersionListRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRTControlOutputVersionListRequest> CODEC = new Codec<Ros1Dsr_msgsGetRTControlOutputVersionListRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetRTControlOutputVersionListRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRTControlOutputVersionListRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRTControlOutputVersionListRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRTControlOutputVersionListRequest value = readRos1Dsr_msgsGetRTControlOutputVersionListRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRTControlOutputVersionListRequest(Codecs.Writer writer, Ros1Dsr_msgsGetRTControlOutputVersionListRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetRTControlOutputVersionListRequest readRos1Dsr_msgsGetRTControlOutputVersionListRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRTControlOutputVersionListRequest value = new Ros1Dsr_msgsGetRTControlOutputVersionListRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetRTControlOutputVersionListResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetRTControlOutputVersionListResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_19ca1e03d18347033f071489428024a1f9204b64aced31a42c8161d11e5fa76b";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String version = "";

        public Ros1Dsr_msgsGetRTControlOutputVersionListResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetRTControlOutputVersionListResponse> CODEC = new Codec<Ros1Dsr_msgsGetRTControlOutputVersionListResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetRTControlOutputVersionListResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetRTControlOutputVersionListResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetRTControlOutputVersionListResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetRTControlOutputVersionListResponse value = readRos1Dsr_msgsGetRTControlOutputVersionListResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetRTControlOutputVersionListResponse(Codecs.Writer writer, Ros1Dsr_msgsGetRTControlOutputVersionListResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.version;
        writeText(writer, part1, 256);
    }

    private static Ros1Dsr_msgsGetRTControlOutputVersionListResponse readRos1Dsr_msgsGetRTControlOutputVersionListResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRTControlOutputVersionListResponse value = new Ros1Dsr_msgsGetRTControlOutputVersionListResponse();
        value.success = readBool(reader);
        value.version = readText(reader, 256);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_559f9328cba413aa572f66818aace6061020777c2cbb6bea475adf3cbca1a88c";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte robot_mode = 0;
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetRobotModeResponse readRos1Dsr_msgsGetRobotModeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotModeResponse value = new Ros1Dsr_msgsGetRobotModeResponse();
        value.robot_mode = (byte)reader.integer(1, true);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_eaef45ce098108c89a49b2ed3e0cfeba901d7a9e8e4fee86d7c646e181cfe3c4";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte speed_mode = 0;
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetRobotSpeedModeResponse readRos1Dsr_msgsGetRobotSpeedModeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotSpeedModeResponse value = new Ros1Dsr_msgsGetRobotSpeedModeResponse();
        value.speed_mode = (byte)reader.integer(1, true);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_1e210aa1fd0a833b8d8dedbbda759f12b860c7cbe161f2bed50b41015451ba51";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte robot_state = 0;
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetRobotStateResponse readRos1Dsr_msgsGetRobotStateResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotStateResponse value = new Ros1Dsr_msgsGetRobotStateResponse();
        value.robot_state = (byte)reader.integer(1, true);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_b7f7ec9a3e0bf607295bc5d0af1d82d192bc35103401c913c4ed8a8c77811c7f";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte robot_system = 0;
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetRobotSystemResponse readRos1Dsr_msgsGetRobotSystemResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetRobotSystemResponse value = new Ros1Dsr_msgsGetRobotSystemResponse();
        value.robot_system = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetSolutionSpaceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetSolutionSpaceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_416c6623add6fed0900f585292905890932f326162a1431b481b28aac52c7bf3";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros1Dsr_msgsGetSolutionSpaceRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetSolutionSpaceRequest> CODEC = new Codec<Ros1Dsr_msgsGetSolutionSpaceRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetSolutionSpaceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetSolutionSpaceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetSolutionSpaceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetSolutionSpaceRequest value = readRos1Dsr_msgsGetSolutionSpaceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetSolutionSpaceRequest(Codecs.Writer writer, Ros1Dsr_msgsGetSolutionSpaceRequest value)
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

    private static Ros1Dsr_msgsGetSolutionSpaceRequest readRos1Dsr_msgsGetSolutionSpaceRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetSolutionSpaceRequest value = new Ros1Dsr_msgsGetSolutionSpaceRequest();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsGetSolutionSpaceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetSolutionSpaceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d6cf69fb571a6947cabc01a594e84d1eed7a581511e755db9dde5452f1230511";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte sol_space = 0;
        public boolean success = false;

        public Ros1Dsr_msgsGetSolutionSpaceResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetSolutionSpaceResponse> CODEC = new Codec<Ros1Dsr_msgsGetSolutionSpaceResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetSolutionSpaceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetSolutionSpaceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetSolutionSpaceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetSolutionSpaceResponse value = readRos1Dsr_msgsGetSolutionSpaceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetSolutionSpaceResponse(Codecs.Writer writer, Ros1Dsr_msgsGetSolutionSpaceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.sol_space;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetSolutionSpaceResponse readRos1Dsr_msgsGetSolutionSpaceResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetSolutionSpaceResponse value = new Ros1Dsr_msgsGetSolutionSpaceResponse();
        value.sol_space = (byte)reader.integer(1, true);
        value.success = readBool(reader);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_ba289ccf352c0560a70d99ec99a95c01b84ab7436f5638874ae4e1d89364a8b6";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte value = 0;
        public boolean success = false;

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
        byte part0 = value.value;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetToolDigitalInputResponse readRos1Dsr_msgsGetToolDigitalInputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetToolDigitalInputResponse value = new Ros1Dsr_msgsGetToolDigitalInputResponse();
        value.value = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetToolDigitalOutputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetToolDigitalOutputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bfed701bd5b788685802e15709a594b065dff57f5c6706b14ad41bc6f80736ce";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte index = 0;

        public Ros1Dsr_msgsGetToolDigitalOutputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetToolDigitalOutputRequest> CODEC = new Codec<Ros1Dsr_msgsGetToolDigitalOutputRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetToolDigitalOutputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetToolDigitalOutputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetToolDigitalOutputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetToolDigitalOutputRequest value = readRos1Dsr_msgsGetToolDigitalOutputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetToolDigitalOutputRequest(Codecs.Writer writer, Ros1Dsr_msgsGetToolDigitalOutputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetToolDigitalOutputRequest readRos1Dsr_msgsGetToolDigitalOutputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetToolDigitalOutputRequest value = new Ros1Dsr_msgsGetToolDigitalOutputRequest();
        value.index = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetToolDigitalOutputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetToolDigitalOutputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0873d83b7b79d0270af4d61d86fd77bb248a75ebfe91177e4acc9299c46a309d";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte value = 0;
        public boolean success = false;

        public Ros1Dsr_msgsGetToolDigitalOutputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetToolDigitalOutputResponse> CODEC = new Codec<Ros1Dsr_msgsGetToolDigitalOutputResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetToolDigitalOutputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetToolDigitalOutputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetToolDigitalOutputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetToolDigitalOutputResponse value = readRos1Dsr_msgsGetToolDigitalOutputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetToolDigitalOutputResponse(Codecs.Writer writer, Ros1Dsr_msgsGetToolDigitalOutputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.value;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetToolDigitalOutputResponse readRos1Dsr_msgsGetToolDigitalOutputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetToolDigitalOutputResponse value = new Ros1Dsr_msgsGetToolDigitalOutputResponse();
        value.value = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetToolForceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetToolForceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2df77a1075113a1c8febd77c89e13417c596c6d1d4abd26454a4439620e397b4";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

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
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetToolForceRequest readRos1Dsr_msgsGetToolForceRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetToolForceRequest value = new Ros1Dsr_msgsGetToolForceRequest();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetToolForceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetToolForceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_11dfdda93d1818dbcb331bba86cf08815f24bb8adb34e70792a730ce27d95ed9";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] tool_force = new double[6];
        public boolean success = false;

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
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetToolForceResponse readRos1Dsr_msgsGetToolForceResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetToolForceResponse value = new Ros1Dsr_msgsGetToolForceResponse();
        value.tool_force = new double[6];
        for(int i = 0; i < value.tool_force.length; ++i)
            value.tool_force[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetUserCartCoordRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetUserCartCoordRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_07824b4c8403d59fad8e8a33c615fcf96a0556bd8de1c1639a16d3aa28db0637";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte id = 0;

        public Ros1Dsr_msgsGetUserCartCoordRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetUserCartCoordRequest> CODEC = new Codec<Ros1Dsr_msgsGetUserCartCoordRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetUserCartCoordRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetUserCartCoordRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetUserCartCoordRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetUserCartCoordRequest value = readRos1Dsr_msgsGetUserCartCoordRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetUserCartCoordRequest(Codecs.Writer writer, Ros1Dsr_msgsGetUserCartCoordRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsGetUserCartCoordRequest readRos1Dsr_msgsGetUserCartCoordRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetUserCartCoordRequest value = new Ros1Dsr_msgsGetUserCartCoordRequest();
        value.id = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsGetUserCartCoordResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetUserCartCoordResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2fea411082260a3dbaf3fb3f4c1314f74dda9fb864222fe5837e1d5f62502a22";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public double[] conv_posx = new double[6];
        public byte ref = 0;
        public boolean success = false;

        public Ros1Dsr_msgsGetUserCartCoordResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetUserCartCoordResponse> CODEC = new Codec<Ros1Dsr_msgsGetUserCartCoordResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetUserCartCoordResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetUserCartCoordResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetUserCartCoordResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetUserCartCoordResponse value = readRos1Dsr_msgsGetUserCartCoordResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetUserCartCoordResponse(Codecs.Writer writer, Ros1Dsr_msgsGetUserCartCoordResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.conv_posx;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        byte part1 = value.ref;
        writer.integer(part1, 1, true);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetUserCartCoordResponse readRos1Dsr_msgsGetUserCartCoordResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetUserCartCoordResponse value = new Ros1Dsr_msgsGetUserCartCoordResponse();
        value.conv_posx = new double[6];
        for(int i = 0; i < value.conv_posx.length; ++i)
            value.conv_posx[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsGetWorkpieceWeightRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetWorkpieceWeightRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa987920bd5c89882bd52b444bec319c5b83c3fdf6086c065c87e924d40890ec";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsGetWorkpieceWeightRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetWorkpieceWeightRequest> CODEC = new Codec<Ros1Dsr_msgsGetWorkpieceWeightRequest>() {
            public byte[] encode(Ros1Dsr_msgsGetWorkpieceWeightRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetWorkpieceWeightRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetWorkpieceWeightRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetWorkpieceWeightRequest value = readRos1Dsr_msgsGetWorkpieceWeightRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetWorkpieceWeightRequest(Codecs.Writer writer, Ros1Dsr_msgsGetWorkpieceWeightRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsGetWorkpieceWeightRequest readRos1Dsr_msgsGetWorkpieceWeightRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetWorkpieceWeightRequest value = new Ros1Dsr_msgsGetWorkpieceWeightRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsGetWorkpieceWeightResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/GetWorkpieceWeightResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_687f2eaa565bbbb878ff0018ad4fa9bc1596316cbbb83c07df85df5cd81887ca";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public float weight = 0;
        public boolean success = false;

        public Ros1Dsr_msgsGetWorkpieceWeightResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsGetWorkpieceWeightResponse> CODEC = new Codec<Ros1Dsr_msgsGetWorkpieceWeightResponse>() {
            public byte[] encode(Ros1Dsr_msgsGetWorkpieceWeightResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsGetWorkpieceWeightResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsGetWorkpieceWeightResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsGetWorkpieceWeightResponse value = readRos1Dsr_msgsGetWorkpieceWeightResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsGetWorkpieceWeightResponse(Codecs.Writer writer, Ros1Dsr_msgsGetWorkpieceWeightResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.weight;
        writer.f32(part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsGetWorkpieceWeightResponse readRos1Dsr_msgsGetWorkpieceWeightResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsGetWorkpieceWeightResponse value = new Ros1Dsr_msgsGetWorkpieceWeightResponse();
        value.weight = reader.f32();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsIkinRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/IkinRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_64192c8fc182151b11fe48b99d05e142994a0724cbde8572058378e843fe7f27";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public double[] pos = new double[6];
        public byte sol_space = 0;
        public byte ref = 0;

        public Ros1Dsr_msgsIkinRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsIkinRequest> CODEC = new Codec<Ros1Dsr_msgsIkinRequest>() {
            public byte[] encode(Ros1Dsr_msgsIkinRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsIkinRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsIkinRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsIkinRequest value = readRos1Dsr_msgsIkinRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsIkinRequest(Codecs.Writer writer, Ros1Dsr_msgsIkinRequest value)
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
        byte part1 = value.sol_space;
        writer.integer(part1, 1, true);
        byte part2 = value.ref;
        writer.integer(part2, 1, true);
    }

    private static Ros1Dsr_msgsIkinRequest readRos1Dsr_msgsIkinRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsIkinRequest value = new Ros1Dsr_msgsIkinRequest();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.sol_space = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsIkinResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/IkinResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa64a9417d777219d7142d600391a80c0001464e3777174bef040ecd80df1e23";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] conv_posj = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsIkinResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsIkinResponse> CODEC = new Codec<Ros1Dsr_msgsIkinResponse>() {
            public byte[] encode(Ros1Dsr_msgsIkinResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsIkinResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsIkinResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsIkinResponse value = readRos1Dsr_msgsIkinResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsIkinResponse(Codecs.Writer writer, Ros1Dsr_msgsIkinResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.conv_posj;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsIkinResponse readRos1Dsr_msgsIkinResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsIkinResponse value = new Ros1Dsr_msgsIkinResponse();
        value.conv_posj = new double[6];
        for(int i = 0; i < value.conv_posj.length; ++i)
            value.conv_posj[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsIkinExRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/IkinExRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6af2997a590ef83a15238d4837d7540ba1f5dd0d40067c74e03ebda063fa0cd0";
        public static final int MIN_WIRE_BYTES = 51, MAX_WIRE_BYTES = 51;
        public double[] pos = new double[6];
        public byte sol_space = 0;
        public byte ref = 0;
        public byte ref_pos_opt = 0;

        public Ros1Dsr_msgsIkinExRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsIkinExRequest> CODEC = new Codec<Ros1Dsr_msgsIkinExRequest>() {
            public byte[] encode(Ros1Dsr_msgsIkinExRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsIkinExRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsIkinExRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsIkinExRequest value = readRos1Dsr_msgsIkinExRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsIkinExRequest(Codecs.Writer writer, Ros1Dsr_msgsIkinExRequest value)
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
        byte part1 = value.sol_space;
        writer.integer(part1, 1, true);
        byte part2 = value.ref;
        writer.integer(part2, 1, true);
        byte part3 = value.ref_pos_opt;
        writer.integer(part3, 1, true);
    }

    private static Ros1Dsr_msgsIkinExRequest readRos1Dsr_msgsIkinExRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsIkinExRequest value = new Ros1Dsr_msgsIkinExRequest();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.sol_space = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        value.ref_pos_opt = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsIkinExResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/IkinExResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_67a37bdec1e80488a520a0efc6f7bc1781cbd90b5137068c7e2961b5cb1ee1d1";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public double[] conv_posj = new double[6];
        public boolean status = false;
        public boolean success = false;

        public Ros1Dsr_msgsIkinExResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsIkinExResponse> CODEC = new Codec<Ros1Dsr_msgsIkinExResponse>() {
            public byte[] encode(Ros1Dsr_msgsIkinExResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsIkinExResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsIkinExResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsIkinExResponse value = readRos1Dsr_msgsIkinExResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsIkinExResponse(Codecs.Writer writer, Ros1Dsr_msgsIkinExResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.conv_posj;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.status;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsIkinExResponse readRos1Dsr_msgsIkinExResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsIkinExResponse value = new Ros1Dsr_msgsIkinExResponse();
        value.conv_posj = new double[6];
        for(int i = 0; i < value.conv_posj.length; ++i)
            value.conv_posj[i] = reader.f64();
        value.status = readBool(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsIsDoneBoltTighteningRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/IsDoneBoltTighteningRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_40ab245e2e736f9171f7ab55ff340717ef3f1ec89614730f4f9e3811ba6afa9e";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        public double m = 0;
        public double timeout = 0;
        public byte axis = 0;

        public Ros1Dsr_msgsIsDoneBoltTighteningRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsIsDoneBoltTighteningRequest> CODEC = new Codec<Ros1Dsr_msgsIsDoneBoltTighteningRequest>() {
            public byte[] encode(Ros1Dsr_msgsIsDoneBoltTighteningRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsIsDoneBoltTighteningRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsIsDoneBoltTighteningRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsIsDoneBoltTighteningRequest value = readRos1Dsr_msgsIsDoneBoltTighteningRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsIsDoneBoltTighteningRequest(Codecs.Writer writer, Ros1Dsr_msgsIsDoneBoltTighteningRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.m;
        writer.f64(part0);
        double part1 = value.timeout;
        writer.f64(part1);
        byte part2 = value.axis;
        writer.integer(part2, 1, true);
    }

    private static Ros1Dsr_msgsIsDoneBoltTighteningRequest readRos1Dsr_msgsIsDoneBoltTighteningRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsIsDoneBoltTighteningRequest value = new Ros1Dsr_msgsIsDoneBoltTighteningRequest();
        value.m = reader.f64();
        value.timeout = reader.f64();
        value.axis = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsIsDoneBoltTighteningResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/IsDoneBoltTighteningResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_86e7eb378e84a1feec9b2abfb3b8af889b9cf986c7455e0d74bb8832af6ff611";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsIsDoneBoltTighteningResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsIsDoneBoltTighteningResponse> CODEC = new Codec<Ros1Dsr_msgsIsDoneBoltTighteningResponse>() {
            public byte[] encode(Ros1Dsr_msgsIsDoneBoltTighteningResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsIsDoneBoltTighteningResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsIsDoneBoltTighteningResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsIsDoneBoltTighteningResponse value = readRos1Dsr_msgsIsDoneBoltTighteningResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsIsDoneBoltTighteningResponse(Codecs.Writer writer, Ros1Dsr_msgsIsDoneBoltTighteningResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsIsDoneBoltTighteningResponse readRos1Dsr_msgsIsDoneBoltTighteningResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsIsDoneBoltTighteningResponse value = new Ros1Dsr_msgsIsDoneBoltTighteningResponse();
        value.success = readBool(reader);
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

    public static final class Ros1Dsr_msgsManageAccessControlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ManageAccessControlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0b29aed59d855590ad69ec9bf8e2585b39ee8ce05bed1e305dd7f2a7c1b79d36";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte access_control = 0;

        public Ros1Dsr_msgsManageAccessControlRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsManageAccessControlRequest> CODEC = new Codec<Ros1Dsr_msgsManageAccessControlRequest>() {
            public byte[] encode(Ros1Dsr_msgsManageAccessControlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsManageAccessControlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsManageAccessControlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsManageAccessControlRequest value = readRos1Dsr_msgsManageAccessControlRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsManageAccessControlRequest(Codecs.Writer writer, Ros1Dsr_msgsManageAccessControlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.access_control;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsManageAccessControlRequest readRos1Dsr_msgsManageAccessControlRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsManageAccessControlRequest value = new Ros1Dsr_msgsManageAccessControlRequest();
        value.access_control = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsManageAccessControlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ManageAccessControlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_64837b0ea282acdc16ad7d0a4e6679d9b9b74a3ff3d276dad77042529fa897b3";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsManageAccessControlResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsManageAccessControlResponse> CODEC = new Codec<Ros1Dsr_msgsManageAccessControlResponse>() {
            public byte[] encode(Ros1Dsr_msgsManageAccessControlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsManageAccessControlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsManageAccessControlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsManageAccessControlResponse value = readRos1Dsr_msgsManageAccessControlResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsManageAccessControlResponse(Codecs.Writer writer, Ros1Dsr_msgsManageAccessControlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsManageAccessControlResponse readRos1Dsr_msgsManageAccessControlResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsManageAccessControlResponse value = new Ros1Dsr_msgsManageAccessControlResponse();
        value.success = readBool(reader);
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

    public static final class Ros1Dsr_msgsMoveHomeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveHomeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_99b3fe492438ffc71627412077f7b0ced950e0f6038722ecfb34191093e0308f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte target = 0;

        public Ros1Dsr_msgsMoveHomeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveHomeRequest> CODEC = new Codec<Ros1Dsr_msgsMoveHomeRequest>() {
            public byte[] encode(Ros1Dsr_msgsMoveHomeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveHomeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveHomeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveHomeRequest value = readRos1Dsr_msgsMoveHomeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveHomeRequest(Codecs.Writer writer, Ros1Dsr_msgsMoveHomeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.target;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsMoveHomeRequest readRos1Dsr_msgsMoveHomeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveHomeRequest value = new Ros1Dsr_msgsMoveHomeRequest();
        value.target = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsMoveHomeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/MoveHomeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9906457df2f7eccd40564fb7ba76fe7245ad943f20461bf23192cfbcba3a596f";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte res = 0;
        public boolean success = false;

        public Ros1Dsr_msgsMoveHomeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsMoveHomeResponse> CODEC = new Codec<Ros1Dsr_msgsMoveHomeResponse>() {
            public byte[] encode(Ros1Dsr_msgsMoveHomeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsMoveHomeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsMoveHomeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsMoveHomeResponse value = readRos1Dsr_msgsMoveHomeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsMoveHomeResponse(Codecs.Writer writer, Ros1Dsr_msgsMoveHomeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.res;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsMoveHomeResponse readRos1Dsr_msgsMoveHomeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsMoveHomeResponse value = new Ros1Dsr_msgsMoveHomeResponse();
        value.res = (byte)reader.integer(1, true);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_f5ccf9a5eade1a2f7f11c741c26e3b045fa11d81d8f03587e4a527b0256e2a8a";
        public static final int MIN_WIRE_BYTES = 111, MAX_WIRE_BYTES = 2319;
        public Ros1Std_msgsFloat64MultiArray[] pos = new Ros1Std_msgsFloat64MultiArray[0];
        public byte posCnt = 0;
        public double[] vel = new double[6];
        public double[] acc = new double[6];
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
        double[] part2 = value.vel;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.acc;
        if(part3 == null || part3.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
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
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
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

    public static final class Ros1Dsr_msgsOverwriteUserCartCoordRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/OverwriteUserCartCoordRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b89858cf40ee4ae756c90e048fb0cffd362dd2477ca23ba1172749353eb63721";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public byte id = 0;
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros1Dsr_msgsOverwriteUserCartCoordRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsOverwriteUserCartCoordRequest> CODEC = new Codec<Ros1Dsr_msgsOverwriteUserCartCoordRequest>() {
            public byte[] encode(Ros1Dsr_msgsOverwriteUserCartCoordRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsOverwriteUserCartCoordRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsOverwriteUserCartCoordRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsOverwriteUserCartCoordRequest value = readRos1Dsr_msgsOverwriteUserCartCoordRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsOverwriteUserCartCoordRequest(Codecs.Writer writer, Ros1Dsr_msgsOverwriteUserCartCoordRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
        double[] part1 = value.pos;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        byte part2 = value.ref;
        writer.integer(part2, 1, true);
    }

    private static Ros1Dsr_msgsOverwriteUserCartCoordRequest readRos1Dsr_msgsOverwriteUserCartCoordRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsOverwriteUserCartCoordRequest value = new Ros1Dsr_msgsOverwriteUserCartCoordRequest();
        value.id = (byte)reader.integer(1, true);
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsOverwriteUserCartCoordResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/OverwriteUserCartCoordResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_953c73d75e0381b067612ea733d58faf95919f5f20f940b6827396fc9d363833";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte id = 0;
        public boolean success = false;

        public Ros1Dsr_msgsOverwriteUserCartCoordResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsOverwriteUserCartCoordResponse> CODEC = new Codec<Ros1Dsr_msgsOverwriteUserCartCoordResponse>() {
            public byte[] encode(Ros1Dsr_msgsOverwriteUserCartCoordResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsOverwriteUserCartCoordResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsOverwriteUserCartCoordResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsOverwriteUserCartCoordResponse value = readRos1Dsr_msgsOverwriteUserCartCoordResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsOverwriteUserCartCoordResponse(Codecs.Writer writer, Ros1Dsr_msgsOverwriteUserCartCoordResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsOverwriteUserCartCoordResponse readRos1Dsr_msgsOverwriteUserCartCoordResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsOverwriteUserCartCoordResponse value = new Ros1Dsr_msgsOverwriteUserCartCoordResponse();
        value.id = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsParallelAxis1Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ParallelAxis1Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d032b8ab9d71b7f30b395c0f7ecf376e7ca056fa893479754780a90c8db7f7fe";
        public static final int MIN_WIRE_BYTES = 146, MAX_WIRE_BYTES = 146;
        public double[] x1 = new double[6];
        public double[] x2 = new double[6];
        public double[] x3 = new double[6];
        public byte axis = 0;
        public byte ref = 0;

        public Ros1Dsr_msgsParallelAxis1Request()
        {
        }

        public static final Codec<Ros1Dsr_msgsParallelAxis1Request> CODEC = new Codec<Ros1Dsr_msgsParallelAxis1Request>() {
            public byte[] encode(Ros1Dsr_msgsParallelAxis1Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsParallelAxis1Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsParallelAxis1Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsParallelAxis1Request value = readRos1Dsr_msgsParallelAxis1Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsParallelAxis1Request(Codecs.Writer writer, Ros1Dsr_msgsParallelAxis1Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.x1;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.x2;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.x3;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        byte part3 = value.axis;
        writer.integer(part3, 1, true);
        byte part4 = value.ref;
        writer.integer(part4, 1, true);
    }

    private static Ros1Dsr_msgsParallelAxis1Request readRos1Dsr_msgsParallelAxis1Request(Codecs.Reader reader)
    {
        Ros1Dsr_msgsParallelAxis1Request value = new Ros1Dsr_msgsParallelAxis1Request();
        value.x1 = new double[6];
        for(int i = 0; i < value.x1.length; ++i)
            value.x1[i] = reader.f64();
        value.x2 = new double[6];
        for(int i = 0; i < value.x2.length; ++i)
            value.x2[i] = reader.f64();
        value.x3 = new double[6];
        for(int i = 0; i < value.x3.length; ++i)
            value.x3[i] = reader.f64();
        value.axis = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsParallelAxis1Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ParallelAxis1Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f7ba09a96d450b53ef9b2fb77b6de6a6e760de65fc8dce42dcbc7dace8fef543";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsParallelAxis1Response()
        {
        }

        public static final Codec<Ros1Dsr_msgsParallelAxis1Response> CODEC = new Codec<Ros1Dsr_msgsParallelAxis1Response>() {
            public byte[] encode(Ros1Dsr_msgsParallelAxis1Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsParallelAxis1Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsParallelAxis1Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsParallelAxis1Response value = readRos1Dsr_msgsParallelAxis1Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsParallelAxis1Response(Codecs.Writer writer, Ros1Dsr_msgsParallelAxis1Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsParallelAxis1Response readRos1Dsr_msgsParallelAxis1Response(Codecs.Reader reader)
    {
        Ros1Dsr_msgsParallelAxis1Response value = new Ros1Dsr_msgsParallelAxis1Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsParallelAxis2Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ParallelAxis2Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_11dcf871306958211993961d60c607836696edf5c825bb7a109ec5efd885f191";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;
        public double[] vect = new double[3];
        public byte axis = 0;
        public byte ref = 0;

        public Ros1Dsr_msgsParallelAxis2Request()
        {
        }

        public static final Codec<Ros1Dsr_msgsParallelAxis2Request> CODEC = new Codec<Ros1Dsr_msgsParallelAxis2Request>() {
            public byte[] encode(Ros1Dsr_msgsParallelAxis2Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsParallelAxis2Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsParallelAxis2Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsParallelAxis2Request value = readRos1Dsr_msgsParallelAxis2Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsParallelAxis2Request(Codecs.Writer writer, Ros1Dsr_msgsParallelAxis2Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.vect;
        if(part0 == null || part0.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        byte part1 = value.axis;
        writer.integer(part1, 1, true);
        byte part2 = value.ref;
        writer.integer(part2, 1, true);
    }

    private static Ros1Dsr_msgsParallelAxis2Request readRos1Dsr_msgsParallelAxis2Request(Codecs.Reader reader)
    {
        Ros1Dsr_msgsParallelAxis2Request value = new Ros1Dsr_msgsParallelAxis2Request();
        value.vect = new double[3];
        for(int i = 0; i < value.vect.length; ++i)
            value.vect[i] = reader.f64();
        value.axis = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsParallelAxis2Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ParallelAxis2Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_41ca262ffdbabdde6ee4bbb0521813cc08cb56a86eb59335be8af82aa5d629c4";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsParallelAxis2Response()
        {
        }

        public static final Codec<Ros1Dsr_msgsParallelAxis2Response> CODEC = new Codec<Ros1Dsr_msgsParallelAxis2Response>() {
            public byte[] encode(Ros1Dsr_msgsParallelAxis2Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsParallelAxis2Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsParallelAxis2Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsParallelAxis2Response value = readRos1Dsr_msgsParallelAxis2Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsParallelAxis2Response(Codecs.Writer writer, Ros1Dsr_msgsParallelAxis2Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsParallelAxis2Response readRos1Dsr_msgsParallelAxis2Response(Codecs.Reader reader)
    {
        Ros1Dsr_msgsParallelAxis2Response value = new Ros1Dsr_msgsParallelAxis2Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsReadDataRTRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ReadDataRTRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2c1ece2dc02863d851f0d24f9705a3c66217b1557827d450e1b58c9fb64af4bf";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsReadDataRTRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsReadDataRTRequest> CODEC = new Codec<Ros1Dsr_msgsReadDataRTRequest>() {
            public byte[] encode(Ros1Dsr_msgsReadDataRTRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsReadDataRTRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsReadDataRTRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsReadDataRTRequest value = readRos1Dsr_msgsReadDataRTRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsReadDataRTRequest(Codecs.Writer writer, Ros1Dsr_msgsReadDataRTRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsReadDataRTRequest readRos1Dsr_msgsReadDataRTRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsReadDataRTRequest value = new Ros1Dsr_msgsReadDataRTRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsRobotStateRT
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/RobotStateRT";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_558a295457376b0d96845db2a2bd64c5549a9e72ea49f01036286d14e5022232";
        public static final int MIN_WIRE_BYTES = 1530, MAX_WIRE_BYTES = 8154;
        public double time_stamp = 0;
        public double[] actual_joint_position = new double[6];
        public double[] actual_joint_position_abs = new double[6];
        public double[] actual_joint_velocity = new double[6];
        public double[] actual_joint_velocity_abs = new double[6];
        public double[] actual_tcp_position = new double[6];
        public double[] actual_tcp_velocity = new double[6];
        public double[] actual_flange_position = new double[6];
        public double[] actual_flange_velocity = new double[6];
        public double[] actual_motor_torque = new double[6];
        public double[] actual_joint_torque = new double[6];
        public double[] raw_joint_torque = new double[6];
        public double[] raw_force_torque = new double[6];
        public double[] external_joint_torque = new double[6];
        public double[] external_tcp_force = new double[6];
        public double[] target_joint_position = new double[6];
        public double[] target_joint_velocity = new double[6];
        public double[] target_joint_acceleration = new double[6];
        public double[] target_motor_torque = new double[6];
        public double[] target_tcp_position = new double[6];
        public double[] target_tcp_velocity = new double[6];
        public Ros1Std_msgsFloat64MultiArray[] jacobian_matrix = new Ros1Std_msgsFloat64MultiArray[0];
        public double[] gravity_torque = new double[6];
        public Ros1Std_msgsFloat64MultiArray[] coriolis_matrix = new Ros1Std_msgsFloat64MultiArray[0];
        public Ros1Std_msgsFloat64MultiArray[] mass_matrix = new Ros1Std_msgsFloat64MultiArray[0];
        public int solution_space = 0;
        public double singularity = 0;
        public double operation_speed_rate = 0;
        public double[] joint_temperature = new double[6];
        public int controller_digital_input = 0;
        public int controller_digital_output = 0;
        public int[] controller_analog_input_type = new int[2];
        public double[] controller_analog_input = new double[2];
        public int[] controller_analog_output_type = new int[2];
        public double[] controller_analog_output = new double[2];
        public int flange_digital_input = 0;
        public int flange_digital_output = 0;
        public double[] flange_analog_input = new double[4];
        public int[] external_encoder_strobe_count = new int[2];
        public int[] external_encoder_count = new int[2];
        public double[] goal_joint_position = new double[6];
        public double[] goal_tcp_position = new double[6];
        public int robot_mode = 0;
        public int robot_state = 0;
        public int control_mode = 0;
        public int[] reserved = new int[256];

        public Ros1Dsr_msgsRobotStateRT()
        {
        }

        public static final Codec<Ros1Dsr_msgsRobotStateRT> CODEC = new Codec<Ros1Dsr_msgsRobotStateRT>() {
            public byte[] encode(Ros1Dsr_msgsRobotStateRT value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsRobotStateRT(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsRobotStateRT decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsRobotStateRT value = readRos1Dsr_msgsRobotStateRT(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsRobotStateRT(Codecs.Writer writer, Ros1Dsr_msgsRobotStateRT value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.time_stamp;
        writer.f64(part0);
        double[] part1 = value.actual_joint_position;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.actual_joint_position_abs;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.actual_joint_velocity;
        if(part3 == null || part3.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.actual_joint_velocity_abs;
        if(part4 == null || part4.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.actual_tcp_position;
        if(part5 == null || part5.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double[] part6 = value.actual_tcp_velocity;
        if(part6 == null || part6.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        double[] part7 = value.actual_flange_position;
        if(part7 == null || part7.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f64(part7[i]);
        }
        double[] part8 = value.actual_flange_velocity;
        if(part8 == null || part8.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part8.length; ++i)
        {
            writer.f64(part8[i]);
        }
        double[] part9 = value.actual_motor_torque;
        if(part9 == null || part9.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part9.length; ++i)
        {
            writer.f64(part9[i]);
        }
        double[] part10 = value.actual_joint_torque;
        if(part10 == null || part10.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part10.length; ++i)
        {
            writer.f64(part10[i]);
        }
        double[] part11 = value.raw_joint_torque;
        if(part11 == null || part11.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part11.length; ++i)
        {
            writer.f64(part11[i]);
        }
        double[] part12 = value.raw_force_torque;
        if(part12 == null || part12.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part12.length; ++i)
        {
            writer.f64(part12[i]);
        }
        double[] part13 = value.external_joint_torque;
        if(part13 == null || part13.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part13.length; ++i)
        {
            writer.f64(part13[i]);
        }
        double[] part14 = value.external_tcp_force;
        if(part14 == null || part14.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part14.length; ++i)
        {
            writer.f64(part14[i]);
        }
        double[] part15 = value.target_joint_position;
        if(part15 == null || part15.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part15.length; ++i)
        {
            writer.f64(part15[i]);
        }
        double[] part16 = value.target_joint_velocity;
        if(part16 == null || part16.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part16.length; ++i)
        {
            writer.f64(part16[i]);
        }
        double[] part17 = value.target_joint_acceleration;
        if(part17 == null || part17.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part17.length; ++i)
        {
            writer.f64(part17[i]);
        }
        double[] part18 = value.target_motor_torque;
        if(part18 == null || part18.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part18.length; ++i)
        {
            writer.f64(part18[i]);
        }
        double[] part19 = value.target_tcp_position;
        if(part19 == null || part19.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part19.length; ++i)
        {
            writer.f64(part19[i]);
        }
        double[] part20 = value.target_tcp_velocity;
        if(part20 == null || part20.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part20.length; ++i)
        {
            writer.f64(part20[i]);
        }
        Ros1Std_msgsFloat64MultiArray[] part21 = value.jacobian_matrix;
        if(part21 == null || part21.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part21.length, 4, false);
        for(int i = 0; i < part21.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part21[i]);
        }
        double[] part22 = value.gravity_torque;
        if(part22 == null || part22.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part22.length; ++i)
        {
            writer.f64(part22[i]);
        }
        Ros1Std_msgsFloat64MultiArray[] part23 = value.coriolis_matrix;
        if(part23 == null || part23.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part23.length, 4, false);
        for(int i = 0; i < part23.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part23[i]);
        }
        Ros1Std_msgsFloat64MultiArray[] part24 = value.mass_matrix;
        if(part24 == null || part24.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part24.length, 4, false);
        for(int i = 0; i < part24.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part24[i]);
        }
        int part25 = value.solution_space;
        writer.integer(part25, 2, false);
        double part26 = value.singularity;
        writer.f64(part26);
        double part27 = value.operation_speed_rate;
        writer.f64(part27);
        double[] part28 = value.joint_temperature;
        if(part28 == null || part28.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part28.length; ++i)
        {
            writer.f64(part28[i]);
        }
        int part29 = value.controller_digital_input;
        writer.integer(part29, 2, false);
        int part30 = value.controller_digital_output;
        writer.integer(part30, 2, false);
        int[] part31 = value.controller_analog_input_type;
        if(part31 == null || part31.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part31.length; ++i)
        {
            writer.integer(part31[i], 1, false);
        }
        double[] part32 = value.controller_analog_input;
        if(part32 == null || part32.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part32.length; ++i)
        {
            writer.f64(part32[i]);
        }
        int[] part33 = value.controller_analog_output_type;
        if(part33 == null || part33.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part33.length; ++i)
        {
            writer.integer(part33[i], 1, false);
        }
        double[] part34 = value.controller_analog_output;
        if(part34 == null || part34.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part34.length; ++i)
        {
            writer.f64(part34[i]);
        }
        int part35 = value.flange_digital_input;
        writer.integer(part35, 1, false);
        int part36 = value.flange_digital_output;
        writer.integer(part36, 1, false);
        double[] part37 = value.flange_analog_input;
        if(part37 == null || part37.length != 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part37.length; ++i)
        {
            writer.f64(part37[i]);
        }
        int[] part38 = value.external_encoder_strobe_count;
        if(part38 == null || part38.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part38.length; ++i)
        {
            writer.integer(part38[i], 1, false);
        }
        int[] part39 = value.external_encoder_count;
        if(part39 == null || part39.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part39.length; ++i)
        {
            writer.integer(part39[i], 2, false);
        }
        double[] part40 = value.goal_joint_position;
        if(part40 == null || part40.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part40.length; ++i)
        {
            writer.f64(part40[i]);
        }
        double[] part41 = value.goal_tcp_position;
        if(part41 == null || part41.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part41.length; ++i)
        {
            writer.f64(part41[i]);
        }
        int part42 = value.robot_mode;
        writer.integer(part42, 1, false);
        int part43 = value.robot_state;
        writer.integer(part43, 1, false);
        int part44 = value.control_mode;
        writer.integer(part44, 2, false);
        int[] part45 = value.reserved;
        if(part45 == null || part45.length != 256)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part45.length; ++i)
        {
            writer.integer(part45[i], 1, false);
        }
    }

    private static Ros1Dsr_msgsRobotStateRT readRos1Dsr_msgsRobotStateRT(Codecs.Reader reader)
    {
        Ros1Dsr_msgsRobotStateRT value = new Ros1Dsr_msgsRobotStateRT();
        value.time_stamp = reader.f64();
        value.actual_joint_position = new double[6];
        for(int i = 0; i < value.actual_joint_position.length; ++i)
            value.actual_joint_position[i] = reader.f64();
        value.actual_joint_position_abs = new double[6];
        for(int i = 0; i < value.actual_joint_position_abs.length; ++i)
            value.actual_joint_position_abs[i] = reader.f64();
        value.actual_joint_velocity = new double[6];
        for(int i = 0; i < value.actual_joint_velocity.length; ++i)
            value.actual_joint_velocity[i] = reader.f64();
        value.actual_joint_velocity_abs = new double[6];
        for(int i = 0; i < value.actual_joint_velocity_abs.length; ++i)
            value.actual_joint_velocity_abs[i] = reader.f64();
        value.actual_tcp_position = new double[6];
        for(int i = 0; i < value.actual_tcp_position.length; ++i)
            value.actual_tcp_position[i] = reader.f64();
        value.actual_tcp_velocity = new double[6];
        for(int i = 0; i < value.actual_tcp_velocity.length; ++i)
            value.actual_tcp_velocity[i] = reader.f64();
        value.actual_flange_position = new double[6];
        for(int i = 0; i < value.actual_flange_position.length; ++i)
            value.actual_flange_position[i] = reader.f64();
        value.actual_flange_velocity = new double[6];
        for(int i = 0; i < value.actual_flange_velocity.length; ++i)
            value.actual_flange_velocity[i] = reader.f64();
        value.actual_motor_torque = new double[6];
        for(int i = 0; i < value.actual_motor_torque.length; ++i)
            value.actual_motor_torque[i] = reader.f64();
        value.actual_joint_torque = new double[6];
        for(int i = 0; i < value.actual_joint_torque.length; ++i)
            value.actual_joint_torque[i] = reader.f64();
        value.raw_joint_torque = new double[6];
        for(int i = 0; i < value.raw_joint_torque.length; ++i)
            value.raw_joint_torque[i] = reader.f64();
        value.raw_force_torque = new double[6];
        for(int i = 0; i < value.raw_force_torque.length; ++i)
            value.raw_force_torque[i] = reader.f64();
        value.external_joint_torque = new double[6];
        for(int i = 0; i < value.external_joint_torque.length; ++i)
            value.external_joint_torque[i] = reader.f64();
        value.external_tcp_force = new double[6];
        for(int i = 0; i < value.external_tcp_force.length; ++i)
            value.external_tcp_force[i] = reader.f64();
        value.target_joint_position = new double[6];
        for(int i = 0; i < value.target_joint_position.length; ++i)
            value.target_joint_position[i] = reader.f64();
        value.target_joint_velocity = new double[6];
        for(int i = 0; i < value.target_joint_velocity.length; ++i)
            value.target_joint_velocity[i] = reader.f64();
        value.target_joint_acceleration = new double[6];
        for(int i = 0; i < value.target_joint_acceleration.length; ++i)
            value.target_joint_acceleration[i] = reader.f64();
        value.target_motor_torque = new double[6];
        for(int i = 0; i < value.target_motor_torque.length; ++i)
            value.target_motor_torque[i] = reader.f64();
        value.target_tcp_position = new double[6];
        for(int i = 0; i < value.target_tcp_position.length; ++i)
            value.target_tcp_position[i] = reader.f64();
        value.target_tcp_velocity = new double[6];
        for(int i = 0; i < value.target_tcp_velocity.length; ++i)
            value.target_tcp_velocity[i] = reader.f64();
        value.jacobian_matrix = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.jacobian_matrix.length; ++i)
            value.jacobian_matrix[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.gravity_torque = new double[6];
        for(int i = 0; i < value.gravity_torque.length; ++i)
            value.gravity_torque[i] = reader.f64();
        value.coriolis_matrix = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.coriolis_matrix.length; ++i)
            value.coriolis_matrix[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.mass_matrix = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.mass_matrix.length; ++i)
            value.mass_matrix[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.solution_space = (int)reader.integer(2, false);
        value.singularity = reader.f64();
        value.operation_speed_rate = reader.f64();
        value.joint_temperature = new double[6];
        for(int i = 0; i < value.joint_temperature.length; ++i)
            value.joint_temperature[i] = reader.f64();
        value.controller_digital_input = (int)reader.integer(2, false);
        value.controller_digital_output = (int)reader.integer(2, false);
        value.controller_analog_input_type = new int[2];
        for(int i = 0; i < value.controller_analog_input_type.length; ++i)
            value.controller_analog_input_type[i] = (int)reader.integer(1, false);
        value.controller_analog_input = new double[2];
        for(int i = 0; i < value.controller_analog_input.length; ++i)
            value.controller_analog_input[i] = reader.f64();
        value.controller_analog_output_type = new int[2];
        for(int i = 0; i < value.controller_analog_output_type.length; ++i)
            value.controller_analog_output_type[i] = (int)reader.integer(1, false);
        value.controller_analog_output = new double[2];
        for(int i = 0; i < value.controller_analog_output.length; ++i)
            value.controller_analog_output[i] = reader.f64();
        value.flange_digital_input = (int)reader.integer(1, false);
        value.flange_digital_output = (int)reader.integer(1, false);
        value.flange_analog_input = new double[4];
        for(int i = 0; i < value.flange_analog_input.length; ++i)
            value.flange_analog_input[i] = reader.f64();
        value.external_encoder_strobe_count = new int[2];
        for(int i = 0; i < value.external_encoder_strobe_count.length; ++i)
            value.external_encoder_strobe_count[i] = (int)reader.integer(1, false);
        value.external_encoder_count = new int[2];
        for(int i = 0; i < value.external_encoder_count.length; ++i)
            value.external_encoder_count[i] = (int)reader.integer(2, false);
        value.goal_joint_position = new double[6];
        for(int i = 0; i < value.goal_joint_position.length; ++i)
            value.goal_joint_position[i] = reader.f64();
        value.goal_tcp_position = new double[6];
        for(int i = 0; i < value.goal_tcp_position.length; ++i)
            value.goal_tcp_position[i] = reader.f64();
        value.robot_mode = (int)reader.integer(1, false);
        value.robot_state = (int)reader.integer(1, false);
        value.control_mode = (int)reader.integer(2, false);
        value.reserved = new int[256];
        for(int i = 0; i < value.reserved.length; ++i)
            value.reserved[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros1Dsr_msgsReadDataRTResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ReadDataRTResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bb6425973c166cd6f5ab88ae080d521d6f3f2e3e40cfb4ec0493c59e71f83bda";
        public static final int MIN_WIRE_BYTES = 1530, MAX_WIRE_BYTES = 8154;
        public Ros1Dsr_msgsRobotStateRT data = new Ros1Dsr_msgsRobotStateRT();

        public Ros1Dsr_msgsReadDataRTResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsReadDataRTResponse> CODEC = new Codec<Ros1Dsr_msgsReadDataRTResponse>() {
            public byte[] encode(Ros1Dsr_msgsReadDataRTResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsReadDataRTResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsReadDataRTResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsReadDataRTResponse value = readRos1Dsr_msgsReadDataRTResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsReadDataRTResponse(Codecs.Writer writer, Ros1Dsr_msgsReadDataRTResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Dsr_msgsRobotStateRT part0 = value.data;
        writeRos1Dsr_msgsRobotStateRT(writer, part0);
    }

    private static Ros1Dsr_msgsReadDataRTResponse readRos1Dsr_msgsReadDataRTResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsReadDataRTResponse value = new Ros1Dsr_msgsReadDataRTResponse();
        value.data = readRos1Dsr_msgsRobotStateRT(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsReleaseComplianceCtrlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ReleaseComplianceCtrlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_963f201a73d6cb461e28bf94dc6223bf0c8e603adb96142cde94a764349ccdd2";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsReleaseComplianceCtrlRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsReleaseComplianceCtrlRequest> CODEC = new Codec<Ros1Dsr_msgsReleaseComplianceCtrlRequest>() {
            public byte[] encode(Ros1Dsr_msgsReleaseComplianceCtrlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsReleaseComplianceCtrlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsReleaseComplianceCtrlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsReleaseComplianceCtrlRequest value = readRos1Dsr_msgsReleaseComplianceCtrlRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsReleaseComplianceCtrlRequest(Codecs.Writer writer, Ros1Dsr_msgsReleaseComplianceCtrlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsReleaseComplianceCtrlRequest readRos1Dsr_msgsReleaseComplianceCtrlRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsReleaseComplianceCtrlRequest value = new Ros1Dsr_msgsReleaseComplianceCtrlRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsReleaseComplianceCtrlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ReleaseComplianceCtrlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5c5e9252fd9e8c346e8317f600fa46eb18c8e53be3447eddf3fb5f474a44682d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsReleaseComplianceCtrlResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsReleaseComplianceCtrlResponse> CODEC = new Codec<Ros1Dsr_msgsReleaseComplianceCtrlResponse>() {
            public byte[] encode(Ros1Dsr_msgsReleaseComplianceCtrlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsReleaseComplianceCtrlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsReleaseComplianceCtrlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsReleaseComplianceCtrlResponse value = readRos1Dsr_msgsReleaseComplianceCtrlResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsReleaseComplianceCtrlResponse(Codecs.Writer writer, Ros1Dsr_msgsReleaseComplianceCtrlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsReleaseComplianceCtrlResponse readRos1Dsr_msgsReleaseComplianceCtrlResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsReleaseComplianceCtrlResponse value = new Ros1Dsr_msgsReleaseComplianceCtrlResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsReleaseForceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ReleaseForceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5809993bacca15147eaf819181a6c1d187512d169539b6125e112b56bc0d2bc2";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public double time = 0;

        public Ros1Dsr_msgsReleaseForceRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsReleaseForceRequest> CODEC = new Codec<Ros1Dsr_msgsReleaseForceRequest>() {
            public byte[] encode(Ros1Dsr_msgsReleaseForceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsReleaseForceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsReleaseForceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsReleaseForceRequest value = readRos1Dsr_msgsReleaseForceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsReleaseForceRequest(Codecs.Writer writer, Ros1Dsr_msgsReleaseForceRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.time;
        writer.f64(part0);
    }

    private static Ros1Dsr_msgsReleaseForceRequest readRos1Dsr_msgsReleaseForceRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsReleaseForceRequest value = new Ros1Dsr_msgsReleaseForceRequest();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsReleaseForceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ReleaseForceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_59e8fed1895c6e1664d689126a2df57918728f4006b20e50c1bc0055e76cc2d5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsReleaseForceResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsReleaseForceResponse> CODEC = new Codec<Ros1Dsr_msgsReleaseForceResponse>() {
            public byte[] encode(Ros1Dsr_msgsReleaseForceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsReleaseForceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsReleaseForceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsReleaseForceResponse value = readRos1Dsr_msgsReleaseForceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsReleaseForceResponse(Codecs.Writer writer, Ros1Dsr_msgsReleaseForceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsReleaseForceResponse readRos1Dsr_msgsReleaseForceResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsReleaseForceResponse value = new Ros1Dsr_msgsReleaseForceResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsReleaseProtectiveStopRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ReleaseProtectiveStopRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0703fb0af5fef931ae1b4364f05b4f5325e6195a2b4865e1dfcfeb3dd6f7c175";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte release_mode = 0;

        public Ros1Dsr_msgsReleaseProtectiveStopRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsReleaseProtectiveStopRequest> CODEC = new Codec<Ros1Dsr_msgsReleaseProtectiveStopRequest>() {
            public byte[] encode(Ros1Dsr_msgsReleaseProtectiveStopRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsReleaseProtectiveStopRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsReleaseProtectiveStopRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsReleaseProtectiveStopRequest value = readRos1Dsr_msgsReleaseProtectiveStopRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsReleaseProtectiveStopRequest(Codecs.Writer writer, Ros1Dsr_msgsReleaseProtectiveStopRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.release_mode;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsReleaseProtectiveStopRequest readRos1Dsr_msgsReleaseProtectiveStopRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsReleaseProtectiveStopRequest value = new Ros1Dsr_msgsReleaseProtectiveStopRequest();
        value.release_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsReleaseProtectiveStopResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ReleaseProtectiveStopResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2fdc5568ddd9e700513489ccbf9078932bc28fe902f815fdd9a722b13ab599ec";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsReleaseProtectiveStopResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsReleaseProtectiveStopResponse> CODEC = new Codec<Ros1Dsr_msgsReleaseProtectiveStopResponse>() {
            public byte[] encode(Ros1Dsr_msgsReleaseProtectiveStopResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsReleaseProtectiveStopResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsReleaseProtectiveStopResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsReleaseProtectiveStopResponse value = readRos1Dsr_msgsReleaseProtectiveStopResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsReleaseProtectiveStopResponse(Codecs.Writer writer, Ros1Dsr_msgsReleaseProtectiveStopResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsReleaseProtectiveStopResponse readRos1Dsr_msgsReleaseProtectiveStopResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsReleaseProtectiveStopResponse value = new Ros1Dsr_msgsReleaseProtectiveStopResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsResetWorkpieceWeightRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ResetWorkpieceWeightRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b2cf228390cc1aa473c6e1a9025d7ea7e789acb3f7dd6a0a4178402b6d843ed6";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsResetWorkpieceWeightRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsResetWorkpieceWeightRequest> CODEC = new Codec<Ros1Dsr_msgsResetWorkpieceWeightRequest>() {
            public byte[] encode(Ros1Dsr_msgsResetWorkpieceWeightRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsResetWorkpieceWeightRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsResetWorkpieceWeightRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsResetWorkpieceWeightRequest value = readRos1Dsr_msgsResetWorkpieceWeightRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsResetWorkpieceWeightRequest(Codecs.Writer writer, Ros1Dsr_msgsResetWorkpieceWeightRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsResetWorkpieceWeightRequest readRos1Dsr_msgsResetWorkpieceWeightRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsResetWorkpieceWeightRequest value = new Ros1Dsr_msgsResetWorkpieceWeightRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsResetWorkpieceWeightResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ResetWorkpieceWeightResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f11776348fcebca43e64f7a635e2a080642a29c32762704029bd1429055cc025";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsResetWorkpieceWeightResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsResetWorkpieceWeightResponse> CODEC = new Codec<Ros1Dsr_msgsResetWorkpieceWeightResponse>() {
            public byte[] encode(Ros1Dsr_msgsResetWorkpieceWeightResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsResetWorkpieceWeightResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsResetWorkpieceWeightResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsResetWorkpieceWeightResponse value = readRos1Dsr_msgsResetWorkpieceWeightResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsResetWorkpieceWeightResponse(Codecs.Writer writer, Ros1Dsr_msgsResetWorkpieceWeightResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsResetWorkpieceWeightResponse readRos1Dsr_msgsResetWorkpieceWeightResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsResetWorkpieceWeightResponse value = new Ros1Dsr_msgsResetWorkpieceWeightResponse();
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
        public static final String CODEC_IDENTITY = "UWVMROS1_3f34278ee2cdceff51b3bb665ce314cc4a0d4e164b110969102a04c96e374456";
        public static final int MIN_WIRE_BYTES = 1484, MAX_WIRE_BYTES = 17004;
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
        public double[] current_tool_posx = new double[6];
        public double[] current_velx = new double[6];
        public double[] task_err = new double[6];
        public double[] target_velx = new double[6];
        public double[] target_posx = new double[6];
        public double[] dynamic_tor = new double[6];
        public double[] actual_jts = new double[6];
        public double[] actual_ejt = new double[6];
        public double[] actual_ett = new double[6];
        public byte[] actual_bk = new byte[6];
        public double[] actual_mc = new double[6];
        public double[] actual_mt = new double[6];
        public byte solution_space = 0;
        public double sync_time = 0;
        public byte[] actual_bt = new byte[5];
        public Ros1Std_msgsFloat64MultiArray[] rotation_matrix = new Ros1Std_msgsFloat64MultiArray[0];
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
        public double[] fActualW2B = new double[6];
        public Ros1Std_msgsFloat64MultiArray[] fCurrentPosW = new Ros1Std_msgsFloat64MultiArray[0];
        public double[] fCurrentVelW = new double[6];
        public double[] fWorldETT = new double[6];
        public double[] fTargetPosW = new double[6];
        public double[] fTargetVelW = new double[6];
        public Ros1Std_msgsFloat64MultiArray[] fRotationMatrixWorld = new Ros1Std_msgsFloat64MultiArray[0];
        public byte iActualUCN = 0;
        public byte iParent = 0;
        public Ros1Std_msgsFloat64MultiArray[] fCurrentPosU = new Ros1Std_msgsFloat64MultiArray[0];
        public double[] fCurrentVelU = new double[6];
        public double[] fUserETT = new double[6];
        public double[] fTargetPosU = new double[6];
        public double[] fTargetVelU = new double[6];
        public Ros1Std_msgsFloat64MultiArray[] fRotationMatrixUser = new Ros1Std_msgsFloat64MultiArray[0];
        public double[] fActualAI = new double[6];
        public boolean[] bActualSW = new boolean[3];
        public boolean[] bActualSI = new boolean[2];
        public byte[] iActualAT = new byte[2];
        public double[] fTargetAO = new double[2];
        public byte[] iTargetAT = new byte[2];
        public boolean[] bActualES = new boolean[2];
        public byte[] iActualED = new byte[2];
        public boolean[] bActualER = new boolean[2];

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
        double[] part11 = value.current_tool_posx;
        if(part11 == null || part11.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part11.length; ++i)
        {
            writer.f64(part11[i]);
        }
        double[] part12 = value.current_velx;
        if(part12 == null || part12.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part12.length; ++i)
        {
            writer.f64(part12[i]);
        }
        double[] part13 = value.task_err;
        if(part13 == null || part13.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part13.length; ++i)
        {
            writer.f64(part13[i]);
        }
        double[] part14 = value.target_velx;
        if(part14 == null || part14.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part14.length; ++i)
        {
            writer.f64(part14[i]);
        }
        double[] part15 = value.target_posx;
        if(part15 == null || part15.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part15.length; ++i)
        {
            writer.f64(part15[i]);
        }
        double[] part16 = value.dynamic_tor;
        if(part16 == null || part16.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part16.length; ++i)
        {
            writer.f64(part16[i]);
        }
        double[] part17 = value.actual_jts;
        if(part17 == null || part17.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part17.length; ++i)
        {
            writer.f64(part17[i]);
        }
        double[] part18 = value.actual_ejt;
        if(part18 == null || part18.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part18.length; ++i)
        {
            writer.f64(part18[i]);
        }
        double[] part19 = value.actual_ett;
        if(part19 == null || part19.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part19.length; ++i)
        {
            writer.f64(part19[i]);
        }
        byte[] part20 = value.actual_bk;
        if(part20 == null || part20.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part20.length; ++i)
        {
            writer.integer(part20[i], 1, true);
        }
        double[] part21 = value.actual_mc;
        if(part21 == null || part21.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part21.length; ++i)
        {
            writer.f64(part21[i]);
        }
        double[] part22 = value.actual_mt;
        if(part22 == null || part22.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part22.length; ++i)
        {
            writer.f64(part22[i]);
        }
        byte part23 = value.solution_space;
        writer.integer(part23, 1, true);
        double part24 = value.sync_time;
        writer.f64(part24);
        byte[] part25 = value.actual_bt;
        if(part25 == null || part25.length != 5)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part25.length; ++i)
        {
            writer.integer(part25[i], 1, true);
        }
        Ros1Std_msgsFloat64MultiArray[] part26 = value.rotation_matrix;
        if(part26 == null || part26.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part26.length, 4, false);
        for(int i = 0; i < part26.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part26[i]);
        }
        byte[] part27 = value.ctrlbox_digital_input;
        if(part27 == null || part27.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part27.length; ++i)
        {
            writer.integer(part27[i], 1, true);
        }
        byte[] part28 = value.ctrlbox_digital_output;
        if(part28 == null || part28.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part28.length; ++i)
        {
            writer.integer(part28[i], 1, true);
        }
        byte[] part29 = value.flange_digital_input;
        if(part29 == null || part29.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part29.length; ++i)
        {
            writer.integer(part29[i], 1, true);
        }
        byte[] part30 = value.flange_digital_output;
        if(part30 == null || part30.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part30.length; ++i)
        {
            writer.integer(part30[i], 1, true);
        }
        Ros1Dsr_msgsModbusState[] part31 = value.modbus_state;
        if(part31 == null || part31.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part31.length, 4, false);
        for(int i = 0; i < part31.length; ++i)
        {
            writeRos1Dsr_msgsModbusState(writer, part31[i]);
        }
        int part32 = value.access_control;
        writer.integer(part32, 4, true);
        boolean part33 = value.homming_completed;
        writer.integer(part33 ? 1 : 0, 1, false);
        boolean part34 = value.tp_initialized;
        writer.integer(part34 ? 1 : 0, 1, false);
        byte part35 = value.mastering_need;
        writer.integer(part35, 1, true);
        boolean part36 = value.drl_stopped;
        writer.integer(part36 ? 1 : 0, 1, false);
        boolean part37 = value.disconnected;
        writer.integer(part37 ? 1 : 0, 1, false);
        double[] part38 = value.fActualW2B;
        if(part38 == null || part38.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part38.length; ++i)
        {
            writer.f64(part38[i]);
        }
        Ros1Std_msgsFloat64MultiArray[] part39 = value.fCurrentPosW;
        if(part39 == null || part39.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part39.length, 4, false);
        for(int i = 0; i < part39.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part39[i]);
        }
        double[] part40 = value.fCurrentVelW;
        if(part40 == null || part40.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part40.length; ++i)
        {
            writer.f64(part40[i]);
        }
        double[] part41 = value.fWorldETT;
        if(part41 == null || part41.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part41.length; ++i)
        {
            writer.f64(part41[i]);
        }
        double[] part42 = value.fTargetPosW;
        if(part42 == null || part42.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part42.length; ++i)
        {
            writer.f64(part42[i]);
        }
        double[] part43 = value.fTargetVelW;
        if(part43 == null || part43.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part43.length; ++i)
        {
            writer.f64(part43[i]);
        }
        Ros1Std_msgsFloat64MultiArray[] part44 = value.fRotationMatrixWorld;
        if(part44 == null || part44.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part44.length, 4, false);
        for(int i = 0; i < part44.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part44[i]);
        }
        byte part45 = value.iActualUCN;
        writer.integer(part45, 1, true);
        byte part46 = value.iParent;
        writer.integer(part46, 1, true);
        Ros1Std_msgsFloat64MultiArray[] part47 = value.fCurrentPosU;
        if(part47 == null || part47.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part47.length, 4, false);
        for(int i = 0; i < part47.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part47[i]);
        }
        double[] part48 = value.fCurrentVelU;
        if(part48 == null || part48.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part48.length; ++i)
        {
            writer.f64(part48[i]);
        }
        double[] part49 = value.fUserETT;
        if(part49 == null || part49.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part49.length; ++i)
        {
            writer.f64(part49[i]);
        }
        double[] part50 = value.fTargetPosU;
        if(part50 == null || part50.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part50.length; ++i)
        {
            writer.f64(part50[i]);
        }
        double[] part51 = value.fTargetVelU;
        if(part51 == null || part51.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part51.length; ++i)
        {
            writer.f64(part51[i]);
        }
        Ros1Std_msgsFloat64MultiArray[] part52 = value.fRotationMatrixUser;
        if(part52 == null || part52.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part52.length, 4, false);
        for(int i = 0; i < part52.length; ++i)
        {
            writeRos1Std_msgsFloat64MultiArray(writer, part52[i]);
        }
        double[] part53 = value.fActualAI;
        if(part53 == null || part53.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part53.length; ++i)
        {
            writer.f64(part53[i]);
        }
        boolean[] part54 = value.bActualSW;
        if(part54 == null || part54.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part54.length; ++i)
        {
            writer.integer(part54[i] ? 1 : 0, 1, false);
        }
        boolean[] part55 = value.bActualSI;
        if(part55 == null || part55.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part55.length; ++i)
        {
            writer.integer(part55[i] ? 1 : 0, 1, false);
        }
        byte[] part56 = value.iActualAT;
        if(part56 == null || part56.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part56.length; ++i)
        {
            writer.integer(part56[i], 1, true);
        }
        double[] part57 = value.fTargetAO;
        if(part57 == null || part57.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part57.length; ++i)
        {
            writer.f64(part57[i]);
        }
        byte[] part58 = value.iTargetAT;
        if(part58 == null || part58.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part58.length; ++i)
        {
            writer.integer(part58[i], 1, true);
        }
        boolean[] part59 = value.bActualES;
        if(part59 == null || part59.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part59.length; ++i)
        {
            writer.integer(part59[i] ? 1 : 0, 1, false);
        }
        byte[] part60 = value.iActualED;
        if(part60 == null || part60.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part60.length; ++i)
        {
            writer.integer(part60[i], 1, true);
        }
        boolean[] part61 = value.bActualER;
        if(part61 == null || part61.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part61.length; ++i)
        {
            writer.integer(part61[i] ? 1 : 0, 1, false);
        }
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
        value.current_tool_posx = new double[6];
        for(int i = 0; i < value.current_tool_posx.length; ++i)
            value.current_tool_posx[i] = reader.f64();
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
        value.actual_bk = new byte[6];
        for(int i = 0; i < value.actual_bk.length; ++i)
            value.actual_bk[i] = (byte)reader.integer(1, true);
        value.actual_mc = new double[6];
        for(int i = 0; i < value.actual_mc.length; ++i)
            value.actual_mc[i] = reader.f64();
        value.actual_mt = new double[6];
        for(int i = 0; i < value.actual_mt.length; ++i)
            value.actual_mt[i] = reader.f64();
        value.solution_space = (byte)reader.integer(1, true);
        value.sync_time = reader.f64();
        value.actual_bt = new byte[5];
        for(int i = 0; i < value.actual_bt.length; ++i)
            value.actual_bt[i] = (byte)reader.integer(1, true);
        value.rotation_matrix = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.rotation_matrix.length; ++i)
            value.rotation_matrix[i] = readRos1Std_msgsFloat64MultiArray(reader);
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
        value.fActualW2B = new double[6];
        for(int i = 0; i < value.fActualW2B.length; ++i)
            value.fActualW2B[i] = reader.f64();
        value.fCurrentPosW = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.fCurrentPosW.length; ++i)
            value.fCurrentPosW[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.fCurrentVelW = new double[6];
        for(int i = 0; i < value.fCurrentVelW.length; ++i)
            value.fCurrentVelW[i] = reader.f64();
        value.fWorldETT = new double[6];
        for(int i = 0; i < value.fWorldETT.length; ++i)
            value.fWorldETT[i] = reader.f64();
        value.fTargetPosW = new double[6];
        for(int i = 0; i < value.fTargetPosW.length; ++i)
            value.fTargetPosW[i] = reader.f64();
        value.fTargetVelW = new double[6];
        for(int i = 0; i < value.fTargetVelW.length; ++i)
            value.fTargetVelW[i] = reader.f64();
        value.fRotationMatrixWorld = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.fRotationMatrixWorld.length; ++i)
            value.fRotationMatrixWorld[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.iActualUCN = (byte)reader.integer(1, true);
        value.iParent = (byte)reader.integer(1, true);
        value.fCurrentPosU = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.fCurrentPosU.length; ++i)
            value.fCurrentPosU[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.fCurrentVelU = new double[6];
        for(int i = 0; i < value.fCurrentVelU.length; ++i)
            value.fCurrentVelU[i] = reader.f64();
        value.fUserETT = new double[6];
        for(int i = 0; i < value.fUserETT.length; ++i)
            value.fUserETT[i] = reader.f64();
        value.fTargetPosU = new double[6];
        for(int i = 0; i < value.fTargetPosU.length; ++i)
            value.fTargetPosU[i] = reader.f64();
        value.fTargetVelU = new double[6];
        for(int i = 0; i < value.fTargetVelU.length; ++i)
            value.fTargetVelU[i] = reader.f64();
        value.fRotationMatrixUser = new Ros1Std_msgsFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.fRotationMatrixUser.length; ++i)
            value.fRotationMatrixUser[i] = readRos1Std_msgsFloat64MultiArray(reader);
        value.fActualAI = new double[6];
        for(int i = 0; i < value.fActualAI.length; ++i)
            value.fActualAI[i] = reader.f64();
        value.bActualSW = new boolean[3];
        for(int i = 0; i < value.bActualSW.length; ++i)
            value.bActualSW[i] = readBool(reader);
        value.bActualSI = new boolean[2];
        for(int i = 0; i < value.bActualSI.length; ++i)
            value.bActualSI[i] = readBool(reader);
        value.iActualAT = new byte[2];
        for(int i = 0; i < value.iActualAT.length; ++i)
            value.iActualAT[i] = (byte)reader.integer(1, true);
        value.fTargetAO = new double[2];
        for(int i = 0; i < value.fTargetAO.length; ++i)
            value.fTargetAO[i] = reader.f64();
        value.iTargetAT = new byte[2];
        for(int i = 0; i < value.iTargetAT.length; ++i)
            value.iTargetAT[i] = (byte)reader.integer(1, true);
        value.bActualES = new boolean[2];
        for(int i = 0; i < value.bActualES.length; ++i)
            value.bActualES[i] = readBool(reader);
        value.iActualED = new byte[2];
        for(int i = 0; i < value.iActualED.length; ++i)
            value.iActualED[i] = (byte)reader.integer(1, true);
        value.bActualER = new boolean[2];
        for(int i = 0; i < value.bActualER.length; ++i)
            value.bActualER[i] = readBool(reader);
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

    public static final class Ros1Dsr_msgsServoJRTStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ServoJRTStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f401a85a9e6940e11cdc58f5f7390456553ff73bc298d0f9c089a1f5e9921677";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;
        public double[] pos = new double[6];
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros1Dsr_msgsServoJRTStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsServoJRTStream> CODEC = new Codec<Ros1Dsr_msgsServoJRTStream>() {
            public byte[] encode(Ros1Dsr_msgsServoJRTStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsServoJRTStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsServoJRTStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsServoJRTStream value = readRos1Dsr_msgsServoJRTStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsServoJRTStream(Codecs.Writer writer, Ros1Dsr_msgsServoJRTStream value)
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
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.acc;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double part3 = value.time;
        writer.f64(part3);
    }

    private static Ros1Dsr_msgsServoJRTStream readRos1Dsr_msgsServoJRTStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsServoJRTStream value = new Ros1Dsr_msgsServoJRTStream();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsServoJStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ServoJStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2f7e730c7f7d0c29ffc15f345a9352822e94cc98e298235e57397ea46f90db8b";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;
        public double[] pos = new double[6];
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros1Dsr_msgsServoJStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsServoJStream> CODEC = new Codec<Ros1Dsr_msgsServoJStream>() {
            public byte[] encode(Ros1Dsr_msgsServoJStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsServoJStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsServoJStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsServoJStream value = readRos1Dsr_msgsServoJStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsServoJStream(Codecs.Writer writer, Ros1Dsr_msgsServoJStream value)
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
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.acc;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double part3 = value.time;
        writer.f64(part3);
    }

    private static Ros1Dsr_msgsServoJStream readRos1Dsr_msgsServoJStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsServoJStream value = new Ros1Dsr_msgsServoJStream();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsServoLRTStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ServoLRTStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_858f4172a6511013eabff068457b05ce5a0cfc507b86a5817d55a5d274763b4d";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;
        public double[] pos = new double[6];
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros1Dsr_msgsServoLRTStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsServoLRTStream> CODEC = new Codec<Ros1Dsr_msgsServoLRTStream>() {
            public byte[] encode(Ros1Dsr_msgsServoLRTStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsServoLRTStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsServoLRTStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsServoLRTStream value = readRos1Dsr_msgsServoLRTStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsServoLRTStream(Codecs.Writer writer, Ros1Dsr_msgsServoLRTStream value)
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
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.acc;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double part3 = value.time;
        writer.f64(part3);
    }

    private static Ros1Dsr_msgsServoLRTStream readRos1Dsr_msgsServoLRTStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsServoLRTStream value = new Ros1Dsr_msgsServoLRTStream();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsServoLStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/ServoLStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b6be06412820c88909f37961227679a9ccbc8176ad662efc7f41f35a797035e8";
        public static final int MIN_WIRE_BYTES = 88, MAX_WIRE_BYTES = 88;
        public double[] pos = new double[6];
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;

        public Ros1Dsr_msgsServoLStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsServoLStream> CODEC = new Codec<Ros1Dsr_msgsServoLStream>() {
            public byte[] encode(Ros1Dsr_msgsServoLStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsServoLStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsServoLStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsServoLStream value = readRos1Dsr_msgsServoLStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsServoLStream(Codecs.Writer writer, Ros1Dsr_msgsServoLStream value)
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
    }

    private static Ros1Dsr_msgsServoLStream readRos1Dsr_msgsServoLStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsServoLStream value = new Ros1Dsr_msgsServoLStream();
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
        return value;
    }

    public static final class Ros1Dsr_msgsSetAccJRTRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetAccJRTRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_867345ecf0c7fa3e84375c009d3bd9d2ee2c52a011158215ddae3ff7de977d35";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] acc = new double[6];

        public Ros1Dsr_msgsSetAccJRTRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetAccJRTRequest> CODEC = new Codec<Ros1Dsr_msgsSetAccJRTRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetAccJRTRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetAccJRTRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetAccJRTRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetAccJRTRequest value = readRos1Dsr_msgsSetAccJRTRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetAccJRTRequest(Codecs.Writer writer, Ros1Dsr_msgsSetAccJRTRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.acc;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Dsr_msgsSetAccJRTRequest readRos1Dsr_msgsSetAccJRTRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetAccJRTRequest value = new Ros1Dsr_msgsSetAccJRTRequest();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsSetAccJRTResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetAccJRTResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1bc5cb7aafef1ab3cfcde7fda9108670bc96f2298f3921ca832cab01b7670e00";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetAccJRTResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetAccJRTResponse> CODEC = new Codec<Ros1Dsr_msgsSetAccJRTResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetAccJRTResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetAccJRTResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetAccJRTResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetAccJRTResponse value = readRos1Dsr_msgsSetAccJRTResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetAccJRTResponse(Codecs.Writer writer, Ros1Dsr_msgsSetAccJRTResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetAccJRTResponse readRos1Dsr_msgsSetAccJRTResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetAccJRTResponse value = new Ros1Dsr_msgsSetAccJRTResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetAccXRTRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetAccXRTRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1fa5e2a32de2e4a212702aa6cb1cbfa7d451c51a0f6cb871fc337cd09b166cb6";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public double trans = 0;
        public double rotation = 0;

        public Ros1Dsr_msgsSetAccXRTRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetAccXRTRequest> CODEC = new Codec<Ros1Dsr_msgsSetAccXRTRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetAccXRTRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetAccXRTRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetAccXRTRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetAccXRTRequest value = readRos1Dsr_msgsSetAccXRTRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetAccXRTRequest(Codecs.Writer writer, Ros1Dsr_msgsSetAccXRTRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.trans;
        writer.f64(part0);
        double part1 = value.rotation;
        writer.f64(part1);
    }

    private static Ros1Dsr_msgsSetAccXRTRequest readRos1Dsr_msgsSetAccXRTRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetAccXRTRequest value = new Ros1Dsr_msgsSetAccXRTRequest();
        value.trans = reader.f64();
        value.rotation = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsSetAccXRTResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetAccXRTResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7a42293efa247633f5e72a20749342b0530795a4e963f3c47248c2e703ae7c65";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetAccXRTResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetAccXRTResponse> CODEC = new Codec<Ros1Dsr_msgsSetAccXRTResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetAccXRTResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetAccXRTResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetAccXRTResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetAccXRTResponse value = readRos1Dsr_msgsSetAccXRTResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetAccXRTResponse(Codecs.Writer writer, Ros1Dsr_msgsSetAccXRTResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetAccXRTResponse readRos1Dsr_msgsSetAccXRTResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetAccXRTResponse value = new Ros1Dsr_msgsSetAccXRTResponse();
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

    public static final class Ros1Dsr_msgsSetDesiredForceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetDesiredForceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1020073d308553e7eb01e3fdd76a8a29cd169131d95516ae8c07a54b29f01b1a";
        public static final int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 64;
        public double[] fd = new double[6];
        public byte[] dir = new byte[6];
        public byte ref = 0;
        public double time = 0;
        public byte mod = 0;

        public Ros1Dsr_msgsSetDesiredForceRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetDesiredForceRequest> CODEC = new Codec<Ros1Dsr_msgsSetDesiredForceRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetDesiredForceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetDesiredForceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetDesiredForceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetDesiredForceRequest value = readRos1Dsr_msgsSetDesiredForceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetDesiredForceRequest(Codecs.Writer writer, Ros1Dsr_msgsSetDesiredForceRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.fd;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        byte[] part1 = value.dir;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 1, true);
        }
        byte part2 = value.ref;
        writer.integer(part2, 1, true);
        double part3 = value.time;
        writer.f64(part3);
        byte part4 = value.mod;
        writer.integer(part4, 1, true);
    }

    private static Ros1Dsr_msgsSetDesiredForceRequest readRos1Dsr_msgsSetDesiredForceRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetDesiredForceRequest value = new Ros1Dsr_msgsSetDesiredForceRequest();
        value.fd = new double[6];
        for(int i = 0; i < value.fd.length; ++i)
            value.fd[i] = reader.f64();
        value.dir = new byte[6];
        for(int i = 0; i < value.dir.length; ++i)
            value.dir[i] = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        value.time = reader.f64();
        value.mod = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetDesiredForceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetDesiredForceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fb07701ce7c215300e155c1d46e345f6467fe43bba3fc71bed94943459ce1928";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetDesiredForceResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetDesiredForceResponse> CODEC = new Codec<Ros1Dsr_msgsSetDesiredForceResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetDesiredForceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetDesiredForceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetDesiredForceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetDesiredForceResponse value = readRos1Dsr_msgsSetDesiredForceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetDesiredForceResponse(Codecs.Writer writer, Ros1Dsr_msgsSetDesiredForceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetDesiredForceResponse readRos1Dsr_msgsSetDesiredForceResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetDesiredForceResponse value = new Ros1Dsr_msgsSetDesiredForceResponse();
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

    public static final class Ros1Dsr_msgsSetRTControlInputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRTControlInputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_83562a6a3191e48ab47af1e2d35775048bf146a8175985b356a416882e5374cd";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public String version = "";
        public double period = 0;
        public int loss = 0;

        public Ros1Dsr_msgsSetRTControlInputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRTControlInputRequest> CODEC = new Codec<Ros1Dsr_msgsSetRTControlInputRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetRTControlInputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRTControlInputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRTControlInputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRTControlInputRequest value = readRos1Dsr_msgsSetRTControlInputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRTControlInputRequest(Codecs.Writer writer, Ros1Dsr_msgsSetRTControlInputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.version;
        writeText(writer, part0, 256);
        double part1 = value.period;
        writer.f64(part1);
        int part2 = value.loss;
        writer.integer(part2, 4, true);
    }

    private static Ros1Dsr_msgsSetRTControlInputRequest readRos1Dsr_msgsSetRTControlInputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRTControlInputRequest value = new Ros1Dsr_msgsSetRTControlInputRequest();
        value.version = readText(reader, 256);
        value.period = reader.f64();
        value.loss = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRTControlInputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRTControlInputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8fef3733c6f17fcbc1e0eaa2633321d63b78d63d0156802417e87c8a5330008f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetRTControlInputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRTControlInputResponse> CODEC = new Codec<Ros1Dsr_msgsSetRTControlInputResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetRTControlInputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRTControlInputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRTControlInputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRTControlInputResponse value = readRos1Dsr_msgsSetRTControlInputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRTControlInputResponse(Codecs.Writer writer, Ros1Dsr_msgsSetRTControlInputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetRTControlInputResponse readRos1Dsr_msgsSetRTControlInputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRTControlInputResponse value = new Ros1Dsr_msgsSetRTControlInputResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRTControlOutputRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRTControlOutputRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_83976c84f752fbfb1bf6e84a3816ab069e5d4f454dac4a602753f9d2049050c6";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public String version = "";
        public double period = 0;
        public int loss = 0;

        public Ros1Dsr_msgsSetRTControlOutputRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRTControlOutputRequest> CODEC = new Codec<Ros1Dsr_msgsSetRTControlOutputRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetRTControlOutputRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRTControlOutputRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRTControlOutputRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRTControlOutputRequest value = readRos1Dsr_msgsSetRTControlOutputRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRTControlOutputRequest(Codecs.Writer writer, Ros1Dsr_msgsSetRTControlOutputRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.version;
        writeText(writer, part0, 256);
        double part1 = value.period;
        writer.f64(part1);
        int part2 = value.loss;
        writer.integer(part2, 4, true);
    }

    private static Ros1Dsr_msgsSetRTControlOutputRequest readRos1Dsr_msgsSetRTControlOutputRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRTControlOutputRequest value = new Ros1Dsr_msgsSetRTControlOutputRequest();
        value.version = readText(reader, 256);
        value.period = reader.f64();
        value.loss = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRTControlOutputResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRTControlOutputResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ac2888098d0b18d9188b116877ade53eb4481ca4e5a7c20bff64511bd5ad9ba9";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetRTControlOutputResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRTControlOutputResponse> CODEC = new Codec<Ros1Dsr_msgsSetRTControlOutputResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetRTControlOutputResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRTControlOutputResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRTControlOutputResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRTControlOutputResponse value = readRos1Dsr_msgsSetRTControlOutputResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRTControlOutputResponse(Codecs.Writer writer, Ros1Dsr_msgsSetRTControlOutputResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetRTControlOutputResponse readRos1Dsr_msgsSetRTControlOutputResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRTControlOutputResponse value = new Ros1Dsr_msgsSetRTControlOutputResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRefCoordRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRefCoordRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_269accc3ced8dd5c86b93c8a412301e47f0084be7f5294d19866868eb5858144";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte coord = 0;

        public Ros1Dsr_msgsSetRefCoordRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRefCoordRequest> CODEC = new Codec<Ros1Dsr_msgsSetRefCoordRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetRefCoordRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRefCoordRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRefCoordRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRefCoordRequest value = readRos1Dsr_msgsSetRefCoordRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRefCoordRequest(Codecs.Writer writer, Ros1Dsr_msgsSetRefCoordRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.coord;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsSetRefCoordRequest readRos1Dsr_msgsSetRefCoordRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRefCoordRequest value = new Ros1Dsr_msgsSetRefCoordRequest();
        value.coord = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRefCoordResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRefCoordResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d33d88ff3985821ce2b9773f2d80ebf3394d89647e760dea55b9303c9e3b3562";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetRefCoordResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRefCoordResponse> CODEC = new Codec<Ros1Dsr_msgsSetRefCoordResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetRefCoordResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRefCoordResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRefCoordResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRefCoordResponse value = readRos1Dsr_msgsSetRefCoordResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRefCoordResponse(Codecs.Writer writer, Ros1Dsr_msgsSetRefCoordResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetRefCoordResponse readRos1Dsr_msgsSetRefCoordResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRefCoordResponse value = new Ros1Dsr_msgsSetRefCoordResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRobotControlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRobotControlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d84763896b47427acc4d2c4cd75972c2c4f07c2f87dd1df781c8d7ef9e43c919";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte robot_control = 0;

        public Ros1Dsr_msgsSetRobotControlRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRobotControlRequest> CODEC = new Codec<Ros1Dsr_msgsSetRobotControlRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetRobotControlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRobotControlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRobotControlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRobotControlRequest value = readRos1Dsr_msgsSetRobotControlRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRobotControlRequest(Codecs.Writer writer, Ros1Dsr_msgsSetRobotControlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_control;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsSetRobotControlRequest readRos1Dsr_msgsSetRobotControlRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRobotControlRequest value = new Ros1Dsr_msgsSetRobotControlRequest();
        value.robot_control = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetRobotControlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetRobotControlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6f6a9dd616a340ad9a733b3f19c61a07b3101fc519f26f9c7d6e80af868663ee";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetRobotControlResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetRobotControlResponse> CODEC = new Codec<Ros1Dsr_msgsSetRobotControlResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetRobotControlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetRobotControlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetRobotControlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetRobotControlResponse value = readRos1Dsr_msgsSetRobotControlResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetRobotControlResponse(Codecs.Writer writer, Ros1Dsr_msgsSetRobotControlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetRobotControlResponse readRos1Dsr_msgsSetRobotControlResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetRobotControlResponse value = new Ros1Dsr_msgsSetRobotControlResponse();
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

    public static final class Ros1Dsr_msgsSetSafetyModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetSafetyModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e3e42b2be7c9f0974cb0f4a4192128c06a8df4a09eecb471358e41744d85d811";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte safety_mode = 0;
        public byte safety_mode_event = 0;

        public Ros1Dsr_msgsSetSafetyModeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetSafetyModeRequest> CODEC = new Codec<Ros1Dsr_msgsSetSafetyModeRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetSafetyModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetSafetyModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetSafetyModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetSafetyModeRequest value = readRos1Dsr_msgsSetSafetyModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetSafetyModeRequest(Codecs.Writer writer, Ros1Dsr_msgsSetSafetyModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.safety_mode;
        writer.integer(part0, 1, true);
        byte part1 = value.safety_mode_event;
        writer.integer(part1, 1, true);
    }

    private static Ros1Dsr_msgsSetSafetyModeRequest readRos1Dsr_msgsSetSafetyModeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetSafetyModeRequest value = new Ros1Dsr_msgsSetSafetyModeRequest();
        value.safety_mode = (byte)reader.integer(1, true);
        value.safety_mode_event = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetSafetyModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetSafetyModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_107e9a75ba6b7fa85f2a92b4595f0b55e451b2cbabb2f0035d16b6d35be69320";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetSafetyModeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetSafetyModeResponse> CODEC = new Codec<Ros1Dsr_msgsSetSafetyModeResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetSafetyModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetSafetyModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetSafetyModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetSafetyModeResponse value = readRos1Dsr_msgsSetSafetyModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetSafetyModeResponse(Codecs.Writer writer, Ros1Dsr_msgsSetSafetyModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetSafetyModeResponse readRos1Dsr_msgsSetSafetyModeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetSafetyModeResponse value = new Ros1Dsr_msgsSetSafetyModeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetSingularityHandlingRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetSingularityHandlingRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_44dd4695620a3cf3f95504b73ad6978c9073ab3703f73f4a6449c7763f31cb7b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte mode = 0;

        public Ros1Dsr_msgsSetSingularityHandlingRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetSingularityHandlingRequest> CODEC = new Codec<Ros1Dsr_msgsSetSingularityHandlingRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetSingularityHandlingRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetSingularityHandlingRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetSingularityHandlingRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetSingularityHandlingRequest value = readRos1Dsr_msgsSetSingularityHandlingRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetSingularityHandlingRequest(Codecs.Writer writer, Ros1Dsr_msgsSetSingularityHandlingRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.mode;
        writer.integer(part0, 1, true);
    }

    private static Ros1Dsr_msgsSetSingularityHandlingRequest readRos1Dsr_msgsSetSingularityHandlingRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetSingularityHandlingRequest value = new Ros1Dsr_msgsSetSingularityHandlingRequest();
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetSingularityHandlingResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetSingularityHandlingResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a022bf9d809ac39a4dfe0487fdbc83f3b4ef81f179a6b3dd7d8fb1854aba1aa2";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetSingularityHandlingResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetSingularityHandlingResponse> CODEC = new Codec<Ros1Dsr_msgsSetSingularityHandlingResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetSingularityHandlingResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetSingularityHandlingResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetSingularityHandlingResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetSingularityHandlingResponse value = readRos1Dsr_msgsSetSingularityHandlingResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetSingularityHandlingResponse(Codecs.Writer writer, Ros1Dsr_msgsSetSingularityHandlingResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetSingularityHandlingResponse readRos1Dsr_msgsSetSingularityHandlingResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetSingularityHandlingResponse value = new Ros1Dsr_msgsSetSingularityHandlingResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetStiffnessxRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetStiffnessxRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7cf0721d0f9cd45422a4277a63834f75572ead2833ca4100752d51abc2b4e3d3";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;
        public double[] stx = new double[6];
        public byte ref = 0;
        public double time = 0;

        public Ros1Dsr_msgsSetStiffnessxRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetStiffnessxRequest> CODEC = new Codec<Ros1Dsr_msgsSetStiffnessxRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetStiffnessxRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetStiffnessxRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetStiffnessxRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetStiffnessxRequest value = readRos1Dsr_msgsSetStiffnessxRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetStiffnessxRequest(Codecs.Writer writer, Ros1Dsr_msgsSetStiffnessxRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.stx;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        byte part1 = value.ref;
        writer.integer(part1, 1, true);
        double part2 = value.time;
        writer.f64(part2);
    }

    private static Ros1Dsr_msgsSetStiffnessxRequest readRos1Dsr_msgsSetStiffnessxRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetStiffnessxRequest value = new Ros1Dsr_msgsSetStiffnessxRequest();
        value.stx = new double[6];
        for(int i = 0; i < value.stx.length; ++i)
            value.stx[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsSetStiffnessxResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetStiffnessxResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_41ae59cb41184a6c167db14ac58ef80966c500fb31417b21900e42d1cb9a4549";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetStiffnessxResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetStiffnessxResponse> CODEC = new Codec<Ros1Dsr_msgsSetStiffnessxResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetStiffnessxResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetStiffnessxResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetStiffnessxResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetStiffnessxResponse value = readRos1Dsr_msgsSetStiffnessxResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetStiffnessxResponse(Codecs.Writer writer, Ros1Dsr_msgsSetStiffnessxResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetStiffnessxResponse readRos1Dsr_msgsSetStiffnessxResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetStiffnessxResponse value = new Ros1Dsr_msgsSetStiffnessxResponse();
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

    public static final class Ros1Dsr_msgsSetToolShapeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetToolShapeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1eb4f1d4e9fea4e9f5324fc50acd744365940912055fbc359ecc4748b1ddeeea";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros1Dsr_msgsSetToolShapeRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetToolShapeRequest> CODEC = new Codec<Ros1Dsr_msgsSetToolShapeRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetToolShapeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetToolShapeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetToolShapeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetToolShapeRequest value = readRos1Dsr_msgsSetToolShapeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetToolShapeRequest(Codecs.Writer writer, Ros1Dsr_msgsSetToolShapeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros1Dsr_msgsSetToolShapeRequest readRos1Dsr_msgsSetToolShapeRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetToolShapeRequest value = new Ros1Dsr_msgsSetToolShapeRequest();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros1Dsr_msgsSetToolShapeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetToolShapeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7d18f475fd4230c7f15ddc10401373d296cfaef1d525a26e983cda4c8b2b5e70";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetToolShapeResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetToolShapeResponse> CODEC = new Codec<Ros1Dsr_msgsSetToolShapeResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetToolShapeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetToolShapeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetToolShapeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetToolShapeResponse value = readRos1Dsr_msgsSetToolShapeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetToolShapeResponse(Codecs.Writer writer, Ros1Dsr_msgsSetToolShapeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetToolShapeResponse readRos1Dsr_msgsSetToolShapeResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetToolShapeResponse value = new Ros1Dsr_msgsSetToolShapeResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetUserCartCoord1Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetUserCartCoord1Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f54a10c9fd4687670111ba2b3d0a6bceea638fc71da62d59b81a01c59dd457b3";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros1Dsr_msgsSetUserCartCoord1Request()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetUserCartCoord1Request> CODEC = new Codec<Ros1Dsr_msgsSetUserCartCoord1Request>() {
            public byte[] encode(Ros1Dsr_msgsSetUserCartCoord1Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetUserCartCoord1Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetUserCartCoord1Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetUserCartCoord1Request value = readRos1Dsr_msgsSetUserCartCoord1Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetUserCartCoord1Request(Codecs.Writer writer, Ros1Dsr_msgsSetUserCartCoord1Request value)
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
        byte part1 = value.ref;
        writer.integer(part1, 1, true);
    }

    private static Ros1Dsr_msgsSetUserCartCoord1Request readRos1Dsr_msgsSetUserCartCoord1Request(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetUserCartCoord1Request value = new Ros1Dsr_msgsSetUserCartCoord1Request();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetUserCartCoord1Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetUserCartCoord1Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c8749fa152e4396e977e110a901dfc791a26b54d1f282752039a20c0c4531f53";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte id = 0;
        public boolean success = false;

        public Ros1Dsr_msgsSetUserCartCoord1Response()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetUserCartCoord1Response> CODEC = new Codec<Ros1Dsr_msgsSetUserCartCoord1Response>() {
            public byte[] encode(Ros1Dsr_msgsSetUserCartCoord1Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetUserCartCoord1Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetUserCartCoord1Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetUserCartCoord1Response value = readRos1Dsr_msgsSetUserCartCoord1Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetUserCartCoord1Response(Codecs.Writer writer, Ros1Dsr_msgsSetUserCartCoord1Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetUserCartCoord1Response readRos1Dsr_msgsSetUserCartCoord1Response(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetUserCartCoord1Response value = new Ros1Dsr_msgsSetUserCartCoord1Response();
        value.id = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetUserCartCoord2Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetUserCartCoord2Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_581a8164d6593be7422364300fabd854bc3b438726a3182cd388be5c629dc235";
        public static final int MIN_WIRE_BYTES = 193, MAX_WIRE_BYTES = 193;
        public double[] x1 = new double[6];
        public double[] x2 = new double[6];
        public double[] x3 = new double[6];
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros1Dsr_msgsSetUserCartCoord2Request()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetUserCartCoord2Request> CODEC = new Codec<Ros1Dsr_msgsSetUserCartCoord2Request>() {
            public byte[] encode(Ros1Dsr_msgsSetUserCartCoord2Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetUserCartCoord2Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetUserCartCoord2Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetUserCartCoord2Request value = readRos1Dsr_msgsSetUserCartCoord2Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetUserCartCoord2Request(Codecs.Writer writer, Ros1Dsr_msgsSetUserCartCoord2Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.x1;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.x2;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.x3;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.pos;
        if(part3 == null || part3.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        byte part4 = value.ref;
        writer.integer(part4, 1, true);
    }

    private static Ros1Dsr_msgsSetUserCartCoord2Request readRos1Dsr_msgsSetUserCartCoord2Request(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetUserCartCoord2Request value = new Ros1Dsr_msgsSetUserCartCoord2Request();
        value.x1 = new double[6];
        for(int i = 0; i < value.x1.length; ++i)
            value.x1[i] = reader.f64();
        value.x2 = new double[6];
        for(int i = 0; i < value.x2.length; ++i)
            value.x2[i] = reader.f64();
        value.x3 = new double[6];
        for(int i = 0; i < value.x3.length; ++i)
            value.x3[i] = reader.f64();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetUserCartCoord2Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetUserCartCoord2Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_01ce185d3b4585bfdb9187c7b3cf628874da91fdd8c289a5b72d7bcb0e84880d";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte id = 0;
        public boolean success = false;

        public Ros1Dsr_msgsSetUserCartCoord2Response()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetUserCartCoord2Response> CODEC = new Codec<Ros1Dsr_msgsSetUserCartCoord2Response>() {
            public byte[] encode(Ros1Dsr_msgsSetUserCartCoord2Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetUserCartCoord2Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetUserCartCoord2Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetUserCartCoord2Response value = readRos1Dsr_msgsSetUserCartCoord2Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetUserCartCoord2Response(Codecs.Writer writer, Ros1Dsr_msgsSetUserCartCoord2Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetUserCartCoord2Response readRos1Dsr_msgsSetUserCartCoord2Response(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetUserCartCoord2Response value = new Ros1Dsr_msgsSetUserCartCoord2Response();
        value.id = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetUserCartCoord3Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetUserCartCoord3Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a8a9aa12ff690f1a26223248b0c84537b7fe23ffa0af33be0ef0c99092f78c3c";
        public static final int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 97;
        public double[] u1 = new double[3];
        public double[] v1 = new double[3];
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros1Dsr_msgsSetUserCartCoord3Request()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetUserCartCoord3Request> CODEC = new Codec<Ros1Dsr_msgsSetUserCartCoord3Request>() {
            public byte[] encode(Ros1Dsr_msgsSetUserCartCoord3Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetUserCartCoord3Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetUserCartCoord3Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetUserCartCoord3Request value = readRos1Dsr_msgsSetUserCartCoord3Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetUserCartCoord3Request(Codecs.Writer writer, Ros1Dsr_msgsSetUserCartCoord3Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.u1;
        if(part0 == null || part0.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.v1;
        if(part1 == null || part1.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.pos;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        byte part3 = value.ref;
        writer.integer(part3, 1, true);
    }

    private static Ros1Dsr_msgsSetUserCartCoord3Request readRos1Dsr_msgsSetUserCartCoord3Request(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetUserCartCoord3Request value = new Ros1Dsr_msgsSetUserCartCoord3Request();
        value.u1 = new double[3];
        for(int i = 0; i < value.u1.length; ++i)
            value.u1[i] = reader.f64();
        value.v1 = new double[3];
        for(int i = 0; i < value.v1.length; ++i)
            value.v1[i] = reader.f64();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsSetUserCartCoord3Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetUserCartCoord3Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9409ea43f5b28fc6aa7c1089c69e828edda3440a50e1c35b5f8b8ca600d11fd1";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte id = 0;
        public boolean success = false;

        public Ros1Dsr_msgsSetUserCartCoord3Response()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetUserCartCoord3Response> CODEC = new Codec<Ros1Dsr_msgsSetUserCartCoord3Response>() {
            public byte[] encode(Ros1Dsr_msgsSetUserCartCoord3Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetUserCartCoord3Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetUserCartCoord3Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetUserCartCoord3Response value = readRos1Dsr_msgsSetUserCartCoord3Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetUserCartCoord3Response(Codecs.Writer writer, Ros1Dsr_msgsSetUserCartCoord3Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetUserCartCoord3Response readRos1Dsr_msgsSetUserCartCoord3Response(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetUserCartCoord3Response value = new Ros1Dsr_msgsSetUserCartCoord3Response();
        value.id = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetVelJRTRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetVelJRTRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bde411c75906468cfbbd4a3da157be4c66755a4e2c73e5db0c87eb5414a40768";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] vel = new double[6];

        public Ros1Dsr_msgsSetVelJRTRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetVelJRTRequest> CODEC = new Codec<Ros1Dsr_msgsSetVelJRTRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetVelJRTRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetVelJRTRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetVelJRTRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetVelJRTRequest value = readRos1Dsr_msgsSetVelJRTRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetVelJRTRequest(Codecs.Writer writer, Ros1Dsr_msgsSetVelJRTRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.vel;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Dsr_msgsSetVelJRTRequest readRos1Dsr_msgsSetVelJRTRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetVelJRTRequest value = new Ros1Dsr_msgsSetVelJRTRequest();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsSetVelJRTResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetVelJRTResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2e671f1ce71584ee764eb88431dc883a1759312126cc722e6abb91718eb4cd3f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetVelJRTResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetVelJRTResponse> CODEC = new Codec<Ros1Dsr_msgsSetVelJRTResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetVelJRTResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetVelJRTResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetVelJRTResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetVelJRTResponse value = readRos1Dsr_msgsSetVelJRTResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetVelJRTResponse(Codecs.Writer writer, Ros1Dsr_msgsSetVelJRTResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetVelJRTResponse readRos1Dsr_msgsSetVelJRTResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetVelJRTResponse value = new Ros1Dsr_msgsSetVelJRTResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSetVelXRTRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetVelXRTRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_62043248325fe8c561c26c914c702a17469c3e020542760f40dab518190a29e8";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public double trans = 0;
        public double rotation = 0;

        public Ros1Dsr_msgsSetVelXRTRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetVelXRTRequest> CODEC = new Codec<Ros1Dsr_msgsSetVelXRTRequest>() {
            public byte[] encode(Ros1Dsr_msgsSetVelXRTRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetVelXRTRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetVelXRTRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetVelXRTRequest value = readRos1Dsr_msgsSetVelXRTRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetVelXRTRequest(Codecs.Writer writer, Ros1Dsr_msgsSetVelXRTRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.trans;
        writer.f64(part0);
        double part1 = value.rotation;
        writer.f64(part1);
    }

    private static Ros1Dsr_msgsSetVelXRTRequest readRos1Dsr_msgsSetVelXRTRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetVelXRTRequest value = new Ros1Dsr_msgsSetVelXRTRequest();
        value.trans = reader.f64();
        value.rotation = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsSetVelXRTResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SetVelXRTResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_88fa186a19c4591d69e31ae18a8121fa28beec749c78c6c3ad92885d95947119";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsSetVelXRTResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsSetVelXRTResponse> CODEC = new Codec<Ros1Dsr_msgsSetVelXRTResponse>() {
            public byte[] encode(Ros1Dsr_msgsSetVelXRTResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSetVelXRTResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSetVelXRTResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSetVelXRTResponse value = readRos1Dsr_msgsSetVelXRTResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSetVelXRTResponse(Codecs.Writer writer, Ros1Dsr_msgsSetVelXRTResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsSetVelXRTResponse readRos1Dsr_msgsSetVelXRTResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSetVelXRTResponse value = new Ros1Dsr_msgsSetVelXRTResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsSpeedJRTStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SpeedJRTStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c99c5b844f12da3d0a2b4d1f44e88dbedc66be70a4576def8bb59593d4c3a780";
        public static final int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros1Dsr_msgsSpeedJRTStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsSpeedJRTStream> CODEC = new Codec<Ros1Dsr_msgsSpeedJRTStream>() {
            public byte[] encode(Ros1Dsr_msgsSpeedJRTStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSpeedJRTStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSpeedJRTStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSpeedJRTStream value = readRos1Dsr_msgsSpeedJRTStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSpeedJRTStream(Codecs.Writer writer, Ros1Dsr_msgsSpeedJRTStream value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.vel;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.acc;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double part2 = value.time;
        writer.f64(part2);
    }

    private static Ros1Dsr_msgsSpeedJRTStream readRos1Dsr_msgsSpeedJRTStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSpeedJRTStream value = new Ros1Dsr_msgsSpeedJRTStream();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsSpeedJStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SpeedJStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7042ec2c204507e699747702d4e22a4eb704b9ca077ec270311196f779d2532f";
        public static final int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros1Dsr_msgsSpeedJStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsSpeedJStream> CODEC = new Codec<Ros1Dsr_msgsSpeedJStream>() {
            public byte[] encode(Ros1Dsr_msgsSpeedJStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSpeedJStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSpeedJStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSpeedJStream value = readRos1Dsr_msgsSpeedJStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSpeedJStream(Codecs.Writer writer, Ros1Dsr_msgsSpeedJStream value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.vel;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.acc;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double part2 = value.time;
        writer.f64(part2);
    }

    private static Ros1Dsr_msgsSpeedJStream readRos1Dsr_msgsSpeedJStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSpeedJStream value = new Ros1Dsr_msgsSpeedJStream();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsSpeedLRTStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SpeedLRTStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2f95bdb3b90ca295355faa1667221774ba1932dd50fa9e87d05cc16168a664cc";
        public static final int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros1Dsr_msgsSpeedLRTStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsSpeedLRTStream> CODEC = new Codec<Ros1Dsr_msgsSpeedLRTStream>() {
            public byte[] encode(Ros1Dsr_msgsSpeedLRTStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSpeedLRTStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSpeedLRTStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSpeedLRTStream value = readRos1Dsr_msgsSpeedLRTStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSpeedLRTStream(Codecs.Writer writer, Ros1Dsr_msgsSpeedLRTStream value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.vel;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.acc;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double part2 = value.time;
        writer.f64(part2);
    }

    private static Ros1Dsr_msgsSpeedLRTStream readRos1Dsr_msgsSpeedLRTStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSpeedLRTStream value = new Ros1Dsr_msgsSpeedLRTStream();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsSpeedLStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/SpeedLStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9f6f75583bddd6dc3e6bb3b79fbe66db3a1076c58a48e887ebcf88e8587058eb";
        public static final int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 72;
        public double[] vel = new double[6];
        public double[] acc = new double[2];
        public double time = 0;

        public Ros1Dsr_msgsSpeedLStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsSpeedLStream> CODEC = new Codec<Ros1Dsr_msgsSpeedLStream>() {
            public byte[] encode(Ros1Dsr_msgsSpeedLStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsSpeedLStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsSpeedLStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsSpeedLStream value = readRos1Dsr_msgsSpeedLStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsSpeedLStream(Codecs.Writer writer, Ros1Dsr_msgsSpeedLStream value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.vel;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.acc;
        if(part1 == null || part1.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double part2 = value.time;
        writer.f64(part2);
    }

    private static Ros1Dsr_msgsSpeedLStream readRos1Dsr_msgsSpeedLStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsSpeedLStream value = new Ros1Dsr_msgsSpeedLStream();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[2];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsStartRTControlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/StartRTControlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_37b1255c34ebbba47ef2cca802168237a90aa2b52032fea64efa4517332a85ac";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsStartRTControlRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsStartRTControlRequest> CODEC = new Codec<Ros1Dsr_msgsStartRTControlRequest>() {
            public byte[] encode(Ros1Dsr_msgsStartRTControlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsStartRTControlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsStartRTControlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsStartRTControlRequest value = readRos1Dsr_msgsStartRTControlRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsStartRTControlRequest(Codecs.Writer writer, Ros1Dsr_msgsStartRTControlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsStartRTControlRequest readRos1Dsr_msgsStartRTControlRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsStartRTControlRequest value = new Ros1Dsr_msgsStartRTControlRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsStartRTControlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/StartRTControlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0f2be11b260cd9286c55ac65dc7f675701ba130eb2d81c2c8fba592c605216de";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsStartRTControlResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsStartRTControlResponse> CODEC = new Codec<Ros1Dsr_msgsStartRTControlResponse>() {
            public byte[] encode(Ros1Dsr_msgsStartRTControlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsStartRTControlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsStartRTControlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsStartRTControlResponse value = readRos1Dsr_msgsStartRTControlResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsStartRTControlResponse(Codecs.Writer writer, Ros1Dsr_msgsStartRTControlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsStartRTControlResponse readRos1Dsr_msgsStartRTControlResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsStartRTControlResponse value = new Ros1Dsr_msgsStartRTControlResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsStopRTControlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/StopRTControlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1163e97603c5de79aed634642587128d6ca9d0a64d5eef1e73502c4479e1c6ce";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros1Dsr_msgsStopRTControlRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsStopRTControlRequest> CODEC = new Codec<Ros1Dsr_msgsStopRTControlRequest>() {
            public byte[] encode(Ros1Dsr_msgsStopRTControlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsStopRTControlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsStopRTControlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsStopRTControlRequest value = readRos1Dsr_msgsStopRTControlRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsStopRTControlRequest(Codecs.Writer writer, Ros1Dsr_msgsStopRTControlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros1Dsr_msgsStopRTControlRequest readRos1Dsr_msgsStopRTControlRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsStopRTControlRequest value = new Ros1Dsr_msgsStopRTControlRequest();
        return value;
    }

    public static final class Ros1Dsr_msgsStopRTControlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/StopRTControlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_49ed2b792c0872d3fce723e09b2bb01fad52370f7674f438d2c0fc99422ffe62";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsStopRTControlResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsStopRTControlResponse> CODEC = new Codec<Ros1Dsr_msgsStopRTControlResponse>() {
            public byte[] encode(Ros1Dsr_msgsStopRTControlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsStopRTControlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsStopRTControlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsStopRTControlResponse value = readRos1Dsr_msgsStopRTControlResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsStopRTControlResponse(Codecs.Writer writer, Ros1Dsr_msgsStopRTControlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsStopRTControlResponse readRos1Dsr_msgsStopRTControlResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsStopRTControlResponse value = new Ros1Dsr_msgsStopRTControlResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsTaskComplianceCtrlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/TaskComplianceCtrlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_05fa479a787001504e982b77fd61e6a3e6bb2a7cbc34ff900fa12634d8842671";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;
        public double[] stx = new double[6];
        public byte ref = 0;
        public double time = 0;

        public Ros1Dsr_msgsTaskComplianceCtrlRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsTaskComplianceCtrlRequest> CODEC = new Codec<Ros1Dsr_msgsTaskComplianceCtrlRequest>() {
            public byte[] encode(Ros1Dsr_msgsTaskComplianceCtrlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsTaskComplianceCtrlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsTaskComplianceCtrlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsTaskComplianceCtrlRequest value = readRos1Dsr_msgsTaskComplianceCtrlRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsTaskComplianceCtrlRequest(Codecs.Writer writer, Ros1Dsr_msgsTaskComplianceCtrlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.stx;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        byte part1 = value.ref;
        writer.integer(part1, 1, true);
        double part2 = value.time;
        writer.f64(part2);
    }

    private static Ros1Dsr_msgsTaskComplianceCtrlRequest readRos1Dsr_msgsTaskComplianceCtrlRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsTaskComplianceCtrlRequest value = new Ros1Dsr_msgsTaskComplianceCtrlRequest();
        value.stx = new double[6];
        for(int i = 0; i < value.stx.length; ++i)
            value.stx[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsTaskComplianceCtrlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/TaskComplianceCtrlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_29c513521ec8c6ac5c39bf1cb12d8db19a025a2036fb0398633b544d53c39625";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsTaskComplianceCtrlResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsTaskComplianceCtrlResponse> CODEC = new Codec<Ros1Dsr_msgsTaskComplianceCtrlResponse>() {
            public byte[] encode(Ros1Dsr_msgsTaskComplianceCtrlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsTaskComplianceCtrlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsTaskComplianceCtrlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsTaskComplianceCtrlResponse value = readRos1Dsr_msgsTaskComplianceCtrlResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsTaskComplianceCtrlResponse(Codecs.Writer writer, Ros1Dsr_msgsTaskComplianceCtrlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsTaskComplianceCtrlResponse readRos1Dsr_msgsTaskComplianceCtrlResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsTaskComplianceCtrlResponse value = new Ros1Dsr_msgsTaskComplianceCtrlResponse();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsTorqueRTStream
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/TorqueRTStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6c6f5462dec4f5990ef5cd6d64ffde89f092d590498dc97cf347caa06635d545";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        public double[] tor = new double[6];
        public double time = 0;

        public Ros1Dsr_msgsTorqueRTStream()
        {
        }

        public static final Codec<Ros1Dsr_msgsTorqueRTStream> CODEC = new Codec<Ros1Dsr_msgsTorqueRTStream>() {
            public byte[] encode(Ros1Dsr_msgsTorqueRTStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsTorqueRTStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsTorqueRTStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsTorqueRTStream value = readRos1Dsr_msgsTorqueRTStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsTorqueRTStream(Codecs.Writer writer, Ros1Dsr_msgsTorqueRTStream value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.tor;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double part1 = value.time;
        writer.f64(part1);
    }

    private static Ros1Dsr_msgsTorqueRTStream readRos1Dsr_msgsTorqueRTStream(Codecs.Reader reader)
    {
        Ros1Dsr_msgsTorqueRTStream value = new Ros1Dsr_msgsTorqueRTStream();
        value.tor = new double[6];
        for(int i = 0; i < value.tor.length; ++i)
            value.tor[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsTransRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/TransRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6724ac7a62b77d6d6e52145306c4ac5a0e05221a636fb5cd0048e185ddcee273";
        public static final int MIN_WIRE_BYTES = 98, MAX_WIRE_BYTES = 98;
        public double[] pos = new double[6];
        public double[] delta = new double[6];
        public byte ref = 0;
        public byte ref_out = 0;

        public Ros1Dsr_msgsTransRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsTransRequest> CODEC = new Codec<Ros1Dsr_msgsTransRequest>() {
            public byte[] encode(Ros1Dsr_msgsTransRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsTransRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsTransRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsTransRequest value = readRos1Dsr_msgsTransRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsTransRequest(Codecs.Writer writer, Ros1Dsr_msgsTransRequest value)
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
        double[] part1 = value.delta;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        byte part2 = value.ref;
        writer.integer(part2, 1, true);
        byte part3 = value.ref_out;
        writer.integer(part3, 1, true);
    }

    private static Ros1Dsr_msgsTransRequest readRos1Dsr_msgsTransRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsTransRequest value = new Ros1Dsr_msgsTransRequest();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.delta = new double[6];
        for(int i = 0; i < value.delta.length; ++i)
            value.delta[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.ref_out = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros1Dsr_msgsTransResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/TransResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a36593de3d68fc991b3cf230f98c28f1f1d9fa0fc72e3160a5f005d9cb6105e5";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] trans_pos = new double[6];
        public boolean success = false;

        public Ros1Dsr_msgsTransResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsTransResponse> CODEC = new Codec<Ros1Dsr_msgsTransResponse>() {
            public byte[] encode(Ros1Dsr_msgsTransResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsTransResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsTransResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsTransResponse value = readRos1Dsr_msgsTransResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsTransResponse(Codecs.Writer writer, Ros1Dsr_msgsTransResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.trans_pos;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsTransResponse readRos1Dsr_msgsTransResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsTransResponse value = new Ros1Dsr_msgsTransResponse();
        value.trans_pos = new double[6];
        for(int i = 0; i < value.trans_pos.length; ++i)
            value.trans_pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros1Dsr_msgsWriteDataRTRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/WriteDataRTRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_300128a7619804166443a58c387f127d670f91724c8f642fd5b0884c317db73e";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;
        public double[] external_force_torque = new double[6];
        public int external_digital_input = 0;
        public int external_digital_output = 0;
        public double[] external_analog_input = new double[6];
        public double[] external_analog_output = new double[6];

        public Ros1Dsr_msgsWriteDataRTRequest()
        {
        }

        public static final Codec<Ros1Dsr_msgsWriteDataRTRequest> CODEC = new Codec<Ros1Dsr_msgsWriteDataRTRequest>() {
            public byte[] encode(Ros1Dsr_msgsWriteDataRTRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsWriteDataRTRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsWriteDataRTRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsWriteDataRTRequest value = readRos1Dsr_msgsWriteDataRTRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsWriteDataRTRequest(Codecs.Writer writer, Ros1Dsr_msgsWriteDataRTRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.external_force_torque;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        int part1 = value.external_digital_input;
        writer.integer(part1, 4, true);
        int part2 = value.external_digital_output;
        writer.integer(part2, 4, true);
        double[] part3 = value.external_analog_input;
        if(part3 == null || part3.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.external_analog_output;
        if(part4 == null || part4.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
    }

    private static Ros1Dsr_msgsWriteDataRTRequest readRos1Dsr_msgsWriteDataRTRequest(Codecs.Reader reader)
    {
        Ros1Dsr_msgsWriteDataRTRequest value = new Ros1Dsr_msgsWriteDataRTRequest();
        value.external_force_torque = new double[6];
        for(int i = 0; i < value.external_force_torque.length; ++i)
            value.external_force_torque[i] = reader.f64();
        value.external_digital_input = (int)reader.integer(4, true);
        value.external_digital_output = (int)reader.integer(4, true);
        value.external_analog_input = new double[6];
        for(int i = 0; i < value.external_analog_input.length; ++i)
            value.external_analog_input[i] = reader.f64();
        value.external_analog_output = new double[6];
        for(int i = 0; i < value.external_analog_output.length; ++i)
            value.external_analog_output[i] = reader.f64();
        return value;
    }

    public static final class Ros1Dsr_msgsWriteDataRTResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "dsr_msgs/WriteDataRTResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f1d97ee43375db129025b3c587979ca7ffacb06c66d54d829c5590c7c8943d5c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros1Dsr_msgsWriteDataRTResponse()
        {
        }

        public static final Codec<Ros1Dsr_msgsWriteDataRTResponse> CODEC = new Codec<Ros1Dsr_msgsWriteDataRTResponse>() {
            public byte[] encode(Ros1Dsr_msgsWriteDataRTResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Dsr_msgsWriteDataRTResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Dsr_msgsWriteDataRTResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Dsr_msgsWriteDataRTResponse value = readRos1Dsr_msgsWriteDataRTResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Dsr_msgsWriteDataRTResponse(Codecs.Writer writer, Ros1Dsr_msgsWriteDataRTResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Dsr_msgsWriteDataRTResponse readRos1Dsr_msgsWriteDataRTResponse(Codecs.Reader reader)
    {
        Ros1Dsr_msgsWriteDataRTResponse value = new Ros1Dsr_msgsWriteDataRTResponse();
        value.success = readBool(reader);
        return value;
    }
}
