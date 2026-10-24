package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_api/msg/RequestHeader value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_apiMsgRequestHeader
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 29;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 29;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_api/msg/RequestHeader";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field identity; scalar, text bound 0. */
    public Ros2Unitree_apiMsgRequestIdentity field_identity = new Ros2Unitree_apiMsgRequestIdentity();
    /** @brief Complete native field lease; scalar, text bound 0. */
    public Ros2Unitree_apiMsgRequestLease field_lease = new Ros2Unitree_apiMsgRequestLease();
    /** @brief Complete native field policy; scalar, text bound 0. */
    public Ros2Unitree_apiMsgRequestPolicy field_policy = new Ros2Unitree_apiMsgRequestPolicy();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_apiMsgRequestHeader()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_apiMsgRequestHeader value)
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
    public static Ros2Unitree_apiMsgRequestHeader decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_apiMsgRequestHeader value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_apiMsgRequestHeader value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Unitree_apiMsgRequestIdentity.writeFields(wire, value.field_identity);
        Ros2Unitree_apiMsgRequestLease.writeFields(wire, value.field_lease);
        Ros2Unitree_apiMsgRequestPolicy.writeFields(wire, value.field_policy);
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
    public static Ros2Unitree_apiMsgRequestHeader readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_apiMsgRequestHeader value = new Ros2Unitree_apiMsgRequestHeader();
        value.field_identity = Ros2Unitree_apiMsgRequestIdentity.readFields(wire);
        value.field_lease = Ros2Unitree_apiMsgRequestLease.readFields(wire);
        value.field_policy = Ros2Unitree_apiMsgRequestPolicy.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
