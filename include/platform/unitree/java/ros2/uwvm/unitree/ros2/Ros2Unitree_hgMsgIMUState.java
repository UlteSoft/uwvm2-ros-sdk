package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_hg/msg/IMUState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_hgMsgIMUState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 54;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 54;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_hg/msg/IMUState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field quaternion; array capacity 4, text bound 0. */
    public float[] field_quaternion = new float[4];
    /** @brief Complete native field gyroscope; array capacity 3, text bound 0. */
    public float[] field_gyroscope = new float[3];
    /** @brief Complete native field accelerometer; array capacity 3, text bound 0. */
    public float[] field_accelerometer = new float[3];
    /** @brief Complete native field rpy; array capacity 3, text bound 0. */
    public float[] field_rpy = new float[3];
    /** @brief Complete native field temperature; scalar, text bound 0. */
    public short field_temperature = (short)0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_hgMsgIMUState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_hgMsgIMUState value)
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
    public static Ros2Unitree_hgMsgIMUState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_hgMsgIMUState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_hgMsgIMUState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_quaternion == null || value.field_quaternion.length != 4)
        {
            throw new IllegalArgumentException("Invalid quaternion extent");
        }
        for(int index = 0; index < value.field_quaternion.length; index++)
        {
            if(!Float.isFinite(value.field_quaternion[index]))
            {
                throw new IllegalArgumentException("Nonfinite quaternion");
            }
            wire.f32(value.field_quaternion[index]);
        }
        if(value.field_gyroscope == null || value.field_gyroscope.length != 3)
        {
            throw new IllegalArgumentException("Invalid gyroscope extent");
        }
        for(int index = 0; index < value.field_gyroscope.length; index++)
        {
            if(!Float.isFinite(value.field_gyroscope[index]))
            {
                throw new IllegalArgumentException("Nonfinite gyroscope");
            }
            wire.f32(value.field_gyroscope[index]);
        }
        if(value.field_accelerometer == null || value.field_accelerometer.length != 3)
        {
            throw new IllegalArgumentException("Invalid accelerometer extent");
        }
        for(int index = 0; index < value.field_accelerometer.length; index++)
        {
            if(!Float.isFinite(value.field_accelerometer[index]))
            {
                throw new IllegalArgumentException("Nonfinite accelerometer");
            }
            wire.f32(value.field_accelerometer[index]);
        }
        if(value.field_rpy == null || value.field_rpy.length != 3)
        {
            throw new IllegalArgumentException("Invalid rpy extent");
        }
        for(int index = 0; index < value.field_rpy.length; index++)
        {
            if(!Float.isFinite(value.field_rpy[index]))
            {
                throw new IllegalArgumentException("Nonfinite rpy");
            }
            wire.f32(value.field_rpy[index]);
        }
        wire.i16(value.field_temperature);
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
    public static Ros2Unitree_hgMsgIMUState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_hgMsgIMUState value = new Ros2Unitree_hgMsgIMUState();
        value.field_quaternion = new float[4];
        for(int index = 0; index < value.field_quaternion.length; index++)
        {
            value.field_quaternion[index] = wire.f32();
            if(!Float.isFinite(value.field_quaternion[index]))
            {
                throw new IllegalArgumentException("Nonfinite quaternion");
            }
        }
        value.field_gyroscope = new float[3];
        for(int index = 0; index < value.field_gyroscope.length; index++)
        {
            value.field_gyroscope[index] = wire.f32();
            if(!Float.isFinite(value.field_gyroscope[index]))
            {
                throw new IllegalArgumentException("Nonfinite gyroscope");
            }
        }
        value.field_accelerometer = new float[3];
        for(int index = 0; index < value.field_accelerometer.length; index++)
        {
            value.field_accelerometer[index] = wire.f32();
            if(!Float.isFinite(value.field_accelerometer[index]))
            {
                throw new IllegalArgumentException("Nonfinite accelerometer");
            }
        }
        value.field_rpy = new float[3];
        for(int index = 0; index < value.field_rpy.length; index++)
        {
            value.field_rpy[index] = wire.f32();
            if(!Float.isFinite(value.field_rpy[index]))
            {
                throw new IllegalArgumentException("Nonfinite rpy");
            }
        }
        value.field_temperature = wire.i16();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
