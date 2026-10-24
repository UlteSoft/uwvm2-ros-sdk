/**
 * @file Ros2Motoros2_interfacesMsgQueueResultEnum.java
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.yaskawa.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 motoros2_interfaces/msg/QueueResultEnum value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Motoros2_interfacesMsgQueueResultEnum
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 2;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "motoros2_interfaces/msg/QueueResultEnum";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant SUCCESS; consumes no instance wire bytes. */
    public static final int CONST_SUCCESS = 1;
    /** @brief Original source constant SUCCESS_STR; consumes no instance wire bytes. */
    public static final String CONST_SUCCESS_STR = "";
    /** @brief Original source constant WRONG_MODE; consumes no instance wire bytes. */
    public static final int CONST_WRONG_MODE = 2;
    /** @brief Original source constant WRONG_MODE_STR; consumes no instance wire bytes. */
    public static final String CONST_WRONG_MODE_STR = "Must call start_point_queue_mode service";
    /** @brief Original source constant INIT_FAILURE; consumes no instance wire bytes. */
    public static final int CONST_INIT_FAILURE = 3;
    /** @brief Original source constant INIT_FAILURE_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_FAILURE_STR = "Failed to initialize the streaming trajectory";
    /** @brief Original source constant BUSY; consumes no instance wire bytes. */
    public static final int CONST_BUSY = 4;
    /** @brief Original source constant BUSY_STR; consumes no instance wire bytes. */
    public static final String CONST_BUSY_STR = "Busy processing the previous trajectory point. Please resend the next point shortly";
    /** @brief Original source constant INVALID_JOINT_LIST; consumes no instance wire bytes. */
    public static final int CONST_INVALID_JOINT_LIST = 5;
    /** @brief Original source constant INVALID_JOINT_LIST_STR; consumes no instance wire bytes. */
    public static final String CONST_INVALID_JOINT_LIST_STR = "Point must contain data for all joints";
    /** @brief Original source constant UNABLE_TO_PROCESS_POINT; consumes no instance wire bytes. */
    public static final int CONST_UNABLE_TO_PROCESS_POINT = 6;
    /** @brief Original source constant UNABLE_TO_PROCESS_POINT_STR; consumes no instance wire bytes. */
    public static final String CONST_UNABLE_TO_PROCESS_POINT_STR = "Error while processing the trajectory point. Check debug log for more details";
    /** @brief Complete native field value; scalar, text bound 0. */
    public int field_value = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Motoros2_interfacesMsgQueueResultEnum()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Motoros2_interfacesMsgQueueResultEnum value)
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
    public static Ros2Motoros2_interfacesMsgQueueResultEnum decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Motoros2_interfacesMsgQueueResultEnum value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Motoros2_interfacesMsgQueueResultEnum value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u16(value.field_value);
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
    public static Ros2Motoros2_interfacesMsgQueueResultEnum readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Motoros2_interfacesMsgQueueResultEnum value = new Ros2Motoros2_interfacesMsgQueueResultEnum();
        value.field_value = wire.u16();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
