package uwvm.trossen.ros1.ros1_melodic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 xarm_msgs/RobotMsg value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Xarm_msgsRobotMsg
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 130;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 66;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "xarm_msgs/RobotMsg";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field state; scalar, text bound 0. */
    public short field_state = (short)0;
    /** @brief Complete native field mode; scalar, text bound 0. */
    public short field_mode = (short)0;
    /** @brief Complete native field cmdnum; scalar, text bound 0. */
    public short field_cmdnum = (short)0;
    /** @brief Complete native field mt_brake; scalar, text bound 0. */
    public short field_mt_brake = (short)0;
    /** @brief Complete native field mt_able; scalar, text bound 0. */
    public short field_mt_able = (short)0;
    /** @brief Complete native field err; scalar, text bound 0. */
    public short field_err = (short)0;
    /** @brief Complete native field warn; scalar, text bound 0. */
    public short field_warn = (short)0;
    /** @brief Complete native field angle; sequence capacity 16, text bound 0. */
    public float[] field_angle = new float[0];
    /** @brief Complete native field pose; array capacity 6, text bound 0. */
    public float[] field_pose = new float[6];
    /** @brief Complete native field offset; array capacity 6, text bound 0. */
    public float[] field_offset = new float[6];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Xarm_msgsRobotMsg()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Xarm_msgsRobotMsg value)
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
    public static Ros1Xarm_msgsRobotMsg decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Xarm_msgsRobotMsg value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Xarm_msgsRobotMsg value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i16(value.field_state);
        wire.i16(value.field_mode);
        wire.i16(value.field_cmdnum);
        wire.i16(value.field_mt_brake);
        wire.i16(value.field_mt_able);
        wire.i16(value.field_err);
        wire.i16(value.field_warn);
        if(value.field_angle == null || value.field_angle.length > 16)
        {
            throw new IllegalArgumentException("Invalid angle extent");
        }
        wire.u32((long)value.field_angle.length);
        for(int index = 0; index < value.field_angle.length; index++)
        {
            if(!Float.isFinite(value.field_angle[index]))
            {
                throw new IllegalArgumentException("Nonfinite angle");
            }
            wire.f32(value.field_angle[index]);
        }
        if(value.field_pose == null || value.field_pose.length != 6)
        {
            throw new IllegalArgumentException("Invalid pose extent");
        }
        for(int index = 0; index < value.field_pose.length; index++)
        {
            if(!Float.isFinite(value.field_pose[index]))
            {
                throw new IllegalArgumentException("Nonfinite pose");
            }
            wire.f32(value.field_pose[index]);
        }
        if(value.field_offset == null || value.field_offset.length != 6)
        {
            throw new IllegalArgumentException("Invalid offset extent");
        }
        for(int index = 0; index < value.field_offset.length; index++)
        {
            if(!Float.isFinite(value.field_offset[index]))
            {
                throw new IllegalArgumentException("Nonfinite offset");
            }
            wire.f32(value.field_offset[index]);
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
    public static Ros1Xarm_msgsRobotMsg readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Xarm_msgsRobotMsg value = new Ros1Xarm_msgsRobotMsg();
        value.field_state = wire.i16();
        value.field_mode = wire.i16();
        value.field_cmdnum = wire.i16();
        value.field_mt_brake = wire.i16();
        value.field_mt_able = wire.i16();
        value.field_err = wire.i16();
        value.field_warn = wire.i16();
        value.field_angle = new float[wire.count(16)];
        for(int index = 0; index < value.field_angle.length; index++)
        {
            value.field_angle[index] = wire.f32();
            if(!Float.isFinite(value.field_angle[index]))
            {
                throw new IllegalArgumentException("Nonfinite angle");
            }
        }
        value.field_pose = new float[6];
        for(int index = 0; index < value.field_pose.length; index++)
        {
            value.field_pose[index] = wire.f32();
            if(!Float.isFinite(value.field_pose[index]))
            {
                throw new IllegalArgumentException("Nonfinite pose");
            }
        }
        value.field_offset = new float[6];
        for(int index = 0; index < value.field_offset.length; index++)
        {
            value.field_offset[index] = wire.f32();
            if(!Float.isFinite(value.field_offset[index]))
            {
                throw new IllegalArgumentException("Nonfinite offset");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
