package uwvm.trossen.ros1.ros1_melodic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 xarm_msgs/SetToolModbusRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Xarm_msgsSetToolModbusRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 262;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 6;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "xarm_msgs/SetToolModbusRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field send_data; sequence capacity 256, text bound 0. */
    public int[] field_send_data = new int[0];
    /** @brief Complete native field respond_len; scalar, text bound 0. */
    public short field_respond_len = (short)0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Xarm_msgsSetToolModbusRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Xarm_msgsSetToolModbusRequest value)
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
    public static Ros1Xarm_msgsSetToolModbusRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Xarm_msgsSetToolModbusRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Xarm_msgsSetToolModbusRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_send_data == null || value.field_send_data.length > 256)
        {
            throw new IllegalArgumentException("Invalid send_data extent");
        }
        wire.u32((long)value.field_send_data.length);
        for(int index = 0; index < value.field_send_data.length; index++)
        {
            wire.u8(value.field_send_data[index]);
        }
        wire.i16(value.field_respond_len);
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
    public static Ros1Xarm_msgsSetToolModbusRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Xarm_msgsSetToolModbusRequest value = new Ros1Xarm_msgsSetToolModbusRequest();
        value.field_send_data = new int[wire.count(256)];
        for(int index = 0; index < value.field_send_data.length; index++)
        {
            value.field_send_data[index] = wire.u8();
        }
        value.field_respond_len = wire.i16();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
