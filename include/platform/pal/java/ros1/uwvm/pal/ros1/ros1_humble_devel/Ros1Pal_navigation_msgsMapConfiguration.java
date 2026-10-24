package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_navigation_msgs/MapConfiguration value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_navigation_msgsMapConfiguration
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 15953;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 317;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_807b6436f6e7ee13b63cfadc9de5fd38ca3fedd2d0e902c3c7558c1d7b606255";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_navigation_msgs/MapConfiguration";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field numberOfSubMaps; scalar, text bound 0. */
    public int field_numberOfSubMaps = 0;
    /** @brief Complete native field highways; sequence capacity 4, text bound 0. */
    public Ros1Pal_navigation_msgsHighways[] field_highways = new Ros1Pal_navigation_msgsHighways[0];
    /** @brief Complete native field pois; scalar, text bound 0. */
    public Ros1Pal_navigation_msgsPOI field_pois = new Ros1Pal_navigation_msgsPOI();
    /** @brief Complete native field vo; scalar, text bound 0. */
    public Ros1Pal_navigation_msgsPOI field_vo = new Ros1Pal_navigation_msgsPOI();
    /** @brief Complete native field zoi; scalar, text bound 0. */
    public Ros1Pal_navigation_msgsPOI field_zoi = new Ros1Pal_navigation_msgsPOI();
    /** @brief Complete native field ramps; scalar, text bound 0. */
    public Ros1Pal_navigation_msgsPOI field_ramps = new Ros1Pal_navigation_msgsPOI();
    /** @brief Complete native field poigroups; sequence capacity 4, text bound 0. */
    public Ros1Pal_navigation_msgsPOIGroup[] field_poigroups = new Ros1Pal_navigation_msgsPOIGroup[0];
    /** @brief Complete native field visualLocDb; scalar, text bound 0. */
    public Ros1Pal_navigation_msgsVisualLocDB field_visualLocDb = new Ros1Pal_navigation_msgsVisualLocDB();
    /** @brief Complete native field navigation_map; scalar, text bound 0. */
    public Ros1Nav_msgsOccupancyGrid field_navigation_map = new Ros1Nav_msgsOccupancyGrid();
    /** @brief Complete native field user_map; scalar, text bound 0. */
    public Ros1Sensor_msgsImage field_user_map = new Ros1Sensor_msgsImage();
    /** @brief Complete native field transform; scalar, text bound 0. */
    public Ros1Pal_navigation_msgsNiceMapTransformation field_transform = new Ros1Pal_navigation_msgsNiceMapTransformation();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_navigation_msgsMapConfiguration()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_navigation_msgsMapConfiguration value)
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
    public static Ros1Pal_navigation_msgsMapConfiguration decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_navigation_msgsMapConfiguration value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_navigation_msgsMapConfiguration value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i32(value.field_numberOfSubMaps);
        if(value.field_highways == null || value.field_highways.length > 4)
        {
            throw new IllegalArgumentException("Invalid highways extent");
        }
        wire.u32((long)value.field_highways.length);
        for(int index = 0; index < value.field_highways.length; index++)
        {
            Ros1Pal_navigation_msgsHighways.writeFields(wire, value.field_highways[index]);
        }
        Ros1Pal_navigation_msgsPOI.writeFields(wire, value.field_pois);
        Ros1Pal_navigation_msgsPOI.writeFields(wire, value.field_vo);
        Ros1Pal_navigation_msgsPOI.writeFields(wire, value.field_zoi);
        Ros1Pal_navigation_msgsPOI.writeFields(wire, value.field_ramps);
        if(value.field_poigroups == null || value.field_poigroups.length > 4)
        {
            throw new IllegalArgumentException("Invalid poigroups extent");
        }
        wire.u32((long)value.field_poigroups.length);
        for(int index = 0; index < value.field_poigroups.length; index++)
        {
            Ros1Pal_navigation_msgsPOIGroup.writeFields(wire, value.field_poigroups[index]);
        }
        Ros1Pal_navigation_msgsVisualLocDB.writeFields(wire, value.field_visualLocDb);
        Ros1Nav_msgsOccupancyGrid.writeFields(wire, value.field_navigation_map);
        Ros1Sensor_msgsImage.writeFields(wire, value.field_user_map);
        Ros1Pal_navigation_msgsNiceMapTransformation.writeFields(wire, value.field_transform);
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
    public static Ros1Pal_navigation_msgsMapConfiguration readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_navigation_msgsMapConfiguration value = new Ros1Pal_navigation_msgsMapConfiguration();
        value.field_numberOfSubMaps = wire.i32();
        value.field_highways = new Ros1Pal_navigation_msgsHighways[wire.count(4)];
        for(int index = 0; index < value.field_highways.length; index++)
        {
            value.field_highways[index] = Ros1Pal_navigation_msgsHighways.readFields(wire);
        }
        value.field_pois = Ros1Pal_navigation_msgsPOI.readFields(wire);
        value.field_vo = Ros1Pal_navigation_msgsPOI.readFields(wire);
        value.field_zoi = Ros1Pal_navigation_msgsPOI.readFields(wire);
        value.field_ramps = Ros1Pal_navigation_msgsPOI.readFields(wire);
        value.field_poigroups = new Ros1Pal_navigation_msgsPOIGroup[wire.count(4)];
        for(int index = 0; index < value.field_poigroups.length; index++)
        {
            value.field_poigroups[index] = Ros1Pal_navigation_msgsPOIGroup.readFields(wire);
        }
        value.field_visualLocDb = Ros1Pal_navigation_msgsVisualLocDB.readFields(wire);
        value.field_navigation_map = Ros1Nav_msgsOccupancyGrid.readFields(wire);
        value.field_user_map = Ros1Sensor_msgsImage.readFields(wire);
        value.field_transform = Ros1Pal_navigation_msgsNiceMapTransformation.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
