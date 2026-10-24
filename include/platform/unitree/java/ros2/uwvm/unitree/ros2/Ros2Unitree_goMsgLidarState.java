package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/LidarState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgLidarState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 6225;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 81;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/LidarState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field stamp; scalar, text bound 0. */
    public double field_stamp = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field firmware_version; scalar, text bound 2048. */
    public String field_firmware_version = "";
    /** @brief Complete native field software_version; scalar, text bound 2048. */
    public String field_software_version = "";
    /** @brief Complete native field sdk_version; scalar, text bound 2048. */
    public String field_sdk_version = "";
    /** @brief Complete native field sys_rotation_speed; scalar, text bound 0. */
    public float field_sys_rotation_speed = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field com_rotation_speed; scalar, text bound 0. */
    public float field_com_rotation_speed = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field error_state; scalar, text bound 0. */
    public int field_error_state = 0;
    /** @brief Complete native field cloud_frequency; scalar, text bound 0. */
    public float field_cloud_frequency = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field cloud_packet_loss_rate; scalar, text bound 0. */
    public float field_cloud_packet_loss_rate = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field cloud_size; scalar, text bound 0. */
    public long field_cloud_size = 0L;
    /** @brief Complete native field cloud_scan_num; scalar, text bound 0. */
    public long field_cloud_scan_num = 0L;
    /** @brief Complete native field imu_frequency; scalar, text bound 0. */
    public float field_imu_frequency = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field imu_packet_loss_rate; scalar, text bound 0. */
    public float field_imu_packet_loss_rate = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field imu_rpy; array capacity 3, text bound 0. */
    public float[] field_imu_rpy = new float[3];
    /** @brief Complete native field serial_recv_stamp; scalar, text bound 0. */
    public double field_serial_recv_stamp = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field serial_buffer_size; scalar, text bound 0. */
    public long field_serial_buffer_size = 0L;
    /** @brief Complete native field serial_buffer_read; scalar, text bound 0. */
    public long field_serial_buffer_read = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgLidarState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgLidarState value)
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
    public static Ros2Unitree_goMsgLidarState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgLidarState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgLidarState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Double.isFinite(value.field_stamp))
        {
            throw new IllegalArgumentException("Nonfinite stamp");
        }
        wire.f64(value.field_stamp);
        wire.string(value.field_firmware_version, 2048);
        wire.string(value.field_software_version, 2048);
        wire.string(value.field_sdk_version, 2048);
        if(!Float.isFinite(value.field_sys_rotation_speed))
        {
            throw new IllegalArgumentException("Nonfinite sys_rotation_speed");
        }
        wire.f32(value.field_sys_rotation_speed);
        if(!Float.isFinite(value.field_com_rotation_speed))
        {
            throw new IllegalArgumentException("Nonfinite com_rotation_speed");
        }
        wire.f32(value.field_com_rotation_speed);
        wire.u8(value.field_error_state);
        if(!Float.isFinite(value.field_cloud_frequency))
        {
            throw new IllegalArgumentException("Nonfinite cloud_frequency");
        }
        wire.f32(value.field_cloud_frequency);
        if(!Float.isFinite(value.field_cloud_packet_loss_rate))
        {
            throw new IllegalArgumentException("Nonfinite cloud_packet_loss_rate");
        }
        wire.f32(value.field_cloud_packet_loss_rate);
        wire.u32(value.field_cloud_size);
        wire.u32(value.field_cloud_scan_num);
        if(!Float.isFinite(value.field_imu_frequency))
        {
            throw new IllegalArgumentException("Nonfinite imu_frequency");
        }
        wire.f32(value.field_imu_frequency);
        if(!Float.isFinite(value.field_imu_packet_loss_rate))
        {
            throw new IllegalArgumentException("Nonfinite imu_packet_loss_rate");
        }
        wire.f32(value.field_imu_packet_loss_rate);
        if(value.field_imu_rpy == null || value.field_imu_rpy.length != 3)
        {
            throw new IllegalArgumentException("Invalid imu_rpy extent");
        }
        for(int index = 0; index < value.field_imu_rpy.length; index++)
        {
            if(!Float.isFinite(value.field_imu_rpy[index]))
            {
                throw new IllegalArgumentException("Nonfinite imu_rpy");
            }
            wire.f32(value.field_imu_rpy[index]);
        }
        if(!Double.isFinite(value.field_serial_recv_stamp))
        {
            throw new IllegalArgumentException("Nonfinite serial_recv_stamp");
        }
        wire.f64(value.field_serial_recv_stamp);
        wire.u32(value.field_serial_buffer_size);
        wire.u32(value.field_serial_buffer_read);
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
    public static Ros2Unitree_goMsgLidarState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgLidarState value = new Ros2Unitree_goMsgLidarState();
        value.field_stamp = wire.f64();
        if(!Double.isFinite(value.field_stamp))
        {
            throw new IllegalArgumentException("Nonfinite stamp");
        }
        value.field_firmware_version = wire.string(2048);
        value.field_software_version = wire.string(2048);
        value.field_sdk_version = wire.string(2048);
        value.field_sys_rotation_speed = wire.f32();
        if(!Float.isFinite(value.field_sys_rotation_speed))
        {
            throw new IllegalArgumentException("Nonfinite sys_rotation_speed");
        }
        value.field_com_rotation_speed = wire.f32();
        if(!Float.isFinite(value.field_com_rotation_speed))
        {
            throw new IllegalArgumentException("Nonfinite com_rotation_speed");
        }
        value.field_error_state = wire.u8();
        value.field_cloud_frequency = wire.f32();
        if(!Float.isFinite(value.field_cloud_frequency))
        {
            throw new IllegalArgumentException("Nonfinite cloud_frequency");
        }
        value.field_cloud_packet_loss_rate = wire.f32();
        if(!Float.isFinite(value.field_cloud_packet_loss_rate))
        {
            throw new IllegalArgumentException("Nonfinite cloud_packet_loss_rate");
        }
        value.field_cloud_size = wire.u32();
        value.field_cloud_scan_num = wire.u32();
        value.field_imu_frequency = wire.f32();
        if(!Float.isFinite(value.field_imu_frequency))
        {
            throw new IllegalArgumentException("Nonfinite imu_frequency");
        }
        value.field_imu_packet_loss_rate = wire.f32();
        if(!Float.isFinite(value.field_imu_packet_loss_rate))
        {
            throw new IllegalArgumentException("Nonfinite imu_packet_loss_rate");
        }
        value.field_imu_rpy = new float[3];
        for(int index = 0; index < value.field_imu_rpy.length; index++)
        {
            value.field_imu_rpy[index] = wire.f32();
            if(!Float.isFinite(value.field_imu_rpy[index]))
            {
                throw new IllegalArgumentException("Nonfinite imu_rpy");
            }
        }
        value.field_serial_recv_stamp = wire.f64();
        if(!Double.isFinite(value.field_serial_recv_stamp))
        {
            throw new IllegalArgumentException("Nonfinite serial_recv_stamp");
        }
        value.field_serial_buffer_size = wire.u32();
        value.field_serial_buffer_read = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
