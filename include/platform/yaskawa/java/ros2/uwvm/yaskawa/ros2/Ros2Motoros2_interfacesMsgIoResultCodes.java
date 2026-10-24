/**
 * @file Ros2Motoros2_interfacesMsgIoResultCodes.java
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.yaskawa.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 motoros2_interfaces/msg/IoResultCodes value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Motoros2_interfacesMsgIoResultCodes
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 0;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 0;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "motoros2_interfaces/msg/IoResultCodes";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant OK; consumes no instance wire bytes. */
    public static final long CONST_OK = 0L;
    /** @brief Original source constant OK_STR; consumes no instance wire bytes. */
    public static final String CONST_OK_STR = "Success";
    /** @brief Original source constant READ_ADDRESS_INVALID; consumes no instance wire bytes. */
    public static final long CONST_READ_ADDRESS_INVALID = 1001L;
    /** @brief Original source constant READ_ADDRESS_INVALID_STR; consumes no instance wire bytes. */
    public static final String CONST_READ_ADDRESS_INVALID_STR = "Address cannot be read from (out of readable range)";
    /** @brief Original source constant WRITE_ADDRESS_INVALID; consumes no instance wire bytes. */
    public static final long CONST_WRITE_ADDRESS_INVALID = 1002L;
    /** @brief Original source constant WRITE_ADDRESS_INVALID_STR; consumes no instance wire bytes. */
    public static final String CONST_WRITE_ADDRESS_INVALID_STR = "Address cannot be written to (out of writable range)";
    /** @brief Original source constant WRITE_VALUE_INVALID; consumes no instance wire bytes. */
    public static final long CONST_WRITE_VALUE_INVALID = 1003L;
    /** @brief Original source constant WRITE_VALUE_INVALID_STR; consumes no instance wire bytes. */
    public static final String CONST_WRITE_VALUE_INVALID_STR = "Illegal value for the type of IO element addressed";
    /** @brief Original source constant READ_API_ERROR; consumes no instance wire bytes. */
    public static final long CONST_READ_API_ERROR = 1004L;
    /** @brief Original source constant READ_API_ERROR_STR; consumes no instance wire bytes. */
    public static final String CONST_READ_API_ERROR_STR = "The MotoPlus function mpReadIO returned -1. No further information is available";
    /** @brief Original source constant WRITE_API_ERROR; consumes no instance wire bytes. */
    public static final long CONST_WRITE_API_ERROR = 1005L;
    /** @brief Original source constant WRITE_API_ERROR_STR; consumes no instance wire bytes. */
    public static final String CONST_WRITE_API_ERROR_STR = "The MotoPlus function mpWriteIO returned -1. No further information is available";
    /** @brief Original source constant UNKNOWN_API_ERROR_STR; consumes no instance wire bytes. */
    public static final String CONST_UNKNOWN_API_ERROR_STR = "Unknown error accessing I/O. No further information is available";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Motoros2_interfacesMsgIoResultCodes()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Motoros2_interfacesMsgIoResultCodes value)
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
    public static Ros2Motoros2_interfacesMsgIoResultCodes decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Motoros2_interfacesMsgIoResultCodes value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Motoros2_interfacesMsgIoResultCodes value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
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
    public static Ros2Motoros2_interfacesMsgIoResultCodes readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Motoros2_interfacesMsgIoResultCodes value = new Ros2Motoros2_interfacesMsgIoResultCodes();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
