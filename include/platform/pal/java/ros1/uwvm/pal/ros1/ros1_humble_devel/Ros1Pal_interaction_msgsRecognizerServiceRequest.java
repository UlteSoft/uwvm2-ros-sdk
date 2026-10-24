package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/recognizerServiceRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsRecognizerServiceRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 529;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 17;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_369151b882d849a0ab75110068aedd9eac22d87afe7b5bc13af87a6f78588edc";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/recognizerServiceRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field asrupdate; scalar, text bound 0. */
    public Ros1Pal_interaction_msgsAsrupdate field_asrupdate = new Ros1Pal_interaction_msgsAsrupdate();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsRecognizerServiceRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsRecognizerServiceRequest value)
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
    public static Ros1Pal_interaction_msgsRecognizerServiceRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsRecognizerServiceRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsRecognizerServiceRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Pal_interaction_msgsAsrupdate.writeFields(wire, value.field_asrupdate);
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
    public static Ros1Pal_interaction_msgsRecognizerServiceRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsRecognizerServiceRequest value = new Ros1Pal_interaction_msgsRecognizerServiceRequest();
        value.field_asrupdate = Ros1Pal_interaction_msgsAsrupdate.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
