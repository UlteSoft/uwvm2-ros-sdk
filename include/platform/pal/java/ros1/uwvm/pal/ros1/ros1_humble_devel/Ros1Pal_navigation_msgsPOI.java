package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_navigation_msgs/POI value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_navigation_msgsPOI
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1664;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 32;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_3750170dda28a05b81a5c1255fb3e88adc6105bef955601cccb82a6639e796a4";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_navigation_msgs/POI";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field points; scalar, text bound 0. */
    public Ros1Sensor_msgsPointCloud field_points = new Ros1Sensor_msgsPointCloud();
    /** @brief Complete native field ids; sequence capacity 4, text bound 0. */
    public Ros1Std_msgsString[] field_ids = new Ros1Std_msgsString[0];
    /** @brief Complete native field map_id; scalar, text bound 0. */
    public Ros1Std_msgsString field_map_id = new Ros1Std_msgsString();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_navigation_msgsPOI()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_navigation_msgsPOI value)
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
    public static Ros1Pal_navigation_msgsPOI decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_navigation_msgsPOI value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_navigation_msgsPOI value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Sensor_msgsPointCloud.writeFields(wire, value.field_points);
        if(value.field_ids == null || value.field_ids.length > 4)
        {
            throw new IllegalArgumentException("Invalid ids extent");
        }
        wire.u32((long)value.field_ids.length);
        for(int index = 0; index < value.field_ids.length; index++)
        {
            Ros1Std_msgsString.writeFields(wire, value.field_ids[index]);
        }
        Ros1Std_msgsString.writeFields(wire, value.field_map_id);
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
    public static Ros1Pal_navigation_msgsPOI readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_navigation_msgsPOI value = new Ros1Pal_navigation_msgsPOI();
        value.field_points = Ros1Sensor_msgsPointCloud.readFields(wire);
        value.field_ids = new Ros1Std_msgsString[wire.count(4)];
        for(int index = 0; index < value.field_ids.length; index++)
        {
            value.field_ids[index] = Ros1Std_msgsString.readFields(wire);
        }
        value.field_map_id = Ros1Std_msgsString.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
