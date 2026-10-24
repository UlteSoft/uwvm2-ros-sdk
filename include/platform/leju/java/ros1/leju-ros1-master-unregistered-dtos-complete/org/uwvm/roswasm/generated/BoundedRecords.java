/**
 * @file BoundedRecords.java
 * @brief Full leju java codecs and original record metadata.
 * @details Complete leju ros1_master_unregistered_dtos values in java. 2 original records retain 5 fields and 2
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/leju/en_US/catalog/.
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

    public static final class Ros1Kuavo_sdkQv
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "kuavo_sdk/qv";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 132;
        public double[] value = new double[0];

        public Ros1Kuavo_sdkQv()
        {
        }

        public static final Codec<Ros1Kuavo_sdkQv> CODEC = new Codec<Ros1Kuavo_sdkQv>() {
            public byte[] encode(Ros1Kuavo_sdkQv value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Kuavo_sdkQv(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Kuavo_sdkQv decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Kuavo_sdkQv value = readRos1Kuavo_sdkQv(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Kuavo_sdkQv(Codecs.Writer writer, Ros1Kuavo_sdkQv value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.value;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
    }

    private static Ros1Kuavo_sdkQv readRos1Kuavo_sdkQv(Codecs.Reader reader)
    {
        Ros1Kuavo_sdkQv value = new Ros1Kuavo_sdkQv();
        value.value = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.value.length; ++i)
            value.value[i] = reader.f64();
        return value;
    }

    public static final class Ros1Kuavo_sdkFullBodyTargetTrajectories
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "kuavo_sdk/fullBodyTargetTrajectories";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 2320;
        public double[] timeTrajectory = new double[0];
        public int[] footIndexTrajectory = new int[0];
        public Ros1Kuavo_sdkQv[] fullBodyQTrajectory = new Ros1Kuavo_sdkQv[0];
        public Ros1Kuavo_sdkQv[] fullBodyVTrajectory = new Ros1Kuavo_sdkQv[0];

        public Ros1Kuavo_sdkFullBodyTargetTrajectories()
        {
        }

        public static final Codec<Ros1Kuavo_sdkFullBodyTargetTrajectories> CODEC = new Codec<Ros1Kuavo_sdkFullBodyTargetTrajectories>() {
            public byte[] encode(Ros1Kuavo_sdkFullBodyTargetTrajectories value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Kuavo_sdkFullBodyTargetTrajectories(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Kuavo_sdkFullBodyTargetTrajectories decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Kuavo_sdkFullBodyTargetTrajectories value = readRos1Kuavo_sdkFullBodyTargetTrajectories(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Kuavo_sdkFullBodyTargetTrajectories(Codecs.Writer writer, Ros1Kuavo_sdkFullBodyTargetTrajectories value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.timeTrajectory;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        int[] part1 = value.footIndexTrajectory;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 4, true);
        }
        Ros1Kuavo_sdkQv[] part2 = value.fullBodyQTrajectory;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos1Kuavo_sdkQv(writer, part2[i]);
        }
        Ros1Kuavo_sdkQv[] part3 = value.fullBodyVTrajectory;
        if(part3 == null || part3.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos1Kuavo_sdkQv(writer, part3[i]);
        }
    }

    private static Ros1Kuavo_sdkFullBodyTargetTrajectories readRos1Kuavo_sdkFullBodyTargetTrajectories(Codecs.Reader reader)
    {
        Ros1Kuavo_sdkFullBodyTargetTrajectories value = new Ros1Kuavo_sdkFullBodyTargetTrajectories();
        value.timeTrajectory = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.timeTrajectory.length; ++i)
            value.timeTrajectory[i] = reader.f64();
        value.footIndexTrajectory = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.footIndexTrajectory.length; ++i)
            value.footIndexTrajectory[i] = (int)reader.integer(4, true);
        value.fullBodyQTrajectory = new Ros1Kuavo_sdkQv[readCount(reader, 8, 4)];
        for(int i = 0; i < value.fullBodyQTrajectory.length; ++i)
            value.fullBodyQTrajectory[i] = readRos1Kuavo_sdkQv(reader);
        value.fullBodyVTrajectory = new Ros1Kuavo_sdkQv[readCount(reader, 8, 4)];
        for(int i = 0; i < value.fullBodyVTrajectory.length; ++i)
            value.fullBodyVTrajectory[i] = readRos1Kuavo_sdkQv(reader);
        return value;
    }
}
