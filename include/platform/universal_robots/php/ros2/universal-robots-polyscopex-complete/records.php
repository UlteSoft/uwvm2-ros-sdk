<?php
declare(strict_types=1);
namespace Uwvm\UniversalRobotsUniversalRobotsPolyscopexComplete;
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @file records.php
 * @brief Complete vendor record classes; codec implementation is shared.
 */
/** @brief Complete original builtin_interfaces/msg/Time value. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Original sec: int32; scalar. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar. */
    public mixed $nanosec;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->sec = 0;
        $this->nanosec = Word::fromDecimal('0', 4, false);
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes);
    }
}
/** @brief Complete original geometry_msgs/msg/Point value. */
final class Ros2Geometry_msgsMsgPoint
{
    /** @brief Original x: float64; scalar. */
    public mixed $x;
    /** @brief Original y: float64; scalar. */
    public mixed $y;
    /** @brief Original z: float64; scalar. */
    public mixed $z;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->x = 0.0;
        $this->y = 0.0;
        $this->z = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoint', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoint', $bytes);
    }
}
/** @brief Complete original geometry_msgs/msg/Quaternion value. */
final class Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Original x: float64; scalar. */
    public mixed $x;
    /** @brief Original y: float64; scalar. */
    public mixed $y;
    /** @brief Original z: float64; scalar. */
    public mixed $z;
    /** @brief Original w: float64; scalar. */
    public mixed $w;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->x = 0.0;
        $this->y = 0.0;
        $this->z = 0.0;
        $this->w = 1.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgQuaternion', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgQuaternion', $bytes);
    }
}
/** @brief Complete original geometry_msgs/msg/Pose value. */
final class Ros2Geometry_msgsMsgPose
{
    /** @brief Original position: geometry_msgs/msg/Point; scalar. */
    public mixed $position;
    /** @brief Original orientation: geometry_msgs/msg/Quaternion; scalar. */
    public mixed $orientation;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->position = new Ros2Geometry_msgsMsgPoint();
        $this->orientation = new Ros2Geometry_msgsMsgQuaternion();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPose', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPose', $bytes);
    }
}
/** @brief Complete original geometry_msgs/msg/Vector3 value. */
final class Ros2Geometry_msgsMsgVector3
{
    /** @brief Original x: float64; scalar. */
    public mixed $x;
    /** @brief Original y: float64; scalar. */
    public mixed $y;
    /** @brief Original z: float64; scalar. */
    public mixed $z;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->x = 0.0;
        $this->y = 0.0;
        $this->z = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgVector3', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgVector3', $bytes);
    }
}
/** @brief Complete original geometry_msgs/msg/Twist value. */
final class Ros2Geometry_msgsMsgTwist
{
    /** @brief Original linear: geometry_msgs/msg/Vector3; scalar. */
    public mixed $linear;
    /** @brief Original angular: geometry_msgs/msg/Vector3; scalar. */
    public mixed $angular;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->linear = new Ros2Geometry_msgsMsgVector3();
        $this->angular = new Ros2Geometry_msgsMsgVector3();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgTwist', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgTwist', $bytes);
    }
}
/** @brief Complete original std_msgs/msg/Header value. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Original stamp: builtin_interfaces/msg/Time; scalar. */
    public mixed $stamp;
    /** @brief Original frame_id: string; scalar. */
    public mixed $frame_id;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->stamp = new Ros2Builtin_interfacesMsgTime();
        $this->frame_id = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes);
    }
}
/** @brief Complete original std_msgs/msg/String value. */
final class Ros2Std_msgsMsgString
{
    /** @brief Original data: string; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->data = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_msgsMsgString', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_msgsMsgString', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/RobotMode value. */
final class Ros2UrinterfacesMsgRobotMode
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: int8; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgRobotMode', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgRobotMode', $bytes);
    }
}
/** @brief Complete original urinterfaces/action/SetMode_Goal value. */
final class Ros2UrinterfacesActionSetMode_Goal
{
    /** @brief Original target_robot_mode: urinterfaces/msg/RobotMode; scalar. */
    public mixed $target_robot_mode;
    /** @brief Original stop_program: bool; scalar. */
    public mixed $stop_program;
    /** @brief Original play_program: bool; scalar. */
    public mixed $play_program;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->target_robot_mode = new Ros2UrinterfacesMsgRobotMode();
        $this->stop_program = false;
        $this->play_program = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesActionSetMode_Goal', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesActionSetMode_Goal', $bytes);
    }
}
/** @brief Complete original urinterfaces/action/SetMode_Result value. */
final class Ros2UrinterfacesActionSetMode_Result
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original message: string; scalar. */
    public mixed $message;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
        $this->message = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesActionSetMode_Result', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesActionSetMode_Result', $bytes);
    }
}
/** @brief Complete original urinterfaces/action/SetMode_Feedback value. */
final class Ros2UrinterfacesActionSetMode_Feedback
{
    /** @brief Original current_robot_mode: int8; scalar. */
    public mixed $current_robot_mode;
    /** @brief Original current_safety_mode: int8; scalar. */
    public mixed $current_safety_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->current_robot_mode = 0;
        $this->current_safety_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesActionSetMode_Feedback', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesActionSetMode_Feedback', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/ActiveTCP value. */
final class Ros2UrinterfacesMsgActiveTCP
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: string; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgActiveTCP', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgActiveTCP', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/Analog value. */
final class Ros2UrinterfacesMsgAnalog
{
    /** @brief Original pin: uint8; scalar. */
    public mixed $pin;
    /** @brief Original domain: uint8; scalar. */
    public mixed $domain;
    /** @brief Original value: float32; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pin = 0;
        $this->domain = 0;
        $this->value = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgAnalog', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgAnalog', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/AnalogIO value. */
final class Ros2UrinterfacesMsgAnalogIO
{
    /** @brief Original analog_inputs: urinterfaces/msg/Analog; sequence. */
    public mixed $analog_inputs;
    /** @brief Original analog_outputs: urinterfaces/msg/Analog; sequence. */
    public mixed $analog_outputs;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->analog_inputs = [];
        $this->analog_outputs = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgAnalogIO', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgAnalogIO', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/AnalogIOStateStamped value. */
final class Ros2UrinterfacesMsgAnalogIOStateStamped
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original io_state: urinterfaces/msg/AnalogIO; scalar. */
    public mixed $io_state;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->io_state = new Ros2UrinterfacesMsgAnalogIO();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgAnalogIOStateStamped', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgAnalogIOStateStamped', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/AnalogStamped value. */
final class Ros2UrinterfacesMsgAnalogStamped
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: urinterfaces/msg/Analog; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = new Ros2UrinterfacesMsgAnalog();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgAnalogStamped', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgAnalogStamped', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/BoolStamped value. */
final class Ros2UrinterfacesMsgBoolStamped
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: bool; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgBoolStamped', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgBoolStamped', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/ControlCycle value. */
final class Ros2UrinterfacesMsgControlCycle
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: uint64; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = Word::fromDecimal('0', 8, false);
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgControlCycle', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgControlCycle', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/Current value. */
final class Ros2UrinterfacesMsgCurrent
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: float32; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgCurrent', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgCurrent', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/Digital value. */
final class Ros2UrinterfacesMsgDigital
{
    /** @brief Original pin: uint8; scalar. */
    public mixed $pin;
    /** @brief Original state: bool; scalar. */
    public mixed $state;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pin = 0;
        $this->state = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgDigital', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgDigital', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/DigitalIO value. */
final class Ros2UrinterfacesMsgDigitalIO
{
    /** @brief Original digital_inputs: urinterfaces/msg/Digital; sequence. */
    public mixed $digital_inputs;
    /** @brief Original digital_outputs: urinterfaces/msg/Digital; sequence. */
    public mixed $digital_outputs;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->digital_inputs = [];
        $this->digital_outputs = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgDigitalIO', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgDigitalIO', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/DigitalIOStateStamped value. */
final class Ros2UrinterfacesMsgDigitalIOStateStamped
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original configurable_io: urinterfaces/msg/DigitalIO; scalar. */
    public mixed $configurable_io;
    /** @brief Original standard_io: urinterfaces/msg/DigitalIO; scalar. */
    public mixed $standard_io;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->configurable_io = new Ros2UrinterfacesMsgDigitalIO();
        $this->standard_io = new Ros2UrinterfacesMsgDigitalIO();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgDigitalIOStateStamped', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgDigitalIOStateStamped', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/DigitalStamped value. */
final class Ros2UrinterfacesMsgDigitalStamped
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: urinterfaces/msg/Digital; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = new Ros2UrinterfacesMsgDigital();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgDigitalStamped', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgDigitalStamped', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/DoubleMultiArrayStamped value. */
final class Ros2UrinterfacesMsgDoubleMultiArrayStamped
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: float64; sequence. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgDoubleMultiArrayStamped', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgDoubleMultiArrayStamped', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/Float32Stamped value. */
final class Ros2UrinterfacesMsgFloat32Stamped
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: float32; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgFloat32Stamped', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgFloat32Stamped', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/Float64Stamped value. */
final class Ros2UrinterfacesMsgFloat64Stamped
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: float64; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgFloat64Stamped', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgFloat64Stamped', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/JointMode value. */
final class Ros2UrinterfacesMsgJointMode
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original joint_modes: uint8; array. */
    public mixed $joint_modes;
    /** @brief Original tool_mode: uint8; scalar. */
    public mixed $tool_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->joint_modes = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->joint_modes[] = 0;
        }
        $this->tool_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgJointMode', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgJointMode', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/JointTemperature value. */
final class Ros2UrinterfacesMsgJointTemperature
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: float32; array. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->data[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgJointTemperature', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgJointTemperature', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/JointVoltage value. */
final class Ros2UrinterfacesMsgJointVoltage
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: float64; array. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->data[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgJointVoltage', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgJointVoltage', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/JsonStringType value. */
final class Ros2UrinterfacesMsgJsonStringType
{
    /** @brief Original json_string: std_msgs/msg/String; scalar. */
    public mixed $json_string;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->json_string = new Ros2Std_msgsMsgString();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgJsonStringType', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgJsonStringType', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/RuntimeState value. */
final class Ros2UrinterfacesMsgRuntimeState
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: int8; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgRuntimeState', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgRuntimeState', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/SafetyStatus value. */
final class Ros2UrinterfacesMsgSafetyStatus
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: int8; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgSafetyStatus', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgSafetyStatus', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/SharedVariablesEditResponse value. */
final class Ros2UrinterfacesMsgSharedVariablesEditResponse
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original result_message: std_msgs/msg/String; scalar. */
    public mixed $result_message;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
        $this->result_message = new Ros2Std_msgsMsgString();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgSharedVariablesEditResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgSharedVariablesEditResponse', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/SpeedSliderFraction value. */
final class Ros2UrinterfacesMsgSpeedSliderFraction
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: float64; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgSpeedSliderFraction', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgSpeedSliderFraction', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/TCPState value. */
final class Ros2UrinterfacesMsgTCPState
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original pose: geometry_msgs/msg/Pose; scalar. */
    public mixed $pose;
    /** @brief Original speed: geometry_msgs/msg/Twist; scalar. */
    public mixed $speed;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->pose = new Ros2Geometry_msgsMsgPose();
        $this->speed = new Ros2Geometry_msgsMsgTwist();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgTCPState', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgTCPState', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/ToolOutputMode value. */
final class Ros2UrinterfacesMsgToolOutputMode
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original output_mode: uint8; scalar. */
    public mixed $output_mode;
    /** @brief Original output_pin_mode: uint8; array. */
    public mixed $output_pin_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->output_mode = 0;
        $this->output_pin_mode = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->output_pin_mode[] = 0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgToolOutputMode', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgToolOutputMode', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/VariableUpdate value. */
final class Ros2UrinterfacesMsgVariableUpdate
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: urinterfaces/msg/JsonStringType; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = new Ros2UrinterfacesMsgJsonStringType();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgVariableUpdate', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgVariableUpdate', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/VoltageCurrentStamped value. */
final class Ros2UrinterfacesMsgVoltageCurrentStamped
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original voltage: float64; scalar. */
    public mixed $voltage;
    /** @brief Original current: float64; scalar. */
    public mixed $current;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->voltage = 0.0;
        $this->current = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgVoltageCurrentStamped', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgVoltageCurrentStamped', $bytes);
    }
}
/** @brief Complete original urinterfaces/msg/WorldModelNames value. */
final class Ros2UrinterfacesMsgWorldModelNames
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original data: std_msgs/msg/String; sequence. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->data = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesMsgWorldModelNames', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesMsgWorldModelNames', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/SetAnalogOutput_Request value. */
final class Ros2UrinterfacesSrvSetAnalogOutput_Request
{
    /** @brief Original data: urinterfaces/msg/Analog; sequence. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->data = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvSetAnalogOutput_Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvSetAnalogOutput_Request', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/SetAnalogOutput_Response value. */
final class Ros2UrinterfacesSrvSetAnalogOutput_Response
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvSetAnalogOutput_Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvSetAnalogOutput_Response', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/SetDigitalOutput_Request value. */
final class Ros2UrinterfacesSrvSetDigitalOutput_Request
{
    /** @brief Original data: urinterfaces/msg/Digital; sequence. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->data = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvSetDigitalOutput_Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvSetDigitalOutput_Request', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/SetDigitalOutput_Response value. */
final class Ros2UrinterfacesSrvSetDigitalOutput_Response
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvSetDigitalOutput_Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvSetDigitalOutput_Response', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/SetSpeedFraction_Request value. */
final class Ros2UrinterfacesSrvSetSpeedFraction_Request
{
    /** @brief Original value: float32; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvSetSpeedFraction_Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvSetSpeedFraction_Request', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/SetSpeedFraction_Response value. */
final class Ros2UrinterfacesSrvSetSpeedFraction_Response
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvSetSpeedFraction_Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvSetSpeedFraction_Response', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/SharedVariablesEditor_Request value. */
final class Ros2UrinterfacesSrvSharedVariablesEditor_Request
{
    /** @brief Original request: urinterfaces/msg/JsonStringType; scalar. */
    public mixed $request;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->request = new Ros2UrinterfacesMsgJsonStringType();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvSharedVariablesEditor_Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvSharedVariablesEditor_Request', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/SharedVariablesEditor_Response value. */
final class Ros2UrinterfacesSrvSharedVariablesEditor_Response
{
    /** @brief Original response: urinterfaces/msg/SharedVariablesEditResponse; scalar. */
    public mixed $response;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->response = new Ros2UrinterfacesMsgSharedVariablesEditResponse();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvSharedVariablesEditor_Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvSharedVariablesEditor_Response', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/VariablesViewer_Request value. */
final class Ros2UrinterfacesSrvVariablesViewer_Request
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvVariablesViewer_Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvVariablesViewer_Request', $bytes);
    }
}
/** @brief Complete original urinterfaces/srv/VariablesViewer_Response value. */
final class Ros2UrinterfacesSrvVariablesViewer_Response
{
    /** @brief Original response: urinterfaces/msg/VariableUpdate; scalar. */
    public mixed $response;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->response = new Ros2UrinterfacesMsgVariableUpdate();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2UrinterfacesSrvVariablesViewer_Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2UrinterfacesSrvVariablesViewer_Response', $bytes);
    }
}
/** @brief Share the central pure codec across complete vendor types. */
final class Catalog
{
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null)
        {
            $wire = new Wire([
                'Ros2Builtin_interfacesMsgTime' => [
                    'symbol' => 'Ros2Builtin_interfacesMsgTime',
                    'ros_version' => 2,
                    'native_type' => 'builtin_interfaces/msg/Time',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
                    'minimum' => 8,
                    'maximum' => 8,
                    'semantics' => 'normalized-time',
                    'fields' => [
                        [
                            'name' => 'sec',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'nanosec',
                            'type' => 'uint32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Builtin_interfacesMsgTime::class
                ],
                'Ros2Geometry_msgsMsgPoint' => [
                    'symbol' => 'Ros2Geometry_msgsMsgPoint',
                    'ros_version' => 2,
                    'native_type' => 'geometry_msgs/msg/Point',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616',
                    'minimum' => 24,
                    'maximum' => 24,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'x',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'y',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'z',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Geometry_msgsMsgPoint::class
                ],
                'Ros2Geometry_msgsMsgQuaternion' => [
                    'symbol' => 'Ros2Geometry_msgsMsgQuaternion',
                    'ros_version' => 2,
                    'native_type' => 'geometry_msgs/msg/Quaternion',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
                    'minimum' => 32,
                    'maximum' => 32,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'x',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => '0.0',
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8,
                            'default' => 0.0
                        ],
                        [
                            'name' => 'y',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => '0.0',
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8,
                            'default' => 0.0
                        ],
                        [
                            'name' => 'z',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => '0.0',
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8,
                            'default' => 0.0
                        ],
                        [
                            'name' => 'w',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => '1.0',
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8,
                            'default' => 1.0
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Geometry_msgsMsgQuaternion::class
                ],
                'Ros2Geometry_msgsMsgPose' => [
                    'symbol' => 'Ros2Geometry_msgsMsgPose',
                    'ros_version' => 2,
                    'native_type' => 'geometry_msgs/msg/Pose',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777',
                    'minimum' => 56,
                    'maximum' => 56,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'position',
                            'type' => 'Ros2Geometry_msgsMsgPoint',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ],
                        [
                            'name' => 'orientation',
                            'type' => 'Ros2Geometry_msgsMsgQuaternion',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 32
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Geometry_msgsMsgPose::class
                ],
                'Ros2Geometry_msgsMsgVector3' => [
                    'symbol' => 'Ros2Geometry_msgsMsgVector3',
                    'ros_version' => 2,
                    'native_type' => 'geometry_msgs/msg/Vector3',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
                    'minimum' => 24,
                    'maximum' => 24,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'x',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'y',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'z',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Geometry_msgsMsgVector3::class
                ],
                'Ros2Geometry_msgsMsgTwist' => [
                    'symbol' => 'Ros2Geometry_msgsMsgTwist',
                    'ros_version' => 2,
                    'native_type' => 'geometry_msgs/msg/Twist',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
                    'minimum' => 48,
                    'maximum' => 48,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'linear',
                            'type' => 'Ros2Geometry_msgsMsgVector3',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ],
                        [
                            'name' => 'angular',
                            'type' => 'Ros2Geometry_msgsMsgVector3',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Geometry_msgsMsgTwist::class
                ],
                'Ros2Std_msgsMsgHeader' => [
                    'symbol' => 'Ros2Std_msgsMsgHeader',
                    'ros_version' => 2,
                    'native_type' => 'std_msgs/msg/Header',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
                    'minimum' => 12,
                    'maximum' => 140,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'stamp',
                            'type' => 'Ros2Builtin_interfacesMsgTime',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'frame_id',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 128,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Std_msgsMsgHeader::class
                ],
                'Ros2Std_msgsMsgString' => [
                    'symbol' => 'Ros2Std_msgsMsgString',
                    'ros_version' => 2,
                    'native_type' => 'std_msgs/msg/String',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5',
                    'minimum' => 4,
                    'maximum' => 1028,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'data',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 1024,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Std_msgsMsgString::class
                ],
                'Ros2UrinterfacesMsgRobotMode' => [
                    'symbol' => 'Ros2UrinterfacesMsgRobotMode',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/RobotMode',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea',
                    'minimum' => 13,
                    'maximum' => 141,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'int8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [
                        'DISCONNECTED' => 0,
                        'CONFIRM_SAFETY' => 1,
                        'BOOTING' => 2,
                        'POWER_OFF' => 3,
                        'POWER_ON' => 4,
                        'IDLE' => 5,
                        'BACKDRIVE' => 6,
                        'RUNNING' => 7,
                        'UPDATING_FIRMWARE' => 8
                    ],
                    'class' => Ros2UrinterfacesMsgRobotMode::class
                ],
                'Ros2UrinterfacesActionSetMode_Goal' => [
                    'symbol' => 'Ros2UrinterfacesActionSetMode_Goal',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/action/SetMode_Goal',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09',
                    'minimum' => 15,
                    'maximum' => 143,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'target_robot_mode',
                            'type' => 'Ros2UrinterfacesMsgRobotMode',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 13
                        ],
                        [
                            'name' => 'stop_program',
                            'type' => 'bool',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'play_program',
                            'type' => 'bool',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => 'False',
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1,
                            'default' => false
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesActionSetMode_Goal::class
                ],
                'Ros2UrinterfacesActionSetMode_Result' => [
                    'symbol' => 'Ros2UrinterfacesActionSetMode_Result',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/action/SetMode_Result',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7',
                    'minimum' => 5,
                    'maximum' => 261,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'success',
                            'type' => 'bool',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'message',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 256,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesActionSetMode_Result::class
                ],
                'Ros2UrinterfacesActionSetMode_Feedback' => [
                    'symbol' => 'Ros2UrinterfacesActionSetMode_Feedback',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/action/SetMode_Feedback',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'current_robot_mode',
                            'type' => 'int8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'current_safety_mode',
                            'type' => 'int8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesActionSetMode_Feedback::class
                ],
                'Ros2UrinterfacesMsgActiveTCP' => [
                    'symbol' => 'Ros2UrinterfacesMsgActiveTCP',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/ActiveTCP',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae',
                    'minimum' => 16,
                    'maximum' => 400,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 256,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgActiveTCP::class
                ],
                'Ros2UrinterfacesMsgAnalog' => [
                    'symbol' => 'Ros2UrinterfacesMsgAnalog',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/Analog',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b',
                    'minimum' => 6,
                    'maximum' => 6,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pin',
                            'type' => 'uint8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'domain',
                            'type' => 'uint8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'value',
                            'type' => 'float32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [
                        'CURRENT' => 0,
                        'VOLTAGE' => 1
                    ],
                    'class' => Ros2UrinterfacesMsgAnalog::class
                ],
                'Ros2UrinterfacesMsgAnalogIO' => [
                    'symbol' => 'Ros2UrinterfacesMsgAnalogIO',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/AnalogIO',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c',
                    'minimum' => 8,
                    'maximum' => 200,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'analog_inputs',
                            'type' => 'Ros2UrinterfacesMsgAnalog',
                            'array' => 'sequence',
                            'count' => 16,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 6
                        ],
                        [
                            'name' => 'analog_outputs',
                            'type' => 'Ros2UrinterfacesMsgAnalog',
                            'array' => 'sequence',
                            'count' => 16,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 6
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgAnalogIO::class
                ],
                'Ros2UrinterfacesMsgAnalogIOStateStamped' => [
                    'symbol' => 'Ros2UrinterfacesMsgAnalogIOStateStamped',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/AnalogIOStateStamped',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89',
                    'minimum' => 20,
                    'maximum' => 340,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'io_state',
                            'type' => 'Ros2UrinterfacesMsgAnalogIO',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgAnalogIOStateStamped::class
                ],
                'Ros2UrinterfacesMsgAnalogStamped' => [
                    'symbol' => 'Ros2UrinterfacesMsgAnalogStamped',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/AnalogStamped',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c',
                    'minimum' => 18,
                    'maximum' => 146,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'Ros2UrinterfacesMsgAnalog',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 6
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgAnalogStamped::class
                ],
                'Ros2UrinterfacesMsgBoolStamped' => [
                    'symbol' => 'Ros2UrinterfacesMsgBoolStamped',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/BoolStamped',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66',
                    'minimum' => 13,
                    'maximum' => 141,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'bool',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgBoolStamped::class
                ],
                'Ros2UrinterfacesMsgControlCycle' => [
                    'symbol' => 'Ros2UrinterfacesMsgControlCycle',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/ControlCycle',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278',
                    'minimum' => 20,
                    'maximum' => 148,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'uint64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgControlCycle::class
                ],
                'Ros2UrinterfacesMsgCurrent' => [
                    'symbol' => 'Ros2UrinterfacesMsgCurrent',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/Current',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df',
                    'minimum' => 16,
                    'maximum' => 144,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'float32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgCurrent::class
                ],
                'Ros2UrinterfacesMsgDigital' => [
                    'symbol' => 'Ros2UrinterfacesMsgDigital',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/Digital',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pin',
                            'type' => 'uint8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'state',
                            'type' => 'bool',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgDigital::class
                ],
                'Ros2UrinterfacesMsgDigitalIO' => [
                    'symbol' => 'Ros2UrinterfacesMsgDigitalIO',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/DigitalIO',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a',
                    'minimum' => 8,
                    'maximum' => 136,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'digital_inputs',
                            'type' => 'Ros2UrinterfacesMsgDigital',
                            'array' => 'sequence',
                            'count' => 32,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 2
                        ],
                        [
                            'name' => 'digital_outputs',
                            'type' => 'Ros2UrinterfacesMsgDigital',
                            'array' => 'sequence',
                            'count' => 32,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 2
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgDigitalIO::class
                ],
                'Ros2UrinterfacesMsgDigitalIOStateStamped' => [
                    'symbol' => 'Ros2UrinterfacesMsgDigitalIOStateStamped',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/DigitalIOStateStamped',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9',
                    'minimum' => 28,
                    'maximum' => 412,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'configurable_io',
                            'type' => 'Ros2UrinterfacesMsgDigitalIO',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'standard_io',
                            'type' => 'Ros2UrinterfacesMsgDigitalIO',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgDigitalIOStateStamped::class
                ],
                'Ros2UrinterfacesMsgDigitalStamped' => [
                    'symbol' => 'Ros2UrinterfacesMsgDigitalStamped',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/DigitalStamped',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865',
                    'minimum' => 14,
                    'maximum' => 142,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'Ros2UrinterfacesMsgDigital',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 2
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgDigitalStamped::class
                ],
                'Ros2UrinterfacesMsgDoubleMultiArrayStamped' => [
                    'symbol' => 'Ros2UrinterfacesMsgDoubleMultiArrayStamped',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/DoubleMultiArrayStamped',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae',
                    'minimum' => 16,
                    'maximum' => 272,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'float64',
                            'array' => 'sequence',
                            'count' => 16,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgDoubleMultiArrayStamped::class
                ],
                'Ros2UrinterfacesMsgFloat32Stamped' => [
                    'symbol' => 'Ros2UrinterfacesMsgFloat32Stamped',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/Float32Stamped',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3',
                    'minimum' => 16,
                    'maximum' => 144,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'float32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgFloat32Stamped::class
                ],
                'Ros2UrinterfacesMsgFloat64Stamped' => [
                    'symbol' => 'Ros2UrinterfacesMsgFloat64Stamped',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/Float64Stamped',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21',
                    'minimum' => 20,
                    'maximum' => 148,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgFloat64Stamped::class
                ],
                'Ros2UrinterfacesMsgJointMode' => [
                    'symbol' => 'Ros2UrinterfacesMsgJointMode',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/JointMode',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c',
                    'minimum' => 19,
                    'maximum' => 147,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'joint_modes',
                            'type' => 'uint8',
                            'array' => 'array',
                            'count' => 6,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'tool_mode',
                            'type' => 'uint8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [
                        'JOINT_MODE_RESET' => 235,
                        'JOINT_MODE_SHUTTING_DOWN' => 236,
                        'JOINT_MODE_PART_D_CALIBRATION' => 237,
                        'JOINT_MODE_BACKDRIVE' => 238,
                        'JOINT_MODE_POWER_OFF' => 239,
                        'JOINT_MODE_READY_FOR_POWER_OFF' => 240,
                        'JOINT_MODE_NOT_RESPONDING' => 245,
                        'JOINT_MODE_MOTOR_INITIALISATION' => 246,
                        'JOINT_MODE_BOOTING' => 247,
                        'JOINT_MODE_PART_D_CALIBRATION_ERROR' => 248,
                        'JOINT_MODE_BOOTLOADER' => 249,
                        'JOINT_MODE_CALIBRATION' => 250,
                        'JOINT_MODE_VIOLATION' => 251,
                        'JOINT_MODE_FAULT' => 252,
                        'JOINT_MODE_RUNNING' => 253,
                        'JOINT_MODE_IDLE' => 255
                    ],
                    'class' => Ros2UrinterfacesMsgJointMode::class
                ],
                'Ros2UrinterfacesMsgJointTemperature' => [
                    'symbol' => 'Ros2UrinterfacesMsgJointTemperature',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/JointTemperature',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017',
                    'minimum' => 36,
                    'maximum' => 164,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'float32',
                            'array' => 'array',
                            'count' => 6,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgJointTemperature::class
                ],
                'Ros2UrinterfacesMsgJointVoltage' => [
                    'symbol' => 'Ros2UrinterfacesMsgJointVoltage',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/JointVoltage',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61',
                    'minimum' => 60,
                    'maximum' => 188,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'float64',
                            'array' => 'array',
                            'count' => 6,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgJointVoltage::class
                ],
                'Ros2UrinterfacesMsgJsonStringType' => [
                    'symbol' => 'Ros2UrinterfacesMsgJsonStringType',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/JsonStringType',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728',
                    'minimum' => 4,
                    'maximum' => 1028,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'json_string',
                            'type' => 'Ros2Std_msgsMsgString',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgJsonStringType::class
                ],
                'Ros2UrinterfacesMsgRuntimeState' => [
                    'symbol' => 'Ros2UrinterfacesMsgRuntimeState',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/RuntimeState',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6',
                    'minimum' => 13,
                    'maximum' => 141,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'int8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [
                        'PROGRAM_STATE_UNDEFINED' => -1,
                        'PROGRAM_STATE_STOPPING' => 0,
                        'PROGRAM_STATE_STOPPED' => 1,
                        'PROGRAM_STATE_RUNNING' => 2,
                        'PROGRAM_STATE_PAUSING' => 3,
                        'PROGRAM_STATE_PAUSED' => 4,
                        'PROGRAM_STATE_RESUMING' => 5,
                        'PROGRAM_STATE_RETRACTING' => 6
                    ],
                    'class' => Ros2UrinterfacesMsgRuntimeState::class
                ],
                'Ros2UrinterfacesMsgSafetyStatus' => [
                    'symbol' => 'Ros2UrinterfacesMsgSafetyStatus',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/SafetyStatus',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4',
                    'minimum' => 13,
                    'maximum' => 141,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'int8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [
                        'NORMAL' => 1,
                        'REDUCED' => 2,
                        'PROTECTIVE_STOP' => 3,
                        'RECOVERY' => 4,
                        'SAFEGUARD_STOP' => 5,
                        'SYSTEM_EMERGENCY_STOP' => 6,
                        'ROBOT_EMERGENCY_STOP' => 7,
                        'VIOLATION' => 8,
                        'FAULT' => 9,
                        'VALIDATE_JOINT_ID' => 10,
                        'UNDEFINED_SAFETY_MODE' => 11,
                        'AUTOMATIC_MODE_SAFEGUARD_STOP' => 12,
                        'SYSTEM_THREE_POSITION_ENABLING_STOP' => 13,
                        'TP_THREE_POSITION_ENABLING_STOP' => 14,
                        'IMMI_EMERGENCY_STOP' => 15,
                        'IMMI_SAFEGUARD_STOP' => 16,
                        'PROFISAFE_WAITING_FOR_PARAMETERS' => 17,
                        'PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP' => 18,
                        'PROFISAFE_SAFEGUARD_STOP' => 19,
                        'PROFISAFE_EMERGENCY_STOP' => 20,
                        'SAFETY_API_SAFEGUARD_STOP' => 22,
                        'IO_PLANE_STOP' => 23
                    ],
                    'class' => Ros2UrinterfacesMsgSafetyStatus::class
                ],
                'Ros2UrinterfacesMsgSharedVariablesEditResponse' => [
                    'symbol' => 'Ros2UrinterfacesMsgSharedVariablesEditResponse',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/SharedVariablesEditResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212',
                    'minimum' => 5,
                    'maximum' => 1029,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'success',
                            'type' => 'bool',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'result_message',
                            'type' => 'Ros2Std_msgsMsgString',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgSharedVariablesEditResponse::class
                ],
                'Ros2UrinterfacesMsgSpeedSliderFraction' => [
                    'symbol' => 'Ros2UrinterfacesMsgSpeedSliderFraction',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/SpeedSliderFraction',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd',
                    'minimum' => 20,
                    'maximum' => 148,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgSpeedSliderFraction::class
                ],
                'Ros2UrinterfacesMsgTCPState' => [
                    'symbol' => 'Ros2UrinterfacesMsgTCPState',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/TCPState',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92',
                    'minimum' => 116,
                    'maximum' => 244,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'pose',
                            'type' => 'Ros2Geometry_msgsMsgPose',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 56
                        ],
                        [
                            'name' => 'speed',
                            'type' => 'Ros2Geometry_msgsMsgTwist',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 48
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgTCPState::class
                ],
                'Ros2UrinterfacesMsgToolOutputMode' => [
                    'symbol' => 'Ros2UrinterfacesMsgToolOutputMode',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/ToolOutputMode',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660',
                    'minimum' => 15,
                    'maximum' => 143,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'output_mode',
                            'type' => 'uint8',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'output_pin_mode',
                            'type' => 'uint8',
                            'array' => 'array',
                            'count' => 2,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [
                        'TOOL_OUTPUT' => 0,
                        'TOOL_POWER' => 1,
                        'TOOL_SAFE' => 2,
                        'OUTPUT_MODE_DISABLED' => 0,
                        'OUTPUT_MODE_SINKING' => 1,
                        'OUTPUT_MODE_SOURCING' => 2,
                        'OUTPUT_MODE_PUSH_PULL' => 3
                    ],
                    'class' => Ros2UrinterfacesMsgToolOutputMode::class
                ],
                'Ros2UrinterfacesMsgVariableUpdate' => [
                    'symbol' => 'Ros2UrinterfacesMsgVariableUpdate',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/VariableUpdate',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20',
                    'minimum' => 16,
                    'maximum' => 1168,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'Ros2UrinterfacesMsgJsonStringType',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgVariableUpdate::class
                ],
                'Ros2UrinterfacesMsgVoltageCurrentStamped' => [
                    'symbol' => 'Ros2UrinterfacesMsgVoltageCurrentStamped',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/VoltageCurrentStamped',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805',
                    'minimum' => 28,
                    'maximum' => 156,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'voltage',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'current',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgVoltageCurrentStamped::class
                ],
                'Ros2UrinterfacesMsgWorldModelNames' => [
                    'symbol' => 'Ros2UrinterfacesMsgWorldModelNames',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/msg/WorldModelNames',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9',
                    'minimum' => 16,
                    'maximum' => 16592,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'header',
                            'type' => 'Ros2Std_msgsMsgHeader',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'data',
                            'type' => 'Ros2Std_msgsMsgString',
                            'array' => 'sequence',
                            'count' => 16,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesMsgWorldModelNames::class
                ],
                'Ros2UrinterfacesSrvSetAnalogOutput_Request' => [
                    'symbol' => 'Ros2UrinterfacesSrvSetAnalogOutput_Request',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/SetAnalogOutput_Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d',
                    'minimum' => 4,
                    'maximum' => 100,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'data',
                            'type' => 'Ros2UrinterfacesMsgAnalog',
                            'array' => 'sequence',
                            'count' => 16,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 6
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvSetAnalogOutput_Request::class
                ],
                'Ros2UrinterfacesSrvSetAnalogOutput_Response' => [
                    'symbol' => 'Ros2UrinterfacesSrvSetAnalogOutput_Response',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/SetAnalogOutput_Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'success',
                            'type' => 'bool',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvSetAnalogOutput_Response::class
                ],
                'Ros2UrinterfacesSrvSetDigitalOutput_Request' => [
                    'symbol' => 'Ros2UrinterfacesSrvSetDigitalOutput_Request',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/SetDigitalOutput_Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47',
                    'minimum' => 4,
                    'maximum' => 36,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'data',
                            'type' => 'Ros2UrinterfacesMsgDigital',
                            'array' => 'sequence',
                            'count' => 16,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 2
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvSetDigitalOutput_Request::class
                ],
                'Ros2UrinterfacesSrvSetDigitalOutput_Response' => [
                    'symbol' => 'Ros2UrinterfacesSrvSetDigitalOutput_Response',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/SetDigitalOutput_Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'success',
                            'type' => 'bool',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvSetDigitalOutput_Response::class
                ],
                'Ros2UrinterfacesSrvSetSpeedFraction_Request' => [
                    'symbol' => 'Ros2UrinterfacesSrvSetSpeedFraction_Request',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/SetSpeedFraction_Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63',
                    'minimum' => 4,
                    'maximum' => 4,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'value',
                            'type' => 'float32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvSetSpeedFraction_Request::class
                ],
                'Ros2UrinterfacesSrvSetSpeedFraction_Response' => [
                    'symbol' => 'Ros2UrinterfacesSrvSetSpeedFraction_Response',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/SetSpeedFraction_Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'success',
                            'type' => 'bool',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvSetSpeedFraction_Response::class
                ],
                'Ros2UrinterfacesSrvSharedVariablesEditor_Request' => [
                    'symbol' => 'Ros2UrinterfacesSrvSharedVariablesEditor_Request',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/SharedVariablesEditor_Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3',
                    'minimum' => 4,
                    'maximum' => 1028,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'request',
                            'type' => 'Ros2UrinterfacesMsgJsonStringType',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvSharedVariablesEditor_Request::class
                ],
                'Ros2UrinterfacesSrvSharedVariablesEditor_Response' => [
                    'symbol' => 'Ros2UrinterfacesSrvSharedVariablesEditor_Response',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/SharedVariablesEditor_Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea',
                    'minimum' => 5,
                    'maximum' => 1029,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'response',
                            'type' => 'Ros2UrinterfacesMsgSharedVariablesEditResponse',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 5
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvSharedVariablesEditor_Response::class
                ],
                'Ros2UrinterfacesSrvVariablesViewer_Request' => [
                    'symbol' => 'Ros2UrinterfacesSrvVariablesViewer_Request',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/VariablesViewer_Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvVariablesViewer_Request::class
                ],
                'Ros2UrinterfacesSrvVariablesViewer_Response' => [
                    'symbol' => 'Ros2UrinterfacesSrvVariablesViewer_Response',
                    'ros_version' => 2,
                    'native_type' => 'urinterfaces/srv/VariablesViewer_Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2',
                    'minimum' => 16,
                    'maximum' => 1168,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'response',
                            'type' => 'Ros2UrinterfacesMsgVariableUpdate',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 16
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2UrinterfacesSrvVariablesViewer_Response::class
                ],
            ]);
        }
        return $wire;
    }
}
