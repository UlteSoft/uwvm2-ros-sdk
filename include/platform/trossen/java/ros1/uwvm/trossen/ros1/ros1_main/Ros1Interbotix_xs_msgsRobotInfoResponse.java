package uwvm.trossen.ros1.ros1_main;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 interbotix_xs_msgs/RobotInfoResponse value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Interbotix_xs_msgsRobotInfoResponse
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 18474;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 42;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "interbotix_xs_msgs/RobotInfoResponse";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field mode; scalar, text bound 128. */
    public String field_mode = "";
    /** @brief Complete native field profile_type; scalar, text bound 128. */
    public String field_profile_type = "";
    /** @brief Complete native field joint_names; sequence capacity 64, text bound 128. */
    public String[] field_joint_names = new String[0];
    /** @brief Complete native field joint_ids; sequence capacity 64, text bound 0. */
    public short[] field_joint_ids = new short[0];
    /** @brief Complete native field joint_lower_limits; sequence capacity 64, text bound 0. */
    public float[] field_joint_lower_limits = new float[0];
    /** @brief Complete native field joint_upper_limits; sequence capacity 64, text bound 0. */
    public float[] field_joint_upper_limits = new float[0];
    /** @brief Complete native field joint_velocity_limits; sequence capacity 64, text bound 0. */
    public float[] field_joint_velocity_limits = new float[0];
    /** @brief Complete native field joint_sleep_positions; sequence capacity 64, text bound 0. */
    public float[] field_joint_sleep_positions = new float[0];
    /** @brief Complete native field joint_state_indices; sequence capacity 64, text bound 0. */
    public short[] field_joint_state_indices = new short[0];
    /** @brief Complete native field num_joints; scalar, text bound 0. */
    public short field_num_joints = (short)0;
    /** @brief Complete native field name; sequence capacity 64, text bound 128. */
    public String[] field_name = new String[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Interbotix_xs_msgsRobotInfoResponse()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Interbotix_xs_msgsRobotInfoResponse value)
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
    public static Ros1Interbotix_xs_msgsRobotInfoResponse decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Interbotix_xs_msgsRobotInfoResponse value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Interbotix_xs_msgsRobotInfoResponse value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_mode, 128);
        wire.string(value.field_profile_type, 128);
        if(value.field_joint_names == null || value.field_joint_names.length > 64)
        {
            throw new IllegalArgumentException("Invalid joint_names extent");
        }
        wire.u32((long)value.field_joint_names.length);
        for(int index = 0; index < value.field_joint_names.length; index++)
        {
            wire.string(value.field_joint_names[index], 128);
        }
        if(value.field_joint_ids == null || value.field_joint_ids.length > 64)
        {
            throw new IllegalArgumentException("Invalid joint_ids extent");
        }
        wire.u32((long)value.field_joint_ids.length);
        for(int index = 0; index < value.field_joint_ids.length; index++)
        {
            wire.i16(value.field_joint_ids[index]);
        }
        if(value.field_joint_lower_limits == null || value.field_joint_lower_limits.length > 64)
        {
            throw new IllegalArgumentException("Invalid joint_lower_limits extent");
        }
        wire.u32((long)value.field_joint_lower_limits.length);
        for(int index = 0; index < value.field_joint_lower_limits.length; index++)
        {
            if(!Float.isFinite(value.field_joint_lower_limits[index]))
            {
                throw new IllegalArgumentException("Nonfinite joint_lower_limits");
            }
            wire.f32(value.field_joint_lower_limits[index]);
        }
        if(value.field_joint_upper_limits == null || value.field_joint_upper_limits.length > 64)
        {
            throw new IllegalArgumentException("Invalid joint_upper_limits extent");
        }
        wire.u32((long)value.field_joint_upper_limits.length);
        for(int index = 0; index < value.field_joint_upper_limits.length; index++)
        {
            if(!Float.isFinite(value.field_joint_upper_limits[index]))
            {
                throw new IllegalArgumentException("Nonfinite joint_upper_limits");
            }
            wire.f32(value.field_joint_upper_limits[index]);
        }
        if(value.field_joint_velocity_limits == null || value.field_joint_velocity_limits.length > 64)
        {
            throw new IllegalArgumentException("Invalid joint_velocity_limits extent");
        }
        wire.u32((long)value.field_joint_velocity_limits.length);
        for(int index = 0; index < value.field_joint_velocity_limits.length; index++)
        {
            if(!Float.isFinite(value.field_joint_velocity_limits[index]))
            {
                throw new IllegalArgumentException("Nonfinite joint_velocity_limits");
            }
            wire.f32(value.field_joint_velocity_limits[index]);
        }
        if(value.field_joint_sleep_positions == null || value.field_joint_sleep_positions.length > 64)
        {
            throw new IllegalArgumentException("Invalid joint_sleep_positions extent");
        }
        wire.u32((long)value.field_joint_sleep_positions.length);
        for(int index = 0; index < value.field_joint_sleep_positions.length; index++)
        {
            if(!Float.isFinite(value.field_joint_sleep_positions[index]))
            {
                throw new IllegalArgumentException("Nonfinite joint_sleep_positions");
            }
            wire.f32(value.field_joint_sleep_positions[index]);
        }
        if(value.field_joint_state_indices == null || value.field_joint_state_indices.length > 64)
        {
            throw new IllegalArgumentException("Invalid joint_state_indices extent");
        }
        wire.u32((long)value.field_joint_state_indices.length);
        for(int index = 0; index < value.field_joint_state_indices.length; index++)
        {
            wire.i16(value.field_joint_state_indices[index]);
        }
        wire.i16(value.field_num_joints);
        if(value.field_name == null || value.field_name.length > 64)
        {
            throw new IllegalArgumentException("Invalid name extent");
        }
        wire.u32((long)value.field_name.length);
        for(int index = 0; index < value.field_name.length; index++)
        {
            wire.string(value.field_name[index], 128);
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
    public static Ros1Interbotix_xs_msgsRobotInfoResponse readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Interbotix_xs_msgsRobotInfoResponse value = new Ros1Interbotix_xs_msgsRobotInfoResponse();
        value.field_mode = wire.string(128);
        value.field_profile_type = wire.string(128);
        value.field_joint_names = new String[wire.count(64)];
        for(int index = 0; index < value.field_joint_names.length; index++)
        {
            value.field_joint_names[index] = wire.string(128);
        }
        value.field_joint_ids = new short[wire.count(64)];
        for(int index = 0; index < value.field_joint_ids.length; index++)
        {
            value.field_joint_ids[index] = wire.i16();
        }
        value.field_joint_lower_limits = new float[wire.count(64)];
        for(int index = 0; index < value.field_joint_lower_limits.length; index++)
        {
            value.field_joint_lower_limits[index] = wire.f32();
            if(!Float.isFinite(value.field_joint_lower_limits[index]))
            {
                throw new IllegalArgumentException("Nonfinite joint_lower_limits");
            }
        }
        value.field_joint_upper_limits = new float[wire.count(64)];
        for(int index = 0; index < value.field_joint_upper_limits.length; index++)
        {
            value.field_joint_upper_limits[index] = wire.f32();
            if(!Float.isFinite(value.field_joint_upper_limits[index]))
            {
                throw new IllegalArgumentException("Nonfinite joint_upper_limits");
            }
        }
        value.field_joint_velocity_limits = new float[wire.count(64)];
        for(int index = 0; index < value.field_joint_velocity_limits.length; index++)
        {
            value.field_joint_velocity_limits[index] = wire.f32();
            if(!Float.isFinite(value.field_joint_velocity_limits[index]))
            {
                throw new IllegalArgumentException("Nonfinite joint_velocity_limits");
            }
        }
        value.field_joint_sleep_positions = new float[wire.count(64)];
        for(int index = 0; index < value.field_joint_sleep_positions.length; index++)
        {
            value.field_joint_sleep_positions[index] = wire.f32();
            if(!Float.isFinite(value.field_joint_sleep_positions[index]))
            {
                throw new IllegalArgumentException("Nonfinite joint_sleep_positions");
            }
        }
        value.field_joint_state_indices = new short[wire.count(64)];
        for(int index = 0; index < value.field_joint_state_indices.length; index++)
        {
            value.field_joint_state_indices[index] = wire.i16();
        }
        value.field_num_joints = wire.i16();
        value.field_name = new String[wire.count(64)];
        for(int index = 0; index < value.field_name.length; index++)
        {
            value.field_name[index] = wire.string(128);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
