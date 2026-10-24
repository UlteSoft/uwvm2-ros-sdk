/**
 * @file Ros1Abb_rapid_msgsLoadData.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 abb_rapid_msgs/LoadData value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Abb_rapid_msgsLoadData
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 44;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 44;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_msgs/LoadData";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field mass; scalar, text bound 0. */
    public float field_mass = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field cog; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsPos field_cog = new Ros1Abb_rapid_msgsPos();
    /** @brief Complete native field aom; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsOrient field_aom = new Ros1Abb_rapid_msgsOrient();
    /** @brief Complete native field ix; scalar, text bound 0. */
    public float field_ix = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field iy; scalar, text bound 0. */
    public float field_iy = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field iz; scalar, text bound 0. */
    public float field_iz = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Abb_rapid_msgsLoadData()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Abb_rapid_msgsLoadData value)
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
    public static Ros1Abb_rapid_msgsLoadData decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Abb_rapid_msgsLoadData value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Abb_rapid_msgsLoadData value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_mass))
        {
            throw new IllegalArgumentException("Nonfinite mass");
        }
        wire.f32(value.field_mass);
        Ros1Abb_rapid_msgsPos.writeFields(wire, value.field_cog);
        Ros1Abb_rapid_msgsOrient.writeFields(wire, value.field_aom);
        if(!Float.isFinite(value.field_ix))
        {
            throw new IllegalArgumentException("Nonfinite ix");
        }
        wire.f32(value.field_ix);
        if(!Float.isFinite(value.field_iy))
        {
            throw new IllegalArgumentException("Nonfinite iy");
        }
        wire.f32(value.field_iy);
        if(!Float.isFinite(value.field_iz))
        {
            throw new IllegalArgumentException("Nonfinite iz");
        }
        wire.f32(value.field_iz);
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
    public static Ros1Abb_rapid_msgsLoadData readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Abb_rapid_msgsLoadData value = new Ros1Abb_rapid_msgsLoadData();
        value.field_mass = wire.f32();
        if(!Float.isFinite(value.field_mass))
        {
            throw new IllegalArgumentException("Nonfinite mass");
        }
        value.field_cog = Ros1Abb_rapid_msgsPos.readFields(wire);
        value.field_aom = Ros1Abb_rapid_msgsOrient.readFields(wire);
        value.field_ix = wire.f32();
        if(!Float.isFinite(value.field_ix))
        {
            throw new IllegalArgumentException("Nonfinite ix");
        }
        value.field_iy = wire.f32();
        if(!Float.isFinite(value.field_iy))
        {
            throw new IllegalArgumentException("Nonfinite iy");
        }
        value.field_iz = wire.f32();
        if(!Float.isFinite(value.field_iz))
        {
            throw new IllegalArgumentException("Nonfinite iz");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
