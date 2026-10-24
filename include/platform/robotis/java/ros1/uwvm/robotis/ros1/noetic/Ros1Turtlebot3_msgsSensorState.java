package uwvm.robotis.ros1.noetic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 turtlebot3_msgs/SensorState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Turtlebot3_msgsSensorState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 172;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 44;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "turtlebot3_msgs/SensorState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant BUMPER_FORWARD; consumes no instance wire bytes. */
    public static final int CONST_BUMPER_FORWARD = 1;
    /** @brief Original source constant BUMPER_BACKWARD; consumes no instance wire bytes. */
    public static final int CONST_BUMPER_BACKWARD = 2;
    /** @brief Original source constant CLIFF; consumes no instance wire bytes. */
    public static final int CONST_CLIFF = 1;
    /** @brief Original source constant SONAR; consumes no instance wire bytes. */
    public static final int CONST_SONAR = 1;
    /** @brief Original source constant ILLUMINATION; consumes no instance wire bytes. */
    public static final int CONST_ILLUMINATION = 1;
    /** @brief Original source constant BUTTON0; consumes no instance wire bytes. */
    public static final int CONST_BUTTON0 = 1;
    /** @brief Original source constant BUTTON1; consumes no instance wire bytes. */
    public static final int CONST_BUTTON1 = 2;
    /** @brief Original source constant ERROR_LEFT_MOTOR; consumes no instance wire bytes. */
    public static final int CONST_ERROR_LEFT_MOTOR = 1;
    /** @brief Original source constant ERROR_RIGHT_MOTOR; consumes no instance wire bytes. */
    public static final int CONST_ERROR_RIGHT_MOTOR = 2;
    /** @brief Original source constant TORQUE_ON; consumes no instance wire bytes. */
    public static final int CONST_TORQUE_ON = 1;
    /** @brief Original source constant TORQUE_OFF; consumes no instance wire bytes. */
    public static final int CONST_TORQUE_OFF = 2;
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field bumper; scalar, text bound 0. */
    public int field_bumper = 0;
    /** @brief Complete native field cliff; scalar, text bound 0. */
    public float field_cliff = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field sonar; scalar, text bound 0. */
    public float field_sonar = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field illumination; scalar, text bound 0. */
    public float field_illumination = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field led; scalar, text bound 0. */
    public int field_led = 0;
    /** @brief Complete native field button; scalar, text bound 0. */
    public int field_button = 0;
    /** @brief Complete native field torque; scalar, text bound 0. */
    public boolean field_torque = false;
    /** @brief Complete native field left_encoder; scalar, text bound 0. */
    public int field_left_encoder = 0;
    /** @brief Complete native field right_encoder; scalar, text bound 0. */
    public int field_right_encoder = 0;
    /** @brief Complete native field battery; scalar, text bound 0. */
    public float field_battery = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Turtlebot3_msgsSensorState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Turtlebot3_msgsSensorState value)
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
    public static Ros1Turtlebot3_msgsSensorState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Turtlebot3_msgsSensorState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Turtlebot3_msgsSensorState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        wire.u8(value.field_bumper);
        if(!Float.isFinite(value.field_cliff))
        {
            throw new IllegalArgumentException("Nonfinite cliff");
        }
        wire.f32(value.field_cliff);
        if(!Float.isFinite(value.field_sonar))
        {
            throw new IllegalArgumentException("Nonfinite sonar");
        }
        wire.f32(value.field_sonar);
        if(!Float.isFinite(value.field_illumination))
        {
            throw new IllegalArgumentException("Nonfinite illumination");
        }
        wire.f32(value.field_illumination);
        wire.u8(value.field_led);
        wire.u8(value.field_button);
        wire.bool(value.field_torque);
        wire.i32(value.field_left_encoder);
        wire.i32(value.field_right_encoder);
        if(!Float.isFinite(value.field_battery))
        {
            throw new IllegalArgumentException("Nonfinite battery");
        }
        wire.f32(value.field_battery);
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
    public static Ros1Turtlebot3_msgsSensorState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Turtlebot3_msgsSensorState value = new Ros1Turtlebot3_msgsSensorState();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_bumper = wire.u8();
        value.field_cliff = wire.f32();
        if(!Float.isFinite(value.field_cliff))
        {
            throw new IllegalArgumentException("Nonfinite cliff");
        }
        value.field_sonar = wire.f32();
        if(!Float.isFinite(value.field_sonar))
        {
            throw new IllegalArgumentException("Nonfinite sonar");
        }
        value.field_illumination = wire.f32();
        if(!Float.isFinite(value.field_illumination))
        {
            throw new IllegalArgumentException("Nonfinite illumination");
        }
        value.field_led = wire.u8();
        value.field_button = wire.u8();
        value.field_torque = wire.bool();
        value.field_left_encoder = wire.i32();
        value.field_right_encoder = wire.i32();
        value.field_battery = wire.f32();
        if(!Float.isFinite(value.field_battery))
        {
            throw new IllegalArgumentException("Nonfinite battery");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
