/**
 * @file BoundedRecords.java
 * @brief Full fourier java codecs and original record metadata.
 * @details Complete fourier ros1_aurora_bridge_v1 values in java. 51 original records retain 138 fields and 28
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/fourier/en_US/catalog/.
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

    public static final class Ros1Uwvm_fourier_bridgeMotionRecipe
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/MotionRecipe";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 1170;
        public int move_type = 0;
        public String group = "";
        public double[] position = new double[0];
        public boolean has_velocity = false;
        public double[] velocity = new double[0];
        public int expected_velocity = 0;

        public Ros1Uwvm_fourier_bridgeMotionRecipe()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeMotionRecipe> CODEC = new Codec<Ros1Uwvm_fourier_bridgeMotionRecipe>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeMotionRecipe value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeMotionRecipe(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeMotionRecipe decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeMotionRecipe value = readRos1Uwvm_fourier_bridgeMotionRecipe(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeMotionRecipe(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeMotionRecipe value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.move_type;
        writer.integer(part0, 1, false);
        String part1 = value.group;
        writeText(writer, part1, 128);
        double[] part2 = value.position;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        boolean part3 = value.has_velocity;
        writer.integer(part3 ? 1 : 0, 1, false);
        double[] part4 = value.velocity;
        if(part4 == null || part4.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        int part5 = value.expected_velocity;
        writer.integer(part5, 4, true);
    }

    private static Ros1Uwvm_fourier_bridgeMotionRecipe readRos1Uwvm_fourier_bridgeMotionRecipe(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeMotionRecipe value = new Ros1Uwvm_fourier_bridgeMotionRecipe();
        value.move_type = (int)reader.integer(1, false);
        value.group = readText(reader, 128);
        value.position = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.has_velocity = readBool(reader);
        value.velocity = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = reader.f64();
        value.expected_velocity = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeExecuteMoveRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/ExecuteMoveRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 9372;
        public long sequence = 0;
        public Ros1Uwvm_fourier_bridgeMotionRecipe[] moves = new Ros1Uwvm_fourier_bridgeMotionRecipe[0];

        public Ros1Uwvm_fourier_bridgeExecuteMoveRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeExecuteMoveRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeExecuteMoveRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeExecuteMoveRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeExecuteMoveRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeExecuteMoveRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeExecuteMoveRequest value = readRos1Uwvm_fourier_bridgeExecuteMoveRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeExecuteMoveRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeExecuteMoveRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        Ros1Uwvm_fourier_bridgeMotionRecipe[] part1 = value.moves;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos1Uwvm_fourier_bridgeMotionRecipe(writer, part1[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeExecuteMoveRequest readRos1Uwvm_fourier_bridgeExecuteMoveRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeExecuteMoveRequest value = new Ros1Uwvm_fourier_bridgeExecuteMoveRequest();
        value.sequence = reader.integer(8, false);
        value.moves = new Ros1Uwvm_fourier_bridgeMotionRecipe[readCount(reader, 8, 18)];
        for(int i = 0; i < value.moves.length; ++i)
            value.moves[i] = readRos1Uwvm_fourier_bridgeMotionRecipe(reader);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeExecuteMoveResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/ExecuteMoveResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros1Uwvm_fourier_bridgeExecuteMoveResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeExecuteMoveResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeExecuteMoveResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeExecuteMoveResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeExecuteMoveResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeExecuteMoveResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeExecuteMoveResponse value = readRos1Uwvm_fourier_bridgeExecuteMoveResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeExecuteMoveResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeExecuteMoveResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeExecuteMoveResponse readRos1Uwvm_fourier_bridgeExecuteMoveResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeExecuteMoveResponse value = new Ros1Uwvm_fourier_bridgeExecuteMoveResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetBaseDataRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetBaseDataRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long sequence = 0;
        public String key = "";

        public Ros1Uwvm_fourier_bridgeGetBaseDataRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetBaseDataRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetBaseDataRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetBaseDataRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetBaseDataRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetBaseDataRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetBaseDataRequest value = readRos1Uwvm_fourier_bridgeGetBaseDataRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetBaseDataRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetBaseDataRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String part1 = value.key;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeGetBaseDataRequest readRos1Uwvm_fourier_bridgeGetBaseDataRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetBaseDataRequest value = new Ros1Uwvm_fourier_bridgeGetBaseDataRequest();
        value.sequence = reader.integer(8, false);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetBaseDataResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetBaseDataResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros1Uwvm_fourier_bridgeGetBaseDataResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetBaseDataResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetBaseDataResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetBaseDataResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetBaseDataResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetBaseDataResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetBaseDataResponse value = readRos1Uwvm_fourier_bridgeGetBaseDataResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetBaseDataResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetBaseDataResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        double[] part2 = value.values;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeGetBaseDataResponse readRos1Uwvm_fourier_bridgeGetBaseDataResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetBaseDataResponse value = new Ros1Uwvm_fourier_bridgeGetBaseDataResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetCartesianStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public long sequence = 0;
        public String group = "";
        public String key = "";

        public Ros1Uwvm_fourier_bridgeGetCartesianStateRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetCartesianStateRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetCartesianStateRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetCartesianStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetCartesianStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetCartesianStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetCartesianStateRequest value = readRos1Uwvm_fourier_bridgeGetCartesianStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetCartesianStateRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetCartesianStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String part1 = value.group;
        writeText(writer, part1, 128);
        String part2 = value.key;
        writeText(writer, part2, 128);
    }

    private static Ros1Uwvm_fourier_bridgeGetCartesianStateRequest readRos1Uwvm_fourier_bridgeGetCartesianStateRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetCartesianStateRequest value = new Ros1Uwvm_fourier_bridgeGetCartesianStateRequest();
        value.sequence = reader.integer(8, false);
        value.group = readText(reader, 128);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetCartesianStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros1Uwvm_fourier_bridgeGetCartesianStateResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetCartesianStateResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetCartesianStateResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetCartesianStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetCartesianStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetCartesianStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetCartesianStateResponse value = readRos1Uwvm_fourier_bridgeGetCartesianStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetCartesianStateResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetCartesianStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        double[] part2 = value.values;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeGetCartesianStateResponse readRos1Uwvm_fourier_bridgeGetCartesianStateResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetCartesianStateResponse value = new Ros1Uwvm_fourier_bridgeGetCartesianStateResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetContactDataRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetContactDataRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long sequence = 0;
        public String key = "";

        public Ros1Uwvm_fourier_bridgeGetContactDataRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetContactDataRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetContactDataRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetContactDataRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetContactDataRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetContactDataRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetContactDataRequest value = readRos1Uwvm_fourier_bridgeGetContactDataRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetContactDataRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetContactDataRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String part1 = value.key;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeGetContactDataRequest readRos1Uwvm_fourier_bridgeGetContactDataRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetContactDataRequest value = new Ros1Uwvm_fourier_bridgeGetContactDataRequest();
        value.sequence = reader.integer(8, false);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetContactDataResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetContactDataResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros1Uwvm_fourier_bridgeGetContactDataResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetContactDataResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetContactDataResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetContactDataResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetContactDataResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetContactDataResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetContactDataResponse value = readRos1Uwvm_fourier_bridgeGetContactDataResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetContactDataResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetContactDataResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        double[] part2 = value.values;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeGetContactDataResponse readRos1Uwvm_fourier_bridgeGetContactDataResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetContactDataResponse value = new Ros1Uwvm_fourier_bridgeGetContactDataResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetFsmNameRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetFsmNameRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros1Uwvm_fourier_bridgeGetFsmNameRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetFsmNameRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetFsmNameRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetFsmNameRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetFsmNameRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetFsmNameRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetFsmNameRequest value = readRos1Uwvm_fourier_bridgeGetFsmNameRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetFsmNameRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetFsmNameRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros1Uwvm_fourier_bridgeGetFsmNameRequest readRos1Uwvm_fourier_bridgeGetFsmNameRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetFsmNameRequest value = new Ros1Uwvm_fourier_bridgeGetFsmNameRequest();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetFsmNameResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetFsmNameResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        public long status = 0;
        public String error = "";
        public String value = "";

        public Ros1Uwvm_fourier_bridgeGetFsmNameResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetFsmNameResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetFsmNameResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetFsmNameResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetFsmNameResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetFsmNameResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetFsmNameResponse value = readRos1Uwvm_fourier_bridgeGetFsmNameResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetFsmNameResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetFsmNameResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        String part2 = value.value;
        writeText(writer, part2, 128);
    }

    private static Ros1Uwvm_fourier_bridgeGetFsmNameResponse readRos1Uwvm_fourier_bridgeGetFsmNameResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetFsmNameResponse value = new Ros1Uwvm_fourier_bridgeGetFsmNameResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetFsmStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetFsmStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros1Uwvm_fourier_bridgeGetFsmStateRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetFsmStateRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetFsmStateRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetFsmStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetFsmStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetFsmStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetFsmStateRequest value = readRos1Uwvm_fourier_bridgeGetFsmStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetFsmStateRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetFsmStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros1Uwvm_fourier_bridgeGetFsmStateRequest readRos1Uwvm_fourier_bridgeGetFsmStateRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetFsmStateRequest value = new Ros1Uwvm_fourier_bridgeGetFsmStateRequest();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetFsmStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetFsmStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long status = 0;
        public String error = "";
        public int value = 0;

        public Ros1Uwvm_fourier_bridgeGetFsmStateResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetFsmStateResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetFsmStateResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetFsmStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetFsmStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetFsmStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetFsmStateResponse value = readRos1Uwvm_fourier_bridgeGetFsmStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetFsmStateResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetFsmStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        int part2 = value.value;
        writer.integer(part2, 4, true);
    }

    private static Ros1Uwvm_fourier_bridgeGetFsmStateResponse readRos1Uwvm_fourier_bridgeGetFsmStateResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetFsmStateResponse value = new Ros1Uwvm_fourier_bridgeGetFsmStateResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupMotionStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long sequence = 0;
        public String group = "";

        public Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest value = readRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String part1 = value.group;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest readRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest value = new Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest();
        value.sequence = reader.integer(8, false);
        value.group = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupMotionStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long status = 0;
        public String error = "";
        public int value = 0;

        public Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse value = readRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        int part2 = value.value;
        writer.integer(part2, 4, true);
    }

    private static Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse readRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse value = new Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupMotorCfgRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public long sequence = 0;
        public String group = "";
        public String key = "";

        public Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest value = readRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String part1 = value.group;
        writeText(writer, part1, 128);
        String part2 = value.key;
        writeText(writer, part2, 128);
    }

    private static Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest readRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest value = new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest();
        value.sequence = reader.integer(8, false);
        value.group = readText(reader, 128);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupMotorCfgResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse value = readRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        double[] part2 = value.values;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse readRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse value = new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetGroupStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public long sequence = 0;
        public String group = "";
        public String key = "";

        public Ros1Uwvm_fourier_bridgeGetGroupStateRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetGroupStateRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetGroupStateRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetGroupStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetGroupStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetGroupStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetGroupStateRequest value = readRos1Uwvm_fourier_bridgeGetGroupStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetGroupStateRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetGroupStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String part1 = value.group;
        writeText(writer, part1, 128);
        String part2 = value.key;
        writeText(writer, part2, 128);
    }

    private static Ros1Uwvm_fourier_bridgeGetGroupStateRequest readRos1Uwvm_fourier_bridgeGetGroupStateRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetGroupStateRequest value = new Ros1Uwvm_fourier_bridgeGetGroupStateRequest();
        value.sequence = reader.integer(8, false);
        value.group = readText(reader, 128);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetGroupStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros1Uwvm_fourier_bridgeGetGroupStateResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetGroupStateResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetGroupStateResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetGroupStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetGroupStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetGroupStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetGroupStateResponse value = readRos1Uwvm_fourier_bridgeGetGroupStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetGroupStateResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetGroupStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        double[] part2 = value.values;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeGetGroupStateResponse readRos1Uwvm_fourier_bridgeGetGroupStateResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetGroupStateResponse value = new Ros1Uwvm_fourier_bridgeGetGroupStateResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetSnapshotRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetSnapshotRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros1Uwvm_fourier_bridgeGetSnapshotRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetSnapshotRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetSnapshotRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetSnapshotRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetSnapshotRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetSnapshotRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetSnapshotRequest value = readRos1Uwvm_fourier_bridgeGetSnapshotRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetSnapshotRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetSnapshotRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros1Uwvm_fourier_bridgeGetSnapshotRequest readRos1Uwvm_fourier_bridgeGetSnapshotRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetSnapshotRequest value = new Ros1Uwvm_fourier_bridgeGetSnapshotRequest();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGroupState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GroupState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1684;
        public String group = "";
        public double[] position = new double[0];
        public double[] velocity = new double[0];
        public double[] effort = new double[0];
        public int motion_state = 0;

        public Ros1Uwvm_fourier_bridgeGroupState()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGroupState> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGroupState>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGroupState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGroupState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGroupState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGroupState value = readRos1Uwvm_fourier_bridgeGroupState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGroupState(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGroupState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.group;
        writeText(writer, part0, 128);
        double[] part1 = value.position;
        if(part1 == null || part1.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.velocity;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.effort;
        if(part3 == null || part3.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        int part4 = value.motion_state;
        writer.integer(part4, 4, true);
    }

    private static Ros1Uwvm_fourier_bridgeGroupState readRos1Uwvm_fourier_bridgeGroupState(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGroupState value = new Ros1Uwvm_fourier_bridgeGroupState();
        value.group = readText(reader, 128);
        value.position = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.velocity = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = reader.f64();
        value.effort = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.effort.length; ++i)
            value.effort[i] = reader.f64();
        value.motion_state = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeStatus
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/Status";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 14400;
        public int fsm_state = 0;
        public String fsm_name = "";
        public int upper_fsm_state = 0;
        public String upper_fsm_name = "";
        public int velocity_source = 0;
        public String velocity_source_name = "";
        public double[] stand_pose = new double[0];
        public Ros1Uwvm_fourier_bridgeGroupState[] groups = new Ros1Uwvm_fourier_bridgeGroupState[0];

        public Ros1Uwvm_fourier_bridgeStatus()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeStatus> CODEC = new Codec<Ros1Uwvm_fourier_bridgeStatus>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeStatus value = readRos1Uwvm_fourier_bridgeStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeStatus(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.fsm_state;
        writer.integer(part0, 4, true);
        String part1 = value.fsm_name;
        writeText(writer, part1, 128);
        int part2 = value.upper_fsm_state;
        writer.integer(part2, 4, true);
        String part3 = value.upper_fsm_name;
        writeText(writer, part3, 128);
        int part4 = value.velocity_source;
        writer.integer(part4, 4, true);
        String part5 = value.velocity_source_name;
        writeText(writer, part5, 128);
        double[] part6 = value.stand_pose;
        if(part6 == null || part6.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part6.length, 4, false);
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        Ros1Uwvm_fourier_bridgeGroupState[] part7 = value.groups;
        if(part7 == null || part7.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writeRos1Uwvm_fourier_bridgeGroupState(writer, part7[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeStatus readRos1Uwvm_fourier_bridgeStatus(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeStatus value = new Ros1Uwvm_fourier_bridgeStatus();
        value.fsm_state = (int)reader.integer(4, true);
        value.fsm_name = readText(reader, 128);
        value.upper_fsm_state = (int)reader.integer(4, true);
        value.upper_fsm_name = readText(reader, 128);
        value.velocity_source = (int)reader.integer(4, true);
        value.velocity_source_name = readText(reader, 128);
        value.stand_pose = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.stand_pose.length; ++i)
            value.stand_pose[i] = reader.f64();
        value.groups = new Ros1Uwvm_fourier_bridgeGroupState[readCount(reader, 8, 20)];
        for(int i = 0; i < value.groups.length; ++i)
            value.groups[i] = readRos1Uwvm_fourier_bridgeGroupState(reader);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetSnapshotResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetSnapshotResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 14536;
        public long status = 0;
        public String error = "";
        public Ros1Uwvm_fourier_bridgeStatus value = new Ros1Uwvm_fourier_bridgeStatus();

        public Ros1Uwvm_fourier_bridgeGetSnapshotResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetSnapshotResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetSnapshotResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetSnapshotResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetSnapshotResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetSnapshotResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetSnapshotResponse value = readRos1Uwvm_fourier_bridgeGetSnapshotResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetSnapshotResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetSnapshotResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        Ros1Uwvm_fourier_bridgeStatus part2 = value.value;
        writeRos1Uwvm_fourier_bridgeStatus(writer, part2);
    }

    private static Ros1Uwvm_fourier_bridgeGetSnapshotResponse readRos1Uwvm_fourier_bridgeGetSnapshotResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetSnapshotResponse value = new Ros1Uwvm_fourier_bridgeGetSnapshotResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = readRos1Uwvm_fourier_bridgeStatus(reader);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetStandPoseRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetStandPoseRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros1Uwvm_fourier_bridgeGetStandPoseRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetStandPoseRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetStandPoseRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetStandPoseRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetStandPoseRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetStandPoseRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetStandPoseRequest value = readRos1Uwvm_fourier_bridgeGetStandPoseRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetStandPoseRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetStandPoseRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros1Uwvm_fourier_bridgeGetStandPoseRequest readRos1Uwvm_fourier_bridgeGetStandPoseRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetStandPoseRequest value = new Ros1Uwvm_fourier_bridgeGetStandPoseRequest();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetStandPoseResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetStandPoseResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros1Uwvm_fourier_bridgeGetStandPoseResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetStandPoseResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetStandPoseResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetStandPoseResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetStandPoseResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetStandPoseResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetStandPoseResponse value = readRos1Uwvm_fourier_bridgeGetStandPoseResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetStandPoseResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetStandPoseResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        double[] part2 = value.values;
        if(part2 == null || part2.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeGetStandPoseResponse readRos1Uwvm_fourier_bridgeGetStandPoseResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetStandPoseResponse value = new Ros1Uwvm_fourier_bridgeGetStandPoseResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetUpperFsmNameRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest value = readRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest readRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest value = new Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetUpperFsmNameResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        public long status = 0;
        public String error = "";
        public String value = "";

        public Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse value = readRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        String part2 = value.value;
        writeText(writer, part2, 128);
    }

    private static Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse readRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse value = new Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetUpperFsmStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest value = readRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest readRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest value = new Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetUpperFsmStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long status = 0;
        public String error = "";
        public int value = 0;

        public Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse value = readRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        int part2 = value.value;
        writer.integer(part2, 4, true);
    }

    private static Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse readRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse value = new Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetVelocitySourceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest value = readRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest readRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest value = new Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetVelocitySourceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long status = 0;
        public String error = "";
        public int value = 0;

        public Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse value = readRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        int part2 = value.value;
        writer.integer(part2, 4, true);
    }

    private static Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse readRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse value = new Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetVelocitySourceNameRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest> CODEC =
            new Codec<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest>() {
                public byte[] encode(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest value = readRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(Codecs.Writer writer,
                                                                                 Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest readRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest value = new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GetVelocitySourceNameResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        public long status = 0;
        public String error = "";
        public String value = "";

        public Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse> CODEC =
            new Codec<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse>() {
                public byte[] encode(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse value = readRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(Codecs.Writer writer,
                                                                                  Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        String part2 = value.value;
        writeText(writer, part2, 128);
    }

    private static Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse readRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse value = new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeGroupValues
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/GroupValues";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 648;
        public String group = "";
        public double[] values = new double[0];

        public Ros1Uwvm_fourier_bridgeGroupValues()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeGroupValues> CODEC = new Codec<Ros1Uwvm_fourier_bridgeGroupValues>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeGroupValues value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeGroupValues(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeGroupValues decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeGroupValues value = readRos1Uwvm_fourier_bridgeGroupValues(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeGroupValues(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeGroupValues value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.group;
        writeText(writer, part0, 128);
        double[] part1 = value.values;
        if(part1 == null || part1.length > 64)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeGroupValues readRos1Uwvm_fourier_bridgeGroupValues(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeGroupValues value = new Ros1Uwvm_fourier_bridgeGroupValues();
        value.group = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetFsmStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetFsmStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public long sequence = 0;
        public int state = 0;

        public Ros1Uwvm_fourier_bridgeSetFsmStateRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetFsmStateRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetFsmStateRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetFsmStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetFsmStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetFsmStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetFsmStateRequest value = readRos1Uwvm_fourier_bridgeSetFsmStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetFsmStateRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetFsmStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        int part1 = value.state;
        writer.integer(part1, 4, true);
    }

    private static Ros1Uwvm_fourier_bridgeSetFsmStateRequest readRos1Uwvm_fourier_bridgeSetFsmStateRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetFsmStateRequest value = new Ros1Uwvm_fourier_bridgeSetFsmStateRequest();
        value.sequence = reader.integer(8, false);
        value.state = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetFsmStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetFsmStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros1Uwvm_fourier_bridgeSetFsmStateResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetFsmStateResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetFsmStateResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetFsmStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetFsmStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetFsmStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetFsmStateResponse value = readRos1Uwvm_fourier_bridgeSetFsmStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetFsmStateResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetFsmStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeSetFsmStateResponse readRos1Uwvm_fourier_bridgeSetFsmStateResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetFsmStateResponse value = new Ros1Uwvm_fourier_bridgeSetFsmStateResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetGroupCommandRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 15572;
        public long sequence = 0;
        public Ros1Uwvm_fourier_bridgeGroupValues[] position = new Ros1Uwvm_fourier_bridgeGroupValues[0];
        public Ros1Uwvm_fourier_bridgeGroupValues[] velocity = new Ros1Uwvm_fourier_bridgeGroupValues[0];
        public Ros1Uwvm_fourier_bridgeGroupValues[] torque = new Ros1Uwvm_fourier_bridgeGroupValues[0];

        public Ros1Uwvm_fourier_bridgeSetGroupCommandRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetGroupCommandRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetGroupCommandRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetGroupCommandRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetGroupCommandRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetGroupCommandRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetGroupCommandRequest value = readRos1Uwvm_fourier_bridgeSetGroupCommandRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetGroupCommandRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetGroupCommandRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        Ros1Uwvm_fourier_bridgeGroupValues[] part1 = value.position;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos1Uwvm_fourier_bridgeGroupValues(writer, part1[i]);
        }
        Ros1Uwvm_fourier_bridgeGroupValues[] part2 = value.velocity;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos1Uwvm_fourier_bridgeGroupValues(writer, part2[i]);
        }
        Ros1Uwvm_fourier_bridgeGroupValues[] part3 = value.torque;
        if(part3 == null || part3.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos1Uwvm_fourier_bridgeGroupValues(writer, part3[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeSetGroupCommandRequest readRos1Uwvm_fourier_bridgeSetGroupCommandRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetGroupCommandRequest value = new Ros1Uwvm_fourier_bridgeSetGroupCommandRequest();
        value.sequence = reader.integer(8, false);
        value.position = new Ros1Uwvm_fourier_bridgeGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = readRos1Uwvm_fourier_bridgeGroupValues(reader);
        value.velocity = new Ros1Uwvm_fourier_bridgeGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = readRos1Uwvm_fourier_bridgeGroupValues(reader);
        value.torque = new Ros1Uwvm_fourier_bridgeGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.torque.length; ++i)
            value.torque[i] = readRos1Uwvm_fourier_bridgeGroupValues(reader);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetGroupCommandResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros1Uwvm_fourier_bridgeSetGroupCommandResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetGroupCommandResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetGroupCommandResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetGroupCommandResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetGroupCommandResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetGroupCommandResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetGroupCommandResponse value = readRos1Uwvm_fourier_bridgeSetGroupCommandResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetGroupCommandResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetGroupCommandResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeSetGroupCommandResponse readRos1Uwvm_fourier_bridgeSetGroupCommandResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetGroupCommandResponse value = new Ros1Uwvm_fourier_bridgeSetGroupCommandResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetMotorCfgPdRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 10384;
        public long sequence = 0;
        public Ros1Uwvm_fourier_bridgeGroupValues[] kp = new Ros1Uwvm_fourier_bridgeGroupValues[0];
        public Ros1Uwvm_fourier_bridgeGroupValues[] kd = new Ros1Uwvm_fourier_bridgeGroupValues[0];

        public Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest value = readRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        Ros1Uwvm_fourier_bridgeGroupValues[] part1 = value.kp;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos1Uwvm_fourier_bridgeGroupValues(writer, part1[i]);
        }
        Ros1Uwvm_fourier_bridgeGroupValues[] part2 = value.kd;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos1Uwvm_fourier_bridgeGroupValues(writer, part2[i]);
        }
    }

    private static Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest readRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest value = new Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest();
        value.sequence = reader.integer(8, false);
        value.kp = new Ros1Uwvm_fourier_bridgeGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.kp.length; ++i)
            value.kp[i] = readRos1Uwvm_fourier_bridgeGroupValues(reader);
        value.kd = new Ros1Uwvm_fourier_bridgeGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.kd.length; ++i)
            value.kd[i] = readRos1Uwvm_fourier_bridgeGroupValues(reader);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetMotorCfgPdResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse value = readRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse readRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse value = new Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetStandPoseRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetStandPoseRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        public long sequence = 0;
        public double delta_z = 0;
        public double delta_pitch = 0;
        public double delta_yaw = 0;

        public Ros1Uwvm_fourier_bridgeSetStandPoseRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetStandPoseRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetStandPoseRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetStandPoseRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetStandPoseRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetStandPoseRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetStandPoseRequest value = readRos1Uwvm_fourier_bridgeSetStandPoseRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetStandPoseRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetStandPoseRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        double part1 = value.delta_z;
        writer.f64(part1);
        double part2 = value.delta_pitch;
        writer.f64(part2);
        double part3 = value.delta_yaw;
        writer.f64(part3);
    }

    private static Ros1Uwvm_fourier_bridgeSetStandPoseRequest readRos1Uwvm_fourier_bridgeSetStandPoseRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetStandPoseRequest value = new Ros1Uwvm_fourier_bridgeSetStandPoseRequest();
        value.sequence = reader.integer(8, false);
        value.delta_z = reader.f64();
        value.delta_pitch = reader.f64();
        value.delta_yaw = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetStandPoseResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetStandPoseResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros1Uwvm_fourier_bridgeSetStandPoseResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetStandPoseResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetStandPoseResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetStandPoseResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetStandPoseResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetStandPoseResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetStandPoseResponse value = readRos1Uwvm_fourier_bridgeSetStandPoseResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetStandPoseResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetStandPoseResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeSetStandPoseResponse readRos1Uwvm_fourier_bridgeSetStandPoseResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetStandPoseResponse value = new Ros1Uwvm_fourier_bridgeSetStandPoseResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetUpperFsmStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public long sequence = 0;
        public int state = 0;

        public Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest value = readRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        int part1 = value.state;
        writer.integer(part1, 4, true);
    }

    private static Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest readRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest value = new Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest();
        value.sequence = reader.integer(8, false);
        value.state = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetUpperFsmStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse value = readRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse readRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse value = new Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetVelocityRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetVelocityRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;
        public long sequence = 0;
        public double vx = 0;
        public double vy = 0;
        public double yaw = 0;
        public double duration = 0;

        public Ros1Uwvm_fourier_bridgeSetVelocityRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetVelocityRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetVelocityRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetVelocityRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetVelocityRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetVelocityRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetVelocityRequest value = readRos1Uwvm_fourier_bridgeSetVelocityRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetVelocityRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetVelocityRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        double part1 = value.vx;
        writer.f64(part1);
        double part2 = value.vy;
        writer.f64(part2);
        double part3 = value.yaw;
        writer.f64(part3);
        double part4 = value.duration;
        writer.f64(part4);
    }

    private static Ros1Uwvm_fourier_bridgeSetVelocityRequest readRos1Uwvm_fourier_bridgeSetVelocityRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetVelocityRequest value = new Ros1Uwvm_fourier_bridgeSetVelocityRequest();
        value.sequence = reader.integer(8, false);
        value.vx = reader.f64();
        value.vy = reader.f64();
        value.yaw = reader.f64();
        value.duration = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetVelocityResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetVelocityResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros1Uwvm_fourier_bridgeSetVelocityResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetVelocityResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetVelocityResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetVelocityResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetVelocityResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetVelocityResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetVelocityResponse value = readRos1Uwvm_fourier_bridgeSetVelocityResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetVelocityResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetVelocityResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeSetVelocityResponse readRos1Uwvm_fourier_bridgeSetVelocityResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetVelocityResponse value = new Ros1Uwvm_fourier_bridgeSetVelocityResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetVelocitySourceRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public long sequence = 0;
        public int source = 0;

        public Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest value = readRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        int part1 = value.source;
        writer.integer(part1, 4, true);
    }

    private static Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest readRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest value = new Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest();
        value.sequence = reader.integer(8, false);
        value.source = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/SetVelocitySourceResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse> CODEC = new Codec<Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse value = readRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse readRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse value = new Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeVelocityCommand
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/VelocityCommand";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;
        public long sequence = 0;
        public double vx = 0;
        public double vy = 0;
        public double yaw = 0;
        public double duration = 0;

        public Ros1Uwvm_fourier_bridgeVelocityCommand()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeVelocityCommand> CODEC = new Codec<Ros1Uwvm_fourier_bridgeVelocityCommand>() {
            public byte[] encode(Ros1Uwvm_fourier_bridgeVelocityCommand value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Uwvm_fourier_bridgeVelocityCommand(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Uwvm_fourier_bridgeVelocityCommand decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Uwvm_fourier_bridgeVelocityCommand value = readRos1Uwvm_fourier_bridgeVelocityCommand(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Uwvm_fourier_bridgeVelocityCommand(Codecs.Writer writer, Ros1Uwvm_fourier_bridgeVelocityCommand value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        double part1 = value.vx;
        writer.f64(part1);
        double part2 = value.vy;
        writer.f64(part2);
        double part3 = value.yaw;
        writer.f64(part3);
        double part4 = value.duration;
        writer.f64(part4);
    }

    private static Ros1Uwvm_fourier_bridgeVelocityCommand readRos1Uwvm_fourier_bridgeVelocityCommand(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeVelocityCommand value = new Ros1Uwvm_fourier_bridgeVelocityCommand();
        value.sequence = reader.integer(8, false);
        value.vx = reader.f64();
        value.vy = reader.f64();
        value.yaw = reader.f64();
        value.duration = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1084;
        public long sequence = 0;
        public String[] groups = new String[0];
        public double timeout_seconds = 0;
        public double poll_seconds = 0;

        public Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest> CODEC =
            new Codec<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest>() {
                public byte[] encode(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest value = readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(Codecs.Writer writer,
                                                                                    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String[] part1 = value.groups;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 128);
        }
        double part2 = value.timeout_seconds;
        writer.f64(part2);
        double part3 = value.poll_seconds;
        writer.f64(part3);
    }

    private static Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest value = new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest();
        value.sequence = reader.integer(8, false);
        value.groups = new String[readCount(reader, 8, 4)];
        for(int i = 0; i < value.groups.length; ++i)
            value.groups[i] = readText(reader, 128);
        value.timeout_seconds = reader.f64();
        value.poll_seconds = reader.f64();
        return value;
    }

    public static final class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 137;
        public long status = 0;
        public String error = "";
        public boolean complete = false;

        public Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse()
        {
        }

        public static final Codec<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse> CODEC =
            new Codec<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse>() {
                public byte[] encode(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse value = readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(Codecs.Writer writer,
                                                                                     Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        boolean part2 = value.complete;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(Codecs.Reader reader)
    {
        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse value = new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.complete = readBool(reader);
        return value;
    }
}
