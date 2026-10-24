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

    public static final class Ros2Uwvm_groot_bridgeMsgRGBFrame
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/msg/RGBFrame";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 860;
        public String key = "";
        public long[] shape = new long[5];
        public int[] pixels = new int[0];

        public Ros2Uwvm_groot_bridgeMsgRGBFrame()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeMsgRGBFrame> CODEC = new Codec<Ros2Uwvm_groot_bridgeMsgRGBFrame>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeMsgRGBFrame value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeMsgRGBFrame(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeMsgRGBFrame decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeMsgRGBFrame value = readRos2Uwvm_groot_bridgeMsgRGBFrame(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeMsgRGBFrame(Codecs.Writer writer, Ros2Uwvm_groot_bridgeMsgRGBFrame value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.key;
        writeText(writer, part0, 64);
        long[] part1 = value.shape;
        if(part1 == null || part1.length != 5)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 4, false);
        }
        int[] part2 = value.pixels;
        if(part2 == null || part2.length > 768)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
        }
    }

    private static Ros2Uwvm_groot_bridgeMsgRGBFrame readRos2Uwvm_groot_bridgeMsgRGBFrame(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeMsgRGBFrame value = new Ros2Uwvm_groot_bridgeMsgRGBFrame();
        value.key = readText(reader, 64);
        value.shape = new long[5];
        for(int i = 0; i < value.shape.length; ++i)
            value.shape[i] = reader.integer(4, false);
        value.pixels = new int[readCount(reader, 768, 1)];
        for(int i = 0; i < value.pixels.length; ++i)
            value.pixels[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeMsgFloatTensor
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/msg/FloatTensor";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1364;
        public String key = "";
        public long[] shape = new long[3];
        public float[] values = new float[0];

        public Ros2Uwvm_groot_bridgeMsgFloatTensor()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeMsgFloatTensor> CODEC = new Codec<Ros2Uwvm_groot_bridgeMsgFloatTensor>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeMsgFloatTensor value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeMsgFloatTensor(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeMsgFloatTensor decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeMsgFloatTensor value = readRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeMsgFloatTensor(Codecs.Writer writer, Ros2Uwvm_groot_bridgeMsgFloatTensor value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.key;
        writeText(writer, part0, 64);
        long[] part1 = value.shape;
        if(part1 == null || part1.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 4, false);
        }
        float[] part2 = value.values;
        if(part2 == null || part2.length > 320)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
        }
    }

    private static Ros2Uwvm_groot_bridgeMsgFloatTensor readRos2Uwvm_groot_bridgeMsgFloatTensor(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeMsgFloatTensor value = new Ros2Uwvm_groot_bridgeMsgFloatTensor();
        value.key = readText(reader, 64);
        value.shape = new long[3];
        for(int i = 0; i < value.shape.length; ++i)
            value.shape[i] = reader.integer(4, false);
        value.values = new float[readCount(reader, 320, 4)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f32();
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeMsgTextSequence
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/msg/TextSequence";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 1120;
        public String key = "";
        public long[] shape = new long[2];
        public String[] texts = new String[0];

        public Ros2Uwvm_groot_bridgeMsgTextSequence()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeMsgTextSequence> CODEC = new Codec<Ros2Uwvm_groot_bridgeMsgTextSequence>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeMsgTextSequence value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeMsgTextSequence(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeMsgTextSequence decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeMsgTextSequence value = readRos2Uwvm_groot_bridgeMsgTextSequence(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeMsgTextSequence(Codecs.Writer writer, Ros2Uwvm_groot_bridgeMsgTextSequence value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.key;
        writeText(writer, part0, 64);
        long[] part1 = value.shape;
        if(part1 == null || part1.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 4, false);
        }
        String[] part2 = value.texts;
        if(part2 == null || part2.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeText(writer, part2[i], 256);
        }
    }

    private static Ros2Uwvm_groot_bridgeMsgTextSequence readRos2Uwvm_groot_bridgeMsgTextSequence(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeMsgTextSequence value = new Ros2Uwvm_groot_bridgeMsgTextSequence();
        value.key = readText(reader, 64);
        value.shape = new long[2];
        for(int i = 0; i < value.shape.length; ++i)
            value.shape[i] = reader.integer(4, false);
        value.texts = new String[readCount(reader, 4, 4)];
        for(int i = 0; i < value.texts.length; ++i)
            value.texts[i] = readText(reader, 256);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvInferAction_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/InferAction_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 10296;
        public long application_nonce = 0;
        public Ros2Uwvm_groot_bridgeMsgRGBFrame[] video = new Ros2Uwvm_groot_bridgeMsgRGBFrame[0];
        public Ros2Uwvm_groot_bridgeMsgFloatTensor[] state = new Ros2Uwvm_groot_bridgeMsgFloatTensor[0];
        public Ros2Uwvm_groot_bridgeMsgTextSequence[] language = new Ros2Uwvm_groot_bridgeMsgTextSequence[0];

        public Ros2Uwvm_groot_bridgeSrvInferAction_Request()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvInferAction_Request> CODEC = new Codec<Ros2Uwvm_groot_bridgeSrvInferAction_Request>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeSrvInferAction_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeSrvInferAction_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeSrvInferAction_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeSrvInferAction_Request value = readRos2Uwvm_groot_bridgeSrvInferAction_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvInferAction_Request(Codecs.Writer writer, Ros2Uwvm_groot_bridgeSrvInferAction_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.application_nonce;
        writer.integer(part0, 8, false);
        Ros2Uwvm_groot_bridgeMsgRGBFrame[] part1 = value.video;
        if(part1 == null || part1.length > 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Uwvm_groot_bridgeMsgRGBFrame(writer, part1[i]);
        }
        Ros2Uwvm_groot_bridgeMsgFloatTensor[] part2 = value.state;
        if(part2 == null || part2.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Uwvm_groot_bridgeMsgFloatTensor(writer, part2[i]);
        }
        Ros2Uwvm_groot_bridgeMsgTextSequence[] part3 = value.language;
        if(part3 == null || part3.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Uwvm_groot_bridgeMsgTextSequence(writer, part3[i]);
        }
    }

    private static Ros2Uwvm_groot_bridgeSrvInferAction_Request readRos2Uwvm_groot_bridgeSrvInferAction_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvInferAction_Request value = new Ros2Uwvm_groot_bridgeSrvInferAction_Request();
        value.application_nonce = reader.integer(8, false);
        value.video = new Ros2Uwvm_groot_bridgeMsgRGBFrame[readCount(reader, 3, 28)];
        for(int i = 0; i < value.video.length; ++i)
            value.video[i] = readRos2Uwvm_groot_bridgeMsgRGBFrame(reader);
        value.state = new Ros2Uwvm_groot_bridgeMsgFloatTensor[readCount(reader, 4, 20)];
        for(int i = 0; i < value.state.length; ++i)
            value.state[i] = readRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
        value.language = new Ros2Uwvm_groot_bridgeMsgTextSequence[readCount(reader, 2, 16)];
        for(int i = 0; i < value.language.length; ++i)
            value.language[i] = readRos2Uwvm_groot_bridgeMsgTextSequence(reader);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvInferAction_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/InferAction_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 10929;
        public long status = 0;
        public long application_nonce = 0;
        public Ros2Uwvm_groot_bridgeMsgFloatTensor[] action = new Ros2Uwvm_groot_bridgeMsgFloatTensor[0];
        public boolean info_is_empty = false;

        public Ros2Uwvm_groot_bridgeSrvInferAction_Response()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvInferAction_Response> CODEC = new Codec<Ros2Uwvm_groot_bridgeSrvInferAction_Response>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeSrvInferAction_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeSrvInferAction_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeSrvInferAction_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeSrvInferAction_Response value = readRos2Uwvm_groot_bridgeSrvInferAction_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvInferAction_Response(Codecs.Writer writer, Ros2Uwvm_groot_bridgeSrvInferAction_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        long part1 = value.application_nonce;
        writer.integer(part1, 8, false);
        Ros2Uwvm_groot_bridgeMsgFloatTensor[] part2 = value.action;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Uwvm_groot_bridgeMsgFloatTensor(writer, part2[i]);
        }
        boolean part3 = value.info_is_empty;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros2Uwvm_groot_bridgeSrvInferAction_Response readRos2Uwvm_groot_bridgeSrvInferAction_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvInferAction_Response value = new Ros2Uwvm_groot_bridgeSrvInferAction_Response();
        value.status = reader.integer(4, false);
        value.application_nonce = reader.integer(8, false);
        value.action = new Ros2Uwvm_groot_bridgeMsgFloatTensor[readCount(reader, 8, 20)];
        for(int i = 0; i < value.action.length; ++i)
            value.action[i] = readRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
        value.info_is_empty = readBool(reader);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeMsgRGBDescriptor
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/msg/RGBDescriptor";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 88;
        public String key = "";
        public long[] shape = new long[5];

        public Ros2Uwvm_groot_bridgeMsgRGBDescriptor()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeMsgRGBDescriptor> CODEC = new Codec<Ros2Uwvm_groot_bridgeMsgRGBDescriptor>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeMsgRGBDescriptor value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeMsgRGBDescriptor(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeMsgRGBDescriptor decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeMsgRGBDescriptor value = readRos2Uwvm_groot_bridgeMsgRGBDescriptor(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeMsgRGBDescriptor(Codecs.Writer writer, Ros2Uwvm_groot_bridgeMsgRGBDescriptor value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.key;
        writeText(writer, part0, 64);
        long[] part1 = value.shape;
        if(part1 == null || part1.length != 5)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 4, false);
        }
    }

    private static Ros2Uwvm_groot_bridgeMsgRGBDescriptor readRos2Uwvm_groot_bridgeMsgRGBDescriptor(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeMsgRGBDescriptor value = new Ros2Uwvm_groot_bridgeMsgRGBDescriptor();
        value.key = readText(reader, 64);
        value.shape = new long[5];
        for(int i = 0; i < value.shape.length; ++i)
            value.shape[i] = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/BeginObservation_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 276;
        public long observation_nonce = 0;
        public Ros2Uwvm_groot_bridgeMsgRGBDescriptor[] video = new Ros2Uwvm_groot_bridgeMsgRGBDescriptor[0];

        public Ros2Uwvm_groot_bridgeSrvBeginObservation_Request()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvBeginObservation_Request> CODEC = new Codec<Ros2Uwvm_groot_bridgeSrvBeginObservation_Request>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeSrvBeginObservation_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeSrvBeginObservation_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeSrvBeginObservation_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeSrvBeginObservation_Request value = readRos2Uwvm_groot_bridgeSrvBeginObservation_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvBeginObservation_Request(Codecs.Writer writer, Ros2Uwvm_groot_bridgeSrvBeginObservation_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.observation_nonce;
        writer.integer(part0, 8, false);
        Ros2Uwvm_groot_bridgeMsgRGBDescriptor[] part1 = value.video;
        if(part1 == null || part1.length > 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Uwvm_groot_bridgeMsgRGBDescriptor(writer, part1[i]);
        }
    }

    private static Ros2Uwvm_groot_bridgeSrvBeginObservation_Request readRos2Uwvm_groot_bridgeSrvBeginObservation_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvBeginObservation_Request value = new Ros2Uwvm_groot_bridgeSrvBeginObservation_Request();
        value.observation_nonce = reader.integer(8, false);
        value.video = new Ros2Uwvm_groot_bridgeMsgRGBDescriptor[readCount(reader, 3, 24)];
        for(int i = 0; i < value.video.length; ++i)
            value.video[i] = readRos2Uwvm_groot_bridgeMsgRGBDescriptor(reader);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/BeginObservation_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public long status = 0;
        public long observation_nonce = 0;

        public Ros2Uwvm_groot_bridgeSrvBeginObservation_Response()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvBeginObservation_Response> CODEC = new Codec<Ros2Uwvm_groot_bridgeSrvBeginObservation_Response>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeSrvBeginObservation_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeSrvBeginObservation_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeSrvBeginObservation_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeSrvBeginObservation_Response value = readRos2Uwvm_groot_bridgeSrvBeginObservation_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvBeginObservation_Response(Codecs.Writer writer, Ros2Uwvm_groot_bridgeSrvBeginObservation_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        long part1 = value.observation_nonce;
        writer.integer(part1, 8, false);
    }

    private static Ros2Uwvm_groot_bridgeSrvBeginObservation_Response readRos2Uwvm_groot_bridgeSrvBeginObservation_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvBeginObservation_Response value = new Ros2Uwvm_groot_bridgeSrvBeginObservation_Response();
        value.status = reader.integer(4, false);
        value.observation_nonce = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/WriteRGBChunk_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 852;
        public long observation_nonce = 0;
        public String key = "";
        public long offset = 0;
        public int[] pixels = new int[0];

        public Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request> CODEC = new Codec<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value = readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(Codecs.Writer writer, Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.observation_nonce;
        writer.integer(part0, 8, false);
        String part1 = value.key;
        writeText(writer, part1, 64);
        long part2 = value.offset;
        writer.integer(part2, 4, false);
        int[] part3 = value.pixels;
        if(part3 == null || part3.length > 768)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.integer(part3[i], 1, false);
        }
    }

    private static Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value = new Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request();
        value.observation_nonce = reader.integer(8, false);
        value.key = readText(reader, 64);
        value.offset = reader.integer(4, false);
        value.pixels = new int[readCount(reader, 768, 1)];
        for(int i = 0; i < value.pixels.length; ++i)
            value.pixels[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/WriteRGBChunk_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public long status = 0;
        public long observation_nonce = 0;
        public long accepted_bytes = 0;

        public Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response> CODEC = new Codec<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value = readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(Codecs.Writer writer, Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        long part1 = value.observation_nonce;
        writer.integer(part1, 8, false);
        long part2 = value.accepted_bytes;
        writer.integer(part2, 4, false);
    }

    private static Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value = new Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response();
        value.status = reader.integer(4, false);
        value.observation_nonce = reader.integer(8, false);
        value.accepted_bytes = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/ReleaseObservation_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long observation_nonce = 0;

        public Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request> CODEC = new Codec<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request>() {
            public byte[] encode(Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request value = readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(Codecs.Writer writer, Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.observation_nonce;
        writer.integer(part0, 8, false);
    }

    private static Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request value = new Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request();
        value.observation_nonce = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/ReleaseObservation_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public long status = 0;
        public long observation_nonce = 0;

        public Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response> CODEC =
            new Codec<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response>() {
                public byte[] encode(Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response value = readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(Codecs.Writer writer,
                                                                                 Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        long part1 = value.observation_nonce;
        writer.integer(part1, 8, false);
    }

    private static Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response value = new Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response();
        value.status = reader.integer(4, false);
        value.observation_nonce = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/InferUploadedAction_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 7720;
        public long application_nonce = 0;
        public long observation_nonce = 0;
        public Ros2Uwvm_groot_bridgeMsgFloatTensor[] state = new Ros2Uwvm_groot_bridgeMsgFloatTensor[0];
        public Ros2Uwvm_groot_bridgeMsgTextSequence[] language = new Ros2Uwvm_groot_bridgeMsgTextSequence[0];

        public Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request> CODEC =
            new Codec<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request>() {
                public byte[] encode(Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request value = readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(Codecs.Writer writer,
                                                                                 Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.application_nonce;
        writer.integer(part0, 8, false);
        long part1 = value.observation_nonce;
        writer.integer(part1, 8, false);
        Ros2Uwvm_groot_bridgeMsgFloatTensor[] part2 = value.state;
        if(part2 == null || part2.length > 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Uwvm_groot_bridgeMsgFloatTensor(writer, part2[i]);
        }
        Ros2Uwvm_groot_bridgeMsgTextSequence[] part3 = value.language;
        if(part3 == null || part3.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Uwvm_groot_bridgeMsgTextSequence(writer, part3[i]);
        }
    }

    private static Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request value = new Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request();
        value.application_nonce = reader.integer(8, false);
        value.observation_nonce = reader.integer(8, false);
        value.state = new Ros2Uwvm_groot_bridgeMsgFloatTensor[readCount(reader, 4, 20)];
        for(int i = 0; i < value.state.length; ++i)
            value.state[i] = readRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
        value.language = new Ros2Uwvm_groot_bridgeMsgTextSequence[readCount(reader, 2, 16)];
        for(int i = 0; i < value.language.length; ++i)
            value.language[i] = readRos2Uwvm_groot_bridgeMsgTextSequence(reader);
        return value;
    }

    public static final class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_groot_bridge/srv/InferUploadedAction_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 10929;
        public long status = 0;
        public long application_nonce = 0;
        public Ros2Uwvm_groot_bridgeMsgFloatTensor[] action = new Ros2Uwvm_groot_bridgeMsgFloatTensor[0];
        public boolean info_is_empty = false;

        public Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response()
        {
        }

        public static final Codec<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response> CODEC =
            new Codec<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response>() {
                public byte[] encode(Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response value = readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(Codecs.Writer writer,
                                                                                  Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        long part1 = value.application_nonce;
        writer.integer(part1, 8, false);
        Ros2Uwvm_groot_bridgeMsgFloatTensor[] part2 = value.action;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Uwvm_groot_bridgeMsgFloatTensor(writer, part2[i]);
        }
        boolean part3 = value.info_is_empty;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response value = new Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response();
        value.status = reader.integer(4, false);
        value.application_nonce = reader.integer(8, false);
        value.action = new Ros2Uwvm_groot_bridgeMsgFloatTensor[readCount(reader, 8, 20)];
        for(int i = 0; i < value.action.length; ++i)
            value.action[i] = readRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
        value.info_is_empty = readBool(reader);
        return value;
    }
}
