/**
 * @file Ros2Fanuc_msgsSrvGetCartesianPosition_Response.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 fanuc_msgs/srv/GetCartesianPosition_Response value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Fanuc_msgsSrvGetCartesianPosition_Response
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 54;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 54;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "fanuc_msgs/srv/GetCartesianPosition_Response";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field result; scalar, text bound 0. */
    public int field_result = 0;
    /** @brief Complete native field timetag; scalar, text bound 0. */
    public int field_timetag = 0;
    /** @brief Complete native field utool; scalar, text bound 0. */
    public int field_utool = 0;
    /** @brief Complete native field uframe; scalar, text bound 0. */
    public int field_uframe = 0;
    /** @brief Complete native field front; scalar, text bound 0. */
    public int field_front = 0;
    /** @brief Complete native field up; scalar, text bound 0. */
    public int field_up = 0;
    /** @brief Complete native field left; scalar, text bound 0. */
    public int field_left = 0;
    /** @brief Complete native field flip; scalar, text bound 0. */
    public int field_flip = 0;
    /** @brief Complete native field turn4; scalar, text bound 0. */
    public byte field_turn4 = (byte)0;
    /** @brief Complete native field turn5; scalar, text bound 0. */
    public byte field_turn5 = (byte)0;
    /** @brief Complete native field turn6; scalar, text bound 0. */
    public byte field_turn6 = (byte)0;
    /** @brief Complete native field x; scalar, text bound 0. */
    public float field_x = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field y; scalar, text bound 0. */
    public float field_y = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field z; scalar, text bound 0. */
    public float field_z = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field w; scalar, text bound 0. */
    public float field_w = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field p; scalar, text bound 0. */
    public float field_p = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field r; scalar, text bound 0. */
    public float field_r = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field ext1; scalar, text bound 0. */
    public float field_ext1 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field ext2; scalar, text bound 0. */
    public float field_ext2 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field ext3; scalar, text bound 0. */
    public float field_ext3 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field group; scalar, text bound 0. */
    public int field_group = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Fanuc_msgsSrvGetCartesianPosition_Response()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Fanuc_msgsSrvGetCartesianPosition_Response value)
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
    public static Ros2Fanuc_msgsSrvGetCartesianPosition_Response decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Fanuc_msgsSrvGetCartesianPosition_Response value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Fanuc_msgsSrvGetCartesianPosition_Response value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i32(value.field_result);
        wire.i32(value.field_timetag);
        wire.u8(value.field_utool);
        wire.u8(value.field_uframe);
        wire.u8(value.field_front);
        wire.u8(value.field_up);
        wire.u8(value.field_left);
        wire.u8(value.field_flip);
        wire.i8(value.field_turn4);
        wire.i8(value.field_turn5);
        wire.i8(value.field_turn6);
        if(!Float.isFinite(value.field_x))
        {
            throw new IllegalArgumentException("Nonfinite x");
        }
        wire.f32(value.field_x);
        if(!Float.isFinite(value.field_y))
        {
            throw new IllegalArgumentException("Nonfinite y");
        }
        wire.f32(value.field_y);
        if(!Float.isFinite(value.field_z))
        {
            throw new IllegalArgumentException("Nonfinite z");
        }
        wire.f32(value.field_z);
        if(!Float.isFinite(value.field_w))
        {
            throw new IllegalArgumentException("Nonfinite w");
        }
        wire.f32(value.field_w);
        if(!Float.isFinite(value.field_p))
        {
            throw new IllegalArgumentException("Nonfinite p");
        }
        wire.f32(value.field_p);
        if(!Float.isFinite(value.field_r))
        {
            throw new IllegalArgumentException("Nonfinite r");
        }
        wire.f32(value.field_r);
        if(!Float.isFinite(value.field_ext1))
        {
            throw new IllegalArgumentException("Nonfinite ext1");
        }
        wire.f32(value.field_ext1);
        if(!Float.isFinite(value.field_ext2))
        {
            throw new IllegalArgumentException("Nonfinite ext2");
        }
        wire.f32(value.field_ext2);
        if(!Float.isFinite(value.field_ext3))
        {
            throw new IllegalArgumentException("Nonfinite ext3");
        }
        wire.f32(value.field_ext3);
        wire.u8(value.field_group);
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
    public static Ros2Fanuc_msgsSrvGetCartesianPosition_Response readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Fanuc_msgsSrvGetCartesianPosition_Response value = new Ros2Fanuc_msgsSrvGetCartesianPosition_Response();
        value.field_result = wire.i32();
        value.field_timetag = wire.i32();
        value.field_utool = wire.u8();
        value.field_uframe = wire.u8();
        value.field_front = wire.u8();
        value.field_up = wire.u8();
        value.field_left = wire.u8();
        value.field_flip = wire.u8();
        value.field_turn4 = wire.i8();
        value.field_turn5 = wire.i8();
        value.field_turn6 = wire.i8();
        value.field_x = wire.f32();
        if(!Float.isFinite(value.field_x))
        {
            throw new IllegalArgumentException("Nonfinite x");
        }
        value.field_y = wire.f32();
        if(!Float.isFinite(value.field_y))
        {
            throw new IllegalArgumentException("Nonfinite y");
        }
        value.field_z = wire.f32();
        if(!Float.isFinite(value.field_z))
        {
            throw new IllegalArgumentException("Nonfinite z");
        }
        value.field_w = wire.f32();
        if(!Float.isFinite(value.field_w))
        {
            throw new IllegalArgumentException("Nonfinite w");
        }
        value.field_p = wire.f32();
        if(!Float.isFinite(value.field_p))
        {
            throw new IllegalArgumentException("Nonfinite p");
        }
        value.field_r = wire.f32();
        if(!Float.isFinite(value.field_r))
        {
            throw new IllegalArgumentException("Nonfinite r");
        }
        value.field_ext1 = wire.f32();
        if(!Float.isFinite(value.field_ext1))
        {
            throw new IllegalArgumentException("Nonfinite ext1");
        }
        value.field_ext2 = wire.f32();
        if(!Float.isFinite(value.field_ext2))
        {
            throw new IllegalArgumentException("Nonfinite ext2");
        }
        value.field_ext3 = wire.f32();
        if(!Float.isFinite(value.field_ext3))
        {
            throw new IllegalArgumentException("Nonfinite ext3");
        }
        value.field_group = wire.u8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
