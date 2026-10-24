package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/AudioDeviceDescription value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsAudioDeviceDescription
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 141;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 13;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_899a8393d0b03ca92891b0c60871b5e3a697750b036ef34b37709eed88139857";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/AudioDeviceDescription";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant SIGNED; consumes no instance wire bytes. */
    public static final byte CONST_SIGNED = (byte)0;
    /** @brief Original source constant UNSIGNED; consumes no instance wire bytes. */
    public static final byte CONST_UNSIGNED = (byte)1;
    /** @brief Complete native field device_name; scalar, text bound 128. */
    public String field_device_name = "";
    /** @brief Complete native field sample_rate; scalar, text bound 0. */
    public long field_sample_rate = 0L;
    /** @brief Complete native field sample_size; scalar, text bound 0. */
    public byte field_sample_size = (byte)0;
    /** @brief Complete native field format; scalar, text bound 0. */
    public byte field_format = (byte)0;
    /** @brief Complete native field buffer_size; scalar, text bound 0. */
    public int field_buffer_size = 0;
    /** @brief Complete native field number_of_channels; scalar, text bound 0. */
    public byte field_number_of_channels = (byte)0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsAudioDeviceDescription()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsAudioDeviceDescription value)
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
    public static Ros1Pal_interaction_msgsAudioDeviceDescription decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsAudioDeviceDescription value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsAudioDeviceDescription value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_device_name, 128);
        wire.u32(value.field_sample_rate);
        wire.i8(value.field_sample_size);
        wire.i8(value.field_format);
        wire.u16(value.field_buffer_size);
        wire.i8(value.field_number_of_channels);
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
    public static Ros1Pal_interaction_msgsAudioDeviceDescription readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsAudioDeviceDescription value = new Ros1Pal_interaction_msgsAudioDeviceDescription();
        value.field_device_name = wire.string(128);
        value.field_sample_rate = wire.u32();
        value.field_sample_size = wire.i8();
        value.field_format = wire.i8();
        value.field_buffer_size = wire.u16();
        value.field_number_of_channels = wire.i8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
