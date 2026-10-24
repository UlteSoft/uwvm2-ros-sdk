/**
 * @file Ros2Control_msgsActionFollowJointTrajectory_Result.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Result value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Control_msgsActionFollowJointTrajectory_Result
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4104;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 8;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "control_msgs/action/FollowJointTrajectory_Result";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant SUCCESSFUL; consumes no instance wire bytes. */
    public static final int CONST_SUCCESSFUL = 0;
    /** @brief Original source constant INVALID_GOAL; consumes no instance wire bytes. */
    public static final int CONST_INVALID_GOAL = -1;
    /** @brief Original source constant INVALID_JOINTS; consumes no instance wire bytes. */
    public static final int CONST_INVALID_JOINTS = -2;
    /** @brief Original source constant OLD_HEADER_TIMESTAMP; consumes no instance wire bytes. */
    public static final int CONST_OLD_HEADER_TIMESTAMP = -3;
    /** @brief Original source constant PATH_TOLERANCE_VIOLATED; consumes no instance wire bytes. */
    public static final int CONST_PATH_TOLERANCE_VIOLATED = -4;
    /** @brief Original source constant GOAL_TOLERANCE_VIOLATED; consumes no instance wire bytes. */
    public static final int CONST_GOAL_TOLERANCE_VIOLATED = -5;
    /** @brief Complete native field error_code; scalar, text bound 0. */
    public int field_error_code = 0;
    /** @brief Complete native field error_string; scalar, text bound 4096. */
    public String field_error_string = "";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Control_msgsActionFollowJointTrajectory_Result()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Control_msgsActionFollowJointTrajectory_Result value)
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
    public static Ros2Control_msgsActionFollowJointTrajectory_Result decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Control_msgsActionFollowJointTrajectory_Result value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Control_msgsActionFollowJointTrajectory_Result value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i32(value.field_error_code);
        wire.string(value.field_error_string, 4096);
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
    public static Ros2Control_msgsActionFollowJointTrajectory_Result readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Control_msgsActionFollowJointTrajectory_Result value = new Ros2Control_msgsActionFollowJointTrajectory_Result();
        value.field_error_code = wire.i32();
        value.field_error_string = wire.string(4096);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
