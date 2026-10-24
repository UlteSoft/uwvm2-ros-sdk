package uwvm.robotis.ros2.jazzy;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 turtlebot3_msgs/srv/Dqn_Response value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Turtlebot3_msgsSrvDqn_Response
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 521;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 9;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "turtlebot3_msgs/srv/Dqn_Response";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field state; sequence capacity 128, text bound 0. */
    public float[] field_state = new float[0];
    /** @brief Complete native field reward; scalar, text bound 0. */
    public float field_reward = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field done; scalar, text bound 0. */
    public boolean field_done = false;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Turtlebot3_msgsSrvDqn_Response()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Turtlebot3_msgsSrvDqn_Response value)
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
    public static Ros2Turtlebot3_msgsSrvDqn_Response decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Turtlebot3_msgsSrvDqn_Response value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Turtlebot3_msgsSrvDqn_Response value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_state == null || value.field_state.length > 128)
        {
            throw new IllegalArgumentException("Invalid state extent");
        }
        wire.u32((long)value.field_state.length);
        for(int index = 0; index < value.field_state.length; index++)
        {
            if(!Float.isFinite(value.field_state[index]))
            {
                throw new IllegalArgumentException("Nonfinite state");
            }
            wire.f32(value.field_state[index]);
        }
        if(!Float.isFinite(value.field_reward))
        {
            throw new IllegalArgumentException("Nonfinite reward");
        }
        wire.f32(value.field_reward);
        wire.bool(value.field_done);
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
    public static Ros2Turtlebot3_msgsSrvDqn_Response readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Turtlebot3_msgsSrvDqn_Response value = new Ros2Turtlebot3_msgsSrvDqn_Response();
        value.field_state = new float[wire.count(128)];
        for(int index = 0; index < value.field_state.length; index++)
        {
            value.field_state[index] = wire.f32();
            if(!Float.isFinite(value.field_state[index]))
            {
                throw new IllegalArgumentException("Nonfinite state");
            }
        }
        value.field_reward = wire.f32();
        if(!Float.isFinite(value.field_reward))
        {
            throw new IllegalArgumentException("Nonfinite reward");
        }
        value.field_done = wire.bool();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
