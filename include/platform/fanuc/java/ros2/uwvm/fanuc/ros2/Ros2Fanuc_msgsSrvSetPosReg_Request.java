/**
 * @file Ros2Fanuc_msgsSrvSetPosReg_Request.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 fanuc_msgs/srv/SetPosReg_Request value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Fanuc_msgsSrvSetPosReg_Request
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 599;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 87;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_f9af742e55a044a1a363a45cbe4a0a8ce4ca62fcaf43759041cef89149d96d30";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "fanuc_msgs/srv/SetPosReg_Request";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field index; scalar, text bound 0. */
    public int field_index = 0;
    /** @brief Complete native field representation; scalar, text bound 512. */
    public String field_representation = "";
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
    /** @brief Complete native field j1; scalar, text bound 0. */
    public float field_j1 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field j2; scalar, text bound 0. */
    public float field_j2 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field j3; scalar, text bound 0. */
    public float field_j3 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field j4; scalar, text bound 0. */
    public float field_j4 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field j5; scalar, text bound 0. */
    public float field_j5 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field j6; scalar, text bound 0. */
    public float field_j6 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field j7; scalar, text bound 0. */
    public float field_j7 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field j8; scalar, text bound 0. */
    public float field_j8 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field j9; scalar, text bound 0. */
    public float field_j9 = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Fanuc_msgsSrvSetPosReg_Request()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Fanuc_msgsSrvSetPosReg_Request value)
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
    public static Ros2Fanuc_msgsSrvSetPosReg_Request decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Fanuc_msgsSrvSetPosReg_Request value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Fanuc_msgsSrvSetPosReg_Request value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u16(value.field_index);
        wire.string(value.field_representation, 512);
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
        if(!Float.isFinite(value.field_j1))
        {
            throw new IllegalArgumentException("Nonfinite j1");
        }
        wire.f32(value.field_j1);
        if(!Float.isFinite(value.field_j2))
        {
            throw new IllegalArgumentException("Nonfinite j2");
        }
        wire.f32(value.field_j2);
        if(!Float.isFinite(value.field_j3))
        {
            throw new IllegalArgumentException("Nonfinite j3");
        }
        wire.f32(value.field_j3);
        if(!Float.isFinite(value.field_j4))
        {
            throw new IllegalArgumentException("Nonfinite j4");
        }
        wire.f32(value.field_j4);
        if(!Float.isFinite(value.field_j5))
        {
            throw new IllegalArgumentException("Nonfinite j5");
        }
        wire.f32(value.field_j5);
        if(!Float.isFinite(value.field_j6))
        {
            throw new IllegalArgumentException("Nonfinite j6");
        }
        wire.f32(value.field_j6);
        if(!Float.isFinite(value.field_j7))
        {
            throw new IllegalArgumentException("Nonfinite j7");
        }
        wire.f32(value.field_j7);
        if(!Float.isFinite(value.field_j8))
        {
            throw new IllegalArgumentException("Nonfinite j8");
        }
        wire.f32(value.field_j8);
        if(!Float.isFinite(value.field_j9))
        {
            throw new IllegalArgumentException("Nonfinite j9");
        }
        wire.f32(value.field_j9);
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
    public static Ros2Fanuc_msgsSrvSetPosReg_Request readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Fanuc_msgsSrvSetPosReg_Request value = new Ros2Fanuc_msgsSrvSetPosReg_Request();
        value.field_index = wire.u16();
        value.field_representation = wire.string(512);
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
        value.field_j1 = wire.f32();
        if(!Float.isFinite(value.field_j1))
        {
            throw new IllegalArgumentException("Nonfinite j1");
        }
        value.field_j2 = wire.f32();
        if(!Float.isFinite(value.field_j2))
        {
            throw new IllegalArgumentException("Nonfinite j2");
        }
        value.field_j3 = wire.f32();
        if(!Float.isFinite(value.field_j3))
        {
            throw new IllegalArgumentException("Nonfinite j3");
        }
        value.field_j4 = wire.f32();
        if(!Float.isFinite(value.field_j4))
        {
            throw new IllegalArgumentException("Nonfinite j4");
        }
        value.field_j5 = wire.f32();
        if(!Float.isFinite(value.field_j5))
        {
            throw new IllegalArgumentException("Nonfinite j5");
        }
        value.field_j6 = wire.f32();
        if(!Float.isFinite(value.field_j6))
        {
            throw new IllegalArgumentException("Nonfinite j6");
        }
        value.field_j7 = wire.f32();
        if(!Float.isFinite(value.field_j7))
        {
            throw new IllegalArgumentException("Nonfinite j7");
        }
        value.field_j8 = wire.f32();
        if(!Float.isFinite(value.field_j8))
        {
            throw new IllegalArgumentException("Nonfinite j8");
        }
        value.field_j9 = wire.f32();
        if(!Float.isFinite(value.field_j9))
        {
            throw new IllegalArgumentException("Nonfinite j9");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
