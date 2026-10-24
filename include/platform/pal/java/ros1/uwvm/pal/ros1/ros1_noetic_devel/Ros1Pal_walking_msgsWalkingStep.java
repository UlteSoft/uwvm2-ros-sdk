package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_walking_msgs/WalkingStep value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_walking_msgsWalkingStep
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 181;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 53;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_b6bacf08a7ff7277b0c96730c5b2691540af208dd61f2662990253ba4d1925dd";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_walking_msgs/WalkingStep";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field step_target; scalar, text bound 0. */
    public Ros1Humanoid_nav_msgsStepTarget field_step_target = new Ros1Humanoid_nav_msgsStepTarget();
    /** @brief Complete native field step_duration; scalar, text bound 0. */
    public Ros1Std_msgsDuration field_step_duration = new Ros1Std_msgsDuration();
    /** @brief Complete native field step_list_size; scalar, text bound 0. */
    public int field_step_list_size = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_walking_msgsWalkingStep()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_walking_msgsWalkingStep value)
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
    public static Ros1Pal_walking_msgsWalkingStep decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_walking_msgsWalkingStep value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_walking_msgsWalkingStep value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        Ros1Humanoid_nav_msgsStepTarget.writeFields(wire, value.field_step_target);
        Ros1Std_msgsDuration.writeFields(wire, value.field_step_duration);
        wire.i32(value.field_step_list_size);
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
    public static Ros1Pal_walking_msgsWalkingStep readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_walking_msgsWalkingStep value = new Ros1Pal_walking_msgsWalkingStep();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_step_target = Ros1Humanoid_nav_msgsStepTarget.readFields(wire);
        value.field_step_duration = Ros1Std_msgsDuration.readFields(wire);
        value.field_step_list_size = wire.i32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
