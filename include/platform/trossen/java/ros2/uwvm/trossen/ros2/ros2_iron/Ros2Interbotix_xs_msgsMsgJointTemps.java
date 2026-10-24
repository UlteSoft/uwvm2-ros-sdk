package uwvm.trossen.ros2.ros2_iron;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 interbotix_xs_msgs/msg/JointTemps value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Interbotix_xs_msgsMsgJointTemps
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 8712;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 8;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "interbotix_xs_msgs/msg/JointTemps";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field names; sequence capacity 64, text bound 128. */
    public String[] field_names = new String[0];
    /** @brief Complete native field temps; sequence capacity 64, text bound 0. */
    public int[] field_temps = new int[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Interbotix_xs_msgsMsgJointTemps()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Interbotix_xs_msgsMsgJointTemps value)
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
    public static Ros2Interbotix_xs_msgsMsgJointTemps decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Interbotix_xs_msgsMsgJointTemps value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Interbotix_xs_msgsMsgJointTemps value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_names == null || value.field_names.length > 64)
        {
            throw new IllegalArgumentException("Invalid names extent");
        }
        wire.u32((long)value.field_names.length);
        for(int index = 0; index < value.field_names.length; index++)
        {
            wire.string(value.field_names[index], 128);
        }
        if(value.field_temps == null || value.field_temps.length > 64)
        {
            throw new IllegalArgumentException("Invalid temps extent");
        }
        wire.u32((long)value.field_temps.length);
        for(int index = 0; index < value.field_temps.length; index++)
        {
            wire.i32(value.field_temps[index]);
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
    public static Ros2Interbotix_xs_msgsMsgJointTemps readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Interbotix_xs_msgsMsgJointTemps value = new Ros2Interbotix_xs_msgsMsgJointTemps();
        value.field_names = new String[wire.count(64)];
        for(int index = 0; index < value.field_names.length; index++)
        {
            value.field_names[index] = wire.string(128);
        }
        value.field_temps = new int[wire.count(64)];
        for(int index = 0; index < value.field_temps.length; index++)
        {
            value.field_temps[index] = wire.i32();
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
