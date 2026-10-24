package uwvm.trossen.ros1.ros1_noetic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 interbotix_xs_msgs/JointGroupCommand value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Interbotix_xs_msgsJointGroupCommand
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 392;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 8;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "interbotix_xs_msgs/JointGroupCommand";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field name; scalar, text bound 128. */
    public String field_name = "";
    /** @brief Complete native field cmd; sequence capacity 64, text bound 0. */
    public float[] field_cmd = new float[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Interbotix_xs_msgsJointGroupCommand()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Interbotix_xs_msgsJointGroupCommand value)
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
    public static Ros1Interbotix_xs_msgsJointGroupCommand decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Interbotix_xs_msgsJointGroupCommand value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Interbotix_xs_msgsJointGroupCommand value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_name, 128);
        if(value.field_cmd == null || value.field_cmd.length > 64)
        {
            throw new IllegalArgumentException("Invalid cmd extent");
        }
        wire.u32((long)value.field_cmd.length);
        for(int index = 0; index < value.field_cmd.length; index++)
        {
            if(!Float.isFinite(value.field_cmd[index]))
            {
                throw new IllegalArgumentException("Nonfinite cmd");
            }
            wire.f32(value.field_cmd[index]);
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
    public static Ros1Interbotix_xs_msgsJointGroupCommand readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Interbotix_xs_msgsJointGroupCommand value = new Ros1Interbotix_xs_msgsJointGroupCommand();
        value.field_name = wire.string(128);
        value.field_cmd = new float[wire.count(64)];
        for(int index = 0; index < value.field_cmd.length; index++)
        {
            value.field_cmd[index] = wire.f32();
            if(!Float.isFinite(value.field_cmd[index]))
            {
                throw new IllegalArgumentException("Nonfinite cmd");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
