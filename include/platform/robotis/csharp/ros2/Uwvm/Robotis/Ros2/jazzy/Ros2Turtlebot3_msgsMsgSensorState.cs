using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros2.jazzy
{
    /**
     * @brief Complete ROS 2 turtlebot3_msgs/msg/SensorState value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Turtlebot3_msgsMsgSensorState
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 168;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 40;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "turtlebot3_msgs/msg/SensorState";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant BUMPER_FORWARD; consumes no instance wire bytes. */
        public const byte CONST_BUMPER_FORWARD = (byte)1;
        /** @brief Original source constant BUMPER_BACKWARD; consumes no instance wire bytes. */
        public const byte CONST_BUMPER_BACKWARD = (byte)2;
        /** @brief Original source constant CLIFF; consumes no instance wire bytes. */
        public const byte CONST_CLIFF = (byte)1;
        /** @brief Original source constant SONAR; consumes no instance wire bytes. */
        public const byte CONST_SONAR = (byte)1;
        /** @brief Original source constant ILLUMINATION; consumes no instance wire bytes. */
        public const byte CONST_ILLUMINATION = (byte)1;
        /** @brief Original source constant BUTTON0; consumes no instance wire bytes. */
        public const byte CONST_BUTTON0 = (byte)1;
        /** @brief Original source constant BUTTON1; consumes no instance wire bytes. */
        public const byte CONST_BUTTON1 = (byte)2;
        /** @brief Original source constant ERROR_LEFT_MOTOR; consumes no instance wire bytes. */
        public const byte CONST_ERROR_LEFT_MOTOR = (byte)1;
        /** @brief Original source constant ERROR_RIGHT_MOTOR; consumes no instance wire bytes. */
        public const byte CONST_ERROR_RIGHT_MOTOR = (byte)2;
        /** @brief Original source constant TORQUE_ON; consumes no instance wire bytes. */
        public const byte CONST_TORQUE_ON = (byte)1;
        /** @brief Original source constant TORQUE_OFF; consumes no instance wire bytes. */
        public const byte CONST_TORQUE_OFF = (byte)2;
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
        /** @brief Complete native field bumper; scalar, text bound 0. */
        public byte field_bumper = (byte)0;
        /** @brief Complete native field cliff; scalar, text bound 0. */
        public float field_cliff = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field sonar; scalar, text bound 0. */
        public float field_sonar = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field illumination; scalar, text bound 0. */
        public float field_illumination = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field led; scalar, text bound 0. */
        public byte field_led = (byte)0;
        /** @brief Complete native field button; scalar, text bound 0. */
        public byte field_button = (byte)0;
        /** @brief Complete native field torque; scalar, text bound 0. */
        public bool field_torque = false;
        /** @brief Complete native field left_encoder; scalar, text bound 0. */
        public int field_left_encoder = 0;
        /** @brief Complete native field right_encoder; scalar, text bound 0. */
        public int field_right_encoder = 0;
        /** @brief Complete native field battery; scalar, text bound 0. */
        public float field_battery = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Turtlebot3_msgsMsgSensorState()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Turtlebot3_msgsMsgSensorState value)
        {
            Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);
            WriteFields(wire, value);
            return wire.Finish();
        }

        /**
         * @brief Decode transactionally with exact extent and trailing-byte checks.
         * @param bytes Borrowed immutable complete canonical body.
         * @return Newly owned full value; failed decoding commits no caller storage.
         * @details Invalid wire, text, bounds or semantics throw ArgumentException.
         */
        public static Ros2Turtlebot3_msgsMsgSensorState Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Turtlebot3_msgsMsgSensorState value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Turtlebot3_msgsMsgSensorState value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Std_msgsMsgHeader.WriteFields(wire, value.field_header);
            wire.U8(value.field_bumper);
            if(!float.IsFinite(value.field_cliff))
            {
                throw new ArgumentException("Nonfinite cliff");
            }
            wire.F32(value.field_cliff);
            if(!float.IsFinite(value.field_sonar))
            {
                throw new ArgumentException("Nonfinite sonar");
            }
            wire.F32(value.field_sonar);
            if(!float.IsFinite(value.field_illumination))
            {
                throw new ArgumentException("Nonfinite illumination");
            }
            wire.F32(value.field_illumination);
            wire.U8(value.field_led);
            wire.U8(value.field_button);
            wire.Bool(value.field_torque);
            wire.I32(value.field_left_encoder);
            wire.I32(value.field_right_encoder);
            if(!float.IsFinite(value.field_battery))
            {
                throw new ArgumentException("Nonfinite battery");
            }
            wire.F32(value.field_battery);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
        }

        /**
         * @brief Read one complete nested record without exposing partial values.
         * @param wire Borrowed immutable bounded reader and its private cursor.
         * @return Newly owned complete record; malformed nested input throws.
         * @details The caller separately requires complete top-level consumption.
         */
        internal static Ros2Turtlebot3_msgsMsgSensorState ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Turtlebot3_msgsMsgSensorState value = new Ros2Turtlebot3_msgsMsgSensorState();
            value.field_header = Ros2Std_msgsMsgHeader.ReadFields(wire);
            value.field_bumper = wire.U8();
            value.field_cliff = wire.F32();
            if(!float.IsFinite(value.field_cliff))
            {
                throw new ArgumentException("Nonfinite cliff");
            }
            value.field_sonar = wire.F32();
            if(!float.IsFinite(value.field_sonar))
            {
                throw new ArgumentException("Nonfinite sonar");
            }
            value.field_illumination = wire.F32();
            if(!float.IsFinite(value.field_illumination))
            {
                throw new ArgumentException("Nonfinite illumination");
            }
            value.field_led = wire.U8();
            value.field_button = wire.U8();
            value.field_torque = wire.Bool();
            value.field_left_encoder = wire.I32();
            value.field_right_encoder = wire.I32();
            value.field_battery = wire.F32();
            if(!float.IsFinite(value.field_battery))
            {
                throw new ArgumentException("Nonfinite battery");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
