package uwvm.trossen.ros1.ros1_main;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Xarm_msgsGetAnalogIOResponse
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 138;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 10;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "xarm_msgs/GetAnalogIOResponse";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field analog_value; scalar, text bound 0. */
    public float field_analog_value = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field ret; scalar, text bound 0. */
    public short field_ret = (short)0;
    /** @brief Complete native field message; scalar, text bound 128. */
    public String field_message = "";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Xarm_msgsGetAnalogIOResponse()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Xarm_msgsGetAnalogIOResponse value)
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
    public static Ros1Xarm_msgsGetAnalogIOResponse decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Xarm_msgsGetAnalogIOResponse value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Xarm_msgsGetAnalogIOResponse value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_analog_value))
        {
            throw new IllegalArgumentException("Nonfinite analog_value");
        }
        wire.f32(value.field_analog_value);
        wire.i16(value.field_ret);
        wire.string(value.field_message, 128);
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
    public static Ros1Xarm_msgsGetAnalogIOResponse readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Xarm_msgsGetAnalogIOResponse value = new Ros1Xarm_msgsGetAnalogIOResponse();
        value.field_analog_value = wire.f32();
        if(!Float.isFinite(value.field_analog_value))
        {
            throw new IllegalArgumentException("Nonfinite analog_value");
        }
        value.field_ret = wire.i16();
        value.field_message = wire.string(128);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
