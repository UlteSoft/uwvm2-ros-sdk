package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_wifi_localization_msgs/WifiSignalList value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_wifi_localization_msgsWifiSignalList
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 580;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 20;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_9a15f8c545d1fb461b8b4d42c31fe7803392a5277c9ee0377aa9b79888ae64fc";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_wifi_localization_msgs/WifiSignalList";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field networks; sequence capacity 4, text bound 0. */
    public Ros1Pal_wifi_localization_msgsWifiSignal[] field_networks = new Ros1Pal_wifi_localization_msgsWifiSignal[0];
    /** @brief Complete native field start_time; scalar, text bound 0. */
    public Ros1Time field_start_time = new Ros1Time();
    /** @brief Complete native field end_time; scalar, text bound 0. */
    public Ros1Time field_end_time = new Ros1Time();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_wifi_localization_msgsWifiSignalList()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_wifi_localization_msgsWifiSignalList value)
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
    public static Ros1Pal_wifi_localization_msgsWifiSignalList decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_wifi_localization_msgsWifiSignalList value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_wifi_localization_msgsWifiSignalList value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_networks == null || value.field_networks.length > 4)
        {
            throw new IllegalArgumentException("Invalid networks extent");
        }
        wire.u32((long)value.field_networks.length);
        for(int index = 0; index < value.field_networks.length; index++)
        {
            Ros1Pal_wifi_localization_msgsWifiSignal.writeFields(wire, value.field_networks[index]);
        }
        Ros1Time.writeFields(wire, value.field_start_time);
        Ros1Time.writeFields(wire, value.field_end_time);
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
    public static Ros1Pal_wifi_localization_msgsWifiSignalList readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_wifi_localization_msgsWifiSignalList value = new Ros1Pal_wifi_localization_msgsWifiSignalList();
        value.field_networks = new Ros1Pal_wifi_localization_msgsWifiSignal[wire.count(4)];
        for(int index = 0; index < value.field_networks.length; index++)
        {
            value.field_networks[index] = Ros1Pal_wifi_localization_msgsWifiSignal.readFields(wire);
        }
        value.field_start_time = Ros1Time.readFields(wire);
        value.field_end_time = Ros1Time.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
