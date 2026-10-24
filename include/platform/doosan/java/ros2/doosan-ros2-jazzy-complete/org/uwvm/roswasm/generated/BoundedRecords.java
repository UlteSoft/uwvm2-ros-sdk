/**
 * @file BoundedRecords.java
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros2-jazzy-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

package org.uwvm.doosan.doosan_ros2_jazzy_complete;

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

    public static final class Ros2Dsr_msgs2ActionJogH2r_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/action/JogH2r_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_06245e203e3de9eab0c11ee37506291cbdfc285518b044d9874412a55a948031";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;
        public byte jog_axis = 0;
        public byte move_reference = 0;
        public double velocity = 0;

        public Ros2Dsr_msgs2ActionJogH2r_Goal()
        {
        }

        public static final Codec<Ros2Dsr_msgs2ActionJogH2r_Goal> CODEC = new Codec<Ros2Dsr_msgs2ActionJogH2r_Goal>() {
            public byte[] encode(Ros2Dsr_msgs2ActionJogH2r_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2ActionJogH2r_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2ActionJogH2r_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2ActionJogH2r_Goal value = readRos2Dsr_msgs2ActionJogH2r_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2ActionJogH2r_Goal(Codecs.Writer writer, Ros2Dsr_msgs2ActionJogH2r_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.jog_axis;
        writer.integer(part0, 1, true);
        byte part1 = value.move_reference;
        writer.integer(part1, 1, true);
        double part2 = value.velocity;
        writer.f64(part2);
    }

    private static Ros2Dsr_msgs2ActionJogH2r_Goal readRos2Dsr_msgs2ActionJogH2r_Goal(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2ActionJogH2r_Goal value = new Ros2Dsr_msgs2ActionJogH2r_Goal();
        value.jog_axis = (byte)reader.integer(1, true);
        value.move_reference = (byte)reader.integer(1, true);
        value.velocity = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2ActionJogH2r_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/action/JogH2r_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_79b337d3246b2761333d4d9538c137e41a9b795b9ae0fcf8a3a95f9919cd9f32";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2ActionJogH2r_Result()
        {
        }

        public static final Codec<Ros2Dsr_msgs2ActionJogH2r_Result> CODEC = new Codec<Ros2Dsr_msgs2ActionJogH2r_Result>() {
            public byte[] encode(Ros2Dsr_msgs2ActionJogH2r_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2ActionJogH2r_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2ActionJogH2r_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2ActionJogH2r_Result value = readRos2Dsr_msgs2ActionJogH2r_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2ActionJogH2r_Result(Codecs.Writer writer, Ros2Dsr_msgs2ActionJogH2r_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2ActionJogH2r_Result readRos2Dsr_msgs2ActionJogH2r_Result(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2ActionJogH2r_Result value = new Ros2Dsr_msgs2ActionJogH2r_Result();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2ActionJogH2r_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/action/JogH2r_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ec4a775b8e986378d1064390512a267cc4ee1a43489b64ab3faed57a88184c8b";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros2Dsr_msgs2ActionJogH2r_Feedback()
        {
        }

        public static final Codec<Ros2Dsr_msgs2ActionJogH2r_Feedback> CODEC = new Codec<Ros2Dsr_msgs2ActionJogH2r_Feedback>() {
            public byte[] encode(Ros2Dsr_msgs2ActionJogH2r_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2ActionJogH2r_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2ActionJogH2r_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2ActionJogH2r_Feedback value = readRos2Dsr_msgs2ActionJogH2r_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2ActionJogH2r_Feedback(Codecs.Writer writer, Ros2Dsr_msgs2ActionJogH2r_Feedback value)
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

    private static Ros2Dsr_msgs2ActionJogH2r_Feedback readRos2Dsr_msgs2ActionJogH2r_Feedback(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2ActionJogH2r_Feedback value = new Ros2Dsr_msgs2ActionJogH2r_Feedback();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2ActionMovejH2r_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/action/MovejH2r_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1f500b1d55e67e54b564236307f6761a74d79887ab35c4733cd741f480d7d0dc";
        public static final int MIN_WIRE_BYTES = 144, MAX_WIRE_BYTES = 144;
        public double[] target_pos = new double[6];
        public double[] target_vel = new double[6];
        public double[] target_acc = new double[6];

        public Ros2Dsr_msgs2ActionMovejH2r_Goal()
        {
        }

        public static final Codec<Ros2Dsr_msgs2ActionMovejH2r_Goal> CODEC = new Codec<Ros2Dsr_msgs2ActionMovejH2r_Goal>() {
            public byte[] encode(Ros2Dsr_msgs2ActionMovejH2r_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2ActionMovejH2r_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2ActionMovejH2r_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2ActionMovejH2r_Goal value = readRos2Dsr_msgs2ActionMovejH2r_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2ActionMovejH2r_Goal(Codecs.Writer writer, Ros2Dsr_msgs2ActionMovejH2r_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.target_pos;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.target_vel;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.target_acc;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros2Dsr_msgs2ActionMovejH2r_Goal readRos2Dsr_msgs2ActionMovejH2r_Goal(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2ActionMovejH2r_Goal value = new Ros2Dsr_msgs2ActionMovejH2r_Goal();
        value.target_pos = new double[6];
        for(int i = 0; i < value.target_pos.length; ++i)
            value.target_pos[i] = reader.f64();
        value.target_vel = new double[6];
        for(int i = 0; i < value.target_vel.length; ++i)
            value.target_vel[i] = reader.f64();
        value.target_acc = new double[6];
        for(int i = 0; i < value.target_acc.length; ++i)
            value.target_acc[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2ActionMovejH2r_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/action/MovejH2r_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9055b94a2148571ab9cf3edd50625e2c49697bcab7827d3d6520281e3af3fc51";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2ActionMovejH2r_Result()
        {
        }

        public static final Codec<Ros2Dsr_msgs2ActionMovejH2r_Result> CODEC = new Codec<Ros2Dsr_msgs2ActionMovejH2r_Result>() {
            public byte[] encode(Ros2Dsr_msgs2ActionMovejH2r_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2ActionMovejH2r_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2ActionMovejH2r_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2ActionMovejH2r_Result value = readRos2Dsr_msgs2ActionMovejH2r_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2ActionMovejH2r_Result(Codecs.Writer writer, Ros2Dsr_msgs2ActionMovejH2r_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2ActionMovejH2r_Result readRos2Dsr_msgs2ActionMovejH2r_Result(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2ActionMovejH2r_Result value = new Ros2Dsr_msgs2ActionMovejH2r_Result();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2ActionMovejH2r_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/action/MovejH2r_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a300a02e724a0d402966787cd8ce0fc3bef26d8d2e53157d2a29cad55406fd9e";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros2Dsr_msgs2ActionMovejH2r_Feedback()
        {
        }

        public static final Codec<Ros2Dsr_msgs2ActionMovejH2r_Feedback> CODEC = new Codec<Ros2Dsr_msgs2ActionMovejH2r_Feedback>() {
            public byte[] encode(Ros2Dsr_msgs2ActionMovejH2r_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2ActionMovejH2r_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2ActionMovejH2r_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2ActionMovejH2r_Feedback value = readRos2Dsr_msgs2ActionMovejH2r_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2ActionMovejH2r_Feedback(Codecs.Writer writer, Ros2Dsr_msgs2ActionMovejH2r_Feedback value)
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

    private static Ros2Dsr_msgs2ActionMovejH2r_Feedback readRos2Dsr_msgs2ActionMovejH2r_Feedback(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2ActionMovejH2r_Feedback value = new Ros2Dsr_msgs2ActionMovejH2r_Feedback();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2ActionMovelH2r_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/action/MovelH2r_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e1e2a6cd46247b347002d41f062949ab869c6bd84c305cd951cb5fb32ffe7d9c";
        public static final int MIN_WIRE_BYTES = 80, MAX_WIRE_BYTES = 80;
        public double[] target_pos = new double[6];
        public double[] target_vel = new double[2];
        public double[] target_acc = new double[2];

        public Ros2Dsr_msgs2ActionMovelH2r_Goal()
        {
        }

        public static final Codec<Ros2Dsr_msgs2ActionMovelH2r_Goal> CODEC = new Codec<Ros2Dsr_msgs2ActionMovelH2r_Goal>() {
            public byte[] encode(Ros2Dsr_msgs2ActionMovelH2r_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2ActionMovelH2r_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2ActionMovelH2r_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2ActionMovelH2r_Goal value = readRos2Dsr_msgs2ActionMovelH2r_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2ActionMovelH2r_Goal(Codecs.Writer writer, Ros2Dsr_msgs2ActionMovelH2r_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.target_pos;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.target_vel;
        if(part1 == null || part1.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.target_acc;
        if(part2 == null || part2.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros2Dsr_msgs2ActionMovelH2r_Goal readRos2Dsr_msgs2ActionMovelH2r_Goal(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2ActionMovelH2r_Goal value = new Ros2Dsr_msgs2ActionMovelH2r_Goal();
        value.target_pos = new double[6];
        for(int i = 0; i < value.target_pos.length; ++i)
            value.target_pos[i] = reader.f64();
        value.target_vel = new double[2];
        for(int i = 0; i < value.target_vel.length; ++i)
            value.target_vel[i] = reader.f64();
        value.target_acc = new double[2];
        for(int i = 0; i < value.target_acc.length; ++i)
            value.target_acc[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2ActionMovelH2r_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/action/MovelH2r_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0daf4123fb4d7b06d11b3d47f1b5881357aa840e37e2adc84e46dd97d2c062dd";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2ActionMovelH2r_Result()
        {
        }

        public static final Codec<Ros2Dsr_msgs2ActionMovelH2r_Result> CODEC = new Codec<Ros2Dsr_msgs2ActionMovelH2r_Result>() {
            public byte[] encode(Ros2Dsr_msgs2ActionMovelH2r_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2ActionMovelH2r_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2ActionMovelH2r_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2ActionMovelH2r_Result value = readRos2Dsr_msgs2ActionMovelH2r_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2ActionMovelH2r_Result(Codecs.Writer writer, Ros2Dsr_msgs2ActionMovelH2r_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2ActionMovelH2r_Result readRos2Dsr_msgs2ActionMovelH2r_Result(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2ActionMovelH2r_Result value = new Ros2Dsr_msgs2ActionMovelH2r_Result();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2ActionMovelH2r_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/action/MovelH2r_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e67cb580a7c20e9f69813a44eeb8cce45cffc8292dbd895c210b3a46937e745a";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros2Dsr_msgs2ActionMovelH2r_Feedback()
        {
        }

        public static final Codec<Ros2Dsr_msgs2ActionMovelH2r_Feedback> CODEC = new Codec<Ros2Dsr_msgs2ActionMovelH2r_Feedback>() {
            public byte[] encode(Ros2Dsr_msgs2ActionMovelH2r_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2ActionMovelH2r_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2ActionMovelH2r_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2ActionMovelH2r_Feedback value = readRos2Dsr_msgs2ActionMovelH2r_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2ActionMovelH2r_Feedback(Codecs.Writer writer, Ros2Dsr_msgs2ActionMovelH2r_Feedback value)
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

    private static Ros2Dsr_msgs2ActionMovelH2r_Feedback readRos2Dsr_msgs2ActionMovelH2r_Feedback(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2ActionMovelH2r_Feedback value = new Ros2Dsr_msgs2ActionMovelH2r_Feedback();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgAlterMotionStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/AlterMotionStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_42cda028849d2f3c24dddf69907122eeaccc19ab595150b0c4bfa9a6c4b37200";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros2Dsr_msgs2MsgAlterMotionStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgAlterMotionStream> CODEC = new Codec<Ros2Dsr_msgs2MsgAlterMotionStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgAlterMotionStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgAlterMotionStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgAlterMotionStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgAlterMotionStream value = readRos2Dsr_msgs2MsgAlterMotionStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgAlterMotionStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgAlterMotionStream value)
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

    private static Ros2Dsr_msgs2MsgAlterMotionStream readRos2Dsr_msgs2MsgAlterMotionStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgAlterMotionStream value = new Ros2Dsr_msgs2MsgAlterMotionStream();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgJogMultiAxis
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/JogMultiAxis";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1abbca14f7ca912b0d1a3ff2eac2414268b78e10380d8eac9e231f79f26ce07e";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;
        public double[] jog_axis = new double[6];
        public byte move_reference = 0;
        public double speed = 0;

        public Ros2Dsr_msgs2MsgJogMultiAxis()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgJogMultiAxis> CODEC = new Codec<Ros2Dsr_msgs2MsgJogMultiAxis>() {
            public byte[] encode(Ros2Dsr_msgs2MsgJogMultiAxis value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgJogMultiAxis(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgJogMultiAxis decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgJogMultiAxis value = readRos2Dsr_msgs2MsgJogMultiAxis(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgJogMultiAxis(Codecs.Writer writer, Ros2Dsr_msgs2MsgJogMultiAxis value)
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

    private static Ros2Dsr_msgs2MsgJogMultiAxis readRos2Dsr_msgs2MsgJogMultiAxis(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgJogMultiAxis value = new Ros2Dsr_msgs2MsgJogMultiAxis();
        value.jog_axis = new double[6];
        for(int i = 0; i < value.jog_axis.length; ++i)
            value.jog_axis[i] = reader.f64();
        value.move_reference = (byte)reader.integer(1, true);
        value.speed = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgLogAlarm
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/LogAlarm";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d35d6f6098edff03d2568f14471db88ea998873ba4a04794750f7134825e2bfe";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;
        public int level = 0;
        public int group = 0;
        public int index = 0;
        public String[] param = new String[3];

        public Ros2Dsr_msgs2MsgLogAlarm()
        {
            for(int i = 0; i < 3; ++i)
                this.param[i] = "";
        }

        public static final Codec<Ros2Dsr_msgs2MsgLogAlarm> CODEC = new Codec<Ros2Dsr_msgs2MsgLogAlarm>() {
            public byte[] encode(Ros2Dsr_msgs2MsgLogAlarm value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgLogAlarm(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgLogAlarm decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgLogAlarm value = readRos2Dsr_msgs2MsgLogAlarm(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgLogAlarm(Codecs.Writer writer, Ros2Dsr_msgs2MsgLogAlarm value)
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

    private static Ros2Dsr_msgs2MsgLogAlarm readRos2Dsr_msgs2MsgLogAlarm(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgLogAlarm value = new Ros2Dsr_msgs2MsgLogAlarm();
        value.level = (int)reader.integer(4, true);
        value.group = (int)reader.integer(4, true);
        value.index = (int)reader.integer(4, true);
        value.param = new String[3];
        for(int i = 0; i < value.param.length; ++i)
            value.param[i] = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgModbusState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/ModbusState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b5648e70b313800a6b18e809d0950f53c538d2647ff67fd3884cce728f3be765";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        public String modbus_symbol = "";
        public int modbus_value = 0;

        public Ros2Dsr_msgs2MsgModbusState()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgModbusState> CODEC = new Codec<Ros2Dsr_msgs2MsgModbusState>() {
            public byte[] encode(Ros2Dsr_msgs2MsgModbusState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgModbusState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgModbusState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgModbusState value = readRos2Dsr_msgs2MsgModbusState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgModbusState(Codecs.Writer writer, Ros2Dsr_msgs2MsgModbusState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.modbus_symbol;
        writeText(writer, part0, 256);
        int part1 = value.modbus_value;
        writer.integer(part1, 4, true);
    }

    private static Ros2Dsr_msgs2MsgModbusState readRos2Dsr_msgs2MsgModbusState(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgModbusState value = new Ros2Dsr_msgs2MsgModbusState();
        value.modbus_symbol = readText(reader, 256);
        value.modbus_value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgRobotDisconnection
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/RobotDisconnection";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d686889739e672509dee7fc8538cddd634e536f392709b7bdcc0572c755c65c4";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2MsgRobotDisconnection()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgRobotDisconnection> CODEC = new Codec<Ros2Dsr_msgs2MsgRobotDisconnection>() {
            public byte[] encode(Ros2Dsr_msgs2MsgRobotDisconnection value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgRobotDisconnection(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgRobotDisconnection decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgRobotDisconnection value = readRos2Dsr_msgs2MsgRobotDisconnection(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgRobotDisconnection(Codecs.Writer writer, Ros2Dsr_msgs2MsgRobotDisconnection value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2MsgRobotDisconnection readRos2Dsr_msgs2MsgRobotDisconnection(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgRobotDisconnection value = new Ros2Dsr_msgs2MsgRobotDisconnection();
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgRobotError
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/RobotError";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5c628814ad82c181ce0eae34fe89fb384169bfecbdeed07bddb2318a4e3c5a67";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;
        public int level = 0;
        public int group = 0;
        public int code = 0;
        public String msg1 = "";
        public String msg2 = "";
        public String msg3 = "";

        public Ros2Dsr_msgs2MsgRobotError()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgRobotError> CODEC = new Codec<Ros2Dsr_msgs2MsgRobotError>() {
            public byte[] encode(Ros2Dsr_msgs2MsgRobotError value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgRobotError(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgRobotError decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgRobotError value = readRos2Dsr_msgs2MsgRobotError(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgRobotError(Codecs.Writer writer, Ros2Dsr_msgs2MsgRobotError value)
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

    private static Ros2Dsr_msgs2MsgRobotError readRos2Dsr_msgs2MsgRobotError(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgRobotError value = new Ros2Dsr_msgs2MsgRobotError();
        value.level = (int)reader.integer(4, true);
        value.group = (int)reader.integer(4, true);
        value.code = (int)reader.integer(4, true);
        value.msg1 = readText(reader, 256);
        value.msg2 = readText(reader, 256);
        value.msg3 = readText(reader, 256);
        return value;
    }

    public static final class Ros2Std_msgsMsgMultiArrayDimension
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/MultiArrayDimension";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_be0694d8fef4d71a5afd7072b14b9f246464e4c3a8dbbfb21ef22c32296c2f73";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 76;
        public String label = "";
        public long size = 0;
        public long stride = 0;

        public Ros2Std_msgsMsgMultiArrayDimension()
        {
        }

        public static final Codec<Ros2Std_msgsMsgMultiArrayDimension> CODEC = new Codec<Ros2Std_msgsMsgMultiArrayDimension>() {
            public byte[] encode(Ros2Std_msgsMsgMultiArrayDimension value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_msgsMsgMultiArrayDimension(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_msgsMsgMultiArrayDimension decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgMultiArrayDimension value = readRos2Std_msgsMsgMultiArrayDimension(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_msgsMsgMultiArrayDimension(Codecs.Writer writer, Ros2Std_msgsMsgMultiArrayDimension value)
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

    private static Ros2Std_msgsMsgMultiArrayDimension readRos2Std_msgsMsgMultiArrayDimension(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgMultiArrayDimension value = new Ros2Std_msgsMsgMultiArrayDimension();
        value.label = readText(reader, 64);
        value.size = reader.integer(4, false);
        value.stride = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Std_msgsMsgMultiArrayLayout
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/MultiArrayLayout";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d1b6f03846800e7c6672b48f3585ad43cbccb4f2d892a4bc986e2df00667b392";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 236;
        public Ros2Std_msgsMsgMultiArrayDimension[] dim = new Ros2Std_msgsMsgMultiArrayDimension[0];
        public long data_offset = 0;

        public Ros2Std_msgsMsgMultiArrayLayout()
        {
        }

        public static final Codec<Ros2Std_msgsMsgMultiArrayLayout> CODEC = new Codec<Ros2Std_msgsMsgMultiArrayLayout>() {
            public byte[] encode(Ros2Std_msgsMsgMultiArrayLayout value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_msgsMsgMultiArrayLayout(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_msgsMsgMultiArrayLayout decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgMultiArrayLayout value = readRos2Std_msgsMsgMultiArrayLayout(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_msgsMsgMultiArrayLayout(Codecs.Writer writer, Ros2Std_msgsMsgMultiArrayLayout value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgMultiArrayDimension[] part0 = value.dim;
        if(part0 == null || part0.length > 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Std_msgsMsgMultiArrayDimension(writer, part0[i]);
        }
        long part1 = value.data_offset;
        writer.integer(part1, 4, false);
    }

    private static Ros2Std_msgsMsgMultiArrayLayout readRos2Std_msgsMsgMultiArrayLayout(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgMultiArrayLayout value = new Ros2Std_msgsMsgMultiArrayLayout();
        value.dim = new Ros2Std_msgsMsgMultiArrayDimension[readCount(reader, 3, 12)];
        for(int i = 0; i < value.dim.length; ++i)
            value.dim[i] = readRos2Std_msgsMsgMultiArrayDimension(reader);
        value.data_offset = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Std_msgsMsgFloat64MultiArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Float64MultiArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9a214c31604613d6d1ebba644301f686ad3dff1a7a6c1005540ae0062d924f95";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 368;
        public Ros2Std_msgsMsgMultiArrayLayout layout = new Ros2Std_msgsMsgMultiArrayLayout();
        public double[] data = new double[0];

        public Ros2Std_msgsMsgFloat64MultiArray()
        {
        }

        public static final Codec<Ros2Std_msgsMsgFloat64MultiArray> CODEC = new Codec<Ros2Std_msgsMsgFloat64MultiArray>() {
            public byte[] encode(Ros2Std_msgsMsgFloat64MultiArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_msgsMsgFloat64MultiArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_msgsMsgFloat64MultiArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgFloat64MultiArray value = readRos2Std_msgsMsgFloat64MultiArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_msgsMsgFloat64MultiArray(Codecs.Writer writer, Ros2Std_msgsMsgFloat64MultiArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgMultiArrayLayout part0 = value.layout;
        writeRos2Std_msgsMsgMultiArrayLayout(writer, part0);
        double[] part1 = value.data;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros2Std_msgsMsgFloat64MultiArray readRos2Std_msgsMsgFloat64MultiArray(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgFloat64MultiArray value = new Ros2Std_msgsMsgFloat64MultiArray();
        value.layout = readRos2Std_msgsMsgMultiArrayLayout(reader);
        value.data = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgRobotState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/RobotState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e705618c8be95896187c604e77324a4e8373df20b89819a7f94abf995eb93942";
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
        public Ros2Std_msgsMsgFloat64MultiArray[] rotation_matrix = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public byte[] ctrlbox_digital_input = new byte[16];
        public byte[] ctrlbox_digital_output = new byte[16];
        public byte[] flange_digital_input = new byte[6];
        public byte[] flange_digital_output = new byte[6];
        public Ros2Dsr_msgs2MsgModbusState[] modbus_state = new Ros2Dsr_msgs2MsgModbusState[0];
        public int access_control = 0;
        public boolean homming_completed = false;
        public boolean tp_initialized = false;
        public byte mastering_need = 0;
        public boolean drl_stopped = false;
        public boolean disconnected = false;
        public double[] f_actual_w2b = new double[6];
        public Ros2Std_msgsMsgFloat64MultiArray[] f_current_pos_world = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] f_current_vel_world = new double[6];
        public double[] f_world_ext_target_torque = new double[6];
        public double[] f_target_pos_world = new double[6];
        public double[] f_target_vel_world = new double[6];
        public Ros2Std_msgsMsgFloat64MultiArray[] f_rotation_matrix_world = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public byte i_actual_user_coord_num = 0;
        public byte i_coord_ref = 0;
        public Ros2Std_msgsMsgFloat64MultiArray[] f_current_pos_user = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] f_current_vel_user = new double[6];
        public double[] f_user_ext_task_torque = new double[6];
        public double[] f_target_pos_user = new double[6];
        public double[] f_target_vel_user = new double[6];
        public Ros2Std_msgsMsgFloat64MultiArray[] f_rotation_matrix_user = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] f_actual_analog_input = new double[6];
        public boolean[] b_actual_switch_input = new boolean[3];
        public boolean[] b_actual_safety_input = new boolean[2];
        public byte[] i_actual_analog_input_type = new byte[2];
        public double[] f_target_analog_output = new double[2];
        public byte[] i_target_analog_output_type = new byte[2];
        public boolean[] b_actual_encorder_strove_signal = new boolean[2];
        public byte[] i_actual_encorder_raw_data = new byte[2];
        public boolean[] b_actual_encorder_reset_signal = new boolean[2];

        public Ros2Dsr_msgs2MsgRobotState()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgRobotState> CODEC = new Codec<Ros2Dsr_msgs2MsgRobotState>() {
            public byte[] encode(Ros2Dsr_msgs2MsgRobotState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgRobotState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgRobotState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgRobotState value = readRos2Dsr_msgs2MsgRobotState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgRobotState(Codecs.Writer writer, Ros2Dsr_msgs2MsgRobotState value)
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
        Ros2Std_msgsMsgFloat64MultiArray[] part26 = value.rotation_matrix;
        if(part26 == null || part26.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part26.length, 4, false);
        for(int i = 0; i < part26.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part26[i]);
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
        Ros2Dsr_msgs2MsgModbusState[] part31 = value.modbus_state;
        if(part31 == null || part31.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part31.length, 4, false);
        for(int i = 0; i < part31.length; ++i)
        {
            writeRos2Dsr_msgs2MsgModbusState(writer, part31[i]);
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
        double[] part38 = value.f_actual_w2b;
        if(part38 == null || part38.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part38.length; ++i)
        {
            writer.f64(part38[i]);
        }
        Ros2Std_msgsMsgFloat64MultiArray[] part39 = value.f_current_pos_world;
        if(part39 == null || part39.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part39.length, 4, false);
        for(int i = 0; i < part39.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part39[i]);
        }
        double[] part40 = value.f_current_vel_world;
        if(part40 == null || part40.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part40.length; ++i)
        {
            writer.f64(part40[i]);
        }
        double[] part41 = value.f_world_ext_target_torque;
        if(part41 == null || part41.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part41.length; ++i)
        {
            writer.f64(part41[i]);
        }
        double[] part42 = value.f_target_pos_world;
        if(part42 == null || part42.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part42.length; ++i)
        {
            writer.f64(part42[i]);
        }
        double[] part43 = value.f_target_vel_world;
        if(part43 == null || part43.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part43.length; ++i)
        {
            writer.f64(part43[i]);
        }
        Ros2Std_msgsMsgFloat64MultiArray[] part44 = value.f_rotation_matrix_world;
        if(part44 == null || part44.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part44.length, 4, false);
        for(int i = 0; i < part44.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part44[i]);
        }
        byte part45 = value.i_actual_user_coord_num;
        writer.integer(part45, 1, true);
        byte part46 = value.i_coord_ref;
        writer.integer(part46, 1, true);
        Ros2Std_msgsMsgFloat64MultiArray[] part47 = value.f_current_pos_user;
        if(part47 == null || part47.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part47.length, 4, false);
        for(int i = 0; i < part47.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part47[i]);
        }
        double[] part48 = value.f_current_vel_user;
        if(part48 == null || part48.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part48.length; ++i)
        {
            writer.f64(part48[i]);
        }
        double[] part49 = value.f_user_ext_task_torque;
        if(part49 == null || part49.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part49.length; ++i)
        {
            writer.f64(part49[i]);
        }
        double[] part50 = value.f_target_pos_user;
        if(part50 == null || part50.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part50.length; ++i)
        {
            writer.f64(part50[i]);
        }
        double[] part51 = value.f_target_vel_user;
        if(part51 == null || part51.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part51.length; ++i)
        {
            writer.f64(part51[i]);
        }
        Ros2Std_msgsMsgFloat64MultiArray[] part52 = value.f_rotation_matrix_user;
        if(part52 == null || part52.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part52.length, 4, false);
        for(int i = 0; i < part52.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part52[i]);
        }
        double[] part53 = value.f_actual_analog_input;
        if(part53 == null || part53.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part53.length; ++i)
        {
            writer.f64(part53[i]);
        }
        boolean[] part54 = value.b_actual_switch_input;
        if(part54 == null || part54.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part54.length; ++i)
        {
            writer.integer(part54[i] ? 1 : 0, 1, false);
        }
        boolean[] part55 = value.b_actual_safety_input;
        if(part55 == null || part55.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part55.length; ++i)
        {
            writer.integer(part55[i] ? 1 : 0, 1, false);
        }
        byte[] part56 = value.i_actual_analog_input_type;
        if(part56 == null || part56.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part56.length; ++i)
        {
            writer.integer(part56[i], 1, true);
        }
        double[] part57 = value.f_target_analog_output;
        if(part57 == null || part57.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part57.length; ++i)
        {
            writer.f64(part57[i]);
        }
        byte[] part58 = value.i_target_analog_output_type;
        if(part58 == null || part58.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part58.length; ++i)
        {
            writer.integer(part58[i], 1, true);
        }
        boolean[] part59 = value.b_actual_encorder_strove_signal;
        if(part59 == null || part59.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part59.length; ++i)
        {
            writer.integer(part59[i] ? 1 : 0, 1, false);
        }
        byte[] part60 = value.i_actual_encorder_raw_data;
        if(part60 == null || part60.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part60.length; ++i)
        {
            writer.integer(part60[i], 1, true);
        }
        boolean[] part61 = value.b_actual_encorder_reset_signal;
        if(part61 == null || part61.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part61.length; ++i)
        {
            writer.integer(part61[i] ? 1 : 0, 1, false);
        }
    }

    private static Ros2Dsr_msgs2MsgRobotState readRos2Dsr_msgs2MsgRobotState(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgRobotState value = new Ros2Dsr_msgs2MsgRobotState();
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
        value.rotation_matrix = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.rotation_matrix.length; ++i)
            value.rotation_matrix[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
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
        value.modbus_state = new Ros2Dsr_msgs2MsgModbusState[readCount(reader, 16, 8)];
        for(int i = 0; i < value.modbus_state.length; ++i)
            value.modbus_state[i] = readRos2Dsr_msgs2MsgModbusState(reader);
        value.access_control = (int)reader.integer(4, true);
        value.homming_completed = readBool(reader);
        value.tp_initialized = readBool(reader);
        value.mastering_need = (byte)reader.integer(1, true);
        value.drl_stopped = readBool(reader);
        value.disconnected = readBool(reader);
        value.f_actual_w2b = new double[6];
        for(int i = 0; i < value.f_actual_w2b.length; ++i)
            value.f_actual_w2b[i] = reader.f64();
        value.f_current_pos_world = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.f_current_pos_world.length; ++i)
            value.f_current_pos_world[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.f_current_vel_world = new double[6];
        for(int i = 0; i < value.f_current_vel_world.length; ++i)
            value.f_current_vel_world[i] = reader.f64();
        value.f_world_ext_target_torque = new double[6];
        for(int i = 0; i < value.f_world_ext_target_torque.length; ++i)
            value.f_world_ext_target_torque[i] = reader.f64();
        value.f_target_pos_world = new double[6];
        for(int i = 0; i < value.f_target_pos_world.length; ++i)
            value.f_target_pos_world[i] = reader.f64();
        value.f_target_vel_world = new double[6];
        for(int i = 0; i < value.f_target_vel_world.length; ++i)
            value.f_target_vel_world[i] = reader.f64();
        value.f_rotation_matrix_world = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.f_rotation_matrix_world.length; ++i)
            value.f_rotation_matrix_world[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.i_actual_user_coord_num = (byte)reader.integer(1, true);
        value.i_coord_ref = (byte)reader.integer(1, true);
        value.f_current_pos_user = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.f_current_pos_user.length; ++i)
            value.f_current_pos_user[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.f_current_vel_user = new double[6];
        for(int i = 0; i < value.f_current_vel_user.length; ++i)
            value.f_current_vel_user[i] = reader.f64();
        value.f_user_ext_task_torque = new double[6];
        for(int i = 0; i < value.f_user_ext_task_torque.length; ++i)
            value.f_user_ext_task_torque[i] = reader.f64();
        value.f_target_pos_user = new double[6];
        for(int i = 0; i < value.f_target_pos_user.length; ++i)
            value.f_target_pos_user[i] = reader.f64();
        value.f_target_vel_user = new double[6];
        for(int i = 0; i < value.f_target_vel_user.length; ++i)
            value.f_target_vel_user[i] = reader.f64();
        value.f_rotation_matrix_user = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.f_rotation_matrix_user.length; ++i)
            value.f_rotation_matrix_user[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.f_actual_analog_input = new double[6];
        for(int i = 0; i < value.f_actual_analog_input.length; ++i)
            value.f_actual_analog_input[i] = reader.f64();
        value.b_actual_switch_input = new boolean[3];
        for(int i = 0; i < value.b_actual_switch_input.length; ++i)
            value.b_actual_switch_input[i] = readBool(reader);
        value.b_actual_safety_input = new boolean[2];
        for(int i = 0; i < value.b_actual_safety_input.length; ++i)
            value.b_actual_safety_input[i] = readBool(reader);
        value.i_actual_analog_input_type = new byte[2];
        for(int i = 0; i < value.i_actual_analog_input_type.length; ++i)
            value.i_actual_analog_input_type[i] = (byte)reader.integer(1, true);
        value.f_target_analog_output = new double[2];
        for(int i = 0; i < value.f_target_analog_output.length; ++i)
            value.f_target_analog_output[i] = reader.f64();
        value.i_target_analog_output_type = new byte[2];
        for(int i = 0; i < value.i_target_analog_output_type.length; ++i)
            value.i_target_analog_output_type[i] = (byte)reader.integer(1, true);
        value.b_actual_encorder_strove_signal = new boolean[2];
        for(int i = 0; i < value.b_actual_encorder_strove_signal.length; ++i)
            value.b_actual_encorder_strove_signal[i] = readBool(reader);
        value.i_actual_encorder_raw_data = new byte[2];
        for(int i = 0; i < value.i_actual_encorder_raw_data.length; ++i)
            value.i_actual_encorder_raw_data[i] = (byte)reader.integer(1, true);
        value.b_actual_encorder_reset_signal = new boolean[2];
        for(int i = 0; i < value.b_actual_encorder_reset_signal.length; ++i)
            value.b_actual_encorder_reset_signal[i] = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgRobotStateRt
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/RobotStateRt";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_13d507971439fe6ba5458b55545edfcf1ead10ce7e603365cffa5f894657be93";
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
        public Ros2Std_msgsMsgFloat64MultiArray[] jacobian_matrix = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] gravity_torque = new double[6];
        public Ros2Std_msgsMsgFloat64MultiArray[] coriolis_matrix = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public Ros2Std_msgsMsgFloat64MultiArray[] mass_matrix = new Ros2Std_msgsMsgFloat64MultiArray[0];
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

        public Ros2Dsr_msgs2MsgRobotStateRt()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgRobotStateRt> CODEC = new Codec<Ros2Dsr_msgs2MsgRobotStateRt>() {
            public byte[] encode(Ros2Dsr_msgs2MsgRobotStateRt value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgRobotStateRt(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgRobotStateRt decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgRobotStateRt value = readRos2Dsr_msgs2MsgRobotStateRt(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgRobotStateRt(Codecs.Writer writer, Ros2Dsr_msgs2MsgRobotStateRt value)
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
        Ros2Std_msgsMsgFloat64MultiArray[] part21 = value.jacobian_matrix;
        if(part21 == null || part21.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part21.length, 4, false);
        for(int i = 0; i < part21.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part21[i]);
        }
        double[] part22 = value.gravity_torque;
        if(part22 == null || part22.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part22.length; ++i)
        {
            writer.f64(part22[i]);
        }
        Ros2Std_msgsMsgFloat64MultiArray[] part23 = value.coriolis_matrix;
        if(part23 == null || part23.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part23.length, 4, false);
        for(int i = 0; i < part23.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part23[i]);
        }
        Ros2Std_msgsMsgFloat64MultiArray[] part24 = value.mass_matrix;
        if(part24 == null || part24.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part24.length, 4, false);
        for(int i = 0; i < part24.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part24[i]);
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

    private static Ros2Dsr_msgs2MsgRobotStateRt readRos2Dsr_msgs2MsgRobotStateRt(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgRobotStateRt value = new Ros2Dsr_msgs2MsgRobotStateRt();
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
        value.jacobian_matrix = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.jacobian_matrix.length; ++i)
            value.jacobian_matrix[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.gravity_torque = new double[6];
        for(int i = 0; i < value.gravity_torque.length; ++i)
            value.gravity_torque[i] = reader.f64();
        value.coriolis_matrix = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.coriolis_matrix.length; ++i)
            value.coriolis_matrix[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.mass_matrix = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.mass_matrix.length; ++i)
            value.mass_matrix[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
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

    public static final class Ros2Dsr_msgs2MsgRobotStop
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/RobotStop";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f3307dbbe0c0c842659c2db436d1c3d6f032157979c5b6178103319bb5eeda37";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int stop_mode = 0;

        public Ros2Dsr_msgs2MsgRobotStop()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgRobotStop> CODEC = new Codec<Ros2Dsr_msgs2MsgRobotStop>() {
            public byte[] encode(Ros2Dsr_msgs2MsgRobotStop value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgRobotStop(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgRobotStop decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgRobotStop value = readRos2Dsr_msgs2MsgRobotStop(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgRobotStop(Codecs.Writer writer, Ros2Dsr_msgs2MsgRobotStop value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.stop_mode;
        writer.integer(part0, 4, true);
    }

    private static Ros2Dsr_msgs2MsgRobotStop readRos2Dsr_msgs2MsgRobotStop(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgRobotStop value = new Ros2Dsr_msgs2MsgRobotStop();
        value.stop_mode = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgServojRtStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/ServojRtStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4321e707fa63a57b66eb3754deca45fe0c108c52565a0e0f62749deae95726a9";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;
        public double[] pos = new double[6];
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros2Dsr_msgs2MsgServojRtStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgServojRtStream> CODEC = new Codec<Ros2Dsr_msgs2MsgServojRtStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgServojRtStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgServojRtStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgServojRtStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgServojRtStream value = readRos2Dsr_msgs2MsgServojRtStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgServojRtStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgServojRtStream value)
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

    private static Ros2Dsr_msgs2MsgServojRtStream readRos2Dsr_msgs2MsgServojRtStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgServojRtStream value = new Ros2Dsr_msgs2MsgServojRtStream();
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

    public static final class Ros2Dsr_msgs2MsgServojStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/ServojStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bbd465cf407d444db1d536bf464b3e3939b18aa904c4ce99aac2fb2d918259a9";
        public static final int MIN_WIRE_BYTES = 153, MAX_WIRE_BYTES = 153;
        public double[] pos = new double[6];
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;
        public byte mode = 0;

        public Ros2Dsr_msgs2MsgServojStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgServojStream> CODEC = new Codec<Ros2Dsr_msgs2MsgServojStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgServojStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgServojStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgServojStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgServojStream value = readRos2Dsr_msgs2MsgServojStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgServojStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgServojStream value)
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
        byte part4 = value.mode;
        writer.integer(part4, 1, true);
    }

    private static Ros2Dsr_msgs2MsgServojStream readRos2Dsr_msgs2MsgServojStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgServojStream value = new Ros2Dsr_msgs2MsgServojStream();
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
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgServolRtStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/ServolRtStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_052d62a9865376150ca907ac85216a91f19dd81ed7bbe943ed53e74b6e511763";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;
        public double[] pos = new double[6];
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros2Dsr_msgs2MsgServolRtStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgServolRtStream> CODEC = new Codec<Ros2Dsr_msgs2MsgServolRtStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgServolRtStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgServolRtStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgServolRtStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgServolRtStream value = readRos2Dsr_msgs2MsgServolRtStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgServolRtStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgServolRtStream value)
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

    private static Ros2Dsr_msgs2MsgServolRtStream readRos2Dsr_msgs2MsgServolRtStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgServolRtStream value = new Ros2Dsr_msgs2MsgServolRtStream();
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

    public static final class Ros2Dsr_msgs2MsgServolStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/ServolStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7d3d948e15e7dcc96f21f17d0c6a1981859ea8002234ea93877919fa961c2a96";
        public static final int MIN_WIRE_BYTES = 88, MAX_WIRE_BYTES = 88;
        public double[] pos = new double[6];
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;

        public Ros2Dsr_msgs2MsgServolStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgServolStream> CODEC = new Codec<Ros2Dsr_msgs2MsgServolStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgServolStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgServolStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgServolStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgServolStream value = readRos2Dsr_msgs2MsgServolStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgServolStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgServolStream value)
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

    private static Ros2Dsr_msgs2MsgServolStream readRos2Dsr_msgs2MsgServolStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgServolStream value = new Ros2Dsr_msgs2MsgServolStream();
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

    public static final class Ros2Dsr_msgs2MsgSpeedjRtStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/SpeedjRtStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d6f75878c6dd397b261ede489ca0b3c2e7f26c44908a16d809303a77ca4791aa";
        public static final int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros2Dsr_msgs2MsgSpeedjRtStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgSpeedjRtStream> CODEC = new Codec<Ros2Dsr_msgs2MsgSpeedjRtStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgSpeedjRtStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgSpeedjRtStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgSpeedjRtStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgSpeedjRtStream value = readRos2Dsr_msgs2MsgSpeedjRtStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgSpeedjRtStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgSpeedjRtStream value)
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

    private static Ros2Dsr_msgs2MsgSpeedjRtStream readRos2Dsr_msgs2MsgSpeedjRtStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgSpeedjRtStream value = new Ros2Dsr_msgs2MsgSpeedjRtStream();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgSpeedjStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/SpeedjStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c37473b30f0e49db847342eb9b0e27606010710a43de7b94c8589707bceacbf5";
        public static final int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros2Dsr_msgs2MsgSpeedjStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgSpeedjStream> CODEC = new Codec<Ros2Dsr_msgs2MsgSpeedjStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgSpeedjStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgSpeedjStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgSpeedjStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgSpeedjStream value = readRos2Dsr_msgs2MsgSpeedjStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgSpeedjStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgSpeedjStream value)
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

    private static Ros2Dsr_msgs2MsgSpeedjStream readRos2Dsr_msgs2MsgSpeedjStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgSpeedjStream value = new Ros2Dsr_msgs2MsgSpeedjStream();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgSpeedlRtStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/SpeedlRtStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0e85422a682aef2c639f5e8a44b883e7c9b3491c95bf352c34ba23e9fb789b92";
        public static final int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;

        public Ros2Dsr_msgs2MsgSpeedlRtStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgSpeedlRtStream> CODEC = new Codec<Ros2Dsr_msgs2MsgSpeedlRtStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgSpeedlRtStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgSpeedlRtStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgSpeedlRtStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgSpeedlRtStream value = readRos2Dsr_msgs2MsgSpeedlRtStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgSpeedlRtStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgSpeedlRtStream value)
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

    private static Ros2Dsr_msgs2MsgSpeedlRtStream readRos2Dsr_msgs2MsgSpeedlRtStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgSpeedlRtStream value = new Ros2Dsr_msgs2MsgSpeedlRtStream();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgSpeedlStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/SpeedlStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8ae5704395fff21a33153589b6a32a41e8687cee0607a7085156c42a2f087ef2";
        public static final int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 72;
        public double[] vel = new double[6];
        public double[] acc = new double[2];
        public double time = 0;

        public Ros2Dsr_msgs2MsgSpeedlStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgSpeedlStream> CODEC = new Codec<Ros2Dsr_msgs2MsgSpeedlStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgSpeedlStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgSpeedlStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgSpeedlStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgSpeedlStream value = readRos2Dsr_msgs2MsgSpeedlStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgSpeedlStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgSpeedlStream value)
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

    private static Ros2Dsr_msgs2MsgSpeedlStream readRos2Dsr_msgs2MsgSpeedlStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgSpeedlStream value = new Ros2Dsr_msgs2MsgSpeedlStream();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[2];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2MsgTorqueRtStream
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/msg/TorqueRtStream";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_81cb4c6d445c6869b94baca87ce997c96964b7e189598b0adfdcc227a295fd73";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        public double[] tor = new double[6];
        public double time = 0;

        public Ros2Dsr_msgs2MsgTorqueRtStream()
        {
        }

        public static final Codec<Ros2Dsr_msgs2MsgTorqueRtStream> CODEC = new Codec<Ros2Dsr_msgs2MsgTorqueRtStream>() {
            public byte[] encode(Ros2Dsr_msgs2MsgTorqueRtStream value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2MsgTorqueRtStream(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2MsgTorqueRtStream decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2MsgTorqueRtStream value = readRos2Dsr_msgs2MsgTorqueRtStream(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2MsgTorqueRtStream(Codecs.Writer writer, Ros2Dsr_msgs2MsgTorqueRtStream value)
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

    private static Ros2Dsr_msgs2MsgTorqueRtStream readRos2Dsr_msgs2MsgTorqueRtStream(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2MsgTorqueRtStream value = new Ros2Dsr_msgs2MsgTorqueRtStream();
        value.tor = new double[6];
        for(int i = 0; i < value.tor.length; ++i)
            value.tor[i] = reader.f64();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvAlignAxis1_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/AlignAxis1_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ddf70ffd434db95044523b5778f518ec204aed4e315293ecb474e1ec1b1267d";
        public static final int MIN_WIRE_BYTES = 170, MAX_WIRE_BYTES = 170;
        public double[] x1 = new double[6];
        public double[] x2 = new double[6];
        public double[] x3 = new double[6];
        public double[] source_vect = new double[3];
        public byte axis = 0;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvAlignAxis1_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvAlignAxis1_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvAlignAxis1_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvAlignAxis1_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvAlignAxis1_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvAlignAxis1_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvAlignAxis1_Request value = readRos2Dsr_msgs2SrvAlignAxis1_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvAlignAxis1_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvAlignAxis1_Request value)
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

    private static Ros2Dsr_msgs2SrvAlignAxis1_Request readRos2Dsr_msgs2SrvAlignAxis1_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvAlignAxis1_Request value = new Ros2Dsr_msgs2SrvAlignAxis1_Request();
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

    public static final class Ros2Dsr_msgs2SrvAlignAxis1_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/AlignAxis1_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f767cbca9c94fc07d10cff7cdbc4125f6d657f4362335ce968dcbd560a75a537";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvAlignAxis1_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvAlignAxis1_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvAlignAxis1_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvAlignAxis1_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvAlignAxis1_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvAlignAxis1_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvAlignAxis1_Response value = readRos2Dsr_msgs2SrvAlignAxis1_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvAlignAxis1_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvAlignAxis1_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvAlignAxis1_Response readRos2Dsr_msgs2SrvAlignAxis1_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvAlignAxis1_Response value = new Ros2Dsr_msgs2SrvAlignAxis1_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvAlignAxis2_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/AlignAxis2_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_102ba03a00114a9c5314e5f947050c88791c1abffcff3d9b3163f06557c9d1ca";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public double[] target_vect = new double[3];
        public double[] source_vect = new double[3];
        public byte axis = 0;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvAlignAxis2_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvAlignAxis2_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvAlignAxis2_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvAlignAxis2_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvAlignAxis2_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvAlignAxis2_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvAlignAxis2_Request value = readRos2Dsr_msgs2SrvAlignAxis2_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvAlignAxis2_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvAlignAxis2_Request value)
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

    private static Ros2Dsr_msgs2SrvAlignAxis2_Request readRos2Dsr_msgs2SrvAlignAxis2_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvAlignAxis2_Request value = new Ros2Dsr_msgs2SrvAlignAxis2_Request();
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

    public static final class Ros2Dsr_msgs2SrvAlignAxis2_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/AlignAxis2_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_59a69f0d266c31bbd9ab278249d358fb0edb0cc2c5f57a684069653548b88400";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvAlignAxis2_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvAlignAxis2_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvAlignAxis2_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvAlignAxis2_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvAlignAxis2_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvAlignAxis2_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvAlignAxis2_Response value = readRos2Dsr_msgs2SrvAlignAxis2_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvAlignAxis2_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvAlignAxis2_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvAlignAxis2_Response readRos2Dsr_msgs2SrvAlignAxis2_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvAlignAxis2_Response value = new Ros2Dsr_msgs2SrvAlignAxis2_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvAlterMotion_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/AlterMotion_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ede1eb26161bfe42b29411347ef4752a6454baf86ba04afc5f2f11149895b000";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros2Dsr_msgs2SrvAlterMotion_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvAlterMotion_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvAlterMotion_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvAlterMotion_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvAlterMotion_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvAlterMotion_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvAlterMotion_Request value = readRos2Dsr_msgs2SrvAlterMotion_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvAlterMotion_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvAlterMotion_Request value)
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

    private static Ros2Dsr_msgs2SrvAlterMotion_Request readRos2Dsr_msgs2SrvAlterMotion_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvAlterMotion_Request value = new Ros2Dsr_msgs2SrvAlterMotion_Request();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvAlterMotion_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/AlterMotion_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_edd6fac42f9f148dc508948ebf7b7bfe09fda09ab6ba66df3a56505b10829557";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvAlterMotion_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvAlterMotion_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvAlterMotion_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvAlterMotion_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvAlterMotion_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvAlterMotion_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvAlterMotion_Response value = readRos2Dsr_msgs2SrvAlterMotion_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvAlterMotion_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvAlterMotion_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvAlterMotion_Response readRos2Dsr_msgs2SrvAlterMotion_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvAlterMotion_Response value = new Ros2Dsr_msgs2SrvAlterMotion_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCalcCoord_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CalcCoord_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7fda8163d3f25429c387f6456df77bbfcf30c1aee93bb08ac27d50950a56ac7f";
        public static final int MIN_WIRE_BYTES = 195, MAX_WIRE_BYTES = 195;
        public byte input_pos_cnt = 0;
        public double[] x1 = new double[6];
        public double[] x2 = new double[6];
        public double[] x3 = new double[6];
        public double[] x4 = new double[6];
        public byte ref = 0;
        public byte mod = 0;

        public Ros2Dsr_msgs2SrvCalcCoord_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCalcCoord_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvCalcCoord_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCalcCoord_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCalcCoord_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCalcCoord_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCalcCoord_Request value = readRos2Dsr_msgs2SrvCalcCoord_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCalcCoord_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvCalcCoord_Request value)
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

    private static Ros2Dsr_msgs2SrvCalcCoord_Request readRos2Dsr_msgs2SrvCalcCoord_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCalcCoord_Request value = new Ros2Dsr_msgs2SrvCalcCoord_Request();
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

    public static final class Ros2Dsr_msgs2SrvCalcCoord_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CalcCoord_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d5d79d4593bf040421c1b8570c86d021db50de736ab114ec13623e4982168371";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] conv_posx = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvCalcCoord_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCalcCoord_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvCalcCoord_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCalcCoord_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCalcCoord_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCalcCoord_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCalcCoord_Response value = readRos2Dsr_msgs2SrvCalcCoord_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCalcCoord_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvCalcCoord_Response value)
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

    private static Ros2Dsr_msgs2SrvCalcCoord_Response readRos2Dsr_msgs2SrvCalcCoord_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCalcCoord_Response value = new Ros2Dsr_msgs2SrvCalcCoord_Response();
        value.conv_posx = new double[6];
        for(int i = 0; i < value.conv_posx.length; ++i)
            value.conv_posx[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ChangeCollisionSensitivity_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_69c9183fb3a1a5e619cb2537da31e73aa9c490b2022db5281931d353676efc7f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte sensitivity = 0;

        public Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvChangeCollisionSensitivity_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request value = readRos2Dsr_msgs2SrvChangeCollisionSensitivity_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvChangeCollisionSensitivity_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.sensitivity;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request readRos2Dsr_msgs2SrvChangeCollisionSensitivity_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request value = new Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request();
        value.sensitivity = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ChangeCollisionSensitivity_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d0660dd8ed26aba09d9aaa3444daae0abca31e415b24a39ab05c012fb9909aa0";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response> CODEC =
            new Codec<Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response>() {
                public byte[] encode(Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Dsr_msgs2SrvChangeCollisionSensitivity_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response value = readRos2Dsr_msgs2SrvChangeCollisionSensitivity_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Dsr_msgs2SrvChangeCollisionSensitivity_Response(Codecs.Writer writer,
                                                                                 Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response readRos2Dsr_msgs2SrvChangeCollisionSensitivity_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response value = new Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvChangeOperationSpeed_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ChangeOperationSpeed_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_63eed536f4862ee6571ea76f40342def3598466057cc09aa45b0ea159c9a4fa7";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte speed = 0;

        public Ros2Dsr_msgs2SrvChangeOperationSpeed_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvChangeOperationSpeed_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvChangeOperationSpeed_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvChangeOperationSpeed_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvChangeOperationSpeed_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvChangeOperationSpeed_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvChangeOperationSpeed_Request value = readRos2Dsr_msgs2SrvChangeOperationSpeed_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvChangeOperationSpeed_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvChangeOperationSpeed_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.speed;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvChangeOperationSpeed_Request readRos2Dsr_msgs2SrvChangeOperationSpeed_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvChangeOperationSpeed_Request value = new Ros2Dsr_msgs2SrvChangeOperationSpeed_Request();
        value.speed = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvChangeOperationSpeed_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ChangeOperationSpeed_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6514284e5a0739b16cd9df8dab9939c8e3aa9b47567741389bcc3fe54e9f0cbf";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvChangeOperationSpeed_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvChangeOperationSpeed_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvChangeOperationSpeed_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvChangeOperationSpeed_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvChangeOperationSpeed_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvChangeOperationSpeed_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvChangeOperationSpeed_Response value = readRos2Dsr_msgs2SrvChangeOperationSpeed_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvChangeOperationSpeed_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvChangeOperationSpeed_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvChangeOperationSpeed_Response readRos2Dsr_msgs2SrvChangeOperationSpeed_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvChangeOperationSpeed_Response value = new Ros2Dsr_msgs2SrvChangeOperationSpeed_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCheckForceCondition_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckForceCondition_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e996cea9f24a1967a4591fdb072ccb87fe1e684dfe19cdcbb5cf65afa22cd0e4";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;
        public byte axis = 0;
        public double min = 0;
        public double max = 0;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvCheckForceCondition_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckForceCondition_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvCheckForceCondition_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCheckForceCondition_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCheckForceCondition_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCheckForceCondition_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCheckForceCondition_Request value = readRos2Dsr_msgs2SrvCheckForceCondition_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCheckForceCondition_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvCheckForceCondition_Request value)
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

    private static Ros2Dsr_msgs2SrvCheckForceCondition_Request readRos2Dsr_msgs2SrvCheckForceCondition_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckForceCondition_Request value = new Ros2Dsr_msgs2SrvCheckForceCondition_Request();
        value.axis = (byte)reader.integer(1, true);
        value.min = reader.f64();
        value.max = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCheckForceCondition_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckForceCondition_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ed5a27b7b1daf8a668998d4da7f7ac5d1f7a71caea35a37c51db07058a373343";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvCheckForceCondition_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckForceCondition_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvCheckForceCondition_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCheckForceCondition_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCheckForceCondition_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCheckForceCondition_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCheckForceCondition_Response value = readRos2Dsr_msgs2SrvCheckForceCondition_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCheckForceCondition_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvCheckForceCondition_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvCheckForceCondition_Response readRos2Dsr_msgs2SrvCheckForceCondition_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckForceCondition_Response value = new Ros2Dsr_msgs2SrvCheckForceCondition_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCheckMotion_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckMotion_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_64c44932b5afc38a3bd1cfb306c018616656793b0c6e5bf0e04f557a0b5f48a5";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvCheckMotion_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckMotion_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvCheckMotion_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCheckMotion_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCheckMotion_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCheckMotion_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCheckMotion_Request value = readRos2Dsr_msgs2SrvCheckMotion_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCheckMotion_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvCheckMotion_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvCheckMotion_Request readRos2Dsr_msgs2SrvCheckMotion_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckMotion_Request value = new Ros2Dsr_msgs2SrvCheckMotion_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCheckMotion_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckMotion_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9c8ac8ada140000e2bd6588a92871d699a924ce9b1011d3e98dec98e0aa84379";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte status = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvCheckMotion_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckMotion_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvCheckMotion_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCheckMotion_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCheckMotion_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCheckMotion_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCheckMotion_Response value = readRos2Dsr_msgs2SrvCheckMotion_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCheckMotion_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvCheckMotion_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.status;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvCheckMotion_Response readRos2Dsr_msgs2SrvCheckMotion_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckMotion_Response value = new Ros2Dsr_msgs2SrvCheckMotion_Response();
        value.status = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckOrientationCondition1_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b70860c0e9fe5ae7904923bbf2ad9077a5009ae37a644118d5b8f4dc3383c1ef";
        public static final int MIN_WIRE_BYTES = 99, MAX_WIRE_BYTES = 99;
        public byte axis = 0;
        public double[] min = new double[6];
        public double[] max = new double[6];
        public byte ref = 0;
        public byte mode = 0;

        public Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCheckOrientationCondition1_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request value = readRos2Dsr_msgs2SrvCheckOrientationCondition1_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCheckOrientationCondition1_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request value)
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

    private static Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request readRos2Dsr_msgs2SrvCheckOrientationCondition1_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request value = new Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request();
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

    public static final class Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckOrientationCondition1_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_eff9abfb058f98ef8addce0c226a0c35bfc84f24d96b611cd151be384be24ee4";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response> CODEC =
            new Codec<Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response>() {
                public byte[] encode(Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Dsr_msgs2SrvCheckOrientationCondition1_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response value = readRos2Dsr_msgs2SrvCheckOrientationCondition1_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Dsr_msgs2SrvCheckOrientationCondition1_Response(Codecs.Writer writer,
                                                                                 Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response readRos2Dsr_msgs2SrvCheckOrientationCondition1_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response value = new Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckOrientationCondition2_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_af9ed5881dde0e06efb1c97e8c9571dd2de85b35188cbdcbed5a902ca30d5ddb";
        public static final int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;
        public byte axis = 0;
        public double min = 0;
        public double max = 0;
        public byte ref = 0;
        public byte mode = 0;
        public double[] pos = new double[6];

        public Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCheckOrientationCondition2_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request value = readRos2Dsr_msgs2SrvCheckOrientationCondition2_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCheckOrientationCondition2_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request value)
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

    private static Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request readRos2Dsr_msgs2SrvCheckOrientationCondition2_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request value = new Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request();
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

    public static final class Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckOrientationCondition2_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_23b06042946d1e27459ce70b73d265a7fda95dc1bf688091c14b5330c76d6e90";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response> CODEC =
            new Codec<Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response>() {
                public byte[] encode(Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Dsr_msgs2SrvCheckOrientationCondition2_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response value = readRos2Dsr_msgs2SrvCheckOrientationCondition2_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Dsr_msgs2SrvCheckOrientationCondition2_Response(Codecs.Writer writer,
                                                                                 Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response readRos2Dsr_msgs2SrvCheckOrientationCondition2_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response value = new Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCheckPositionCondition_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckPositionCondition_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3844a1011d8c4dfcbe048e683d0b3c747ce2984c937c477c868b1d7d53a7b0cc";
        public static final int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;
        public byte axis = 0;
        public double min = 0;
        public double max = 0;
        public byte ref = 0;
        public byte mode = 0;
        public double[] pos = new double[6];

        public Ros2Dsr_msgs2SrvCheckPositionCondition_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckPositionCondition_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvCheckPositionCondition_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCheckPositionCondition_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCheckPositionCondition_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCheckPositionCondition_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCheckPositionCondition_Request value = readRos2Dsr_msgs2SrvCheckPositionCondition_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCheckPositionCondition_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvCheckPositionCondition_Request value)
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

    private static Ros2Dsr_msgs2SrvCheckPositionCondition_Request readRos2Dsr_msgs2SrvCheckPositionCondition_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckPositionCondition_Request value = new Ros2Dsr_msgs2SrvCheckPositionCondition_Request();
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

    public static final class Ros2Dsr_msgs2SrvCheckPositionCondition_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CheckPositionCondition_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_aeac1f373359103389fae072461c92f810252c8abf63f31522582b7724d33334";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvCheckPositionCondition_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCheckPositionCondition_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvCheckPositionCondition_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCheckPositionCondition_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCheckPositionCondition_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCheckPositionCondition_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCheckPositionCondition_Response value = readRos2Dsr_msgs2SrvCheckPositionCondition_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCheckPositionCondition_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvCheckPositionCondition_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvCheckPositionCondition_Response readRos2Dsr_msgs2SrvCheckPositionCondition_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCheckPositionCondition_Response value = new Ros2Dsr_msgs2SrvCheckPositionCondition_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigCreateModbus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateModbus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa23c864844a6d81712b1c28261505a4dfce7e679a25e621bf80cef0a75ff1f5";
        public static final int MIN_WIRE_BYTES = 19, MAX_WIRE_BYTES = 531;
        public String name = "";
        public String ip = "";
        public int port = 0;
        public byte reg_type = 0;
        public byte index = 0;
        public byte value = 0;
        public int slave_id = 0;

        public Ros2Dsr_msgs2SrvConfigCreateModbus_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigCreateModbus_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigCreateModbus_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigCreateModbus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigCreateModbus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigCreateModbus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigCreateModbus_Request value = readRos2Dsr_msgs2SrvConfigCreateModbus_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigCreateModbus_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigCreateModbus_Request value)
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

    private static Ros2Dsr_msgs2SrvConfigCreateModbus_Request readRos2Dsr_msgs2SrvConfigCreateModbus_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigCreateModbus_Request value = new Ros2Dsr_msgs2SrvConfigCreateModbus_Request();
        value.name = readText(reader, 256);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
        value.reg_type = (byte)reader.integer(1, true);
        value.index = (byte)reader.integer(1, true);
        value.value = (byte)reader.integer(1, true);
        value.slave_id = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigCreateModbus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateModbus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e3316b3da7d0c79293173a37fe9830de831cf1d4152999f56f7f5f01ff63215c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvConfigCreateModbus_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigCreateModbus_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigCreateModbus_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigCreateModbus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigCreateModbus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigCreateModbus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigCreateModbus_Response value = readRos2Dsr_msgs2SrvConfigCreateModbus_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigCreateModbus_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigCreateModbus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvConfigCreateModbus_Response readRos2Dsr_msgs2SrvConfigCreateModbus_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigCreateModbus_Response value = new Ros2Dsr_msgs2SrvConfigCreateModbus_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigCreateTcp_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateTcp_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e45840cd5a1966ba8cf7a7bf660ab0a467132b03cd69f00fb62043afb9b30c49";
        public static final int MIN_WIRE_BYTES = 52, MAX_WIRE_BYTES = 308;
        public String name = "";
        public double[] pos = new double[6];

        public Ros2Dsr_msgs2SrvConfigCreateTcp_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigCreateTcp_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigCreateTcp_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigCreateTcp_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigCreateTcp_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigCreateTcp_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigCreateTcp_Request value = readRos2Dsr_msgs2SrvConfigCreateTcp_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigCreateTcp_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigCreateTcp_Request value)
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

    private static Ros2Dsr_msgs2SrvConfigCreateTcp_Request readRos2Dsr_msgs2SrvConfigCreateTcp_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigCreateTcp_Request value = new Ros2Dsr_msgs2SrvConfigCreateTcp_Request();
        value.name = readText(reader, 256);
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigCreateTcp_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateTcp_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3091184aefaedc2fb8fd9b4f3c87769e8f87ebba4f14623355ef09fce4932f3b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvConfigCreateTcp_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigCreateTcp_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigCreateTcp_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigCreateTcp_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigCreateTcp_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigCreateTcp_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigCreateTcp_Response value = readRos2Dsr_msgs2SrvConfigCreateTcp_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigCreateTcp_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigCreateTcp_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvConfigCreateTcp_Response readRos2Dsr_msgs2SrvConfigCreateTcp_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigCreateTcp_Response value = new Ros2Dsr_msgs2SrvConfigCreateTcp_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigCreateTool_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateTool_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ca28549f6644d735882d0400c2635380dde1139d17c17818d49d023ec73566e2";
        public static final int MIN_WIRE_BYTES = 84, MAX_WIRE_BYTES = 340;
        public String name = "";
        public double weight = 0;
        public double[] cog = new double[3];
        public double[] inertia = new double[6];

        public Ros2Dsr_msgs2SrvConfigCreateTool_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigCreateTool_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigCreateTool_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigCreateTool_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigCreateTool_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigCreateTool_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigCreateTool_Request value = readRos2Dsr_msgs2SrvConfigCreateTool_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigCreateTool_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigCreateTool_Request value)
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

    private static Ros2Dsr_msgs2SrvConfigCreateTool_Request readRos2Dsr_msgs2SrvConfigCreateTool_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigCreateTool_Request value = new Ros2Dsr_msgs2SrvConfigCreateTool_Request();
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

    public static final class Ros2Dsr_msgs2SrvConfigCreateTool_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateTool_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_105629d8e968ac2511b73b3fe21ed9529b1dab9365d992281a02d72e1b4a90d0";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvConfigCreateTool_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigCreateTool_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigCreateTool_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigCreateTool_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigCreateTool_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigCreateTool_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigCreateTool_Response value = readRos2Dsr_msgs2SrvConfigCreateTool_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigCreateTool_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigCreateTool_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvConfigCreateTool_Response readRos2Dsr_msgs2SrvConfigCreateTool_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigCreateTool_Response value = new Ros2Dsr_msgs2SrvConfigCreateTool_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigDeleteModbus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteModbus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f16519f6118316f20a9ab9e76dc37704e0d464632d31ed383a8bb55af6b25369";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros2Dsr_msgs2SrvConfigDeleteModbus_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigDeleteModbus_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigDeleteModbus_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigDeleteModbus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigDeleteModbus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigDeleteModbus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigDeleteModbus_Request value = readRos2Dsr_msgs2SrvConfigDeleteModbus_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigDeleteModbus_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigDeleteModbus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvConfigDeleteModbus_Request readRos2Dsr_msgs2SrvConfigDeleteModbus_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigDeleteModbus_Request value = new Ros2Dsr_msgs2SrvConfigDeleteModbus_Request();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigDeleteModbus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteModbus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a0a28657707c302b7dbb87039a36951cc97a5335cb473523002884453125829f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvConfigDeleteModbus_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigDeleteModbus_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigDeleteModbus_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigDeleteModbus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigDeleteModbus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigDeleteModbus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigDeleteModbus_Response value = readRos2Dsr_msgs2SrvConfigDeleteModbus_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigDeleteModbus_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigDeleteModbus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvConfigDeleteModbus_Response readRos2Dsr_msgs2SrvConfigDeleteModbus_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigDeleteModbus_Response value = new Ros2Dsr_msgs2SrvConfigDeleteModbus_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigDeleteTcp_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteTcp_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a865fbd071a0e1717d54ab3523a5dd637f22745724ed41483991c2f58aa85abf";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros2Dsr_msgs2SrvConfigDeleteTcp_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigDeleteTcp_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigDeleteTcp_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigDeleteTcp_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigDeleteTcp_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigDeleteTcp_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigDeleteTcp_Request value = readRos2Dsr_msgs2SrvConfigDeleteTcp_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigDeleteTcp_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigDeleteTcp_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvConfigDeleteTcp_Request readRos2Dsr_msgs2SrvConfigDeleteTcp_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigDeleteTcp_Request value = new Ros2Dsr_msgs2SrvConfigDeleteTcp_Request();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigDeleteTcp_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteTcp_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c8285c592d6839812e366d8271a9020f2e6213f7d3194896306f55bf69bb83d2";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvConfigDeleteTcp_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigDeleteTcp_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigDeleteTcp_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigDeleteTcp_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigDeleteTcp_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigDeleteTcp_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigDeleteTcp_Response value = readRos2Dsr_msgs2SrvConfigDeleteTcp_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigDeleteTcp_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigDeleteTcp_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvConfigDeleteTcp_Response readRos2Dsr_msgs2SrvConfigDeleteTcp_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigDeleteTcp_Response value = new Ros2Dsr_msgs2SrvConfigDeleteTcp_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigDeleteTool_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteTool_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7d6b749f7151dfc84e52fc39f3a32c88d5570efb2fb721c234c2d91405d9a37b";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros2Dsr_msgs2SrvConfigDeleteTool_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigDeleteTool_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigDeleteTool_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigDeleteTool_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigDeleteTool_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigDeleteTool_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigDeleteTool_Request value = readRos2Dsr_msgs2SrvConfigDeleteTool_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigDeleteTool_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigDeleteTool_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvConfigDeleteTool_Request readRos2Dsr_msgs2SrvConfigDeleteTool_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigDeleteTool_Request value = new Ros2Dsr_msgs2SrvConfigDeleteTool_Request();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConfigDeleteTool_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteTool_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2618f58ba0b4e9f585b2635de087a5d203b019e3732ab579e94fcb44e2ee9a6e";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvConfigDeleteTool_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConfigDeleteTool_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvConfigDeleteTool_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConfigDeleteTool_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConfigDeleteTool_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConfigDeleteTool_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConfigDeleteTool_Response value = readRos2Dsr_msgs2SrvConfigDeleteTool_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConfigDeleteTool_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvConfigDeleteTool_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvConfigDeleteTool_Response readRos2Dsr_msgs2SrvConfigDeleteTool_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConfigDeleteTool_Response value = new Ros2Dsr_msgs2SrvConfigDeleteTool_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConnectRtControl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConnectRtControl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a207438503e0a6769dbdc07c87487b0435066ba9773c19f2874241c8c1b4d761";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        public String ip_address = "";
        public long port = 0;

        public Ros2Dsr_msgs2SrvConnectRtControl_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConnectRtControl_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvConnectRtControl_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConnectRtControl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConnectRtControl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConnectRtControl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConnectRtControl_Request value = readRos2Dsr_msgs2SrvConnectRtControl_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConnectRtControl_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvConnectRtControl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.ip_address;
        writeText(writer, part0, 256);
        long part1 = value.port;
        writer.integer(part1, 4, false);
    }

    private static Ros2Dsr_msgs2SrvConnectRtControl_Request readRos2Dsr_msgs2SrvConnectRtControl_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConnectRtControl_Request value = new Ros2Dsr_msgs2SrvConnectRtControl_Request();
        value.ip_address = readText(reader, 256);
        value.port = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvConnectRtControl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ConnectRtControl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6a7cce9aae60cdadc75425b22f7a8b429b95bc607e969605ab477c2eb1461815";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvConnectRtControl_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvConnectRtControl_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvConnectRtControl_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvConnectRtControl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvConnectRtControl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvConnectRtControl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvConnectRtControl_Response value = readRos2Dsr_msgs2SrvConnectRtControl_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvConnectRtControl_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvConnectRtControl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvConnectRtControl_Response readRos2Dsr_msgs2SrvConnectRtControl_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvConnectRtControl_Response value = new Ros2Dsr_msgs2SrvConnectRtControl_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCoordTransform_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CoordTransform_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a3996948d541acf82a920927a76293455965c48d4a2f1c3307854193104b2223";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public double[] pos_in = new double[6];
        public byte ref_in = 0;
        public byte ref_out = 0;

        public Ros2Dsr_msgs2SrvCoordTransform_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCoordTransform_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvCoordTransform_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCoordTransform_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCoordTransform_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCoordTransform_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCoordTransform_Request value = readRos2Dsr_msgs2SrvCoordTransform_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCoordTransform_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvCoordTransform_Request value)
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

    private static Ros2Dsr_msgs2SrvCoordTransform_Request readRos2Dsr_msgs2SrvCoordTransform_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCoordTransform_Request value = new Ros2Dsr_msgs2SrvCoordTransform_Request();
        value.pos_in = new double[6];
        for(int i = 0; i < value.pos_in.length; ++i)
            value.pos_in[i] = reader.f64();
        value.ref_in = (byte)reader.integer(1, true);
        value.ref_out = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvCoordTransform_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/CoordTransform_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8ab16c946ef4cce7da6ccb8b0d3b4940195d0b29841007de569d1ea503b6cc72";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] conv_posx = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvCoordTransform_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvCoordTransform_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvCoordTransform_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvCoordTransform_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvCoordTransform_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvCoordTransform_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvCoordTransform_Response value = readRos2Dsr_msgs2SrvCoordTransform_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvCoordTransform_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvCoordTransform_Response value)
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

    private static Ros2Dsr_msgs2SrvCoordTransform_Response readRos2Dsr_msgs2SrvCoordTransform_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvCoordTransform_Response value = new Ros2Dsr_msgs2SrvCoordTransform_Response();
        value.conv_posx = new double[6];
        for(int i = 0; i < value.conv_posx.length; ++i)
            value.conv_posx[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDisableAlterMotion_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DisableAlterMotion_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dc5d3ed630e183152040506dfe7dd28e5ff236a79ac75ec2d48d824446e97152";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvDisableAlterMotion_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDisableAlterMotion_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvDisableAlterMotion_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDisableAlterMotion_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDisableAlterMotion_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDisableAlterMotion_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDisableAlterMotion_Request value = readRos2Dsr_msgs2SrvDisableAlterMotion_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDisableAlterMotion_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvDisableAlterMotion_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvDisableAlterMotion_Request readRos2Dsr_msgs2SrvDisableAlterMotion_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDisableAlterMotion_Request value = new Ros2Dsr_msgs2SrvDisableAlterMotion_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDisableAlterMotion_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DisableAlterMotion_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1bc0f75aa3e09ead2882ae862e0af520dd291c5d9f96414f98fa4a07f48a16e5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvDisableAlterMotion_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDisableAlterMotion_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvDisableAlterMotion_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDisableAlterMotion_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDisableAlterMotion_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDisableAlterMotion_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDisableAlterMotion_Response value = readRos2Dsr_msgs2SrvDisableAlterMotion_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDisableAlterMotion_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvDisableAlterMotion_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvDisableAlterMotion_Response readRos2Dsr_msgs2SrvDisableAlterMotion_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDisableAlterMotion_Response value = new Ros2Dsr_msgs2SrvDisableAlterMotion_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDisconnectRtControl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DisconnectRtControl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7745a5c8acbb39607c2eb275e9257608d928fb98a7a5a72c0a64d03980ba5524";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvDisconnectRtControl_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDisconnectRtControl_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvDisconnectRtControl_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDisconnectRtControl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDisconnectRtControl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDisconnectRtControl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDisconnectRtControl_Request value = readRos2Dsr_msgs2SrvDisconnectRtControl_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDisconnectRtControl_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvDisconnectRtControl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvDisconnectRtControl_Request readRos2Dsr_msgs2SrvDisconnectRtControl_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDisconnectRtControl_Request value = new Ros2Dsr_msgs2SrvDisconnectRtControl_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDisconnectRtControl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DisconnectRtControl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e57ab63199570ab8d114a9f778cb307cedf0775f6ce96ae1edeade39f9a259a5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvDisconnectRtControl_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDisconnectRtControl_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvDisconnectRtControl_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDisconnectRtControl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDisconnectRtControl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDisconnectRtControl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDisconnectRtControl_Response value = readRos2Dsr_msgs2SrvDisconnectRtControl_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDisconnectRtControl_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvDisconnectRtControl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvDisconnectRtControl_Response readRos2Dsr_msgs2SrvDisconnectRtControl_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDisconnectRtControl_Response value = new Ros2Dsr_msgs2SrvDisconnectRtControl_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDrlPause_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DrlPause_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d3a522d19d07bf80ce8b3722d43c382b8d55693b9364d995f968b952335d35a6";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvDrlPause_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDrlPause_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvDrlPause_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDrlPause_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDrlPause_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDrlPause_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDrlPause_Request value = readRos2Dsr_msgs2SrvDrlPause_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDrlPause_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvDrlPause_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvDrlPause_Request readRos2Dsr_msgs2SrvDrlPause_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDrlPause_Request value = new Ros2Dsr_msgs2SrvDrlPause_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDrlPause_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DrlPause_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_43cc42f101181691ed6046767d35f623fd8c3b7ca2fff5244a2b832cd1906ab7";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvDrlPause_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDrlPause_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvDrlPause_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDrlPause_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDrlPause_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDrlPause_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDrlPause_Response value = readRos2Dsr_msgs2SrvDrlPause_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDrlPause_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvDrlPause_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvDrlPause_Response readRos2Dsr_msgs2SrvDrlPause_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDrlPause_Response value = new Ros2Dsr_msgs2SrvDrlPause_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDrlResume_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DrlResume_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_19bfb89dfedd6470fd3e2054556e20cdd15f430c93a563557d6240c81243eb05";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvDrlResume_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDrlResume_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvDrlResume_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDrlResume_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDrlResume_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDrlResume_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDrlResume_Request value = readRos2Dsr_msgs2SrvDrlResume_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDrlResume_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvDrlResume_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvDrlResume_Request readRos2Dsr_msgs2SrvDrlResume_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDrlResume_Request value = new Ros2Dsr_msgs2SrvDrlResume_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDrlResume_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DrlResume_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a0447aaaaab43fe0287ff4aa85cc6d182320a036cf49f75e6552b9cf997de5ca";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvDrlResume_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDrlResume_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvDrlResume_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDrlResume_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDrlResume_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDrlResume_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDrlResume_Response value = readRos2Dsr_msgs2SrvDrlResume_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDrlResume_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvDrlResume_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvDrlResume_Response readRos2Dsr_msgs2SrvDrlResume_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDrlResume_Response value = new Ros2Dsr_msgs2SrvDrlResume_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDrlStart_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DrlStart_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0bcd9b44a5bc387dd9fa6257a42d2cbdc0c0d5cc373e56abd50345520304395d";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public byte robot_system = 0;
        public String code = "";

        public Ros2Dsr_msgs2SrvDrlStart_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDrlStart_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvDrlStart_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDrlStart_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDrlStart_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDrlStart_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDrlStart_Request value = readRos2Dsr_msgs2SrvDrlStart_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDrlStart_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvDrlStart_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_system;
        writer.integer(part0, 1, true);
        String part1 = value.code;
        writeText(writer, part1, 256);
    }

    private static Ros2Dsr_msgs2SrvDrlStart_Request readRos2Dsr_msgs2SrvDrlStart_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDrlStart_Request value = new Ros2Dsr_msgs2SrvDrlStart_Request();
        value.robot_system = (byte)reader.integer(1, true);
        value.code = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDrlStart_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DrlStart_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c693ddb4d3cb430442fd669f4506d751a58c2f6aacd84b5f547bb498140f306f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvDrlStart_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDrlStart_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvDrlStart_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDrlStart_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDrlStart_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDrlStart_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDrlStart_Response value = readRos2Dsr_msgs2SrvDrlStart_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDrlStart_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvDrlStart_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvDrlStart_Response readRos2Dsr_msgs2SrvDrlStart_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDrlStart_Response value = new Ros2Dsr_msgs2SrvDrlStart_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDrlStop_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DrlStop_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a0b7682dc86c427b9b16a40a6d4e358bb3be307190bd02ae41d9e88af40ec6cd";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte stop_mode = 0;

        public Ros2Dsr_msgs2SrvDrlStop_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDrlStop_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvDrlStop_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDrlStop_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDrlStop_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDrlStop_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDrlStop_Request value = readRos2Dsr_msgs2SrvDrlStop_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDrlStop_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvDrlStop_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.stop_mode;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvDrlStop_Request readRos2Dsr_msgs2SrvDrlStop_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDrlStop_Request value = new Ros2Dsr_msgs2SrvDrlStop_Request();
        value.stop_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvDrlStop_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/DrlStop_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_156eed5dd85047a2830dcfdeba5327f1836606bda78d45f379f6ec0542ff1c24";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvDrlStop_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvDrlStop_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvDrlStop_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvDrlStop_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvDrlStop_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvDrlStop_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvDrlStop_Response value = readRos2Dsr_msgs2SrvDrlStop_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvDrlStop_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvDrlStop_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvDrlStop_Response readRos2Dsr_msgs2SrvDrlStop_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvDrlStop_Response value = new Ros2Dsr_msgs2SrvDrlStop_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvEnableAlterMotion_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/EnableAlterMotion_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7615d1d9c40d8a6aed080f6185b80a7c6124db6aa979d7f670e81019c7633ffc";
        public static final int MIN_WIRE_BYTES = 38, MAX_WIRE_BYTES = 38;
        public int n = 0;
        public byte mode = 0;
        public byte ref = 0;
        public double[] limit_dpos = new double[2];
        public double[] limit_dpos_per = new double[2];

        public Ros2Dsr_msgs2SrvEnableAlterMotion_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvEnableAlterMotion_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvEnableAlterMotion_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvEnableAlterMotion_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvEnableAlterMotion_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvEnableAlterMotion_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvEnableAlterMotion_Request value = readRos2Dsr_msgs2SrvEnableAlterMotion_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvEnableAlterMotion_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvEnableAlterMotion_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.n;
        writer.integer(part0, 4, true);
        byte part1 = value.mode;
        writer.integer(part1, 1, true);
        byte part2 = value.ref;
        writer.integer(part2, 1, true);
        double[] part3 = value.limit_dpos;
        if(part3 == null || part3.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.limit_dpos_per;
        if(part4 == null || part4.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
    }

    private static Ros2Dsr_msgs2SrvEnableAlterMotion_Request readRos2Dsr_msgs2SrvEnableAlterMotion_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvEnableAlterMotion_Request value = new Ros2Dsr_msgs2SrvEnableAlterMotion_Request();
        value.n = (int)reader.integer(4, true);
        value.mode = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        value.limit_dpos = new double[2];
        for(int i = 0; i < value.limit_dpos.length; ++i)
            value.limit_dpos[i] = reader.f64();
        value.limit_dpos_per = new double[2];
        for(int i = 0; i < value.limit_dpos_per.length; ++i)
            value.limit_dpos_per[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvEnableAlterMotion_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/EnableAlterMotion_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5378b5727bd63d42483a26d7bf5df1aaad836ed6d0456806c7d6cb1f851e8f7f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvEnableAlterMotion_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvEnableAlterMotion_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvEnableAlterMotion_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvEnableAlterMotion_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvEnableAlterMotion_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvEnableAlterMotion_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvEnableAlterMotion_Response value = readRos2Dsr_msgs2SrvEnableAlterMotion_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvEnableAlterMotion_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvEnableAlterMotion_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvEnableAlterMotion_Response readRos2Dsr_msgs2SrvEnableAlterMotion_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvEnableAlterMotion_Response value = new Ros2Dsr_msgs2SrvEnableAlterMotion_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvFkin_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Fkin_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f068464c2b4970811378456c7d036a2697c43d38736447fbbdbf4b1fafe2625f";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvFkin_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvFkin_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvFkin_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvFkin_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvFkin_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvFkin_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvFkin_Request value = readRos2Dsr_msgs2SrvFkin_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvFkin_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvFkin_Request value)
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

    private static Ros2Dsr_msgs2SrvFkin_Request readRos2Dsr_msgs2SrvFkin_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvFkin_Request value = new Ros2Dsr_msgs2SrvFkin_Request();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvFkin_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Fkin_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b373f093b247590ca30d22f0cc8bd5104267b03ac14301795a5aa8796b5e7d1b";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] conv_posx = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvFkin_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvFkin_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvFkin_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvFkin_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvFkin_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvFkin_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvFkin_Response value = readRos2Dsr_msgs2SrvFkin_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvFkin_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvFkin_Response value)
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

    private static Ros2Dsr_msgs2SrvFkin_Response readRos2Dsr_msgs2SrvFkin_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvFkin_Response value = new Ros2Dsr_msgs2SrvFkin_Response();
        value.conv_posx = new double[6];
        for(int i = 0; i < value.conv_posx.length; ++i)
            value.conv_posx[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetControlMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetControlMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d80c98c4bc5b2426b9842f3dc9e9d282449cffd222efaacdc23a09205c3c69ea";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetControlMode_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetControlMode_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetControlMode_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetControlMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetControlMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetControlMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetControlMode_Request value = readRos2Dsr_msgs2SrvGetControlMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetControlMode_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetControlMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetControlMode_Request readRos2Dsr_msgs2SrvGetControlMode_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetControlMode_Request value = new Ros2Dsr_msgs2SrvGetControlMode_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetControlMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetControlMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_56a3a864dffea1761165081f90a8303246177905522e84e0f30a12526117e824";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte control_mode = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetControlMode_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetControlMode_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetControlMode_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetControlMode_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetControlMode_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetControlMode_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetControlMode_Response value = readRos2Dsr_msgs2SrvGetControlMode_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetControlMode_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetControlMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.control_mode;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetControlMode_Response readRos2Dsr_msgs2SrvGetControlMode_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetControlMode_Response value = new Ros2Dsr_msgs2SrvGetControlMode_Response();
        value.control_mode = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetControlSpace_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetControlSpace_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ea6654e3794c2b36c3d10311e407b6d4e12bca59b9a9b763880917e762e6dfaa";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetControlSpace_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetControlSpace_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetControlSpace_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetControlSpace_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetControlSpace_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetControlSpace_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetControlSpace_Request value = readRos2Dsr_msgs2SrvGetControlSpace_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetControlSpace_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetControlSpace_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetControlSpace_Request readRos2Dsr_msgs2SrvGetControlSpace_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetControlSpace_Request value = new Ros2Dsr_msgs2SrvGetControlSpace_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetControlSpace_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetControlSpace_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_546ae346425d48252237f4b3f129145e5190dda43e29bf4080bc17a489deef41";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte space = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetControlSpace_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetControlSpace_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetControlSpace_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetControlSpace_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetControlSpace_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetControlSpace_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetControlSpace_Response value = readRos2Dsr_msgs2SrvGetControlSpace_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetControlSpace_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetControlSpace_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.space;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetControlSpace_Response readRos2Dsr_msgs2SrvGetControlSpace_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetControlSpace_Response value = new Ros2Dsr_msgs2SrvGetControlSpace_Response();
        value.space = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_08335af395bc5602dfc0ed599a45d1a0e315a404729bc430fcf1e2c8f7b815e7";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte channel = 0;

        public Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request value = readRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.channel;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request readRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request value = new Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request();
        value.channel = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e6980a35668e6e96dc588b8e47aa0b5b33235f1e7f36aa9503378749ce707d09";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        public double value = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response value = readRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.value;
        writer.f64(part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response readRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response value = new Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response();
        value.value = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d4a390f79cd4ec51ae40899d9f2253f49a9d589029a03625f4078e7c5d511e4e";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte index = 0;

        public Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request value = readRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request readRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request value = new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request();
        value.index = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ff53e438120200e50511d0ddbae9498084bb690292d45a46701e9efe915e03d";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte value = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response value = readRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.value;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response readRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response value = new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response();
        value.value = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ef4e865a9b5c7402332ec14ed19177cdb88503352a0a53b2746045dadac02e55";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte index = 0;

        public Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request value = readRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request readRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request value = new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request();
        value.index = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d5048e8f272eda1d8c034f65d357ff49b5a0407f7ec0c6255b4919c7e41dce02";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte value = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response value = readRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.value;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response readRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response value = new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response();
        value.value = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentPose_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPose_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d5b0aeb2f72918c086d24e32685fb17be635849416d2dc9a440dd51b409af06c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte space_type = 0;

        public Ros2Dsr_msgs2SrvGetCurrentPose_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentPose_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentPose_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentPose_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentPose_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentPose_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentPose_Request value = readRos2Dsr_msgs2SrvGetCurrentPose_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentPose_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentPose_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.space_type;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentPose_Request readRos2Dsr_msgs2SrvGetCurrentPose_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentPose_Request value = new Ros2Dsr_msgs2SrvGetCurrentPose_Request();
        value.space_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentPose_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPose_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_296fc33e4b04d2c770600842339bd545bbe72b8ba700a2236c3983c80124dcf1";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentPose_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentPose_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentPose_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentPose_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentPose_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentPose_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentPose_Response value = readRos2Dsr_msgs2SrvGetCurrentPose_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentPose_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentPose_Response value)
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

    private static Ros2Dsr_msgs2SrvGetCurrentPose_Response readRos2Dsr_msgs2SrvGetCurrentPose_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentPose_Response value = new Ros2Dsr_msgs2SrvGetCurrentPose_Response();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentPosj_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPosj_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1cf038d6627d1a5ddcf3ffbce7cfd1416e9d3e8c63dc13c38dfa139050544f44";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetCurrentPosj_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentPosj_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentPosj_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentPosj_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentPosj_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentPosj_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentPosj_Request value = readRos2Dsr_msgs2SrvGetCurrentPosj_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentPosj_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentPosj_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetCurrentPosj_Request readRos2Dsr_msgs2SrvGetCurrentPosj_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentPosj_Request value = new Ros2Dsr_msgs2SrvGetCurrentPosj_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentPosj_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPosj_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f1b5d0285e81567ee77f3b688de5f6eb3c1340e2e99f6d5030d0ac77b7088e13";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentPosj_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentPosj_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentPosj_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentPosj_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentPosj_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentPosj_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentPosj_Response value = readRos2Dsr_msgs2SrvGetCurrentPosj_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentPosj_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentPosj_Response value)
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

    private static Ros2Dsr_msgs2SrvGetCurrentPosj_Response readRos2Dsr_msgs2SrvGetCurrentPosj_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentPosj_Response value = new Ros2Dsr_msgs2SrvGetCurrentPosj_Response();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentPosx_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPosx_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_57fc5ddeafbed4d32ed4ba322abf43b4ffbe73c3b737f0529b3e60ef01ce9943";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvGetCurrentPosx_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentPosx_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentPosx_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentPosx_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentPosx_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentPosx_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentPosx_Request value = readRos2Dsr_msgs2SrvGetCurrentPosx_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentPosx_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentPosx_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentPosx_Request readRos2Dsr_msgs2SrvGetCurrentPosx_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentPosx_Request value = new Ros2Dsr_msgs2SrvGetCurrentPosx_Request();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentPosx_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPosx_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cb48d05f4193cfb0a70d674a2f4845edca145c1ec2df8f76e3776a75fa0254a8";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 2213;
        public Ros2Std_msgsMsgFloat64MultiArray[] task_pos_info = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentPosx_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentPosx_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentPosx_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentPosx_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentPosx_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentPosx_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentPosx_Response value = readRos2Dsr_msgs2SrvGetCurrentPosx_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentPosx_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentPosx_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.task_pos_info;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentPosx_Response readRos2Dsr_msgs2SrvGetCurrentPosx_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentPosx_Response value = new Ros2Dsr_msgs2SrvGetCurrentPosx_Response();
        value.task_pos_info = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.task_pos_info.length; ++i)
            value.task_pos_info[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentRotm_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentRotm_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c691d82e22924caeb734c965ee15cf46ea206aabd4621b14bde07833b661971c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvGetCurrentRotm_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentRotm_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentRotm_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentRotm_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentRotm_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentRotm_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentRotm_Request value = readRos2Dsr_msgs2SrvGetCurrentRotm_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentRotm_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentRotm_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentRotm_Request readRos2Dsr_msgs2SrvGetCurrentRotm_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentRotm_Request value = new Ros2Dsr_msgs2SrvGetCurrentRotm_Request();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentRotm_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentRotm_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_07665bca70c62297a983ff28a353b8dc3e25a55b938d1e8a7d00f7b99fe659ca";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 2213;
        public Ros2Std_msgsMsgFloat64MultiArray[] rot_matrix = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentRotm_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentRotm_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentRotm_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentRotm_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentRotm_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentRotm_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentRotm_Response value = readRos2Dsr_msgs2SrvGetCurrentRotm_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentRotm_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentRotm_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.rot_matrix;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part0[i]);
        }
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentRotm_Response readRos2Dsr_msgs2SrvGetCurrentRotm_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentRotm_Response value = new Ros2Dsr_msgs2SrvGetCurrentRotm_Response();
        value.rot_matrix = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.rot_matrix.length; ++i)
            value.rot_matrix[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentSolutionSpace_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7cd7c65658f1063c1ef9af93d72f1414d547179bd00310cb70301e6f93029a96";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request value = readRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request readRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request value = new Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentSolutionSpace_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f414cb291de9891680fd80e6173f5026cc105fb4d0a84781a65a44f8104fa34a";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte sol_space = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response value = readRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.sol_space;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response readRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response value = new Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response();
        value.sol_space = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentTcp_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentTcp_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4324587d3246a8127cd50048c55cd3c472eed6d4c3af4aefa3216a8936a06ee4";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetCurrentTcp_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentTcp_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentTcp_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentTcp_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentTcp_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentTcp_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentTcp_Request value = readRos2Dsr_msgs2SrvGetCurrentTcp_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentTcp_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentTcp_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetCurrentTcp_Request readRos2Dsr_msgs2SrvGetCurrentTcp_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentTcp_Request value = new Ros2Dsr_msgs2SrvGetCurrentTcp_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentTcp_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentTcp_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f1cf522c9008d5c97f5fa8616d2baef9aef355350189c2ca77a22189a235c596";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String info = "";
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentTcp_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentTcp_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentTcp_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentTcp_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentTcp_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentTcp_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentTcp_Response value = readRos2Dsr_msgs2SrvGetCurrentTcp_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentTcp_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentTcp_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.info;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentTcp_Response readRos2Dsr_msgs2SrvGetCurrentTcp_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentTcp_Response value = new Ros2Dsr_msgs2SrvGetCurrentTcp_Response();
        value.info = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentTool_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentTool_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_59737c01f8da615dc929190326bddd2d2e65b813f2407770c04b8d7afc915351";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetCurrentTool_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentTool_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentTool_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentTool_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentTool_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentTool_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentTool_Request value = readRos2Dsr_msgs2SrvGetCurrentTool_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentTool_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentTool_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetCurrentTool_Request readRos2Dsr_msgs2SrvGetCurrentTool_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentTool_Request value = new Ros2Dsr_msgs2SrvGetCurrentTool_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentTool_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentTool_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6be3858c1b239a883173227e0b498af9123c7e23f76db6024275dbc7e1b5aa5b";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String info = "";
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentTool_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentTool_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentTool_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentTool_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentTool_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentTool_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentTool_Response value = readRos2Dsr_msgs2SrvGetCurrentTool_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentTool_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentTool_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.info;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentTool_Response readRos2Dsr_msgs2SrvGetCurrentTool_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentTool_Response value = new Ros2Dsr_msgs2SrvGetCurrentTool_Response();
        value.info = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentToolFlangePosx_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e029ff9167245532d66a76380ba9ab1753d56b402ab1242ac13a91ede1350d02";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request value = readRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request readRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request value = new Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentToolFlangePosx_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_be24b0c65aa81bdfa3b349ca08b207b8cbb9f8622dd97559c160c92ce93e16c6";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response value = readRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response value)
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

    private static Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response readRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response value = new Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentVelj_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentVelj_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d4bef08af9d4ed3e0b44b015c85c70f8c687871846818a46b97db4351b8ad876";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetCurrentVelj_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentVelj_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentVelj_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentVelj_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentVelj_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentVelj_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentVelj_Request value = readRos2Dsr_msgs2SrvGetCurrentVelj_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentVelj_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentVelj_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetCurrentVelj_Request readRos2Dsr_msgs2SrvGetCurrentVelj_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentVelj_Request value = new Ros2Dsr_msgs2SrvGetCurrentVelj_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentVelj_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentVelj_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d07a760d106d768184e69426ef5e23d6ffd7569a0ae6c30fdc7e627ecdba494d";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] joint_speed = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentVelj_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentVelj_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentVelj_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentVelj_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentVelj_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentVelj_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentVelj_Response value = readRos2Dsr_msgs2SrvGetCurrentVelj_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentVelj_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentVelj_Response value)
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

    private static Ros2Dsr_msgs2SrvGetCurrentVelj_Response readRos2Dsr_msgs2SrvGetCurrentVelj_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentVelj_Response value = new Ros2Dsr_msgs2SrvGetCurrentVelj_Response();
        value.joint_speed = new double[6];
        for(int i = 0; i < value.joint_speed.length; ++i)
            value.joint_speed[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentVelx_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentVelx_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f14760f7a2387ae587c28c05ec130e4728e85c38961813d9932adf037c353e83";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvGetCurrentVelx_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentVelx_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentVelx_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentVelx_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentVelx_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentVelx_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentVelx_Request value = readRos2Dsr_msgs2SrvGetCurrentVelx_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentVelx_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentVelx_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetCurrentVelx_Request readRos2Dsr_msgs2SrvGetCurrentVelx_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentVelx_Request value = new Ros2Dsr_msgs2SrvGetCurrentVelx_Request();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetCurrentVelx_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentVelx_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2f9645de7b8fec40b7dbcf9d572404009d9ff7f96ef3692ca7bc8fbfc5188aef";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] vel = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetCurrentVelx_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetCurrentVelx_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetCurrentVelx_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetCurrentVelx_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetCurrentVelx_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetCurrentVelx_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetCurrentVelx_Response value = readRos2Dsr_msgs2SrvGetCurrentVelx_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetCurrentVelx_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetCurrentVelx_Response value)
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

    private static Ros2Dsr_msgs2SrvGetCurrentVelx_Response readRos2Dsr_msgs2SrvGetCurrentVelx_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetCurrentVelx_Response value = new Ros2Dsr_msgs2SrvGetCurrentVelx_Response();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDesiredPosj_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredPosj_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9c8b229eb0bd52e826fdc03e6826b532897aae952e841e35b31c866edf0b3cd5";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetDesiredPosj_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDesiredPosj_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDesiredPosj_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDesiredPosj_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDesiredPosj_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDesiredPosj_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDesiredPosj_Request value = readRos2Dsr_msgs2SrvGetDesiredPosj_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDesiredPosj_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDesiredPosj_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetDesiredPosj_Request readRos2Dsr_msgs2SrvGetDesiredPosj_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDesiredPosj_Request value = new Ros2Dsr_msgs2SrvGetDesiredPosj_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDesiredPosj_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredPosj_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0a725b8def984030fb01a2847d7e792b77e7d49007bd996b990671ceaa5facc0";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetDesiredPosj_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDesiredPosj_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDesiredPosj_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDesiredPosj_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDesiredPosj_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDesiredPosj_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDesiredPosj_Response value = readRos2Dsr_msgs2SrvGetDesiredPosj_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDesiredPosj_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDesiredPosj_Response value)
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

    private static Ros2Dsr_msgs2SrvGetDesiredPosj_Response readRos2Dsr_msgs2SrvGetDesiredPosj_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDesiredPosj_Response value = new Ros2Dsr_msgs2SrvGetDesiredPosj_Response();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDesiredPosx_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredPosx_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6f9016a247e3c8c489ffbf4fc16c4c457e21220294e6859496ec3015441dc069";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvGetDesiredPosx_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDesiredPosx_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDesiredPosx_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDesiredPosx_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDesiredPosx_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDesiredPosx_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDesiredPosx_Request value = readRos2Dsr_msgs2SrvGetDesiredPosx_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDesiredPosx_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDesiredPosx_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetDesiredPosx_Request readRos2Dsr_msgs2SrvGetDesiredPosx_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDesiredPosx_Request value = new Ros2Dsr_msgs2SrvGetDesiredPosx_Request();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDesiredPosx_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredPosx_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cc1f5ad8fd61a77b2c0dbdb1f9e0c7b899b1bdfdbf535308bbd160d001ad1c09";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetDesiredPosx_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDesiredPosx_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDesiredPosx_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDesiredPosx_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDesiredPosx_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDesiredPosx_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDesiredPosx_Response value = readRos2Dsr_msgs2SrvGetDesiredPosx_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDesiredPosx_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDesiredPosx_Response value)
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

    private static Ros2Dsr_msgs2SrvGetDesiredPosx_Response readRos2Dsr_msgs2SrvGetDesiredPosx_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDesiredPosx_Response value = new Ros2Dsr_msgs2SrvGetDesiredPosx_Response();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDesiredVelj_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredVelj_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_56535748a42f6d003d24c5e176ca34bb960e9d112f209080178a55450e52d281";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetDesiredVelj_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDesiredVelj_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDesiredVelj_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDesiredVelj_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDesiredVelj_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDesiredVelj_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDesiredVelj_Request value = readRos2Dsr_msgs2SrvGetDesiredVelj_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDesiredVelj_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDesiredVelj_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetDesiredVelj_Request readRos2Dsr_msgs2SrvGetDesiredVelj_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDesiredVelj_Request value = new Ros2Dsr_msgs2SrvGetDesiredVelj_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDesiredVelj_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredVelj_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_709f364917c007a6561766e576cdfb7c1e39e72b1852f83c9bec61721dd3b936";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] joint_vel = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetDesiredVelj_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDesiredVelj_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDesiredVelj_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDesiredVelj_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDesiredVelj_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDesiredVelj_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDesiredVelj_Response value = readRos2Dsr_msgs2SrvGetDesiredVelj_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDesiredVelj_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDesiredVelj_Response value)
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

    private static Ros2Dsr_msgs2SrvGetDesiredVelj_Response readRos2Dsr_msgs2SrvGetDesiredVelj_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDesiredVelj_Response value = new Ros2Dsr_msgs2SrvGetDesiredVelj_Response();
        value.joint_vel = new double[6];
        for(int i = 0; i < value.joint_vel.length; ++i)
            value.joint_vel[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDesiredVelx_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredVelx_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_754325c879930a58938d2acd7433605cc148cf57341fe9b0ef1870653a9fae12";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvGetDesiredVelx_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDesiredVelx_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDesiredVelx_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDesiredVelx_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDesiredVelx_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDesiredVelx_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDesiredVelx_Request value = readRos2Dsr_msgs2SrvGetDesiredVelx_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDesiredVelx_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDesiredVelx_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetDesiredVelx_Request readRos2Dsr_msgs2SrvGetDesiredVelx_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDesiredVelx_Request value = new Ros2Dsr_msgs2SrvGetDesiredVelx_Request();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDesiredVelx_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredVelx_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_55addb1448eb568ef90aa85cdeeee8044d9b37544a7ca4d208e91ba3aefe16bc";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] vel = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetDesiredVelx_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDesiredVelx_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDesiredVelx_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDesiredVelx_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDesiredVelx_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDesiredVelx_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDesiredVelx_Response value = readRos2Dsr_msgs2SrvGetDesiredVelx_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDesiredVelx_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDesiredVelx_Response value)
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

    private static Ros2Dsr_msgs2SrvGetDesiredVelx_Response readRos2Dsr_msgs2SrvGetDesiredVelx_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDesiredVelx_Response value = new Ros2Dsr_msgs2SrvGetDesiredVelx_Response();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDrlState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDrlState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_19a78a7cf9b010009bc481194271904a47cad587fa2e46fcc01e9e3f94c65e3e";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetDrlState_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDrlState_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDrlState_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDrlState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDrlState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDrlState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDrlState_Request value = readRos2Dsr_msgs2SrvGetDrlState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDrlState_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDrlState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetDrlState_Request readRos2Dsr_msgs2SrvGetDrlState_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDrlState_Request value = new Ros2Dsr_msgs2SrvGetDrlState_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetDrlState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetDrlState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_58b6574dd8d3006509e0e7c98a4d64f32fc1a3fa5e8a8efcb567e9c34b102699";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte drl_state = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetDrlState_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetDrlState_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetDrlState_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetDrlState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetDrlState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetDrlState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetDrlState_Response value = readRos2Dsr_msgs2SrvGetDrlState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetDrlState_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetDrlState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.drl_state;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetDrlState_Response readRos2Dsr_msgs2SrvGetDrlState_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetDrlState_Response value = new Ros2Dsr_msgs2SrvGetDrlState_Response();
        value.drl_state = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetExternalTorque_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetExternalTorque_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_90ea09af03677cd42016abf4e88e4ef73e7aad43c5bf37804c7f50918ad71f3a";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetExternalTorque_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetExternalTorque_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetExternalTorque_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetExternalTorque_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetExternalTorque_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetExternalTorque_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetExternalTorque_Request value = readRos2Dsr_msgs2SrvGetExternalTorque_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetExternalTorque_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetExternalTorque_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetExternalTorque_Request readRos2Dsr_msgs2SrvGetExternalTorque_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetExternalTorque_Request value = new Ros2Dsr_msgs2SrvGetExternalTorque_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetExternalTorque_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetExternalTorque_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_617665ff9f0817f3426b8fb61409061d5f7cde6603c61993e1aec013b3021f6d";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] ext_torque = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetExternalTorque_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetExternalTorque_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetExternalTorque_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetExternalTorque_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetExternalTorque_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetExternalTorque_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetExternalTorque_Response value = readRos2Dsr_msgs2SrvGetExternalTorque_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetExternalTorque_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetExternalTorque_Response value)
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

    private static Ros2Dsr_msgs2SrvGetExternalTorque_Response readRos2Dsr_msgs2SrvGetExternalTorque_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetExternalTorque_Response value = new Ros2Dsr_msgs2SrvGetExternalTorque_Response();
        value.ext_torque = new double[6];
        for(int i = 0; i < value.ext_torque.length; ++i)
            value.ext_torque[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetInputRegisterBit_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterBit_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_357c348741cb21e92bd0e4962361dd84ed11db8f6868d84e4cdfd535fc215cae";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int address = 0;
        public long timeout_ms = 0;

        public Ros2Dsr_msgs2SrvGetInputRegisterBit_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetInputRegisterBit_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetInputRegisterBit_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetInputRegisterBit_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetInputRegisterBit_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetInputRegisterBit_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetInputRegisterBit_Request value = readRos2Dsr_msgs2SrvGetInputRegisterBit_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetInputRegisterBit_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetInputRegisterBit_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 2, false);
        long part1 = value.timeout_ms;
        writer.integer(part1, 4, false);
    }

    private static Ros2Dsr_msgs2SrvGetInputRegisterBit_Request readRos2Dsr_msgs2SrvGetInputRegisterBit_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetInputRegisterBit_Request value = new Ros2Dsr_msgs2SrvGetInputRegisterBit_Request();
        value.address = (int)reader.integer(2, false);
        value.timeout_ms = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetInputRegisterBit_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterBit_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a47c01d50519e552cfedf4ecaf6d52febaa0a4eb846ebc73256fe88219b647aa";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public boolean success = false;
        public int value = 0;

        public Ros2Dsr_msgs2SrvGetInputRegisterBit_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetInputRegisterBit_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetInputRegisterBit_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetInputRegisterBit_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetInputRegisterBit_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetInputRegisterBit_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetInputRegisterBit_Response value = readRos2Dsr_msgs2SrvGetInputRegisterBit_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetInputRegisterBit_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetInputRegisterBit_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        int part1 = value.value;
        writer.integer(part1, 4, true);
    }

    private static Ros2Dsr_msgs2SrvGetInputRegisterBit_Response readRos2Dsr_msgs2SrvGetInputRegisterBit_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetInputRegisterBit_Response value = new Ros2Dsr_msgs2SrvGetInputRegisterBit_Response();
        value.success = readBool(reader);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterFloat_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_88a6866efcf1e3620b98a77d2bc65cbf2dc9e3fb6e00b3e06fdc84ee8b5a2f3b";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int address = 0;
        public long timeout_ms = 0;

        public Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetInputRegisterFloat_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request value = readRos2Dsr_msgs2SrvGetInputRegisterFloat_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetInputRegisterFloat_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 2, false);
        long part1 = value.timeout_ms;
        writer.integer(part1, 4, false);
    }

    private static Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request readRos2Dsr_msgs2SrvGetInputRegisterFloat_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request value = new Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request();
        value.address = (int)reader.integer(2, false);
        value.timeout_ms = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterFloat_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_db86cc9f47469a5d595a6df3b10e546d227dca5dbad7a381ed600acc33e5d769";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        public boolean success = false;
        public double value = 0;

        public Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetInputRegisterFloat_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response value = readRos2Dsr_msgs2SrvGetInputRegisterFloat_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetInputRegisterFloat_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        double part1 = value.value;
        writer.f64(part1);
    }

    private static Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response readRos2Dsr_msgs2SrvGetInputRegisterFloat_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response value = new Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response();
        value.success = readBool(reader);
        value.value = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetInputRegisterInt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterInt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6fd37a43a6ff9f007ab73847710554a1a594bc14722c9d3223dbaae55a4c073e";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int address = 0;
        public long timeout_ms = 0;

        public Ros2Dsr_msgs2SrvGetInputRegisterInt_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetInputRegisterInt_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetInputRegisterInt_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetInputRegisterInt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetInputRegisterInt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetInputRegisterInt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetInputRegisterInt_Request value = readRos2Dsr_msgs2SrvGetInputRegisterInt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetInputRegisterInt_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetInputRegisterInt_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 2, false);
        long part1 = value.timeout_ms;
        writer.integer(part1, 4, false);
    }

    private static Ros2Dsr_msgs2SrvGetInputRegisterInt_Request readRos2Dsr_msgs2SrvGetInputRegisterInt_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetInputRegisterInt_Request value = new Ros2Dsr_msgs2SrvGetInputRegisterInt_Request();
        value.address = (int)reader.integer(2, false);
        value.timeout_ms = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetInputRegisterInt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterInt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4a10e84cb1cc84e780ea1bf19a94fcf1e09e45da33805f631fa0e455447587f0";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public boolean success = false;
        public int value = 0;

        public Ros2Dsr_msgs2SrvGetInputRegisterInt_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetInputRegisterInt_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetInputRegisterInt_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetInputRegisterInt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetInputRegisterInt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetInputRegisterInt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetInputRegisterInt_Response value = readRos2Dsr_msgs2SrvGetInputRegisterInt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetInputRegisterInt_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetInputRegisterInt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        int part1 = value.value;
        writer.integer(part1, 4, true);
    }

    private static Ros2Dsr_msgs2SrvGetInputRegisterInt_Response readRos2Dsr_msgs2SrvGetInputRegisterInt_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetInputRegisterInt_Response value = new Ros2Dsr_msgs2SrvGetInputRegisterInt_Response();
        value.success = readBool(reader);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetJointTorque_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetJointTorque_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a64a36840ca8a9251b84fed17cea36d2f1ce027543af9ed22e05231e2765957a";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetJointTorque_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetJointTorque_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetJointTorque_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetJointTorque_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetJointTorque_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetJointTorque_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetJointTorque_Request value = readRos2Dsr_msgs2SrvGetJointTorque_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetJointTorque_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetJointTorque_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetJointTorque_Request readRos2Dsr_msgs2SrvGetJointTorque_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetJointTorque_Request value = new Ros2Dsr_msgs2SrvGetJointTorque_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetJointTorque_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetJointTorque_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7d229e0af82b76fe9f92601976226517ee3a47fd36bf251f6190527ec2e2dc2a";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] jts = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetJointTorque_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetJointTorque_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetJointTorque_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetJointTorque_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetJointTorque_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetJointTorque_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetJointTorque_Response value = readRos2Dsr_msgs2SrvGetJointTorque_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetJointTorque_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetJointTorque_Response value)
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

    private static Ros2Dsr_msgs2SrvGetJointTorque_Response readRos2Dsr_msgs2SrvGetJointTorque_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetJointTorque_Response value = new Ros2Dsr_msgs2SrvGetJointTorque_Response();
        value.jts = new double[6];
        for(int i = 0; i < value.jts.length; ++i)
            value.jts[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetLastAlarm_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetLastAlarm_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6569afb5dceb62e7ee95948c1140bdf5d9dcfe8532b75922722be2b02f016fcf";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetLastAlarm_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetLastAlarm_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetLastAlarm_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetLastAlarm_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetLastAlarm_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetLastAlarm_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetLastAlarm_Request value = readRos2Dsr_msgs2SrvGetLastAlarm_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetLastAlarm_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetLastAlarm_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetLastAlarm_Request readRos2Dsr_msgs2SrvGetLastAlarm_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetLastAlarm_Request value = new Ros2Dsr_msgs2SrvGetLastAlarm_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetLastAlarm_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetLastAlarm_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa52a4735e3553d57e209a9307e120bd1731375d7b6864bf9b0415241527ee75";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 793;
        public Ros2Dsr_msgs2MsgLogAlarm log_alarm = new Ros2Dsr_msgs2MsgLogAlarm();
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetLastAlarm_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetLastAlarm_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetLastAlarm_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetLastAlarm_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetLastAlarm_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetLastAlarm_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetLastAlarm_Response value = readRos2Dsr_msgs2SrvGetLastAlarm_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetLastAlarm_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetLastAlarm_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Dsr_msgs2MsgLogAlarm part0 = value.log_alarm;
        writeRos2Dsr_msgs2MsgLogAlarm(writer, part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetLastAlarm_Response readRos2Dsr_msgs2SrvGetLastAlarm_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetLastAlarm_Response value = new Ros2Dsr_msgs2SrvGetLastAlarm_Response();
        value.log_alarm = readRos2Dsr_msgs2MsgLogAlarm(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetModbusInput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetModbusInput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d2d8933898289af4b6c70b9ed412b435e3cbcfe3d2dd7675ff743a8f122fb32d";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros2Dsr_msgs2SrvGetModbusInput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetModbusInput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetModbusInput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetModbusInput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetModbusInput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetModbusInput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetModbusInput_Request value = readRos2Dsr_msgs2SrvGetModbusInput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetModbusInput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetModbusInput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvGetModbusInput_Request readRos2Dsr_msgs2SrvGetModbusInput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetModbusInput_Request value = new Ros2Dsr_msgs2SrvGetModbusInput_Request();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetModbusInput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetModbusInput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_de8c061ac9312f7d708a3419b0f191d2e11f1727c777b0eecf9b2c3d36253c4f";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public int value = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetModbusInput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetModbusInput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetModbusInput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetModbusInput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetModbusInput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetModbusInput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetModbusInput_Response value = readRos2Dsr_msgs2SrvGetModbusInput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetModbusInput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetModbusInput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.value;
        writer.integer(part0, 4, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetModbusInput_Response readRos2Dsr_msgs2SrvGetModbusInput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetModbusInput_Response value = new Ros2Dsr_msgs2SrvGetModbusInput_Response();
        value.value = (int)reader.integer(4, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetOrientationError_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetOrientationError_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ed52ab6a577110781d73a51700a5617cf94898921e5bab39cb64e66b84a6781f";
        public static final int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 97;
        public double[] xd = new double[6];
        public double[] xc = new double[6];
        public byte axis = 0;

        public Ros2Dsr_msgs2SrvGetOrientationError_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetOrientationError_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetOrientationError_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetOrientationError_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetOrientationError_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetOrientationError_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetOrientationError_Request value = readRos2Dsr_msgs2SrvGetOrientationError_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetOrientationError_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetOrientationError_Request value)
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

    private static Ros2Dsr_msgs2SrvGetOrientationError_Request readRos2Dsr_msgs2SrvGetOrientationError_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetOrientationError_Request value = new Ros2Dsr_msgs2SrvGetOrientationError_Request();
        value.xd = new double[6];
        for(int i = 0; i < value.xd.length; ++i)
            value.xd[i] = reader.f64();
        value.xc = new double[6];
        for(int i = 0; i < value.xc.length; ++i)
            value.xc[i] = reader.f64();
        value.axis = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetOrientationError_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetOrientationError_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ac13995c7c96b9dd8bc2c3ccc6eabfa4347c9e78872c16a6e6388f18d36c6983";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public float ori_error = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetOrientationError_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetOrientationError_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetOrientationError_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetOrientationError_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetOrientationError_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetOrientationError_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetOrientationError_Response value = readRos2Dsr_msgs2SrvGetOrientationError_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetOrientationError_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetOrientationError_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.ori_error;
        writer.f32(part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetOrientationError_Response readRos2Dsr_msgs2SrvGetOrientationError_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetOrientationError_Response value = new Ros2Dsr_msgs2SrvGetOrientationError_Response();
        value.ori_error = reader.f32();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterBit_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6cd40872bca1d3fa7d7b84ead3e343ca62d7a5b60cdbf963e77f6078d8c98083";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int address = 0;
        public long timeout_ms = 0;

        public Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetOutputRegisterBit_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request value = readRos2Dsr_msgs2SrvGetOutputRegisterBit_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetOutputRegisterBit_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 2, false);
        long part1 = value.timeout_ms;
        writer.integer(part1, 4, false);
    }

    private static Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request readRos2Dsr_msgs2SrvGetOutputRegisterBit_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request value = new Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request();
        value.address = (int)reader.integer(2, false);
        value.timeout_ms = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterBit_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b877098bff97ac0e198a657581e4a76da6c2f2eeb46969fcd26ad447f1e19efa";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public boolean success = false;
        public int value = 0;

        public Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetOutputRegisterBit_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response value = readRos2Dsr_msgs2SrvGetOutputRegisterBit_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetOutputRegisterBit_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        int part1 = value.value;
        writer.integer(part1, 4, true);
    }

    private static Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response readRos2Dsr_msgs2SrvGetOutputRegisterBit_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response value = new Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response();
        value.success = readBool(reader);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterFloat_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3f94d068d679b118d2b59fa33f60f189341c0ecd92bf11425d87807b2fde96d6";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int address = 0;
        public long timeout_ms = 0;

        public Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetOutputRegisterFloat_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request value = readRos2Dsr_msgs2SrvGetOutputRegisterFloat_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetOutputRegisterFloat_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 2, false);
        long part1 = value.timeout_ms;
        writer.integer(part1, 4, false);
    }

    private static Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request readRos2Dsr_msgs2SrvGetOutputRegisterFloat_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request value = new Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request();
        value.address = (int)reader.integer(2, false);
        value.timeout_ms = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterFloat_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3000a283d591bd17a2303bdf11aea290c034c1fd7117988e66c88f592e721e68";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        public boolean success = false;
        public double value = 0;

        public Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetOutputRegisterFloat_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response value = readRos2Dsr_msgs2SrvGetOutputRegisterFloat_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetOutputRegisterFloat_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        double part1 = value.value;
        writer.f64(part1);
    }

    private static Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response readRos2Dsr_msgs2SrvGetOutputRegisterFloat_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response value = new Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response();
        value.success = readBool(reader);
        value.value = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterInt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4607112e6d1de21f44ba61b1af7d51446414259a2ef365abdd37d4ff3bdff7f6";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int address = 0;
        public long timeout_ms = 0;

        public Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetOutputRegisterInt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request value = readRos2Dsr_msgs2SrvGetOutputRegisterInt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetOutputRegisterInt_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 2, false);
        long part1 = value.timeout_ms;
        writer.integer(part1, 4, false);
    }

    private static Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request readRos2Dsr_msgs2SrvGetOutputRegisterInt_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request value = new Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request();
        value.address = (int)reader.integer(2, false);
        value.timeout_ms = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterInt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4d2643dccba189da62bfaf4103f670af774170b1c18e28a2ae112312df6ad691";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public boolean success = false;
        public int value = 0;

        public Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetOutputRegisterInt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response value = readRos2Dsr_msgs2SrvGetOutputRegisterInt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetOutputRegisterInt_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        int part1 = value.value;
        writer.integer(part1, 4, true);
    }

    private static Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response readRos2Dsr_msgs2SrvGetOutputRegisterInt_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response value = new Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response();
        value.success = readBool(reader);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotLinkInfo_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_50bc4a4885829a821fa2a5bd1ad8b223f7b595344448fbdbb2fddf5ee75e17e1";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotLinkInfo_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request value = readRos2Dsr_msgs2SrvGetRobotLinkInfo_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotLinkInfo_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request readRos2Dsr_msgs2SrvGetRobotLinkInfo_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request value = new Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotLinkInfo_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_aaf1a964ea2e5d6a049a074bd4b01538ef0b43b234da9de6b034a67524087641";
        public static final int MIN_WIRE_BYTES = 129, MAX_WIRE_BYTES = 129;
        public float[] d = new float[6];
        public float[] a = new float[6];
        public float[] alpha = new float[6];
        public float[] theta = new float[6];
        public float[] offset = new float[6];
        public float gradient = 0;
        public float rotation = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotLinkInfo_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response value = readRos2Dsr_msgs2SrvGetRobotLinkInfo_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotLinkInfo_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.d;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float[] part1 = value.a;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f32(part1[i]);
        }
        float[] part2 = value.alpha;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
        }
        float[] part3 = value.theta;
        if(part3 == null || part3.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f32(part3[i]);
        }
        float[] part4 = value.offset;
        if(part4 == null || part4.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f32(part4[i]);
        }
        float part5 = value.gradient;
        writer.f32(part5);
        float part6 = value.rotation;
        writer.f32(part6);
        boolean part7 = value.success;
        writer.integer(part7 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response readRos2Dsr_msgs2SrvGetRobotLinkInfo_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response value = new Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response();
        value.d = new float[6];
        for(int i = 0; i < value.d.length; ++i)
            value.d[i] = reader.f32();
        value.a = new float[6];
        for(int i = 0; i < value.a.length; ++i)
            value.a[i] = reader.f32();
        value.alpha = new float[6];
        for(int i = 0; i < value.alpha.length; ++i)
            value.alpha[i] = reader.f32();
        value.theta = new float[6];
        for(int i = 0; i < value.theta.length; ++i)
            value.theta[i] = reader.f32();
        value.offset = new float[6];
        for(int i = 0; i < value.offset.length; ++i)
            value.offset[i] = reader.f32();
        value.gradient = reader.f32();
        value.rotation = reader.f32();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_945dc18b9de1cec15d388179c6a4abf95a653770164dcac30828f15912ea0136";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetRobotMode_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotMode_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotMode_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotMode_Request value = readRos2Dsr_msgs2SrvGetRobotMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotMode_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetRobotMode_Request readRos2Dsr_msgs2SrvGetRobotMode_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotMode_Request value = new Ros2Dsr_msgs2SrvGetRobotMode_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_91dc6499a4e962f46b46fea554ae304a47ecb4095b47c6d480c866059850aa26";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte robot_mode = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetRobotMode_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotMode_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotMode_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotMode_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotMode_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotMode_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotMode_Response value = readRos2Dsr_msgs2SrvGetRobotMode_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotMode_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_mode;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetRobotMode_Response readRos2Dsr_msgs2SrvGetRobotMode_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotMode_Response value = new Ros2Dsr_msgs2SrvGetRobotMode_Response();
        value.robot_mode = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotSpeedMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1b6760ed64ce308e6189122e754bab03208f5e19a6e4704acf21952abdf37e7e";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotSpeedMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request value = readRos2Dsr_msgs2SrvGetRobotSpeedMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotSpeedMode_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request readRos2Dsr_msgs2SrvGetRobotSpeedMode_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request value = new Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotSpeedMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6eff9e2138055e3845f351abdba3189c47452903dadeaf6760f781a071543947";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte speed_mode = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotSpeedMode_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response value = readRos2Dsr_msgs2SrvGetRobotSpeedMode_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotSpeedMode_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.speed_mode;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response readRos2Dsr_msgs2SrvGetRobotSpeedMode_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response value = new Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response();
        value.speed_mode = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b4e5f89f15b92b48be3a1282f4002b7abafeb141658eac1c0b804c9232062b50";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetRobotState_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotState_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotState_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotState_Request value = readRos2Dsr_msgs2SrvGetRobotState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotState_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetRobotState_Request readRos2Dsr_msgs2SrvGetRobotState_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotState_Request value = new Ros2Dsr_msgs2SrvGetRobotState_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d5bf5bb656a0ac4a621e7e50f40b6fb41ae89cbb4d5b04bc1275815bbb0ab257";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte robot_state = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetRobotState_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotState_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotState_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotState_Response value = readRos2Dsr_msgs2SrvGetRobotState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotState_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_state;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetRobotState_Response readRos2Dsr_msgs2SrvGetRobotState_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotState_Response value = new Ros2Dsr_msgs2SrvGetRobotState_Response();
        value.robot_state = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotSystem_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotSystem_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6d6d5428b67062be616f12385ede2568624ac78d83a1b6e430763dc2f0710829";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetRobotSystem_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotSystem_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotSystem_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotSystem_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotSystem_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotSystem_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotSystem_Request value = readRos2Dsr_msgs2SrvGetRobotSystem_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotSystem_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotSystem_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetRobotSystem_Request readRos2Dsr_msgs2SrvGetRobotSystem_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotSystem_Request value = new Ros2Dsr_msgs2SrvGetRobotSystem_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRobotSystem_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRobotSystem_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_faf6022901539dd3edd6b53d4a0c6d3eea0a210f2c795bf46a67e0243a0d8dd0";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte robot_system = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetRobotSystem_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRobotSystem_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRobotSystem_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRobotSystem_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRobotSystem_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRobotSystem_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRobotSystem_Response value = readRos2Dsr_msgs2SrvGetRobotSystem_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRobotSystem_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRobotSystem_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_system;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetRobotSystem_Response readRos2Dsr_msgs2SrvGetRobotSystem_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRobotSystem_Response value = new Ros2Dsr_msgs2SrvGetRobotSystem_Response();
        value.robot_system = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlInputDataList_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_016df21af56e6e0e76c5f9f24c851caee712b5af235bda04adde82eef33f6a60";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String version = "";

        public Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRtControlInputDataList_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request value = readRos2Dsr_msgs2SrvGetRtControlInputDataList_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRtControlInputDataList_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.version;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request readRos2Dsr_msgs2SrvGetRtControlInputDataList_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request value = new Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request();
        value.version = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlInputDataList_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dad3b9ec5d048ea97669bd52fa94e60abd794f44150599c3b38179e7f3425831";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String data = "";

        public Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRtControlInputDataList_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response value = readRos2Dsr_msgs2SrvGetRtControlInputDataList_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRtControlInputDataList_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.data;
        writeText(writer, part1, 256);
    }

    private static Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response readRos2Dsr_msgs2SrvGetRtControlInputDataList_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response value = new Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response();
        value.success = readBool(reader);
        value.data = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlInputVersionList_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e25f15b810ebadb6eceb8e90bd8aedc9f47b177f5ccd16a6d824cac69e612a96";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request> CODEC =
            new Codec<Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request>() {
                public byte[] encode(Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Dsr_msgs2SrvGetRtControlInputVersionList_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request value = readRos2Dsr_msgs2SrvGetRtControlInputVersionList_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Dsr_msgs2SrvGetRtControlInputVersionList_Request(Codecs.Writer writer,
                                                                                  Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request readRos2Dsr_msgs2SrvGetRtControlInputVersionList_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request value = new Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlInputVersionList_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_39f873a075b2571286ea652cbbc47696b8636138362ba898ce1f06c8fa0a368b";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String version = "";

        public Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response> CODEC =
            new Codec<Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response>() {
                public byte[] encode(Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Dsr_msgs2SrvGetRtControlInputVersionList_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response value = readRos2Dsr_msgs2SrvGetRtControlInputVersionList_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Dsr_msgs2SrvGetRtControlInputVersionList_Response(Codecs.Writer writer,
                                                                                   Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.version;
        writeText(writer, part1, 256);
    }

    private static Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response readRos2Dsr_msgs2SrvGetRtControlInputVersionList_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response value = new Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response();
        value.success = readBool(reader);
        value.version = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlOutputDataList_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b7d3952dd7afa1da9b2a17959d25d20c570eb6195eab0fa4f181fd087555869c";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String version = "";

        public Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetRtControlOutputDataList_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request value = readRos2Dsr_msgs2SrvGetRtControlOutputDataList_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetRtControlOutputDataList_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.version;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request readRos2Dsr_msgs2SrvGetRtControlOutputDataList_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request value = new Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request();
        value.version = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlOutputDataList_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a8663675cd68ff265c06580f16d46a9adaf36be969639c9df85110183eb7a14d";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String data = "";

        public Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response> CODEC =
            new Codec<Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response>() {
                public byte[] encode(Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Dsr_msgs2SrvGetRtControlOutputDataList_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response value = readRos2Dsr_msgs2SrvGetRtControlOutputDataList_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Dsr_msgs2SrvGetRtControlOutputDataList_Response(Codecs.Writer writer,
                                                                                 Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.data;
        writeText(writer, part1, 256);
    }

    private static Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response readRos2Dsr_msgs2SrvGetRtControlOutputDataList_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response value = new Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response();
        value.success = readBool(reader);
        value.data = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlOutputVersionList_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_401ad45a4fa41515c9aef3432ec08cb280885d54582e8c1c81f9f079352cb5e6";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request> CODEC =
            new Codec<Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request>() {
                public byte[] encode(Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request value = readRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(Codecs.Writer writer,
                                                                                   Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request readRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request value = new Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlOutputVersionList_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a87c62fbcee2779427d535be08b8b30ebeaecc4450ee18208def8c19fbdd42b8";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String version = "";

        public Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response> CODEC =
            new Codec<Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response>() {
                public byte[] encode(Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response value = readRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(Codecs.Writer writer,
                                                                                    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.version;
        writeText(writer, part1, 256);
    }

    private static Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response readRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response value = new Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response();
        value.success = readBool(reader);
        value.version = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetSolutionSpace_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetSolutionSpace_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7893e38212d85c4a6f9937711ca0209c069691b09616e08462b60253a0c75ef3";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] pos = new double[6];

        public Ros2Dsr_msgs2SrvGetSolutionSpace_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetSolutionSpace_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetSolutionSpace_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetSolutionSpace_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetSolutionSpace_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetSolutionSpace_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetSolutionSpace_Request value = readRos2Dsr_msgs2SrvGetSolutionSpace_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetSolutionSpace_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetSolutionSpace_Request value)
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

    private static Ros2Dsr_msgs2SrvGetSolutionSpace_Request readRos2Dsr_msgs2SrvGetSolutionSpace_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetSolutionSpace_Request value = new Ros2Dsr_msgs2SrvGetSolutionSpace_Request();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetSolutionSpace_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetSolutionSpace_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b112e71516effa144d0c8857a21a18fa0355208ea4980f8b941190c070c0243a";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte sol_space = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetSolutionSpace_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetSolutionSpace_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetSolutionSpace_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetSolutionSpace_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetSolutionSpace_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetSolutionSpace_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetSolutionSpace_Response value = readRos2Dsr_msgs2SrvGetSolutionSpace_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetSolutionSpace_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetSolutionSpace_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.sol_space;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetSolutionSpace_Response readRos2Dsr_msgs2SrvGetSolutionSpace_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetSolutionSpace_Response value = new Ros2Dsr_msgs2SrvGetSolutionSpace_Response();
        value.sol_space = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetToolDigitalInput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetToolDigitalInput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_13280849feec7050bd6edcf5a966a42315524727ff31694af91fa240a9224603";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte index = 0;

        public Ros2Dsr_msgs2SrvGetToolDigitalInput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetToolDigitalInput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetToolDigitalInput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetToolDigitalInput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetToolDigitalInput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetToolDigitalInput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetToolDigitalInput_Request value = readRos2Dsr_msgs2SrvGetToolDigitalInput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetToolDigitalInput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetToolDigitalInput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetToolDigitalInput_Request readRos2Dsr_msgs2SrvGetToolDigitalInput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetToolDigitalInput_Request value = new Ros2Dsr_msgs2SrvGetToolDigitalInput_Request();
        value.index = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetToolDigitalInput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetToolDigitalInput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_109edb5c9f363f7ca1558958cde4c402e30ba4875d2845db5ae1f5c2b2c5356e";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte value = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetToolDigitalInput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetToolDigitalInput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetToolDigitalInput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetToolDigitalInput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetToolDigitalInput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetToolDigitalInput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetToolDigitalInput_Response value = readRos2Dsr_msgs2SrvGetToolDigitalInput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetToolDigitalInput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetToolDigitalInput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.value;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetToolDigitalInput_Response readRos2Dsr_msgs2SrvGetToolDigitalInput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetToolDigitalInput_Response value = new Ros2Dsr_msgs2SrvGetToolDigitalInput_Response();
        value.value = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetToolDigitalOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_62cc891eb1bc8b7657996a2a9c5ff11a20a53bb1d38c83080936d0ec0a41c641";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte index = 0;

        public Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetToolDigitalOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request value = readRos2Dsr_msgs2SrvGetToolDigitalOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetToolDigitalOutput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request readRos2Dsr_msgs2SrvGetToolDigitalOutput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request value = new Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request();
        value.index = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetToolDigitalOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7178715d835fca1f2f77ffed810b4f85ecd661168704df869a9ce4dffeb9c1a8";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte value = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetToolDigitalOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response value = readRos2Dsr_msgs2SrvGetToolDigitalOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetToolDigitalOutput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.value;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response readRos2Dsr_msgs2SrvGetToolDigitalOutput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response value = new Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response();
        value.value = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetToolForce_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetToolForce_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_278119e0f7e346752ee4ccc233b133a9700cf8d2e2454c72c876cf4415dccd30";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvGetToolForce_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetToolForce_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetToolForce_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetToolForce_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetToolForce_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetToolForce_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetToolForce_Request value = readRos2Dsr_msgs2SrvGetToolForce_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetToolForce_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetToolForce_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.ref;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetToolForce_Request readRos2Dsr_msgs2SrvGetToolForce_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetToolForce_Request value = new Ros2Dsr_msgs2SrvGetToolForce_Request();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetToolForce_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetToolForce_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d8bb3201f41aa221981e773657e8fa4d02b37a0d9d7f6da557aa6027ffeec41e";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] tool_force = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetToolForce_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetToolForce_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetToolForce_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetToolForce_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetToolForce_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetToolForce_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetToolForce_Response value = readRos2Dsr_msgs2SrvGetToolForce_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetToolForce_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetToolForce_Response value)
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

    private static Ros2Dsr_msgs2SrvGetToolForce_Response readRos2Dsr_msgs2SrvGetToolForce_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetToolForce_Response value = new Ros2Dsr_msgs2SrvGetToolForce_Response();
        value.tool_force = new double[6];
        for(int i = 0; i < value.tool_force.length; ++i)
            value.tool_force[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetUserCartCoord_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetUserCartCoord_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ab137f363d6067680f0f9e60e436eb9c104c2aa1d3b0f2b4db423303944fea9b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte id = 0;

        public Ros2Dsr_msgs2SrvGetUserCartCoord_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetUserCartCoord_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetUserCartCoord_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetUserCartCoord_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetUserCartCoord_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetUserCartCoord_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetUserCartCoord_Request value = readRos2Dsr_msgs2SrvGetUserCartCoord_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetUserCartCoord_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetUserCartCoord_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvGetUserCartCoord_Request readRos2Dsr_msgs2SrvGetUserCartCoord_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetUserCartCoord_Request value = new Ros2Dsr_msgs2SrvGetUserCartCoord_Request();
        value.id = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetUserCartCoord_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetUserCartCoord_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_41c0a3cb26e9456c439813e957d3ea539dddf492f00c601c101cf86f0589d6e0";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public double[] conv_posx = new double[6];
        public byte ref = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetUserCartCoord_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetUserCartCoord_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetUserCartCoord_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetUserCartCoord_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetUserCartCoord_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetUserCartCoord_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetUserCartCoord_Response value = readRos2Dsr_msgs2SrvGetUserCartCoord_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetUserCartCoord_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetUserCartCoord_Response value)
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

    private static Ros2Dsr_msgs2SrvGetUserCartCoord_Response readRos2Dsr_msgs2SrvGetUserCartCoord_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetUserCartCoord_Response value = new Ros2Dsr_msgs2SrvGetUserCartCoord_Response();
        value.conv_posx = new double[6];
        for(int i = 0; i < value.conv_posx.length; ++i)
            value.conv_posx[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetWorkpieceWeight_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e333d0d31ad7dd33a4eaf20b891e1c6a949e8518ca689b6aef5b14fbc050fde7";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetWorkpieceWeight_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request value = readRos2Dsr_msgs2SrvGetWorkpieceWeight_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetWorkpieceWeight_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request readRos2Dsr_msgs2SrvGetWorkpieceWeight_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request value = new Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/GetWorkpieceWeight_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c7c33e15041c362b692a24f6462fd1838c92cb8a74410ab62eb0593290f2da15";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        public float weight = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvGetWorkpieceWeight_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response value = readRos2Dsr_msgs2SrvGetWorkpieceWeight_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvGetWorkpieceWeight_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.weight;
        writer.f32(part0);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response readRos2Dsr_msgs2SrvGetWorkpieceWeight_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response value = new Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response();
        value.weight = reader.f32();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvIkin_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Ikin_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a088cb4739b4e871d281ffd7ca30d2a6afcb7a2cd2ed536fe959ba3efc01a558";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public double[] pos = new double[6];
        public byte sol_space = 0;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvIkin_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvIkin_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvIkin_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvIkin_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvIkin_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvIkin_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvIkin_Request value = readRos2Dsr_msgs2SrvIkin_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvIkin_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvIkin_Request value)
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

    private static Ros2Dsr_msgs2SrvIkin_Request readRos2Dsr_msgs2SrvIkin_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvIkin_Request value = new Ros2Dsr_msgs2SrvIkin_Request();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.sol_space = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvIkin_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Ikin_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fec5d910aaa9200c82c11887901062077572ce9d23f9e69114cbf395e469be6f";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] conv_posj = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvIkin_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvIkin_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvIkin_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvIkin_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvIkin_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvIkin_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvIkin_Response value = readRos2Dsr_msgs2SrvIkin_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvIkin_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvIkin_Response value)
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

    private static Ros2Dsr_msgs2SrvIkin_Response readRos2Dsr_msgs2SrvIkin_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvIkin_Response value = new Ros2Dsr_msgs2SrvIkin_Response();
        value.conv_posj = new double[6];
        for(int i = 0; i < value.conv_posj.length; ++i)
            value.conv_posj[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/IsDoneBoltTightening_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_021ebebd272f07623b139347486e9577a92febeec9ba2822ea42be99379365dc";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        public double m = 0;
        public double timeout = 0;
        public byte axis = 0;

        public Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvIsDoneBoltTightening_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request value = readRos2Dsr_msgs2SrvIsDoneBoltTightening_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvIsDoneBoltTightening_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request value)
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

    private static Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request readRos2Dsr_msgs2SrvIsDoneBoltTightening_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request value = new Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request();
        value.m = reader.f64();
        value.timeout = reader.f64();
        value.axis = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/IsDoneBoltTightening_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_facd1f150c53d2fa30991435796a03f28027ca54b1da367b259a3e9226c56d2d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvIsDoneBoltTightening_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response value = readRos2Dsr_msgs2SrvIsDoneBoltTightening_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvIsDoneBoltTightening_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response readRos2Dsr_msgs2SrvIsDoneBoltTightening_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response value = new Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvJog_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Jog_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c8c738720a1def086dcb2bf4364e43b0bbeadf0bd104760ca4ddd629ec9faa72";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;
        public byte jog_axis = 0;
        public byte move_reference = 0;
        public double speed = 0;

        public Ros2Dsr_msgs2SrvJog_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvJog_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvJog_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvJog_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvJog_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvJog_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvJog_Request value = readRos2Dsr_msgs2SrvJog_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvJog_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvJog_Request value)
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

    private static Ros2Dsr_msgs2SrvJog_Request readRos2Dsr_msgs2SrvJog_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvJog_Request value = new Ros2Dsr_msgs2SrvJog_Request();
        value.jog_axis = (byte)reader.integer(1, true);
        value.move_reference = (byte)reader.integer(1, true);
        value.speed = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvJog_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Jog_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_feb4da140ea11a715abe3f3ee635bdc384cd12105c397c1fb0ce2cfdf631542c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvJog_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvJog_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvJog_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvJog_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvJog_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvJog_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvJog_Response value = readRos2Dsr_msgs2SrvJog_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvJog_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvJog_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvJog_Response readRos2Dsr_msgs2SrvJog_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvJog_Response value = new Ros2Dsr_msgs2SrvJog_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvJogMulti_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/JogMulti_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_df4ba03cc80e22e4f9e384c38cd1994750a8c875798dc4887019745a26ee2f29";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;
        public double[] jog_axis = new double[6];
        public byte move_reference = 0;
        public double speed = 0;

        public Ros2Dsr_msgs2SrvJogMulti_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvJogMulti_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvJogMulti_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvJogMulti_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvJogMulti_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvJogMulti_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvJogMulti_Request value = readRos2Dsr_msgs2SrvJogMulti_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvJogMulti_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvJogMulti_Request value)
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

    private static Ros2Dsr_msgs2SrvJogMulti_Request readRos2Dsr_msgs2SrvJogMulti_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvJogMulti_Request value = new Ros2Dsr_msgs2SrvJogMulti_Request();
        value.jog_axis = new double[6];
        for(int i = 0; i < value.jog_axis.length; ++i)
            value.jog_axis[i] = reader.f64();
        value.move_reference = (byte)reader.integer(1, true);
        value.speed = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvJogMulti_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/JogMulti_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9cf76f60dbb1d7330297d5bacad15e29810ef7088ae83c3ad82c561c4e277d1a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvJogMulti_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvJogMulti_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvJogMulti_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvJogMulti_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvJogMulti_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvJogMulti_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvJogMulti_Response value = readRos2Dsr_msgs2SrvJogMulti_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvJogMulti_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvJogMulti_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvJogMulti_Response readRos2Dsr_msgs2SrvJogMulti_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvJogMulti_Response value = new Ros2Dsr_msgs2SrvJogMulti_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveBlending_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveBlending_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_74b4ab52745fa3028c9154c373850897fac7ecdaf986822e5dc2698580de1f20";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 2256;
        public Ros2Std_msgsMsgFloat64MultiArray[] segment = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public byte pos_cnt = 0;
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public byte ref = 0;
        public byte mode = 0;
        public byte sync_type = 0;

        public Ros2Dsr_msgs2SrvMoveBlending_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveBlending_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveBlending_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveBlending_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveBlending_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveBlending_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveBlending_Request value = readRos2Dsr_msgs2SrvMoveBlending_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveBlending_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveBlending_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.segment;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part0[i]);
        }
        byte part1 = value.pos_cnt;
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
        byte part7 = value.sync_type;
        writer.integer(part7, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMoveBlending_Request readRos2Dsr_msgs2SrvMoveBlending_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveBlending_Request value = new Ros2Dsr_msgs2SrvMoveBlending_Request();
        value.segment = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.segment.length; ++i)
            value.segment[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.pos_cnt = (byte)reader.integer(1, true);
        value.vel = new double[2];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[2];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.sync_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveBlending_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveBlending_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2c09a8f39ab887063b890f935bc4319f4c0566fc2ccb5f612e696728a2ea3805";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveBlending_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveBlending_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveBlending_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveBlending_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveBlending_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveBlending_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveBlending_Response value = readRos2Dsr_msgs2SrvMoveBlending_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveBlending_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveBlending_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveBlending_Response readRos2Dsr_msgs2SrvMoveBlending_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveBlending_Response value = new Ros2Dsr_msgs2SrvMoveBlending_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveCircle_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveCircle_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_27ebd12c2a2c30f8e20b505923344b00f2d2ad097e04ee533093144dbc58a09e";
        public static final int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 2280;
        public Ros2Std_msgsMsgFloat64MultiArray[] pos = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public double radius = 0;
        public byte ref = 0;
        public byte mode = 0;
        public double angle1 = 0;
        public double angle2 = 0;
        public byte blend_type = 0;
        public byte sync_type = 0;

        public Ros2Dsr_msgs2SrvMoveCircle_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveCircle_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveCircle_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveCircle_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveCircle_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveCircle_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveCircle_Request value = readRos2Dsr_msgs2SrvMoveCircle_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveCircle_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveCircle_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.pos;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part0[i]);
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
        byte part9 = value.blend_type;
        writer.integer(part9, 1, true);
        byte part10 = value.sync_type;
        writer.integer(part10, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMoveCircle_Request readRos2Dsr_msgs2SrvMoveCircle_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveCircle_Request value = new Ros2Dsr_msgs2SrvMoveCircle_Request();
        value.pos = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
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
        value.blend_type = (byte)reader.integer(1, true);
        value.sync_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveCircle_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveCircle_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4df4f4552161320d2b939e096b5ff54c102c668cab1efa1e59a8f12757ebe307";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveCircle_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveCircle_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveCircle_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveCircle_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveCircle_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveCircle_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveCircle_Response value = readRos2Dsr_msgs2SrvMoveCircle_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveCircle_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveCircle_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveCircle_Response readRos2Dsr_msgs2SrvMoveCircle_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveCircle_Response value = new Ros2Dsr_msgs2SrvMoveCircle_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveHome_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveHome_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9f36ef8e03e895db2b8c588ad52dcc370ce37532974879c3280da68202643a67";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte target = 0;

        public Ros2Dsr_msgs2SrvMoveHome_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveHome_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveHome_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveHome_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveHome_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveHome_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveHome_Request value = readRos2Dsr_msgs2SrvMoveHome_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveHome_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveHome_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.target;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMoveHome_Request readRos2Dsr_msgs2SrvMoveHome_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveHome_Request value = new Ros2Dsr_msgs2SrvMoveHome_Request();
        value.target = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveHome_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveHome_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d28c2d8d4dc2c97fbab5e531b235830d68fc46754fd7921993e05c8d33df0edf";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte res = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveHome_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveHome_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveHome_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveHome_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveHome_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveHome_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveHome_Response value = readRos2Dsr_msgs2SrvMoveHome_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveHome_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveHome_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.res;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveHome_Response readRos2Dsr_msgs2SrvMoveHome_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveHome_Response value = new Ros2Dsr_msgs2SrvMoveHome_Response();
        value.res = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveJoint_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveJoint_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_80e0a74b2781d091fc847f5f2d4a0a56bdd974e62f9a80cc7382118f5d6e4952";
        public static final int MIN_WIRE_BYTES = 83, MAX_WIRE_BYTES = 83;
        public double[] pos = new double[6];
        public double vel = 0;
        public double acc = 0;
        public double time = 0;
        public double radius = 0;
        public byte mode = 0;
        public byte blend_type = 0;
        public byte sync_type = 0;

        public Ros2Dsr_msgs2SrvMoveJoint_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveJoint_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveJoint_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveJoint_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveJoint_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveJoint_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveJoint_Request value = readRos2Dsr_msgs2SrvMoveJoint_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveJoint_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveJoint_Request value)
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
        byte part6 = value.blend_type;
        writer.integer(part6, 1, true);
        byte part7 = value.sync_type;
        writer.integer(part7, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMoveJoint_Request readRos2Dsr_msgs2SrvMoveJoint_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveJoint_Request value = new Ros2Dsr_msgs2SrvMoveJoint_Request();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.vel = reader.f64();
        value.acc = reader.f64();
        value.time = reader.f64();
        value.radius = reader.f64();
        value.mode = (byte)reader.integer(1, true);
        value.blend_type = (byte)reader.integer(1, true);
        value.sync_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveJoint_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveJoint_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_57c54f467487b7b7f0966a484e6777b4cb48fedd5790ec8f0e3c88979ce4c238";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveJoint_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveJoint_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveJoint_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveJoint_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveJoint_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveJoint_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveJoint_Response value = readRos2Dsr_msgs2SrvMoveJoint_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveJoint_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveJoint_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveJoint_Response readRos2Dsr_msgs2SrvMoveJoint_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveJoint_Response value = new Ros2Dsr_msgs2SrvMoveJoint_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveJointx_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveJointx_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c63a6822f6b03a2380d740995b12b4889e38d46a48fa8f74a85c2eccde1712be";
        public static final int MIN_WIRE_BYTES = 85, MAX_WIRE_BYTES = 85;
        public double[] pos = new double[6];
        public double vel = 0;
        public double acc = 0;
        public double time = 0;
        public double radius = 0;
        public byte ref = 0;
        public byte mode = 0;
        public byte blend_type = 0;
        public byte sol = 0;
        public byte sync_type = 0;

        public Ros2Dsr_msgs2SrvMoveJointx_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveJointx_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveJointx_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveJointx_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveJointx_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveJointx_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveJointx_Request value = readRos2Dsr_msgs2SrvMoveJointx_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveJointx_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveJointx_Request value)
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
        byte part7 = value.blend_type;
        writer.integer(part7, 1, true);
        byte part8 = value.sol;
        writer.integer(part8, 1, true);
        byte part9 = value.sync_type;
        writer.integer(part9, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMoveJointx_Request readRos2Dsr_msgs2SrvMoveJointx_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveJointx_Request value = new Ros2Dsr_msgs2SrvMoveJointx_Request();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.vel = reader.f64();
        value.acc = reader.f64();
        value.time = reader.f64();
        value.radius = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.blend_type = (byte)reader.integer(1, true);
        value.sol = (byte)reader.integer(1, true);
        value.sync_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveJointx_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveJointx_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4b04129715b754766e2971a38b170681e1055cc121bf56d7b542594ac9986d0a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveJointx_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveJointx_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveJointx_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveJointx_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveJointx_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveJointx_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveJointx_Response value = readRos2Dsr_msgs2SrvMoveJointx_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveJointx_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveJointx_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveJointx_Response readRos2Dsr_msgs2SrvMoveJointx_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveJointx_Response value = new Ros2Dsr_msgs2SrvMoveJointx_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveLine_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveLine_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_104cb9b617f4f5f9596aa648cd5d1cd55bad832e0709e46c2e19be17d94f384a";
        public static final int MIN_WIRE_BYTES = 100, MAX_WIRE_BYTES = 100;
        public double[] pos = new double[6];
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public double radius = 0;
        public byte ref = 0;
        public byte mode = 0;
        public byte blend_type = 0;
        public byte sync_type = 0;

        public Ros2Dsr_msgs2SrvMoveLine_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveLine_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveLine_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveLine_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveLine_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveLine_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveLine_Request value = readRos2Dsr_msgs2SrvMoveLine_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveLine_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveLine_Request value)
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
        byte part7 = value.blend_type;
        writer.integer(part7, 1, true);
        byte part8 = value.sync_type;
        writer.integer(part8, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMoveLine_Request readRos2Dsr_msgs2SrvMoveLine_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveLine_Request value = new Ros2Dsr_msgs2SrvMoveLine_Request();
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
        value.blend_type = (byte)reader.integer(1, true);
        value.sync_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveLine_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveLine_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6c0632d3a0aa1476b0cfc9adeb8eb5ef5e3b718eccdbb3f24d942315bd287ef6";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveLine_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveLine_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveLine_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveLine_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveLine_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveLine_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveLine_Response value = readRos2Dsr_msgs2SrvMoveLine_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveLine_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveLine_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveLine_Response readRos2Dsr_msgs2SrvMoveLine_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveLine_Response value = new Ros2Dsr_msgs2SrvMoveLine_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMovePause_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MovePause_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_89602d9445236b0796a0628a3eecd1d57cd298135759330f7c1927d451beac80";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvMovePause_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMovePause_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMovePause_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMovePause_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMovePause_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMovePause_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMovePause_Request value = readRos2Dsr_msgs2SrvMovePause_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMovePause_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMovePause_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvMovePause_Request readRos2Dsr_msgs2SrvMovePause_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMovePause_Request value = new Ros2Dsr_msgs2SrvMovePause_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMovePause_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MovePause_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9d8e0eabfff65e2d80132a9586cffd61f9989e2b39842cc3af2f7b77b01a0dd2";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMovePause_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMovePause_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMovePause_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMovePause_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMovePause_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMovePause_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMovePause_Response value = readRos2Dsr_msgs2SrvMovePause_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMovePause_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMovePause_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMovePause_Response readRos2Dsr_msgs2SrvMovePause_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMovePause_Response value = new Ros2Dsr_msgs2SrvMovePause_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMovePeriodic_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MovePeriodic_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f05e9629ebcf086ef97e02f28c9b97f4604d53e15b348e76556dc9eef7791f41";
        public static final int MIN_WIRE_BYTES = 107, MAX_WIRE_BYTES = 107;
        public double[] amp = new double[6];
        public double[] periodic = new double[6];
        public double acc = 0;
        public byte repeat = 0;
        public byte ref = 0;
        public byte sync_type = 0;

        public Ros2Dsr_msgs2SrvMovePeriodic_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMovePeriodic_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMovePeriodic_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMovePeriodic_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMovePeriodic_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMovePeriodic_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMovePeriodic_Request value = readRos2Dsr_msgs2SrvMovePeriodic_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMovePeriodic_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMovePeriodic_Request value)
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
        byte part5 = value.sync_type;
        writer.integer(part5, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMovePeriodic_Request readRos2Dsr_msgs2SrvMovePeriodic_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMovePeriodic_Request value = new Ros2Dsr_msgs2SrvMovePeriodic_Request();
        value.amp = new double[6];
        for(int i = 0; i < value.amp.length; ++i)
            value.amp[i] = reader.f64();
        value.periodic = new double[6];
        for(int i = 0; i < value.periodic.length; ++i)
            value.periodic[i] = reader.f64();
        value.acc = reader.f64();
        value.repeat = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        value.sync_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMovePeriodic_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MovePeriodic_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_99a58c09b66846d82e1e50451c7663fc2f8bfb6564181a737c37a0296a8bf022";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMovePeriodic_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMovePeriodic_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMovePeriodic_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMovePeriodic_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMovePeriodic_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMovePeriodic_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMovePeriodic_Response value = readRos2Dsr_msgs2SrvMovePeriodic_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMovePeriodic_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMovePeriodic_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMovePeriodic_Response readRos2Dsr_msgs2SrvMovePeriodic_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMovePeriodic_Response value = new Ros2Dsr_msgs2SrvMovePeriodic_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveResume_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveResume_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7cb93befc32b7fb62279f8be0e6aa9f0075274375304afa5a438dea13588879e";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvMoveResume_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveResume_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveResume_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveResume_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveResume_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveResume_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveResume_Request value = readRos2Dsr_msgs2SrvMoveResume_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveResume_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveResume_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvMoveResume_Request readRos2Dsr_msgs2SrvMoveResume_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveResume_Request value = new Ros2Dsr_msgs2SrvMoveResume_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveResume_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveResume_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1b8d38ecbb26dc9311cd7dbc35e397eabae2f8fc308f7f3ada8afaeee15ec956";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveResume_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveResume_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveResume_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveResume_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveResume_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveResume_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveResume_Response value = readRos2Dsr_msgs2SrvMoveResume_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveResume_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveResume_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveResume_Response readRos2Dsr_msgs2SrvMoveResume_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveResume_Response value = new Ros2Dsr_msgs2SrvMoveResume_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveSpiral_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveSpiral_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4720da9e9607f7a2df71d51cbc568ca08e85f9cf8b335f5ed3128844b3ab66a1";
        public static final int MIN_WIRE_BYTES = 94, MAX_WIRE_BYTES = 94;
        public double revolution = 0;
        public double max_radius = 0;
        public double max_length = 0;
        public double[] target_pos = new double[3];
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public byte task_axis = 0;
        public byte ref = 0;
        public byte mode = 0;
        public byte spiral_dir = 0;
        public byte rot_dir = 0;
        public byte sync_type = 0;

        public Ros2Dsr_msgs2SrvMoveSpiral_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveSpiral_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveSpiral_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveSpiral_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveSpiral_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveSpiral_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveSpiral_Request value = readRos2Dsr_msgs2SrvMoveSpiral_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveSpiral_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveSpiral_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.revolution;
        writer.f64(part0);
        double part1 = value.max_radius;
        writer.f64(part1);
        double part2 = value.max_length;
        writer.f64(part2);
        double[] part3 = value.target_pos;
        if(part3 == null || part3.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.vel;
        if(part4 == null || part4.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.acc;
        if(part5 == null || part5.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double part6 = value.time;
        writer.f64(part6);
        byte part7 = value.task_axis;
        writer.integer(part7, 1, true);
        byte part8 = value.ref;
        writer.integer(part8, 1, true);
        byte part9 = value.mode;
        writer.integer(part9, 1, true);
        byte part10 = value.spiral_dir;
        writer.integer(part10, 1, true);
        byte part11 = value.rot_dir;
        writer.integer(part11, 1, true);
        byte part12 = value.sync_type;
        writer.integer(part12, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMoveSpiral_Request readRos2Dsr_msgs2SrvMoveSpiral_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveSpiral_Request value = new Ros2Dsr_msgs2SrvMoveSpiral_Request();
        value.revolution = reader.f64();
        value.max_radius = reader.f64();
        value.max_length = reader.f64();
        value.target_pos = new double[3];
        for(int i = 0; i < value.target_pos.length; ++i)
            value.target_pos[i] = reader.f64();
        value.vel = new double[2];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[2];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        value.task_axis = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        value.spiral_dir = (byte)reader.integer(1, true);
        value.rot_dir = (byte)reader.integer(1, true);
        value.sync_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveSpiral_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveSpiral_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8f8f8c5ebb9288d4414bd64ac2bbcaac7c459dd187c149a2424d2ca426dd51fc";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveSpiral_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveSpiral_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveSpiral_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveSpiral_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveSpiral_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveSpiral_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveSpiral_Response value = readRos2Dsr_msgs2SrvMoveSpiral_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveSpiral_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveSpiral_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveSpiral_Response readRos2Dsr_msgs2SrvMoveSpiral_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveSpiral_Response value = new Ros2Dsr_msgs2SrvMoveSpiral_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveSplineJoint_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveSplineJoint_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3e37f3aa8318b9dffd0d72754d6f8f6db4c6af7fed79a20cba019e6dd3535fe2";
        public static final int MIN_WIRE_BYTES = 111, MAX_WIRE_BYTES = 2319;
        public Ros2Std_msgsMsgFloat64MultiArray[] pos = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public byte pos_cnt = 0;
        public double[] vel = new double[6];
        public double[] acc = new double[6];
        public double time = 0;
        public byte mode = 0;
        public byte sync_type = 0;

        public Ros2Dsr_msgs2SrvMoveSplineJoint_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveSplineJoint_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveSplineJoint_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveSplineJoint_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveSplineJoint_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveSplineJoint_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveSplineJoint_Request value = readRos2Dsr_msgs2SrvMoveSplineJoint_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveSplineJoint_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveSplineJoint_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.pos;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part0[i]);
        }
        byte part1 = value.pos_cnt;
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
        byte part6 = value.sync_type;
        writer.integer(part6, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMoveSplineJoint_Request readRos2Dsr_msgs2SrvMoveSplineJoint_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveSplineJoint_Request value = new Ros2Dsr_msgs2SrvMoveSplineJoint_Request();
        value.pos = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.pos_cnt = (byte)reader.integer(1, true);
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        value.time = reader.f64();
        value.mode = (byte)reader.integer(1, true);
        value.sync_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveSplineJoint_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveSplineJoint_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_90acb8d4656b1cd6c5be0eb0693e2718e1ad96d10cf8cbb53738a7efd2898444";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveSplineJoint_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveSplineJoint_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveSplineJoint_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveSplineJoint_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveSplineJoint_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveSplineJoint_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveSplineJoint_Response value = readRos2Dsr_msgs2SrvMoveSplineJoint_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveSplineJoint_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveSplineJoint_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveSplineJoint_Response readRos2Dsr_msgs2SrvMoveSplineJoint_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveSplineJoint_Response value = new Ros2Dsr_msgs2SrvMoveSplineJoint_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveSplineTask_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveSplineTask_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9ec113186666b39b1c4a27b1a0f9e8c9a8d5e18e0d0d773103b37811d5c613ff";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 2257;
        public Ros2Std_msgsMsgFloat64MultiArray[] pos = new Ros2Std_msgsMsgFloat64MultiArray[0];
        public byte pos_cnt = 0;
        public double[] vel = new double[2];
        public double[] acc = new double[2];
        public double time = 0;
        public byte ref = 0;
        public byte mode = 0;
        public byte opt = 0;
        public byte sync_type = 0;

        public Ros2Dsr_msgs2SrvMoveSplineTask_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveSplineTask_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveSplineTask_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveSplineTask_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveSplineTask_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveSplineTask_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveSplineTask_Request value = readRos2Dsr_msgs2SrvMoveSplineTask_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveSplineTask_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveSplineTask_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.pos;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Std_msgsMsgFloat64MultiArray(writer, part0[i]);
        }
        byte part1 = value.pos_cnt;
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
        byte part8 = value.sync_type;
        writer.integer(part8, 1, true);
    }

    private static Ros2Dsr_msgs2SrvMoveSplineTask_Request readRos2Dsr_msgs2SrvMoveSplineTask_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveSplineTask_Request value = new Ros2Dsr_msgs2SrvMoveSplineTask_Request();
        value.pos = new Ros2Std_msgsMsgFloat64MultiArray[readCount(reader, 6, 12)];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = readRos2Std_msgsMsgFloat64MultiArray(reader);
        value.pos_cnt = (byte)reader.integer(1, true);
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
        value.sync_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveSplineTask_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveSplineTask_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e1991eb0d0b76ea783f3a410df208c432b09dd0bb5dc595c9aad74e5da147fb5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveSplineTask_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveSplineTask_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveSplineTask_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveSplineTask_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveSplineTask_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveSplineTask_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveSplineTask_Response value = readRos2Dsr_msgs2SrvMoveSplineTask_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveSplineTask_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveSplineTask_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveSplineTask_Response readRos2Dsr_msgs2SrvMoveSplineTask_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveSplineTask_Response value = new Ros2Dsr_msgs2SrvMoveSplineTask_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveStop_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveStop_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_51bb66de3739f7fc873f36d78fc6b3fe70f28e788f4b5b4359768491074d1efd";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public int stop_mode = 0;

        public Ros2Dsr_msgs2SrvMoveStop_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveStop_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveStop_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveStop_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveStop_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveStop_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveStop_Request value = readRos2Dsr_msgs2SrvMoveStop_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveStop_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveStop_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.stop_mode;
        writer.integer(part0, 4, true);
    }

    private static Ros2Dsr_msgs2SrvMoveStop_Request readRos2Dsr_msgs2SrvMoveStop_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveStop_Request value = new Ros2Dsr_msgs2SrvMoveStop_Request();
        value.stop_mode = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveStop_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveStop_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce670f48f010badbcafa3e96d05af25a02a018b41e75544a6d183fe89ceafbeb";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveStop_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveStop_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveStop_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveStop_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveStop_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveStop_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveStop_Response value = readRos2Dsr_msgs2SrvMoveStop_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveStop_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveStop_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveStop_Response readRos2Dsr_msgs2SrvMoveStop_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveStop_Response value = new Ros2Dsr_msgs2SrvMoveStop_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveWait_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveWait_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7c0de129d63ef3142044c481392ba437362245e6643ba1bd0f87f90b9b377d61";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvMoveWait_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveWait_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveWait_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveWait_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveWait_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveWait_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveWait_Request value = readRos2Dsr_msgs2SrvMoveWait_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveWait_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveWait_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvMoveWait_Request readRos2Dsr_msgs2SrvMoveWait_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveWait_Request value = new Ros2Dsr_msgs2SrvMoveWait_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvMoveWait_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/MoveWait_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1e235c22c0e493e309e8f53be1043ce1b425c52910358c7b34496c1291d61486";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvMoveWait_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvMoveWait_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvMoveWait_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvMoveWait_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvMoveWait_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvMoveWait_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvMoveWait_Response value = readRos2Dsr_msgs2SrvMoveWait_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvMoveWait_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvMoveWait_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvMoveWait_Response readRos2Dsr_msgs2SrvMoveWait_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvMoveWait_Response value = new Ros2Dsr_msgs2SrvMoveWait_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/OverwriteUserCartCoord_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_772207f58ed8dc8dbef23f5ab3161a4289f378eed9ae9b960e15e380c5efcb8d";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        public byte id = 0;
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvOverwriteUserCartCoord_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request value = readRos2Dsr_msgs2SrvOverwriteUserCartCoord_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvOverwriteUserCartCoord_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request value)
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

    private static Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request readRos2Dsr_msgs2SrvOverwriteUserCartCoord_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request value = new Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request();
        value.id = (byte)reader.integer(1, true);
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/OverwriteUserCartCoord_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_93cc941737dc373f7b97a044a9b675cf220a511bbbde19b6d98fb9ac8f33dc05";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte id = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvOverwriteUserCartCoord_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response value = readRos2Dsr_msgs2SrvOverwriteUserCartCoord_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvOverwriteUserCartCoord_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response readRos2Dsr_msgs2SrvOverwriteUserCartCoord_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response value = new Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response();
        value.id = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvParallelAxis1_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ParallelAxis1_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_97ed9f4649879d56a9bdabbb2040b1779be4ac7156292b27f6ca04a82290e1fd";
        public static final int MIN_WIRE_BYTES = 146, MAX_WIRE_BYTES = 146;
        public double[] x1 = new double[6];
        public double[] x2 = new double[6];
        public double[] x3 = new double[6];
        public byte axis = 0;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvParallelAxis1_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvParallelAxis1_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvParallelAxis1_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvParallelAxis1_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvParallelAxis1_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvParallelAxis1_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvParallelAxis1_Request value = readRos2Dsr_msgs2SrvParallelAxis1_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvParallelAxis1_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvParallelAxis1_Request value)
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

    private static Ros2Dsr_msgs2SrvParallelAxis1_Request readRos2Dsr_msgs2SrvParallelAxis1_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvParallelAxis1_Request value = new Ros2Dsr_msgs2SrvParallelAxis1_Request();
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

    public static final class Ros2Dsr_msgs2SrvParallelAxis1_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ParallelAxis1_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f748471d4492dbd0db21a6417a12eedbbc1d23920abe712af5ac3099a1b4a37c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvParallelAxis1_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvParallelAxis1_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvParallelAxis1_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvParallelAxis1_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvParallelAxis1_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvParallelAxis1_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvParallelAxis1_Response value = readRos2Dsr_msgs2SrvParallelAxis1_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvParallelAxis1_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvParallelAxis1_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvParallelAxis1_Response readRos2Dsr_msgs2SrvParallelAxis1_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvParallelAxis1_Response value = new Ros2Dsr_msgs2SrvParallelAxis1_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvParallelAxis2_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ParallelAxis2_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_742f664642630b1c2fa965d9ff442791edc7c1aa90c9238fc370d1fb8baf1450";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;
        public double[] vect = new double[3];
        public byte axis = 0;
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvParallelAxis2_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvParallelAxis2_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvParallelAxis2_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvParallelAxis2_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvParallelAxis2_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvParallelAxis2_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvParallelAxis2_Request value = readRos2Dsr_msgs2SrvParallelAxis2_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvParallelAxis2_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvParallelAxis2_Request value)
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

    private static Ros2Dsr_msgs2SrvParallelAxis2_Request readRos2Dsr_msgs2SrvParallelAxis2_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvParallelAxis2_Request value = new Ros2Dsr_msgs2SrvParallelAxis2_Request();
        value.vect = new double[3];
        for(int i = 0; i < value.vect.length; ++i)
            value.vect[i] = reader.f64();
        value.axis = (byte)reader.integer(1, true);
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvParallelAxis2_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ParallelAxis2_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7a2659d61e6a13d1f17986c311441ecc4bb72146978f209c976f218817fd146b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvParallelAxis2_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvParallelAxis2_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvParallelAxis2_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvParallelAxis2_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvParallelAxis2_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvParallelAxis2_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvParallelAxis2_Response value = readRos2Dsr_msgs2SrvParallelAxis2_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvParallelAxis2_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvParallelAxis2_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvParallelAxis2_Response readRos2Dsr_msgs2SrvParallelAxis2_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvParallelAxis2_Response value = new Ros2Dsr_msgs2SrvParallelAxis2_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvReadDataRt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ReadDataRt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9c21179a2561779bfcd2e6bc011ab9eb183517cc93de8dc6349f016bc7f3a418";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvReadDataRt_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvReadDataRt_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvReadDataRt_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvReadDataRt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvReadDataRt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvReadDataRt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvReadDataRt_Request value = readRos2Dsr_msgs2SrvReadDataRt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvReadDataRt_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvReadDataRt_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvReadDataRt_Request readRos2Dsr_msgs2SrvReadDataRt_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvReadDataRt_Request value = new Ros2Dsr_msgs2SrvReadDataRt_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvReadDataRt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ReadDataRt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4055ed8c5ea1414a21bb32aad8cd37a9d2317619840a7a5de1f563b512395093";
        public static final int MIN_WIRE_BYTES = 1530, MAX_WIRE_BYTES = 8154;
        public Ros2Dsr_msgs2MsgRobotStateRt data = new Ros2Dsr_msgs2MsgRobotStateRt();

        public Ros2Dsr_msgs2SrvReadDataRt_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvReadDataRt_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvReadDataRt_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvReadDataRt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvReadDataRt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvReadDataRt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvReadDataRt_Response value = readRos2Dsr_msgs2SrvReadDataRt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvReadDataRt_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvReadDataRt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Dsr_msgs2MsgRobotStateRt part0 = value.data;
        writeRos2Dsr_msgs2MsgRobotStateRt(writer, part0);
    }

    private static Ros2Dsr_msgs2SrvReadDataRt_Response readRos2Dsr_msgs2SrvReadDataRt_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvReadDataRt_Response value = new Ros2Dsr_msgs2SrvReadDataRt_Response();
        value.data = readRos2Dsr_msgs2MsgRobotStateRt(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ReleaseComplianceCtrl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1b3e5187b8a5753f0703abb97a653bcbcd62f19dc912f0a70dd1cf3d0fab59df";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvReleaseComplianceCtrl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request value = readRos2Dsr_msgs2SrvReleaseComplianceCtrl_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvReleaseComplianceCtrl_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request readRos2Dsr_msgs2SrvReleaseComplianceCtrl_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request value = new Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ReleaseComplianceCtrl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d63a68f67aa608599d4a33a7081d157eafcf52928388b0bfb1dd5faf51a4fa40";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvReleaseComplianceCtrl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response value = readRos2Dsr_msgs2SrvReleaseComplianceCtrl_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvReleaseComplianceCtrl_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response readRos2Dsr_msgs2SrvReleaseComplianceCtrl_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response value = new Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvReleaseForce_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ReleaseForce_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5346f6a634c61acc8d296e83cf96e007fe369765d291698063d80c5fa2e18a91";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public double time = 0;

        public Ros2Dsr_msgs2SrvReleaseForce_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvReleaseForce_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvReleaseForce_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvReleaseForce_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvReleaseForce_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvReleaseForce_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvReleaseForce_Request value = readRos2Dsr_msgs2SrvReleaseForce_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvReleaseForce_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvReleaseForce_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.time;
        writer.f64(part0);
    }

    private static Ros2Dsr_msgs2SrvReleaseForce_Request readRos2Dsr_msgs2SrvReleaseForce_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvReleaseForce_Request value = new Ros2Dsr_msgs2SrvReleaseForce_Request();
        value.time = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvReleaseForce_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ReleaseForce_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4d74f7c2ca2f7b97f8222bc31ccef0450c045b2424efa6f9d6d550c6a824149c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvReleaseForce_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvReleaseForce_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvReleaseForce_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvReleaseForce_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvReleaseForce_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvReleaseForce_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvReleaseForce_Response value = readRos2Dsr_msgs2SrvReleaseForce_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvReleaseForce_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvReleaseForce_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvReleaseForce_Response readRos2Dsr_msgs2SrvReleaseForce_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvReleaseForce_Response value = new Ros2Dsr_msgs2SrvReleaseForce_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ResetWorkpieceWeight_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_53ac7a846a49f8200358455dbbe63580e90309b3c3166ad48ed87ea33c364179";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvResetWorkpieceWeight_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request value = readRos2Dsr_msgs2SrvResetWorkpieceWeight_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvResetWorkpieceWeight_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request readRos2Dsr_msgs2SrvResetWorkpieceWeight_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request value = new Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ResetWorkpieceWeight_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_29d28e032dffe750b93e8207660af315687f3c2241a8a53f29fa7da7570b4abd";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvResetWorkpieceWeight_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response value = readRos2Dsr_msgs2SrvResetWorkpieceWeight_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvResetWorkpieceWeight_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response readRos2Dsr_msgs2SrvResetWorkpieceWeight_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response value = new Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvRobotiq2FClose_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FClose_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1bb8c6794458b545e6a117418c52ede9ba301787dcc80c346cdbeadb7072d974";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvRobotiq2FClose_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvRobotiq2FClose_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvRobotiq2FClose_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvRobotiq2FClose_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvRobotiq2FClose_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvRobotiq2FClose_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvRobotiq2FClose_Request value = readRos2Dsr_msgs2SrvRobotiq2FClose_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvRobotiq2FClose_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvRobotiq2FClose_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvRobotiq2FClose_Request readRos2Dsr_msgs2SrvRobotiq2FClose_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvRobotiq2FClose_Request value = new Ros2Dsr_msgs2SrvRobotiq2FClose_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvRobotiq2FClose_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FClose_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_93b3a91aedebf08ae74a53857c898ddda0493662d02df100bde32652042f593e";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvRobotiq2FClose_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvRobotiq2FClose_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvRobotiq2FClose_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvRobotiq2FClose_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvRobotiq2FClose_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvRobotiq2FClose_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvRobotiq2FClose_Response value = readRos2Dsr_msgs2SrvRobotiq2FClose_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvRobotiq2FClose_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvRobotiq2FClose_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvRobotiq2FClose_Response readRos2Dsr_msgs2SrvRobotiq2FClose_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvRobotiq2FClose_Response value = new Ros2Dsr_msgs2SrvRobotiq2FClose_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvRobotiq2FMove_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FMove_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d9125f3ed3a008a9796249b2759ff3e1fb9b8cc206ae89165fd20f382e0407f2";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public double width = 0;

        public Ros2Dsr_msgs2SrvRobotiq2FMove_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvRobotiq2FMove_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvRobotiq2FMove_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvRobotiq2FMove_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvRobotiq2FMove_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvRobotiq2FMove_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvRobotiq2FMove_Request value = readRos2Dsr_msgs2SrvRobotiq2FMove_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvRobotiq2FMove_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvRobotiq2FMove_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.width;
        writer.f64(part0);
    }

    private static Ros2Dsr_msgs2SrvRobotiq2FMove_Request readRos2Dsr_msgs2SrvRobotiq2FMove_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvRobotiq2FMove_Request value = new Ros2Dsr_msgs2SrvRobotiq2FMove_Request();
        value.width = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvRobotiq2FMove_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FMove_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c7365e9517f2da81712616281451882cfedbe5cd0c771fbc93d3d155598fa41d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvRobotiq2FMove_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvRobotiq2FMove_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvRobotiq2FMove_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvRobotiq2FMove_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvRobotiq2FMove_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvRobotiq2FMove_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvRobotiq2FMove_Response value = readRos2Dsr_msgs2SrvRobotiq2FMove_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvRobotiq2FMove_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvRobotiq2FMove_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvRobotiq2FMove_Response readRos2Dsr_msgs2SrvRobotiq2FMove_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvRobotiq2FMove_Response value = new Ros2Dsr_msgs2SrvRobotiq2FMove_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvRobotiq2FOpen_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FOpen_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0d94a65ab5ad917af12e961dfddc1c3d722d0f9bf703a20f7c4e1b86d646889a";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvRobotiq2FOpen_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvRobotiq2FOpen_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvRobotiq2FOpen_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvRobotiq2FOpen_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvRobotiq2FOpen_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvRobotiq2FOpen_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvRobotiq2FOpen_Request value = readRos2Dsr_msgs2SrvRobotiq2FOpen_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvRobotiq2FOpen_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvRobotiq2FOpen_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvRobotiq2FOpen_Request readRos2Dsr_msgs2SrvRobotiq2FOpen_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvRobotiq2FOpen_Request value = new Ros2Dsr_msgs2SrvRobotiq2FOpen_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvRobotiq2FOpen_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FOpen_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0d7392466b804afe346333e6eab855aa2ac2d66c96ab417e7d96ec6917ec4f2c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvRobotiq2FOpen_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvRobotiq2FOpen_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvRobotiq2FOpen_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvRobotiq2FOpen_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvRobotiq2FOpen_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvRobotiq2FOpen_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvRobotiq2FOpen_Response value = readRos2Dsr_msgs2SrvRobotiq2FOpen_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvRobotiq2FOpen_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvRobotiq2FOpen_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvRobotiq2FOpen_Response readRos2Dsr_msgs2SrvRobotiq2FOpen_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvRobotiq2FOpen_Response value = new Ros2Dsr_msgs2SrvRobotiq2FOpen_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSerialSendData_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SerialSendData_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6a1da84ea13b36d9722b9c7779baa295bf13ee1e85266226659f5f077fb67ce8";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String data = "";

        public Ros2Dsr_msgs2SrvSerialSendData_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSerialSendData_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSerialSendData_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSerialSendData_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSerialSendData_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSerialSendData_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSerialSendData_Request value = readRos2Dsr_msgs2SrvSerialSendData_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSerialSendData_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSerialSendData_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.data;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvSerialSendData_Request readRos2Dsr_msgs2SrvSerialSendData_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSerialSendData_Request value = new Ros2Dsr_msgs2SrvSerialSendData_Request();
        value.data = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSerialSendData_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SerialSendData_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a28dd2160987b004eb5ee91cc2e0e6a3fbdb54777e33df0044131811da1ac278";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSerialSendData_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSerialSendData_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSerialSendData_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSerialSendData_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSerialSendData_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSerialSendData_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSerialSendData_Response value = readRos2Dsr_msgs2SrvSerialSendData_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSerialSendData_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSerialSendData_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSerialSendData_Response readRos2Dsr_msgs2SrvSerialSendData_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSerialSendData_Response value = new Ros2Dsr_msgs2SrvSerialSendData_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvServoOff_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ServoOff_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f7445b77379d9197bd64162af81c79f19b8eccfd65bb35a1c7ec1c6c90b0956c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte stop_type = 0;

        public Ros2Dsr_msgs2SrvServoOff_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvServoOff_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvServoOff_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvServoOff_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvServoOff_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvServoOff_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvServoOff_Request value = readRos2Dsr_msgs2SrvServoOff_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvServoOff_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvServoOff_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.stop_type;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvServoOff_Request readRos2Dsr_msgs2SrvServoOff_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvServoOff_Request value = new Ros2Dsr_msgs2SrvServoOff_Request();
        value.stop_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvServoOff_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/ServoOff_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_da341e498342ad932e3f5f9a037252ccd53402609abfaf5a20e0b2f452ac74db";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvServoOff_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvServoOff_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvServoOff_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvServoOff_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvServoOff_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvServoOff_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvServoOff_Response value = readRos2Dsr_msgs2SrvServoOff_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvServoOff_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvServoOff_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvServoOff_Response readRos2Dsr_msgs2SrvServoOff_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvServoOff_Response value = new Ros2Dsr_msgs2SrvServoOff_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetAccjRt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetAccjRt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_73ff05ee72605c8e3bec72ea56f962475a50db8afed07ca299a1b47e5a16f66f";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] acc = new double[6];

        public Ros2Dsr_msgs2SrvSetAccjRt_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetAccjRt_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetAccjRt_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetAccjRt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetAccjRt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetAccjRt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetAccjRt_Request value = readRos2Dsr_msgs2SrvSetAccjRt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetAccjRt_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetAccjRt_Request value)
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

    private static Ros2Dsr_msgs2SrvSetAccjRt_Request readRos2Dsr_msgs2SrvSetAccjRt_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetAccjRt_Request value = new Ros2Dsr_msgs2SrvSetAccjRt_Request();
        value.acc = new double[6];
        for(int i = 0; i < value.acc.length; ++i)
            value.acc[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetAccjRt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetAccjRt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a25cd5180e9812a012ce3337665b7a20a97e13ad99c9ca8accdcbbd644eb539c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetAccjRt_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetAccjRt_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetAccjRt_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetAccjRt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetAccjRt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetAccjRt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetAccjRt_Response value = readRos2Dsr_msgs2SrvSetAccjRt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetAccjRt_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetAccjRt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetAccjRt_Response readRos2Dsr_msgs2SrvSetAccjRt_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetAccjRt_Response value = new Ros2Dsr_msgs2SrvSetAccjRt_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetAccxRt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetAccxRt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_55addee739e16839a0bedd135930ea3b9e1a09f80776346f7c71c1d4e64e5111";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public double trans = 0;
        public double rotation = 0;

        public Ros2Dsr_msgs2SrvSetAccxRt_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetAccxRt_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetAccxRt_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetAccxRt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetAccxRt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetAccxRt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetAccxRt_Request value = readRos2Dsr_msgs2SrvSetAccxRt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetAccxRt_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetAccxRt_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.trans;
        writer.f64(part0);
        double part1 = value.rotation;
        writer.f64(part1);
    }

    private static Ros2Dsr_msgs2SrvSetAccxRt_Request readRos2Dsr_msgs2SrvSetAccxRt_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetAccxRt_Request value = new Ros2Dsr_msgs2SrvSetAccxRt_Request();
        value.trans = reader.f64();
        value.rotation = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetAccxRt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetAccxRt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1277c73c96a872595079bdb1fbff9b99b4f2f7f62ad50339d7402a864610434c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetAccxRt_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetAccxRt_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetAccxRt_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetAccxRt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetAccxRt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetAccxRt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetAccxRt_Response value = readRos2Dsr_msgs2SrvSetAccxRt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetAccxRt_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetAccxRt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetAccxRt_Response readRos2Dsr_msgs2SrvSetAccxRt_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetAccxRt_Response value = new Ros2Dsr_msgs2SrvSetAccxRt_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_56cd6d0829be3eac45dfd15bd9693f53b72705481bb905c16dc0ab19843fc7d0";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte channel = 0;
        public byte mode = 0;

        public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request value = readRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.channel;
        writer.integer(part0, 1, true);
        byte part1 = value.mode;
        writer.integer(part1, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request readRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request value = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request();
        value.channel = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dcbd1b140dca6119d2be2b2eea11efc394969f0bf16926c5758bd384e764eaf0";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response value = readRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response readRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response value = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6da2558f6e5259eaf4573144414fd8e6a917a9a43d11b7a0036187158e97f34a";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        public byte channel = 0;
        public double value = 0;

        public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request value = readRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.channel;
        writer.integer(part0, 1, true);
        double part1 = value.value;
        writer.f64(part1);
    }

    private static Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request readRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request value = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request();
        value.channel = (byte)reader.integer(1, true);
        value.value = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_258f0495c9eeacec7cf7221018fab5a99939f153c6a5cddb6f653ca71859e1e1";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response value = readRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response readRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response value = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ee2b262d71056945ef50cd2cfd645f63220c63071ed28531e79740539b0b15f9";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte channel = 0;
        public byte mode = 0;

        public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request value = readRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.channel;
        writer.integer(part0, 1, true);
        byte part1 = value.mode;
        writer.integer(part1, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request readRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request value = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request();
        value.channel = (byte)reader.integer(1, true);
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_47900b504bce4fd7546759c836a78d02e873630ecc79cfa989e3473a9f490359";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response> CODEC =
            new Codec<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response>() {
                public byte[] encode(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response value = readRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(Codecs.Writer writer,
                                                                                 Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response readRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response value = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce45009eaf9382aa3bccc48526aa9e5a040847ad08deb9a37d574dd69a34258d";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte index = 0;
        public byte value = 0;

        public Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request value = readRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
        byte part1 = value.value;
        writer.integer(part1, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request readRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request value = new Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request();
        value.index = (byte)reader.integer(1, true);
        value.value = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fd9da818a998c786665a6849417511722de21391c4aaa92422eb7db061bb9330";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response value = readRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response readRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response value = new Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCurrentTcp_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCurrentTcp_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1b9f1bd57a2dd82cc52ec59acc9967aea8948613ec68dd26e0a9a9897088d002";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros2Dsr_msgs2SrvSetCurrentTcp_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCurrentTcp_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCurrentTcp_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCurrentTcp_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCurrentTcp_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCurrentTcp_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCurrentTcp_Request value = readRos2Dsr_msgs2SrvSetCurrentTcp_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCurrentTcp_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCurrentTcp_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvSetCurrentTcp_Request readRos2Dsr_msgs2SrvSetCurrentTcp_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCurrentTcp_Request value = new Ros2Dsr_msgs2SrvSetCurrentTcp_Request();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCurrentTcp_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCurrentTcp_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9c66924cfd4931bae242c3d11dd0a9293b337defc82501719b179b622d9f342a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetCurrentTcp_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCurrentTcp_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCurrentTcp_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCurrentTcp_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCurrentTcp_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCurrentTcp_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCurrentTcp_Response value = readRos2Dsr_msgs2SrvSetCurrentTcp_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCurrentTcp_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCurrentTcp_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetCurrentTcp_Response readRos2Dsr_msgs2SrvSetCurrentTcp_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCurrentTcp_Response value = new Ros2Dsr_msgs2SrvSetCurrentTcp_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCurrentTool_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCurrentTool_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8d1254ad637afaeca980e00cb89c1a3219cea13e93a0c83641fcf3f7c8afd440";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros2Dsr_msgs2SrvSetCurrentTool_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCurrentTool_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCurrentTool_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCurrentTool_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCurrentTool_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCurrentTool_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCurrentTool_Request value = readRos2Dsr_msgs2SrvSetCurrentTool_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCurrentTool_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCurrentTool_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvSetCurrentTool_Request readRos2Dsr_msgs2SrvSetCurrentTool_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCurrentTool_Request value = new Ros2Dsr_msgs2SrvSetCurrentTool_Request();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetCurrentTool_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetCurrentTool_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_964448078ed08bb742a8077370c02f6b88d702244df67e4eb7d67828abfae932";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetCurrentTool_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetCurrentTool_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetCurrentTool_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetCurrentTool_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetCurrentTool_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetCurrentTool_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetCurrentTool_Response value = readRos2Dsr_msgs2SrvSetCurrentTool_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetCurrentTool_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetCurrentTool_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetCurrentTool_Response readRos2Dsr_msgs2SrvSetCurrentTool_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetCurrentTool_Response value = new Ros2Dsr_msgs2SrvSetCurrentTool_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetDesiredForce_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetDesiredForce_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a49831bf62f8a697addd5be7521f861a307940be45d4a59d9777580801ba4b1a";
        public static final int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 64;
        public double[] fd = new double[6];
        public byte[] dir = new byte[6];
        public byte ref = 0;
        public double time = 0;
        public byte mod = 0;

        public Ros2Dsr_msgs2SrvSetDesiredForce_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetDesiredForce_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetDesiredForce_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetDesiredForce_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetDesiredForce_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetDesiredForce_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetDesiredForce_Request value = readRos2Dsr_msgs2SrvSetDesiredForce_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetDesiredForce_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetDesiredForce_Request value)
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

    private static Ros2Dsr_msgs2SrvSetDesiredForce_Request readRos2Dsr_msgs2SrvSetDesiredForce_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetDesiredForce_Request value = new Ros2Dsr_msgs2SrvSetDesiredForce_Request();
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

    public static final class Ros2Dsr_msgs2SrvSetDesiredForce_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetDesiredForce_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_53ba3b5b57cca8d039ad6c148c20f0cff1e6c93ba4fe170bc7ccc5d0d3c056f9";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetDesiredForce_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetDesiredForce_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetDesiredForce_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetDesiredForce_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetDesiredForce_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetDesiredForce_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetDesiredForce_Response value = readRos2Dsr_msgs2SrvSetDesiredForce_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetDesiredForce_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetDesiredForce_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetDesiredForce_Response readRos2Dsr_msgs2SrvSetDesiredForce_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetDesiredForce_Response value = new Ros2Dsr_msgs2SrvSetDesiredForce_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetModbusOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetModbusOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0653027d5adf9f01bda734d110232c55849f4b19ddaee78dd20b4aecf79096aa";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        public String name = "";
        public int value = 0;

        public Ros2Dsr_msgs2SrvSetModbusOutput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetModbusOutput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetModbusOutput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetModbusOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetModbusOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetModbusOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetModbusOutput_Request value = readRos2Dsr_msgs2SrvSetModbusOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetModbusOutput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetModbusOutput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
        int part1 = value.value;
        writer.integer(part1, 4, true);
    }

    private static Ros2Dsr_msgs2SrvSetModbusOutput_Request readRos2Dsr_msgs2SrvSetModbusOutput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetModbusOutput_Request value = new Ros2Dsr_msgs2SrvSetModbusOutput_Request();
        value.name = readText(reader, 256);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetModbusOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetModbusOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8a8f0f0da4dc7a3235882cc2aef013d1722f17020535a4ddad5dceec5c533262";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetModbusOutput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetModbusOutput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetModbusOutput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetModbusOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetModbusOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetModbusOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetModbusOutput_Response value = readRos2Dsr_msgs2SrvSetModbusOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetModbusOutput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetModbusOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetModbusOutput_Response readRos2Dsr_msgs2SrvSetModbusOutput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetModbusOutput_Response value = new Ros2Dsr_msgs2SrvSetModbusOutput_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterBit_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_309eebb54f359760a9c52635c1989d966c7b3998e34444dfccc4023ed43c1f88";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int address = 0;
        public int value = 0;

        public Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetOutputRegisterBit_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request value = readRos2Dsr_msgs2SrvSetOutputRegisterBit_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetOutputRegisterBit_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 2, false);
        int part1 = value.value;
        writer.integer(part1, 4, true);
    }

    private static Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request readRos2Dsr_msgs2SrvSetOutputRegisterBit_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request value = new Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request();
        value.address = (int)reader.integer(2, false);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterBit_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3358f20e8d47bdafe4406208878d8c28c320f9e53844eaacfaadfb1255f8a6e8";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetOutputRegisterBit_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response value = readRos2Dsr_msgs2SrvSetOutputRegisterBit_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetOutputRegisterBit_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response readRos2Dsr_msgs2SrvSetOutputRegisterBit_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response value = new Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterFloat_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7f0c5c355381aa45700641c3ba99b227fe6bbb5394f1e2cb01c4f2b899918c61";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;
        public int address = 0;
        public double value = 0;

        public Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetOutputRegisterFloat_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request value = readRos2Dsr_msgs2SrvSetOutputRegisterFloat_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetOutputRegisterFloat_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 2, false);
        double part1 = value.value;
        writer.f64(part1);
    }

    private static Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request readRos2Dsr_msgs2SrvSetOutputRegisterFloat_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request value = new Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request();
        value.address = (int)reader.integer(2, false);
        value.value = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterFloat_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9c3d3799cc5622c88b54926353e730bf362a75c4a23e95c9543820d489f1b27f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetOutputRegisterFloat_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response value = readRos2Dsr_msgs2SrvSetOutputRegisterFloat_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetOutputRegisterFloat_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response readRos2Dsr_msgs2SrvSetOutputRegisterFloat_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response value = new Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterInt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1d250e3cfd00550fc55b69ac120c384e90573636d7a2adc8a5e8b122ec678364";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int address = 0;
        public int value = 0;

        public Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetOutputRegisterInt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request value = readRos2Dsr_msgs2SrvSetOutputRegisterInt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetOutputRegisterInt_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 2, false);
        int part1 = value.value;
        writer.integer(part1, 4, true);
    }

    private static Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request readRos2Dsr_msgs2SrvSetOutputRegisterInt_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request value = new Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request();
        value.address = (int)reader.integer(2, false);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterInt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ec70602507eebbdca44703e487375d482510aaa684aa2dd93a5bdcd0ba8275f7";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetOutputRegisterInt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response value = readRos2Dsr_msgs2SrvSetOutputRegisterInt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetOutputRegisterInt_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response readRos2Dsr_msgs2SrvSetOutputRegisterInt_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response value = new Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRefCoord_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRefCoord_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_801f3fdd878bd7661db70ef37a8146e9c02f539c65d91a60a7589a1009bc9be5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte coord = 0;

        public Ros2Dsr_msgs2SrvSetRefCoord_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRefCoord_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRefCoord_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRefCoord_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRefCoord_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRefCoord_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRefCoord_Request value = readRos2Dsr_msgs2SrvSetRefCoord_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRefCoord_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRefCoord_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.coord;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetRefCoord_Request readRos2Dsr_msgs2SrvSetRefCoord_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRefCoord_Request value = new Ros2Dsr_msgs2SrvSetRefCoord_Request();
        value.coord = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRefCoord_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRefCoord_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_733bfb338aa280d2475a6398264e26cf76e873c92e20e9e8496898c38f990bae";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetRefCoord_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRefCoord_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRefCoord_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRefCoord_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRefCoord_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRefCoord_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRefCoord_Response value = readRos2Dsr_msgs2SrvSetRefCoord_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRefCoord_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRefCoord_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetRefCoord_Response readRos2Dsr_msgs2SrvSetRefCoord_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRefCoord_Response value = new Ros2Dsr_msgs2SrvSetRefCoord_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRobotControl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRobotControl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d39305d9d913933542cc89eba2c9b5abd68e25574c9f8096ad4bb16cebb2c97f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte robot_control = 0;

        public Ros2Dsr_msgs2SrvSetRobotControl_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRobotControl_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRobotControl_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRobotControl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRobotControl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRobotControl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRobotControl_Request value = readRos2Dsr_msgs2SrvSetRobotControl_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRobotControl_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRobotControl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_control;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetRobotControl_Request readRos2Dsr_msgs2SrvSetRobotControl_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRobotControl_Request value = new Ros2Dsr_msgs2SrvSetRobotControl_Request();
        value.robot_control = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRobotControl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRobotControl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e4aad49231edc73256306d46bd537ffb24d61956146265a7f04d1eb1aafc684c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetRobotControl_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRobotControl_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRobotControl_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRobotControl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRobotControl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRobotControl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRobotControl_Response value = readRos2Dsr_msgs2SrvSetRobotControl_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRobotControl_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRobotControl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetRobotControl_Response readRos2Dsr_msgs2SrvSetRobotControl_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRobotControl_Response value = new Ros2Dsr_msgs2SrvSetRobotControl_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRobotMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRobotMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_59506bb1284a069b41db932d11fcef986befe63b2d365b16ff6a09d1d4227a9b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte robot_mode = 0;

        public Ros2Dsr_msgs2SrvSetRobotMode_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRobotMode_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRobotMode_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRobotMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRobotMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRobotMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRobotMode_Request value = readRos2Dsr_msgs2SrvSetRobotMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRobotMode_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRobotMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_mode;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetRobotMode_Request readRos2Dsr_msgs2SrvSetRobotMode_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRobotMode_Request value = new Ros2Dsr_msgs2SrvSetRobotMode_Request();
        value.robot_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRobotMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRobotMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f1d0dad948e4a24471c406e08b79640f3846f0d96aaf63d84763066b54963dee";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetRobotMode_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRobotMode_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRobotMode_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRobotMode_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRobotMode_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRobotMode_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRobotMode_Response value = readRos2Dsr_msgs2SrvSetRobotMode_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRobotMode_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRobotMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetRobotMode_Response readRos2Dsr_msgs2SrvSetRobotMode_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRobotMode_Response value = new Ros2Dsr_msgs2SrvSetRobotMode_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRobotSpeedMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_74f6d0c7e148619aa43ad375b529155bce79ff06295ca5612dee8b17c8f7399b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte speed_mode = 0;

        public Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRobotSpeedMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request value = readRos2Dsr_msgs2SrvSetRobotSpeedMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRobotSpeedMode_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.speed_mode;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request readRos2Dsr_msgs2SrvSetRobotSpeedMode_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request value = new Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request();
        value.speed_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRobotSpeedMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f2b86ce2bbd498677537e77b069fda28c0c48c73d1d3b4a8b4f6d41460a2dde2";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRobotSpeedMode_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response value = readRos2Dsr_msgs2SrvSetRobotSpeedMode_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRobotSpeedMode_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response readRos2Dsr_msgs2SrvSetRobotSpeedMode_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response value = new Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRobotSystem_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRobotSystem_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2cbe8cfcd2fbe89acc3310ec43e904bdad6e246bbda7c7225357d9478e591030";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte robot_system = 0;

        public Ros2Dsr_msgs2SrvSetRobotSystem_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRobotSystem_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRobotSystem_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRobotSystem_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRobotSystem_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRobotSystem_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRobotSystem_Request value = readRos2Dsr_msgs2SrvSetRobotSystem_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRobotSystem_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRobotSystem_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.robot_system;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetRobotSystem_Request readRos2Dsr_msgs2SrvSetRobotSystem_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRobotSystem_Request value = new Ros2Dsr_msgs2SrvSetRobotSystem_Request();
        value.robot_system = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRobotSystem_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRobotSystem_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_93e95c1c768694abbfaa89bca4357085b9e6b67b031cedaf3ae064a0e5545872";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetRobotSystem_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRobotSystem_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRobotSystem_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRobotSystem_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRobotSystem_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRobotSystem_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRobotSystem_Response value = readRos2Dsr_msgs2SrvSetRobotSystem_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRobotSystem_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRobotSystem_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetRobotSystem_Response readRos2Dsr_msgs2SrvSetRobotSystem_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRobotSystem_Response value = new Ros2Dsr_msgs2SrvSetRobotSystem_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRtControlInput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRtControlInput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5d0d581d5874bb92ea5c67281c4414d4dcf2799ebeb13b12b60b58408b3854c7";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public String version = "";
        public double period = 0;
        public int loss = 0;

        public Ros2Dsr_msgs2SrvSetRtControlInput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRtControlInput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRtControlInput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRtControlInput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRtControlInput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRtControlInput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRtControlInput_Request value = readRos2Dsr_msgs2SrvSetRtControlInput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRtControlInput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRtControlInput_Request value)
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

    private static Ros2Dsr_msgs2SrvSetRtControlInput_Request readRos2Dsr_msgs2SrvSetRtControlInput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRtControlInput_Request value = new Ros2Dsr_msgs2SrvSetRtControlInput_Request();
        value.version = readText(reader, 256);
        value.period = reader.f64();
        value.loss = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRtControlInput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRtControlInput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d4a506d56199fac9bd3decbdadce3a728df404854dfceea3f1365e25a031c2a8";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetRtControlInput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRtControlInput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRtControlInput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRtControlInput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRtControlInput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRtControlInput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRtControlInput_Response value = readRos2Dsr_msgs2SrvSetRtControlInput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRtControlInput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRtControlInput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetRtControlInput_Response readRos2Dsr_msgs2SrvSetRtControlInput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRtControlInput_Response value = new Ros2Dsr_msgs2SrvSetRtControlInput_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRtControlOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRtControlOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_12dac5a038aa91a74240656b3d088e1fbee381de935a8b8aae7fb2a152bcaa47";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public String version = "";
        public double period = 0;
        public int loss = 0;

        public Ros2Dsr_msgs2SrvSetRtControlOutput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRtControlOutput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRtControlOutput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRtControlOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRtControlOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRtControlOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRtControlOutput_Request value = readRos2Dsr_msgs2SrvSetRtControlOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRtControlOutput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRtControlOutput_Request value)
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

    private static Ros2Dsr_msgs2SrvSetRtControlOutput_Request readRos2Dsr_msgs2SrvSetRtControlOutput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRtControlOutput_Request value = new Ros2Dsr_msgs2SrvSetRtControlOutput_Request();
        value.version = readText(reader, 256);
        value.period = reader.f64();
        value.loss = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetRtControlOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetRtControlOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_25049366402ac5e192f2190b80e4576126929d8375fd1efefdc50154f473305b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetRtControlOutput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetRtControlOutput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetRtControlOutput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetRtControlOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetRtControlOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetRtControlOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetRtControlOutput_Response value = readRos2Dsr_msgs2SrvSetRtControlOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetRtControlOutput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetRtControlOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetRtControlOutput_Response readRos2Dsr_msgs2SrvSetRtControlOutput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetRtControlOutput_Response value = new Ros2Dsr_msgs2SrvSetRtControlOutput_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetSafeStopResetType_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetSafeStopResetType_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4ab1dff4c9864a2e66d6c4ebd64032504098ca191284d027bc8021668412e7f3";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte reset_type = 0;

        public Ros2Dsr_msgs2SrvSetSafeStopResetType_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetSafeStopResetType_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetSafeStopResetType_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetSafeStopResetType_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetSafeStopResetType_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetSafeStopResetType_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetSafeStopResetType_Request value = readRos2Dsr_msgs2SrvSetSafeStopResetType_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetSafeStopResetType_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetSafeStopResetType_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.reset_type;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetSafeStopResetType_Request readRos2Dsr_msgs2SrvSetSafeStopResetType_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetSafeStopResetType_Request value = new Ros2Dsr_msgs2SrvSetSafeStopResetType_Request();
        value.reset_type = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetSafeStopResetType_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetSafeStopResetType_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d1b868c2e694688a6bad4d4a93ae4032a650a0f99ae3cffeac1bfed3336762ae";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetSafeStopResetType_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetSafeStopResetType_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetSafeStopResetType_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetSafeStopResetType_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetSafeStopResetType_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetSafeStopResetType_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetSafeStopResetType_Response value = readRos2Dsr_msgs2SrvSetSafeStopResetType_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetSafeStopResetType_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetSafeStopResetType_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetSafeStopResetType_Response readRos2Dsr_msgs2SrvSetSafeStopResetType_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetSafeStopResetType_Response value = new Ros2Dsr_msgs2SrvSetSafeStopResetType_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetSafetyMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetSafetyMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ea5c506bc7bcd868d8547643b82f902a595954f7487216e57b47491998e80713";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte safety_mode = 0;
        public byte safety_event = 0;

        public Ros2Dsr_msgs2SrvSetSafetyMode_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetSafetyMode_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetSafetyMode_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetSafetyMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetSafetyMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetSafetyMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetSafetyMode_Request value = readRos2Dsr_msgs2SrvSetSafetyMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetSafetyMode_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetSafetyMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.safety_mode;
        writer.integer(part0, 1, true);
        byte part1 = value.safety_event;
        writer.integer(part1, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetSafetyMode_Request readRos2Dsr_msgs2SrvSetSafetyMode_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetSafetyMode_Request value = new Ros2Dsr_msgs2SrvSetSafetyMode_Request();
        value.safety_mode = (byte)reader.integer(1, true);
        value.safety_event = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetSafetyMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetSafetyMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d7ce2c604f4a7abeccbf4514a05fe8abbcbdddcc047f4838d0fcc792bb5414b6";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetSafetyMode_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetSafetyMode_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetSafetyMode_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetSafetyMode_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetSafetyMode_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetSafetyMode_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetSafetyMode_Response value = readRos2Dsr_msgs2SrvSetSafetyMode_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetSafetyMode_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetSafetyMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetSafetyMode_Response readRos2Dsr_msgs2SrvSetSafetyMode_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetSafetyMode_Response value = new Ros2Dsr_msgs2SrvSetSafetyMode_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetSingularHandlingForce_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_785b7a837bf13aa7f6f7178818d470b970253761b389d2e5526a77090c765d17";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte mode = 0;

        public Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetSingularHandlingForce_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request value = readRos2Dsr_msgs2SrvSetSingularHandlingForce_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetSingularHandlingForce_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.mode;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request readRos2Dsr_msgs2SrvSetSingularHandlingForce_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request value = new Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request();
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetSingularHandlingForce_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5d0197a02dc22035522bdde1791a6e06ce31be284cb75d8d1edcbd97d382aa04";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetSingularHandlingForce_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response value = readRos2Dsr_msgs2SrvSetSingularHandlingForce_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetSingularHandlingForce_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response readRos2Dsr_msgs2SrvSetSingularHandlingForce_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response value = new Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetSingularityHandling_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetSingularityHandling_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_714198c67734535e609af75c076ccc5eaef14996ab2f6dc41fac5da7af168f10";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte mode = 0;

        public Ros2Dsr_msgs2SrvSetSingularityHandling_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetSingularityHandling_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetSingularityHandling_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetSingularityHandling_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetSingularityHandling_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetSingularityHandling_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetSingularityHandling_Request value = readRos2Dsr_msgs2SrvSetSingularityHandling_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetSingularityHandling_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetSingularityHandling_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.mode;
        writer.integer(part0, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetSingularityHandling_Request readRos2Dsr_msgs2SrvSetSingularityHandling_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetSingularityHandling_Request value = new Ros2Dsr_msgs2SrvSetSingularityHandling_Request();
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetSingularityHandling_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetSingularityHandling_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2c1eb60c47dedf7a166dc51366a9748e21d2a64603591c9698a5c75bcfa0fd6b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetSingularityHandling_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetSingularityHandling_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetSingularityHandling_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetSingularityHandling_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetSingularityHandling_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetSingularityHandling_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetSingularityHandling_Response value = readRos2Dsr_msgs2SrvSetSingularityHandling_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetSingularityHandling_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetSingularityHandling_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetSingularityHandling_Response readRos2Dsr_msgs2SrvSetSingularityHandling_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetSingularityHandling_Response value = new Ros2Dsr_msgs2SrvSetSingularityHandling_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetStiffnessx_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetStiffnessx_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e173ca626019669404706278ab035396e77f684b17181b7e181a8a73e7ec5101";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;
        public double[] stx = new double[6];
        public byte ref = 0;
        public double time = 0;

        public Ros2Dsr_msgs2SrvSetStiffnessx_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetStiffnessx_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetStiffnessx_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetStiffnessx_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetStiffnessx_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetStiffnessx_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetStiffnessx_Request value = readRos2Dsr_msgs2SrvSetStiffnessx_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetStiffnessx_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetStiffnessx_Request value)
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

    private static Ros2Dsr_msgs2SrvSetStiffnessx_Request readRos2Dsr_msgs2SrvSetStiffnessx_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetStiffnessx_Request value = new Ros2Dsr_msgs2SrvSetStiffnessx_Request();
        value.stx = new double[6];
        for(int i = 0; i < value.stx.length; ++i)
            value.stx[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.time = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetStiffnessx_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetStiffnessx_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9f7b37d22a5d4cfd34e92df02aa3ef3bdd78e965877b30889cdbd85ad81b1f63";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetStiffnessx_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetStiffnessx_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetStiffnessx_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetStiffnessx_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetStiffnessx_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetStiffnessx_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetStiffnessx_Response value = readRos2Dsr_msgs2SrvSetStiffnessx_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetStiffnessx_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetStiffnessx_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetStiffnessx_Response readRos2Dsr_msgs2SrvSetStiffnessx_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetStiffnessx_Response value = new Ros2Dsr_msgs2SrvSetStiffnessx_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetToolDigitalOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fdc298f88b15ff1e7f9b99425f8909e584ffec665f5fdf49d0559aa4f1923675";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte index = 0;
        public byte value = 0;

        public Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetToolDigitalOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request value = readRos2Dsr_msgs2SrvSetToolDigitalOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetToolDigitalOutput_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.index;
        writer.integer(part0, 1, true);
        byte part1 = value.value;
        writer.integer(part1, 1, true);
    }

    private static Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request readRos2Dsr_msgs2SrvSetToolDigitalOutput_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request value = new Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request();
        value.index = (byte)reader.integer(1, true);
        value.value = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetToolDigitalOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6dd380084f46879e224a01e8cb135cfa7909d7dd29c0f953fce3533115e0fb5c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetToolDigitalOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response value = readRos2Dsr_msgs2SrvSetToolDigitalOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetToolDigitalOutput_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response readRos2Dsr_msgs2SrvSetToolDigitalOutput_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response value = new Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetToolShape_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetToolShape_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_18dece524fe8fe008a1ce848629aabcc4a91bb33f0c0b75a50c77464da886679";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String name = "";

        public Ros2Dsr_msgs2SrvSetToolShape_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetToolShape_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetToolShape_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetToolShape_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetToolShape_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetToolShape_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetToolShape_Request value = readRos2Dsr_msgs2SrvSetToolShape_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetToolShape_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetToolShape_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 256);
    }

    private static Ros2Dsr_msgs2SrvSetToolShape_Request readRos2Dsr_msgs2SrvSetToolShape_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetToolShape_Request value = new Ros2Dsr_msgs2SrvSetToolShape_Request();
        value.name = readText(reader, 256);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetToolShape_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetToolShape_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0cc4521218ab5151885efd7d818d63c3a80e792552282a776d9595ea3e220739";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetToolShape_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetToolShape_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetToolShape_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetToolShape_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetToolShape_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetToolShape_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetToolShape_Response value = readRos2Dsr_msgs2SrvSetToolShape_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetToolShape_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetToolShape_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetToolShape_Response readRos2Dsr_msgs2SrvSetToolShape_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetToolShape_Response value = new Ros2Dsr_msgs2SrvSetToolShape_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetUserCartCoord1_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord1_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_497558c7b91c9f6a79afc784b1026e28a632e8234b178b96754eaebcfa4d01f2";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvSetUserCartCoord1_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetUserCartCoord1_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetUserCartCoord1_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetUserCartCoord1_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetUserCartCoord1_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetUserCartCoord1_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetUserCartCoord1_Request value = readRos2Dsr_msgs2SrvSetUserCartCoord1_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetUserCartCoord1_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetUserCartCoord1_Request value)
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

    private static Ros2Dsr_msgs2SrvSetUserCartCoord1_Request readRos2Dsr_msgs2SrvSetUserCartCoord1_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetUserCartCoord1_Request value = new Ros2Dsr_msgs2SrvSetUserCartCoord1_Request();
        value.pos = new double[6];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetUserCartCoord1_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord1_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6ccfd1c14bc6f8be1efa6fae4c6b33373fab3dc76976891e07e2340bc984c4cf";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte id = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetUserCartCoord1_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetUserCartCoord1_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetUserCartCoord1_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetUserCartCoord1_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetUserCartCoord1_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetUserCartCoord1_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetUserCartCoord1_Response value = readRos2Dsr_msgs2SrvSetUserCartCoord1_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetUserCartCoord1_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetUserCartCoord1_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetUserCartCoord1_Response readRos2Dsr_msgs2SrvSetUserCartCoord1_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetUserCartCoord1_Response value = new Ros2Dsr_msgs2SrvSetUserCartCoord1_Response();
        value.id = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetUserCartCoord2_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord2_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8ebe04baec0078b4f501712b9777f2f25f71cdb668e45aaadac9fd1f08c4d817";
        public static final int MIN_WIRE_BYTES = 193, MAX_WIRE_BYTES = 193;
        public double[] x1 = new double[6];
        public double[] x2 = new double[6];
        public double[] x3 = new double[6];
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvSetUserCartCoord2_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetUserCartCoord2_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetUserCartCoord2_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetUserCartCoord2_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetUserCartCoord2_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetUserCartCoord2_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetUserCartCoord2_Request value = readRos2Dsr_msgs2SrvSetUserCartCoord2_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetUserCartCoord2_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetUserCartCoord2_Request value)
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

    private static Ros2Dsr_msgs2SrvSetUserCartCoord2_Request readRos2Dsr_msgs2SrvSetUserCartCoord2_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetUserCartCoord2_Request value = new Ros2Dsr_msgs2SrvSetUserCartCoord2_Request();
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

    public static final class Ros2Dsr_msgs2SrvSetUserCartCoord2_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord2_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a607f151e7acf622b233805382b69ea22ab0b4c86067c06bcc2673e1f2a58b8f";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte id = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetUserCartCoord2_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetUserCartCoord2_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetUserCartCoord2_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetUserCartCoord2_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetUserCartCoord2_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetUserCartCoord2_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetUserCartCoord2_Response value = readRos2Dsr_msgs2SrvSetUserCartCoord2_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetUserCartCoord2_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetUserCartCoord2_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetUserCartCoord2_Response readRos2Dsr_msgs2SrvSetUserCartCoord2_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetUserCartCoord2_Response value = new Ros2Dsr_msgs2SrvSetUserCartCoord2_Response();
        value.id = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetUserCartCoord3_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord3_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_251d326c5d179d4324c7e178e44a5857335efcbef19c0ede3a38e6b35bd03504";
        public static final int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 97;
        public double[] u1 = new double[3];
        public double[] v1 = new double[3];
        public double[] pos = new double[6];
        public byte ref = 0;

        public Ros2Dsr_msgs2SrvSetUserCartCoord3_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetUserCartCoord3_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetUserCartCoord3_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetUserCartCoord3_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetUserCartCoord3_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetUserCartCoord3_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetUserCartCoord3_Request value = readRos2Dsr_msgs2SrvSetUserCartCoord3_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetUserCartCoord3_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetUserCartCoord3_Request value)
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

    private static Ros2Dsr_msgs2SrvSetUserCartCoord3_Request readRos2Dsr_msgs2SrvSetUserCartCoord3_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetUserCartCoord3_Request value = new Ros2Dsr_msgs2SrvSetUserCartCoord3_Request();
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

    public static final class Ros2Dsr_msgs2SrvSetUserCartCoord3_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord3_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a4c23d5c3c9e3b8101991250879779acbbe592d2b9bb62b8b8629230eebfdd39";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte id = 0;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetUserCartCoord3_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetUserCartCoord3_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetUserCartCoord3_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetUserCartCoord3_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetUserCartCoord3_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetUserCartCoord3_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetUserCartCoord3_Response value = readRos2Dsr_msgs2SrvSetUserCartCoord3_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetUserCartCoord3_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetUserCartCoord3_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.id;
        writer.integer(part0, 1, true);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetUserCartCoord3_Response readRos2Dsr_msgs2SrvSetUserCartCoord3_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetUserCartCoord3_Response value = new Ros2Dsr_msgs2SrvSetUserCartCoord3_Response();
        value.id = (byte)reader.integer(1, true);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetVeljRt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetVeljRt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8e666417ee1ca845dc12a0c18e5a538070717ca943fe982b42af7eb66f801cf3";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double[] vel = new double[6];

        public Ros2Dsr_msgs2SrvSetVeljRt_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetVeljRt_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetVeljRt_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetVeljRt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetVeljRt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetVeljRt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetVeljRt_Request value = readRos2Dsr_msgs2SrvSetVeljRt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetVeljRt_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetVeljRt_Request value)
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

    private static Ros2Dsr_msgs2SrvSetVeljRt_Request readRos2Dsr_msgs2SrvSetVeljRt_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetVeljRt_Request value = new Ros2Dsr_msgs2SrvSetVeljRt_Request();
        value.vel = new double[6];
        for(int i = 0; i < value.vel.length; ++i)
            value.vel[i] = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetVeljRt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetVeljRt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6b678e677badd0a4723fd1608058a72548fc7c446f48809552bccc9e890ec6bd";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetVeljRt_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetVeljRt_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetVeljRt_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetVeljRt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetVeljRt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetVeljRt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetVeljRt_Response value = readRos2Dsr_msgs2SrvSetVeljRt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetVeljRt_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetVeljRt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetVeljRt_Response readRos2Dsr_msgs2SrvSetVeljRt_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetVeljRt_Response value = new Ros2Dsr_msgs2SrvSetVeljRt_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetVelxRt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetVelxRt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f9b3017cd73796a71ea9bacd871af523b391d9e5b06f1b050cfbeab163c83b9e";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public double trans = 0;
        public double rotation = 0;

        public Ros2Dsr_msgs2SrvSetVelxRt_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetVelxRt_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvSetVelxRt_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetVelxRt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetVelxRt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetVelxRt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetVelxRt_Request value = readRos2Dsr_msgs2SrvSetVelxRt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetVelxRt_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetVelxRt_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.trans;
        writer.f64(part0);
        double part1 = value.rotation;
        writer.f64(part1);
    }

    private static Ros2Dsr_msgs2SrvSetVelxRt_Request readRos2Dsr_msgs2SrvSetVelxRt_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetVelxRt_Request value = new Ros2Dsr_msgs2SrvSetVelxRt_Request();
        value.trans = reader.f64();
        value.rotation = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvSetVelxRt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/SetVelxRt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_973acd53cbb327287c306ec5a54b7b756e031a6fb8acfc836852fdf19dc31f9d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvSetVelxRt_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvSetVelxRt_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvSetVelxRt_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvSetVelxRt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvSetVelxRt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvSetVelxRt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvSetVelxRt_Response value = readRos2Dsr_msgs2SrvSetVelxRt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvSetVelxRt_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvSetVelxRt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvSetVelxRt_Response readRos2Dsr_msgs2SrvSetVelxRt_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvSetVelxRt_Response value = new Ros2Dsr_msgs2SrvSetVelxRt_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvStartRtControl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/StartRtControl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a828a2ecc839bec2c3521779ed7927db6c7c47b48aa99d9ad6328e741a85e5b1";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvStartRtControl_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvStartRtControl_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvStartRtControl_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvStartRtControl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvStartRtControl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvStartRtControl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvStartRtControl_Request value = readRos2Dsr_msgs2SrvStartRtControl_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvStartRtControl_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvStartRtControl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvStartRtControl_Request readRos2Dsr_msgs2SrvStartRtControl_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvStartRtControl_Request value = new Ros2Dsr_msgs2SrvStartRtControl_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvStartRtControl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/StartRtControl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ac6ba957fb8ea8ec816adbf89dfd041181d8fc4d7d6e399aae04ee6efd2c9533";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvStartRtControl_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvStartRtControl_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvStartRtControl_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvStartRtControl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvStartRtControl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvStartRtControl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvStartRtControl_Response value = readRos2Dsr_msgs2SrvStartRtControl_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvStartRtControl_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvStartRtControl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvStartRtControl_Response readRos2Dsr_msgs2SrvStartRtControl_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvStartRtControl_Response value = new Ros2Dsr_msgs2SrvStartRtControl_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvStopRtControl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/StopRtControl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0f2a7b5fc3a8dcb9413a53410d3291d5148add2e64bf7654ed41ff2f626b7ef1";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Dsr_msgs2SrvStopRtControl_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvStopRtControl_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvStopRtControl_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvStopRtControl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvStopRtControl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvStopRtControl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvStopRtControl_Request value = readRos2Dsr_msgs2SrvStopRtControl_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvStopRtControl_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvStopRtControl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Dsr_msgs2SrvStopRtControl_Request readRos2Dsr_msgs2SrvStopRtControl_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvStopRtControl_Request value = new Ros2Dsr_msgs2SrvStopRtControl_Request();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvStopRtControl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/StopRtControl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a8754817156c23964f102f68eab7e19c603c8092334a239c669d4fce23cfcd89";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvStopRtControl_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvStopRtControl_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvStopRtControl_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvStopRtControl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvStopRtControl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvStopRtControl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvStopRtControl_Response value = readRos2Dsr_msgs2SrvStopRtControl_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvStopRtControl_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvStopRtControl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvStopRtControl_Response readRos2Dsr_msgs2SrvStopRtControl_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvStopRtControl_Response value = new Ros2Dsr_msgs2SrvStopRtControl_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/TaskComplianceCtrl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e1c8abe0594c9a4de2a8fa207cac4b898dad5c3148e4f5bd965a4acb1b0663e0";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;
        public double[] stx = new double[6];
        public byte ref = 0;
        public double time = 0;

        public Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvTaskComplianceCtrl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request value = readRos2Dsr_msgs2SrvTaskComplianceCtrl_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvTaskComplianceCtrl_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request value)
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

    private static Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request readRos2Dsr_msgs2SrvTaskComplianceCtrl_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request value = new Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request();
        value.stx = new double[6];
        for(int i = 0; i < value.stx.length; ++i)
            value.stx[i] = reader.f64();
        value.ref = (byte)reader.integer(1, true);
        value.time = reader.f64();
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/TaskComplianceCtrl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_031919d7369a7e23da6eed0754cf7228ad0c6694b84651454d40dec76aff35bb";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvTaskComplianceCtrl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response value = readRos2Dsr_msgs2SrvTaskComplianceCtrl_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvTaskComplianceCtrl_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response readRos2Dsr_msgs2SrvTaskComplianceCtrl_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response value = new Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvTrans_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Trans_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_473706407758f61ca27a10aa6090859f97ffae55ad65abfd3dbf7a2bf31230f7";
        public static final int MIN_WIRE_BYTES = 98, MAX_WIRE_BYTES = 98;
        public double[] pos = new double[6];
        public double[] delta = new double[6];
        public byte ref = 0;
        public byte ref_out = 0;

        public Ros2Dsr_msgs2SrvTrans_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvTrans_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvTrans_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvTrans_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvTrans_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvTrans_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvTrans_Request value = readRos2Dsr_msgs2SrvTrans_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvTrans_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvTrans_Request value)
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

    private static Ros2Dsr_msgs2SrvTrans_Request readRos2Dsr_msgs2SrvTrans_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvTrans_Request value = new Ros2Dsr_msgs2SrvTrans_Request();
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

    public static final class Ros2Dsr_msgs2SrvTrans_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/Trans_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0900d0c0cda3b1b164384313039be345f26d7cebfe3918ed6d3d10eb6c5a2913";
        public static final int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;
        public double[] trans_pos = new double[6];
        public boolean success = false;

        public Ros2Dsr_msgs2SrvTrans_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvTrans_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvTrans_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvTrans_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvTrans_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvTrans_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvTrans_Response value = readRos2Dsr_msgs2SrvTrans_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvTrans_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvTrans_Response value)
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

    private static Ros2Dsr_msgs2SrvTrans_Response readRos2Dsr_msgs2SrvTrans_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvTrans_Response value = new Ros2Dsr_msgs2SrvTrans_Response();
        value.trans_pos = new double[6];
        for(int i = 0; i < value.trans_pos.length; ++i)
            value.trans_pos[i] = reader.f64();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Dsr_msgs2SrvWriteDataRt_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/WriteDataRt_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6936ab81238d05ed11cd9a372c08723a506f424bef7682cbd627295bd5b31f41";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;
        public double[] external_force_torque = new double[6];
        public int external_digital_input = 0;
        public int external_digital_output = 0;
        public double[] external_analog_input = new double[6];
        public double[] external_analog_output = new double[6];

        public Ros2Dsr_msgs2SrvWriteDataRt_Request()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvWriteDataRt_Request> CODEC = new Codec<Ros2Dsr_msgs2SrvWriteDataRt_Request>() {
            public byte[] encode(Ros2Dsr_msgs2SrvWriteDataRt_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvWriteDataRt_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvWriteDataRt_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvWriteDataRt_Request value = readRos2Dsr_msgs2SrvWriteDataRt_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvWriteDataRt_Request(Codecs.Writer writer, Ros2Dsr_msgs2SrvWriteDataRt_Request value)
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

    private static Ros2Dsr_msgs2SrvWriteDataRt_Request readRos2Dsr_msgs2SrvWriteDataRt_Request(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvWriteDataRt_Request value = new Ros2Dsr_msgs2SrvWriteDataRt_Request();
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

    public static final class Ros2Dsr_msgs2SrvWriteDataRt_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "dsr_msgs2/srv/WriteDataRt_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a0c357cdc8525ce2c13210c5662fde3ff2bf89ac253a3ade7c0524af4879748e";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Dsr_msgs2SrvWriteDataRt_Response()
        {
        }

        public static final Codec<Ros2Dsr_msgs2SrvWriteDataRt_Response> CODEC = new Codec<Ros2Dsr_msgs2SrvWriteDataRt_Response>() {
            public byte[] encode(Ros2Dsr_msgs2SrvWriteDataRt_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Dsr_msgs2SrvWriteDataRt_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Dsr_msgs2SrvWriteDataRt_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Dsr_msgs2SrvWriteDataRt_Response value = readRos2Dsr_msgs2SrvWriteDataRt_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Dsr_msgs2SrvWriteDataRt_Response(Codecs.Writer writer, Ros2Dsr_msgs2SrvWriteDataRt_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Dsr_msgs2SrvWriteDataRt_Response readRos2Dsr_msgs2SrvWriteDataRt_Response(Codecs.Reader reader)
    {
        Ros2Dsr_msgs2SrvWriteDataRt_Response value = new Ros2Dsr_msgs2SrvWriteDataRt_Response();
        value.success = readBool(reader);
        return value;
    }
}
