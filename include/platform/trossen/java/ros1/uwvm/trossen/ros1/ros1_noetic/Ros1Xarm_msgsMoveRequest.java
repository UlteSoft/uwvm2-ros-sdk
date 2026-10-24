package uwvm.trossen.ros1.ros1_noetic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 xarm_msgs/MoveRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Xarm_msgsMoveRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 84;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 20;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "xarm_msgs/MoveRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field pose; sequence capacity 16, text bound 0. */
    public float[] field_pose = new float[0];
    /** @brief Complete native field mvvelo; scalar, text bound 0. */
    public float field_mvvelo = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field mvacc; scalar, text bound 0. */
    public float field_mvacc = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field mvtime; scalar, text bound 0. */
    public float field_mvtime = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field mvradii; scalar, text bound 0. */
    public float field_mvradii = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Xarm_msgsMoveRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Xarm_msgsMoveRequest value)
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
    public static Ros1Xarm_msgsMoveRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Xarm_msgsMoveRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Xarm_msgsMoveRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_pose == null || value.field_pose.length > 16)
        {
            throw new IllegalArgumentException("Invalid pose extent");
        }
        wire.u32((long)value.field_pose.length);
        for(int index = 0; index < value.field_pose.length; index++)
        {
            if(!Float.isFinite(value.field_pose[index]))
            {
                throw new IllegalArgumentException("Nonfinite pose");
            }
            wire.f32(value.field_pose[index]);
        }
        if(!Float.isFinite(value.field_mvvelo))
        {
            throw new IllegalArgumentException("Nonfinite mvvelo");
        }
        wire.f32(value.field_mvvelo);
        if(!Float.isFinite(value.field_mvacc))
        {
            throw new IllegalArgumentException("Nonfinite mvacc");
        }
        wire.f32(value.field_mvacc);
        if(!Float.isFinite(value.field_mvtime))
        {
            throw new IllegalArgumentException("Nonfinite mvtime");
        }
        wire.f32(value.field_mvtime);
        if(!Float.isFinite(value.field_mvradii))
        {
            throw new IllegalArgumentException("Nonfinite mvradii");
        }
        wire.f32(value.field_mvradii);
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
    public static Ros1Xarm_msgsMoveRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Xarm_msgsMoveRequest value = new Ros1Xarm_msgsMoveRequest();
        value.field_pose = new float[wire.count(16)];
        for(int index = 0; index < value.field_pose.length; index++)
        {
            value.field_pose[index] = wire.f32();
            if(!Float.isFinite(value.field_pose[index]))
            {
                throw new IllegalArgumentException("Nonfinite pose");
            }
        }
        value.field_mvvelo = wire.f32();
        if(!Float.isFinite(value.field_mvvelo))
        {
            throw new IllegalArgumentException("Nonfinite mvvelo");
        }
        value.field_mvacc = wire.f32();
        if(!Float.isFinite(value.field_mvacc))
        {
            throw new IllegalArgumentException("Nonfinite mvacc");
        }
        value.field_mvtime = wire.f32();
        if(!Float.isFinite(value.field_mvtime))
        {
            throw new IllegalArgumentException("Nonfinite mvtime");
        }
        value.field_mvradii = wire.f32();
        if(!Float.isFinite(value.field_mvradii))
        {
            throw new IllegalArgumentException("Nonfinite mvradii");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
