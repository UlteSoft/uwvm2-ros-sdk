/**
 * @file BoundedRecords.java
 * @brief Full fourier java codecs and original record metadata.
 * @details Complete fourier ros2_aurora_bridge_v1 values in java. 51 original records retain 138 fields and 28
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

    public static final class Ros2Uwvm_fourier_bridgeMsgGroupState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/msg/GroupState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1684;
        public String group = "";
        public double[] position = new double[0];
        public double[] velocity = new double[0];
        public double[] effort = new double[0];
        public int motion_state = 0;

        public Ros2Uwvm_fourier_bridgeMsgGroupState()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeMsgGroupState> CODEC = new Codec<Ros2Uwvm_fourier_bridgeMsgGroupState>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeMsgGroupState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeMsgGroupState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeMsgGroupState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeMsgGroupState value = readRos2Uwvm_fourier_bridgeMsgGroupState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeMsgGroupState(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeMsgGroupState value)
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

    private static Ros2Uwvm_fourier_bridgeMsgGroupState readRos2Uwvm_fourier_bridgeMsgGroupState(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeMsgGroupState value = new Ros2Uwvm_fourier_bridgeMsgGroupState();
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

    public static final class Ros2Uwvm_fourier_bridgeMsgGroupValues
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/msg/GroupValues";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 648;
        public String group = "";
        public double[] values = new double[0];

        public Ros2Uwvm_fourier_bridgeMsgGroupValues()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeMsgGroupValues> CODEC = new Codec<Ros2Uwvm_fourier_bridgeMsgGroupValues>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeMsgGroupValues value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeMsgGroupValues(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeMsgGroupValues decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeMsgGroupValues value = readRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeMsgGroupValues(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeMsgGroupValues value)
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

    private static Ros2Uwvm_fourier_bridgeMsgGroupValues readRos2Uwvm_fourier_bridgeMsgGroupValues(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeMsgGroupValues value = new Ros2Uwvm_fourier_bridgeMsgGroupValues();
        value.group = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeMsgMotionRecipe
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/msg/MotionRecipe";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 1170;
        public int move_type = 0;
        public String group = "";
        public double[] position = new double[0];
        public boolean has_velocity = false;
        public double[] velocity = new double[0];
        public int expected_velocity = 0;

        public Ros2Uwvm_fourier_bridgeMsgMotionRecipe()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeMsgMotionRecipe> CODEC = new Codec<Ros2Uwvm_fourier_bridgeMsgMotionRecipe>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeMsgMotionRecipe value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeMsgMotionRecipe(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeMsgMotionRecipe decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeMsgMotionRecipe value = readRos2Uwvm_fourier_bridgeMsgMotionRecipe(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeMsgMotionRecipe(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeMsgMotionRecipe value)
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

    private static Ros2Uwvm_fourier_bridgeMsgMotionRecipe readRos2Uwvm_fourier_bridgeMsgMotionRecipe(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeMsgMotionRecipe value = new Ros2Uwvm_fourier_bridgeMsgMotionRecipe();
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

    public static final class Ros2Uwvm_fourier_bridgeMsgStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/msg/Status";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 14400;
        public int fsm_state = 0;
        public String fsm_name = "";
        public int upper_fsm_state = 0;
        public String upper_fsm_name = "";
        public int velocity_source = 0;
        public String velocity_source_name = "";
        public double[] stand_pose = new double[0];
        public Ros2Uwvm_fourier_bridgeMsgGroupState[] groups = new Ros2Uwvm_fourier_bridgeMsgGroupState[0];

        public Ros2Uwvm_fourier_bridgeMsgStatus()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeMsgStatus> CODEC = new Codec<Ros2Uwvm_fourier_bridgeMsgStatus>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeMsgStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeMsgStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeMsgStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeMsgStatus value = readRos2Uwvm_fourier_bridgeMsgStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeMsgStatus(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeMsgStatus value)
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
        Ros2Uwvm_fourier_bridgeMsgGroupState[] part7 = value.groups;
        if(part7 == null || part7.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writeRos2Uwvm_fourier_bridgeMsgGroupState(writer, part7[i]);
        }
    }

    private static Ros2Uwvm_fourier_bridgeMsgStatus readRos2Uwvm_fourier_bridgeMsgStatus(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeMsgStatus value = new Ros2Uwvm_fourier_bridgeMsgStatus();
        value.fsm_state = (int)reader.integer(4, true);
        value.fsm_name = readText(reader, 128);
        value.upper_fsm_state = (int)reader.integer(4, true);
        value.upper_fsm_name = readText(reader, 128);
        value.velocity_source = (int)reader.integer(4, true);
        value.velocity_source_name = readText(reader, 128);
        value.stand_pose = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.stand_pose.length; ++i)
            value.stand_pose[i] = reader.f64();
        value.groups = new Ros2Uwvm_fourier_bridgeMsgGroupState[readCount(reader, 8, 20)];
        for(int i = 0; i < value.groups.length; ++i)
            value.groups[i] = readRos2Uwvm_fourier_bridgeMsgGroupState(reader);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeMsgVelocityCommand
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/msg/VelocityCommand";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;
        public long sequence = 0;
        public double vx = 0;
        public double vy = 0;
        public double yaw = 0;
        public double duration = 0;

        public Ros2Uwvm_fourier_bridgeMsgVelocityCommand()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeMsgVelocityCommand> CODEC = new Codec<Ros2Uwvm_fourier_bridgeMsgVelocityCommand>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeMsgVelocityCommand value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeMsgVelocityCommand(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeMsgVelocityCommand decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeMsgVelocityCommand value = readRos2Uwvm_fourier_bridgeMsgVelocityCommand(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeMsgVelocityCommand(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeMsgVelocityCommand value)
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

    private static Ros2Uwvm_fourier_bridgeMsgVelocityCommand readRos2Uwvm_fourier_bridgeMsgVelocityCommand(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeMsgVelocityCommand value = new Ros2Uwvm_fourier_bridgeMsgVelocityCommand();
        value.sequence = reader.integer(8, false);
        value.vx = reader.f64();
        value.vy = reader.f64();
        value.yaw = reader.f64();
        value.duration = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/ExecuteMove_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 9372;
        public long sequence = 0;
        public Ros2Uwvm_fourier_bridgeMsgMotionRecipe[] moves = new Ros2Uwvm_fourier_bridgeMsgMotionRecipe[0];

        public Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request value = readRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        Ros2Uwvm_fourier_bridgeMsgMotionRecipe[] part1 = value.moves;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Uwvm_fourier_bridgeMsgMotionRecipe(writer, part1[i]);
        }
    }

    private static Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request readRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request value = new Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request();
        value.sequence = reader.integer(8, false);
        value.moves = new Ros2Uwvm_fourier_bridgeMsgMotionRecipe[readCount(reader, 8, 18)];
        for(int i = 0; i < value.moves.length; ++i)
            value.moves[i] = readRos2Uwvm_fourier_bridgeMsgMotionRecipe(reader);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/ExecuteMove_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response value = readRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response readRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response value = new Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetBaseData_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long sequence = 0;
        public String key = "";

        public Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request value = readRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String part1 = value.key;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request readRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request value = new Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request();
        value.sequence = reader.integer(8, false);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetBaseData_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response value = readRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response readRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response value = new Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetCartesianState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public long sequence = 0;
        public String group = "";
        public String key = "";

        public Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request value = readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(Codecs.Writer writer,
                                                                                 Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request value = new Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request();
        value.sequence = reader.integer(8, false);
        value.group = readText(reader, 128);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetCartesianState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response value = readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(Codecs.Writer writer,
                                                                                  Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response value = new Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetContactData_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long sequence = 0;
        public String key = "";

        public Ros2Uwvm_fourier_bridgeSrvGetContactData_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetContactData_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetContactData_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetContactData_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetContactData_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetContactData_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetContactData_Request value = readRos2Uwvm_fourier_bridgeSrvGetContactData_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetContactData_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetContactData_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String part1 = value.key;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetContactData_Request readRos2Uwvm_fourier_bridgeSrvGetContactData_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetContactData_Request value = new Ros2Uwvm_fourier_bridgeSrvGetContactData_Request();
        value.sequence = reader.integer(8, false);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetContactData_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros2Uwvm_fourier_bridgeSrvGetContactData_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetContactData_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetContactData_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetContactData_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetContactData_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetContactData_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetContactData_Response value = readRos2Uwvm_fourier_bridgeSrvGetContactData_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetContactData_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetContactData_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetContactData_Response readRos2Uwvm_fourier_bridgeSrvGetContactData_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetContactData_Response value = new Ros2Uwvm_fourier_bridgeSrvGetContactData_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetFsmName_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request value = readRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request readRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request value = new Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetFsmName_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        public long status = 0;
        public String error = "";
        public String value = "";

        public Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response value = readRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response readRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response value = new Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetFsmState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request value = readRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request readRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request value = new Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetFsmState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long status = 0;
        public String error = "";
        public int value = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response value = readRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response readRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response value = new Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupMotionState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long sequence = 0;
        public String group = "";

        public Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request value = readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(Codecs.Writer writer,
                                                                                   Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        String part1 = value.group;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request value = new Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request();
        value.sequence = reader.integer(8, false);
        value.group = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupMotionState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long status = 0;
        public String error = "";
        public int value = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response value = readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(Codecs.Writer writer,
                                                                                    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response value = new Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public long sequence = 0;
        public String group = "";
        public String key = "";

        public Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request value = readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request value = new Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request();
        value.sequence = reader.integer(8, false);
        value.group = readText(reader, 128);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response value = readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(Codecs.Writer writer,
                                                                                 Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response value = new Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public long sequence = 0;
        public String group = "";
        public String key = "";

        public Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request value = readRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request readRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request value = new Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request();
        value.sequence = reader.integer(8, false);
        value.group = readText(reader, 128);
        value.key = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response value = readRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response readRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response value = new Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetSnapshot_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request value = readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request value = new Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetSnapshot_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 14536;
        public long status = 0;
        public String error = "";
        public Ros2Uwvm_fourier_bridgeMsgStatus value = new Ros2Uwvm_fourier_bridgeMsgStatus();

        public Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response value = readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
        Ros2Uwvm_fourier_bridgeMsgStatus part2 = value.value;
        writeRos2Uwvm_fourier_bridgeMsgStatus(writer, part2);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response value = new Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = readRos2Uwvm_fourier_bridgeMsgStatus(reader);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetStandPose_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request value = readRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request readRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request value = new Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetStandPose_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;
        public long status = 0;
        public String error = "";
        public double[] values = new double[0];

        public Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response value = readRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response readRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response value = new Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.values = new double[readCount(reader, 64, 8)];
        for(int i = 0; i < value.values.length; ++i)
            value.values[i] = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetUpperFsmName_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request value = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request value = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetUpperFsmName_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        public long status = 0;
        public String error = "";
        public String value = "";

        public Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response value = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response value = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetUpperFsmState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request value = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request value = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetUpperFsmState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long status = 0;
        public String error = "";
        public int value = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response value = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(Codecs.Writer writer,
                                                                                 Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response value = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetVelocitySource_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request value = readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(Codecs.Writer writer,
                                                                                 Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request value = new Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetVelocitySource_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public long status = 0;
        public String error = "";
        public int value = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response value = readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(Codecs.Writer writer,
                                                                                  Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response value = new Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sequence = 0;

        public Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request value = readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(Codecs.Writer writer,
                                                                                     Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
    }

    private static Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request value = new Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request();
        value.sequence = reader.integer(8, false);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        public long status = 0;
        public String error = "";
        public String value = "";

        public Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response value = readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(Codecs.Writer writer,
                                                                                      Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response value = new Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.value = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetFsmState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public long sequence = 0;
        public int state = 0;

        public Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request value = readRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        int part1 = value.state;
        writer.integer(part1, 4, true);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request readRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request value = new Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request();
        value.sequence = reader.integer(8, false);
        value.state = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetFsmState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response value = readRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response readRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response value = new Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetGroupCommand_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 15572;
        public long sequence = 0;
        public Ros2Uwvm_fourier_bridgeMsgGroupValues[] position = new Ros2Uwvm_fourier_bridgeMsgGroupValues[0];
        public Ros2Uwvm_fourier_bridgeMsgGroupValues[] velocity = new Ros2Uwvm_fourier_bridgeMsgGroupValues[0];
        public Ros2Uwvm_fourier_bridgeMsgGroupValues[] torque = new Ros2Uwvm_fourier_bridgeMsgGroupValues[0];

        public Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request value = readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        Ros2Uwvm_fourier_bridgeMsgGroupValues[] part1 = value.position;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Uwvm_fourier_bridgeMsgGroupValues(writer, part1[i]);
        }
        Ros2Uwvm_fourier_bridgeMsgGroupValues[] part2 = value.velocity;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Uwvm_fourier_bridgeMsgGroupValues(writer, part2[i]);
        }
        Ros2Uwvm_fourier_bridgeMsgGroupValues[] part3 = value.torque;
        if(part3 == null || part3.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Uwvm_fourier_bridgeMsgGroupValues(writer, part3[i]);
        }
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request value = new Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request();
        value.sequence = reader.integer(8, false);
        value.position = new Ros2Uwvm_fourier_bridgeMsgGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        value.velocity = new Ros2Uwvm_fourier_bridgeMsgGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        value.torque = new Ros2Uwvm_fourier_bridgeMsgGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.torque.length; ++i)
            value.torque[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetGroupCommand_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response value = readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response value = new Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 10384;
        public long sequence = 0;
        public Ros2Uwvm_fourier_bridgeMsgGroupValues[] kp = new Ros2Uwvm_fourier_bridgeMsgGroupValues[0];
        public Ros2Uwvm_fourier_bridgeMsgGroupValues[] kd = new Ros2Uwvm_fourier_bridgeMsgGroupValues[0];

        public Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request value = readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        Ros2Uwvm_fourier_bridgeMsgGroupValues[] part1 = value.kp;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Uwvm_fourier_bridgeMsgGroupValues(writer, part1[i]);
        }
        Ros2Uwvm_fourier_bridgeMsgGroupValues[] part2 = value.kd;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Uwvm_fourier_bridgeMsgGroupValues(writer, part2[i]);
        }
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request value = new Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request();
        value.sequence = reader.integer(8, false);
        value.kp = new Ros2Uwvm_fourier_bridgeMsgGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.kp.length; ++i)
            value.kp[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        value.kd = new Ros2Uwvm_fourier_bridgeMsgGroupValues[readCount(reader, 8, 8)];
        for(int i = 0; i < value.kd.length; ++i)
            value.kd[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response value = readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response value = new Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetStandPose_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        public long sequence = 0;
        public double delta_z = 0;
        public double delta_pitch = 0;
        public double delta_yaw = 0;

        public Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request value = readRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request value)
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

    private static Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request readRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request value = new Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request();
        value.sequence = reader.integer(8, false);
        value.delta_z = reader.f64();
        value.delta_pitch = reader.f64();
        value.delta_yaw = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetStandPose_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response value = readRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response readRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response value = new Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetUpperFsmState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public long sequence = 0;
        public int state = 0;

        public Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request value = readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        int part1 = value.state;
        writer.integer(part1, 4, true);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request value = new Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request();
        value.sequence = reader.integer(8, false);
        value.state = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetUpperFsmState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response value = readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(Codecs.Writer writer,
                                                                                 Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response value = new Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetVelocity_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;
        public long sequence = 0;
        public double vx = 0;
        public double vy = 0;
        public double yaw = 0;
        public double duration = 0;

        public Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request value = readRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request value)
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

    private static Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request readRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request value = new Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request();
        value.sequence = reader.integer(8, false);
        value.vx = reader.f64();
        value.vy = reader.f64();
        value.yaw = reader.f64();
        value.duration = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetVelocity_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response> CODEC = new Codec<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response>() {
            public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response value = readRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(Codecs.Writer writer, Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response readRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response value = new Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetVelocitySource_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        public long sequence = 0;
        public int source = 0;

        public Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request value = readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(Codecs.Writer writer,
                                                                                 Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sequence;
        writer.integer(part0, 8, false);
        int part1 = value.source;
        writer.integer(part1, 4, true);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request value = new Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request();
        value.sequence = reader.integer(8, false);
        value.source = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetVelocitySource_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public long status = 0;
        public String error = "";

        public Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response value = readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(Codecs.Writer writer,
                                                                                  Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.status;
        writer.integer(part0, 4, false);
        String part1 = value.error;
        writeText(writer, part1, 128);
    }

    private static Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response value = new Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1084;
        public long sequence = 0;
        public String[] groups = new String[0];
        public double timeout_seconds = 0;
        public double poll_seconds = 0;

        public Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request value = readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(Codecs.Writer writer,
                                                                                        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request value)
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

    private static Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
        readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request value = new Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request();
        value.sequence = reader.integer(8, false);
        value.groups = new String[readCount(reader, 8, 4)];
        for(int i = 0; i < value.groups.length; ++i)
            value.groups[i] = readText(reader, 128);
        value.timeout_seconds = reader.f64();
        value.poll_seconds = reader.f64();
        return value;
    }

    public static final class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 137;
        public long status = 0;
        public String error = "";
        public boolean complete = false;

        public Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response()
        {
        }

        public static final Codec<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response> CODEC =
            new Codec<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response>() {
                public byte[] encode(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response value = readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(Codecs.Writer writer,
                                                                                         Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response value)
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

    private static Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
        readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(Codecs.Reader reader)
    {
        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response value = new Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response();
        value.status = reader.integer(4, false);
        value.error = readText(reader, 128);
        value.complete = readBool(reader);
        return value;
    }
}
