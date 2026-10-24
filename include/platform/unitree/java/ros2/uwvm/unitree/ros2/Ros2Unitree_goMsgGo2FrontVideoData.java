package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/Go2FrontVideoData value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgGo2FrontVideoData
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 6164;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 20;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/Go2FrontVideoData";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field time_frame; scalar, text bound 0. */
    public long field_time_frame = 0x0000000000000000L;
    /** @brief Complete native field video720p; sequence capacity 2048, text bound 0. */
    public int[] field_video720p = new int[0];
    /** @brief Complete native field video360p; sequence capacity 2048, text bound 0. */
    public int[] field_video360p = new int[0];
    /** @brief Complete native field video180p; sequence capacity 2048, text bound 0. */
    public int[] field_video180p = new int[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgGo2FrontVideoData()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgGo2FrontVideoData value)
    {
        Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);
        writeFields(wire, value);
        return wire.finish();
    }

    /**
     * @brief Decode transactionally with exact extent and trailing-byte checks.
     * @param bytes Borrowed immutable complete canonical body.
     * @return Newly owned full value; failed decoding commits no caller storage.
     * @details Invalid wire, text, bounds or semantics throw IllegalArgumentException.
     */
    public static Ros2Unitree_goMsgGo2FrontVideoData decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgGo2FrontVideoData value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgGo2FrontVideoData value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i64(value.field_time_frame);
        if(value.field_video720p == null || value.field_video720p.length > 2048)
        {
            throw new IllegalArgumentException("Invalid video720p extent");
        }
        wire.u32((long)value.field_video720p.length);
        for(int index = 0; index < value.field_video720p.length; index++)
        {
            wire.u8(value.field_video720p[index]);
        }
        if(value.field_video360p == null || value.field_video360p.length > 2048)
        {
            throw new IllegalArgumentException("Invalid video360p extent");
        }
        wire.u32((long)value.field_video360p.length);
        for(int index = 0; index < value.field_video360p.length; index++)
        {
            wire.u8(value.field_video360p[index]);
        }
        if(value.field_video180p == null || value.field_video180p.length > 2048)
        {
            throw new IllegalArgumentException("Invalid video180p extent");
        }
        wire.u32((long)value.field_video180p.length);
        for(int index = 0; index < value.field_video180p.length; index++)
        {
            wire.u8(value.field_video180p[index]);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
    }

    /**
     * @brief Read one complete nested record without exposing partial values.
     * @param wire Borrowed immutable bounded reader and its private cursor.
     * @return Newly owned complete record; malformed nested input throws.
     * @details The caller separately requires complete top-level consumption.
     */
    public static Ros2Unitree_goMsgGo2FrontVideoData readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgGo2FrontVideoData value = new Ros2Unitree_goMsgGo2FrontVideoData();
        value.field_time_frame = wire.i64();
        value.field_video720p = new int[wire.count(2048)];
        for(int index = 0; index < value.field_video720p.length; index++)
        {
            value.field_video720p[index] = wire.u8();
        }
        value.field_video360p = new int[wire.count(2048)];
        for(int index = 0; index < value.field_video360p.length; index++)
        {
            value.field_video360p[index] = wire.u8();
        }
        value.field_video180p = new int[wire.count(2048)];
        for(int index = 0; index < value.field_video180p.length; index++)
        {
            value.field_video180p[index] = wire.u8();
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
