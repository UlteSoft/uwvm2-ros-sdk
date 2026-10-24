<?php
declare(strict_types=1);
namespace Uwvm\DoosanDoosanRos1AwsSimulationComplete;
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @file records.php
 * @brief Complete vendor record classes; codec implementation is shared.
 */
/** @brief Complete original dsr_msgs/ConfigCreateModbusRequest value. */
final class Ros1Dsr_msgsConfigCreateModbusRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Original ip: string; scalar. */
    public mixed $ip;
    /** @brief Original port: int32; scalar. */
    public mixed $port;
    /** @brief Original reg_type: int8; scalar. */
    public mixed $reg_type;
    /** @brief Original index: int8; scalar. */
    public mixed $index;
    /** @brief Original value: int8; scalar. */
    public mixed $value;
    /** @brief Original slave_id: int32; scalar. */
    public mixed $slave_id;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
        $this->ip = '';
        $this->port = 0;
        $this->reg_type = 0;
        $this->index = 0;
        $this->value = 0;
        $this->slave_id = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigCreateModbusRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigCreateModbusRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigCreateModbusResponse value. */
final class Ros1Dsr_msgsConfigCreateModbusResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigCreateModbusResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigCreateModbusResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigCreateTcpRequest value. */
final class Ros1Dsr_msgsConfigCreateTcpRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigCreateTcpRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigCreateTcpRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigCreateTcpResponse value. */
final class Ros1Dsr_msgsConfigCreateTcpResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigCreateTcpResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigCreateTcpResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigCreateToolRequest value. */
final class Ros1Dsr_msgsConfigCreateToolRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Original weight: float64; scalar. */
    public mixed $weight;
    /** @brief Original cog: float64; array. */
    public mixed $cog;
    /** @brief Original inertia: float64; array. */
    public mixed $inertia;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
        $this->weight = 0.0;
        $this->cog = [];
        for ($i = 0; $i < 3; ++$i)
        {
            $this->cog[] = 0.0;
        }
        $this->inertia = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->inertia[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigCreateToolRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigCreateToolRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigCreateToolResponse value. */
final class Ros1Dsr_msgsConfigCreateToolResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigCreateToolResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigCreateToolResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigDeleteModbusRequest value. */
final class Ros1Dsr_msgsConfigDeleteModbusRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigDeleteModbusRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigDeleteModbusRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigDeleteModbusResponse value. */
final class Ros1Dsr_msgsConfigDeleteModbusResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigDeleteModbusResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigDeleteModbusResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigDeleteTcpRequest value. */
final class Ros1Dsr_msgsConfigDeleteTcpRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigDeleteTcpRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigDeleteTcpRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigDeleteTcpResponse value. */
final class Ros1Dsr_msgsConfigDeleteTcpResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigDeleteTcpResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigDeleteTcpResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigDeleteToolRequest value. */
final class Ros1Dsr_msgsConfigDeleteToolRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigDeleteToolRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigDeleteToolRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConfigDeleteToolResponse value. */
final class Ros1Dsr_msgsConfigDeleteToolResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsConfigDeleteToolResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConfigDeleteToolResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DrlPauseRequest value. */
final class Ros1Dsr_msgsDrlPauseRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsDrlPauseRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDrlPauseRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DrlPauseResponse value. */
final class Ros1Dsr_msgsDrlPauseResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsDrlPauseResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDrlPauseResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DrlResumeRequest value. */
final class Ros1Dsr_msgsDrlResumeRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsDrlResumeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDrlResumeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DrlResumeResponse value. */
final class Ros1Dsr_msgsDrlResumeResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsDrlResumeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDrlResumeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DrlStartRequest value. */
final class Ros1Dsr_msgsDrlStartRequest
{
    /** @brief Original robotSystem: int8; scalar. */
    public mixed $robotSystem;
    /** @brief Original code: string; scalar. */
    public mixed $code;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robotSystem = 0;
        $this->code = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsDrlStartRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDrlStartRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DrlStartResponse value. */
final class Ros1Dsr_msgsDrlStartResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsDrlStartResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDrlStartResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DrlStopRequest value. */
final class Ros1Dsr_msgsDrlStopRequest
{
    /** @brief Original stop_mode: int8; scalar. */
    public mixed $stop_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->stop_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsDrlStopRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDrlStopRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DrlStopResponse value. */
final class Ros1Dsr_msgsDrlStopResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsDrlStopResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDrlStopResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCtrlBoxAnalogInputRequest value. */
final class Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest
{
    /** @brief Original channel: int8; scalar. */
    public mixed $channel;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->channel = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCtrlBoxAnalogInputResponse value. */
final class Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse
{
    /** @brief Original value: float64; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCtrlBoxDigitalInputRequest value. */
final class Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest
{
    /** @brief Original index: int8; scalar. */
    public mixed $index;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->index = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCtrlBoxDigitalInputResponse value. */
final class Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse
{
    /** @brief Original value: bool; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentPoseRequest value. */
final class Ros1Dsr_msgsGetCurrentPoseRequest
{
    /** @brief Original space_type: int8; scalar. */
    public mixed $space_type;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->space_type = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentPoseRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentPoseRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentPoseResponse value. */
final class Ros1Dsr_msgsGetCurrentPoseResponse
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentPoseResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentPoseResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentSolutionSpaceRequest value. */
final class Ros1Dsr_msgsGetCurrentSolutionSpaceRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentSolutionSpaceRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentSolutionSpaceRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentSolutionSpaceResponse value. */
final class Ros1Dsr_msgsGetCurrentSolutionSpaceResponse
{
    /** @brief Original solution_space: int8; scalar. */
    public mixed $solution_space;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->solution_space = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentSolutionSpaceResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentSolutionSpaceResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentTcpRequest value. */
final class Ros1Dsr_msgsGetCurrentTcpRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentTcpRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentTcpRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentTcpResponse value. */
final class Ros1Dsr_msgsGetCurrentTcpResponse
{
    /** @brief Original info: string; scalar. */
    public mixed $info;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->info = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentTcpResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentTcpResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentToolRequest value. */
final class Ros1Dsr_msgsGetCurrentToolRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentToolRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentToolRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentToolResponse value. */
final class Ros1Dsr_msgsGetCurrentToolResponse
{
    /** @brief Original info: string; scalar. */
    public mixed $info;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->info = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentToolResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentToolResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDrlStateRequest value. */
final class Ros1Dsr_msgsGetDrlStateRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDrlStateRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDrlStateRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDrlStateResponse value. */
final class Ros1Dsr_msgsGetDrlStateResponse
{
    /** @brief Original drl_state: int8; scalar. */
    public mixed $drl_state;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->drl_state = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDrlStateResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDrlStateResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetExternalTorqueRequest value. */
final class Ros1Dsr_msgsGetExternalTorqueRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetExternalTorqueRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetExternalTorqueRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetExternalTorqueResponse value. */
final class Ros1Dsr_msgsGetExternalTorqueResponse
{
    /** @brief Original ext_torque: float64; array. */
    public mixed $ext_torque;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ext_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->ext_torque[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetExternalTorqueResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetExternalTorqueResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetJointTorqueRequest value. */
final class Ros1Dsr_msgsGetJointTorqueRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetJointTorqueRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetJointTorqueRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetJointTorqueResponse value. */
final class Ros1Dsr_msgsGetJointTorqueResponse
{
    /** @brief Original joint_torque: float64; array. */
    public mixed $joint_torque;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->joint_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->joint_torque[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetJointTorqueResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetJointTorqueResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetLastAlarmRequest value. */
final class Ros1Dsr_msgsGetLastAlarmRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetLastAlarmRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetLastAlarmRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/LogAlarm value. */
final class Ros1Dsr_msgsLogAlarm
{
    /** @brief Original level: int32; scalar. */
    public mixed $level;
    /** @brief Original group: int32; scalar. */
    public mixed $group;
    /** @brief Original index: int32; scalar. */
    public mixed $index;
    /** @brief Original param: string; array. */
    public mixed $param;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->level = 0;
        $this->group = 0;
        $this->index = 0;
        $this->param = [];
        for ($i = 0; $i < 3; ++$i)
        {
            $this->param[] = '';
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsLogAlarm', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsLogAlarm', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetLastAlarmResponse value. */
final class Ros1Dsr_msgsGetLastAlarmResponse
{
    /** @brief Original log_alarm: dsr_msgs/LogAlarm; scalar. */
    public mixed $log_alarm;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->log_alarm = new Ros1Dsr_msgsLogAlarm();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetLastAlarmResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetLastAlarmResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetModbusInputRequest value. */
final class Ros1Dsr_msgsGetModbusInputRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetModbusInputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetModbusInputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetModbusInputResponse value. */
final class Ros1Dsr_msgsGetModbusInputResponse
{
    /** @brief Original value: int32; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetModbusInputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetModbusInputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRobotModeRequest value. */
final class Ros1Dsr_msgsGetRobotModeRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRobotModeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRobotModeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRobotModeResponse value. */
final class Ros1Dsr_msgsGetRobotModeResponse
{
    /** @brief Original robot_mode: int8; scalar. */
    public mixed $robot_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRobotModeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRobotModeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRobotSpeedModeRequest value. */
final class Ros1Dsr_msgsGetRobotSpeedModeRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRobotSpeedModeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRobotSpeedModeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRobotSpeedModeResponse value. */
final class Ros1Dsr_msgsGetRobotSpeedModeResponse
{
    /** @brief Original speed_mode: int8; scalar. */
    public mixed $speed_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->speed_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRobotSpeedModeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRobotSpeedModeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRobotStateRequest value. */
final class Ros1Dsr_msgsGetRobotStateRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRobotStateRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRobotStateRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRobotStateResponse value. */
final class Ros1Dsr_msgsGetRobotStateResponse
{
    /** @brief Original robot_state: int8; scalar. */
    public mixed $robot_state;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_state = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRobotStateResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRobotStateResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRobotSystemRequest value. */
final class Ros1Dsr_msgsGetRobotSystemRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRobotSystemRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRobotSystemRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRobotSystemResponse value. */
final class Ros1Dsr_msgsGetRobotSystemResponse
{
    /** @brief Original robot_system: int8; scalar. */
    public mixed $robot_system;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_system = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRobotSystemResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRobotSystemResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetToolDigitalInputRequest value. */
final class Ros1Dsr_msgsGetToolDigitalInputRequest
{
    /** @brief Original index: int8; scalar. */
    public mixed $index;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->index = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetToolDigitalInputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetToolDigitalInputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetToolDigitalInputResponse value. */
final class Ros1Dsr_msgsGetToolDigitalInputResponse
{
    /** @brief Original value: bool; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetToolDigitalInputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetToolDigitalInputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetToolForceRequest value. */
final class Ros1Dsr_msgsGetToolForceRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetToolForceRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetToolForceRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetToolForceResponse value. */
final class Ros1Dsr_msgsGetToolForceResponse
{
    /** @brief Original tool_force: float64; array. */
    public mixed $tool_force;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->tool_force = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->tool_force[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetToolForceResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetToolForceResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/JogRequest value. */
final class Ros1Dsr_msgsJogRequest
{
    /** @brief Original jog_axis: int8; scalar. */
    public mixed $jog_axis;
    /** @brief Original move_reference: int8; scalar. */
    public mixed $move_reference;
    /** @brief Original speed: float64; scalar. */
    public mixed $speed;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->jog_axis = 0;
        $this->move_reference = 0;
        $this->speed = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsJogRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsJogRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/JogResponse value. */
final class Ros1Dsr_msgsJogResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsJogResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsJogResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/JogMultiRequest value. */
final class Ros1Dsr_msgsJogMultiRequest
{
    /** @brief Original jog_axis: float64; array. */
    public mixed $jog_axis;
    /** @brief Original move_reference: int8; scalar. */
    public mixed $move_reference;
    /** @brief Original speed: float64; scalar. */
    public mixed $speed;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->jog_axis = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->jog_axis[] = 0.0;
        }
        $this->move_reference = 0;
        $this->speed = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsJogMultiRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsJogMultiRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/JogMultiResponse value. */
final class Ros1Dsr_msgsJogMultiResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsJogMultiResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsJogMultiResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/JogMultiAxis value. */
final class Ros1Dsr_msgsJogMultiAxis
{
    /** @brief Original jog_axis: float64; array. */
    public mixed $jog_axis;
    /** @brief Original move_reference: int8; scalar. */
    public mixed $move_reference;
    /** @brief Original speed: float64; scalar. */
    public mixed $speed;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->jog_axis = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->jog_axis[] = 0.0;
        }
        $this->move_reference = 0;
        $this->speed = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsJogMultiAxis', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsJogMultiAxis', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ModbusState value. */
final class Ros1Dsr_msgsModbusState
{
    /** @brief Original modbus_symbol: string; scalar. */
    public mixed $modbus_symbol;
    /** @brief Original modbus_value: int32; scalar. */
    public mixed $modbus_value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->modbus_symbol = '';
        $this->modbus_value = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsModbusState', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsModbusState', $bytes);
    }
}
/** @brief Complete original std_msgs/MultiArrayDimension value. */
final class Ros1Std_msgsMultiArrayDimension
{
    /** @brief Original label: string; scalar. */
    public mixed $label;
    /** @brief Original size: uint32; scalar. */
    public mixed $size;
    /** @brief Original stride: uint32; scalar. */
    public mixed $stride;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->label = '';
        $this->size = Word::fromDecimal('0', 4, false);
        $this->stride = Word::fromDecimal('0', 4, false);
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Std_msgsMultiArrayDimension', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Std_msgsMultiArrayDimension', $bytes);
    }
}
/** @brief Complete original std_msgs/MultiArrayLayout value. */
final class Ros1Std_msgsMultiArrayLayout
{
    /** @brief Original dim: std_msgs/MultiArrayDimension; sequence. */
    public mixed $dim;
    /** @brief Original data_offset: uint32; scalar. */
    public mixed $data_offset;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->dim = [];
        $this->data_offset = Word::fromDecimal('0', 4, false);
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Std_msgsMultiArrayLayout', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Std_msgsMultiArrayLayout', $bytes);
    }
}
/** @brief Complete original std_msgs/Float64MultiArray value. */
final class Ros1Std_msgsFloat64MultiArray
{
    /** @brief Original layout: std_msgs/MultiArrayLayout; scalar. */
    public mixed $layout;
    /** @brief Original data: float64; sequence. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->layout = new Ros1Std_msgsMultiArrayLayout();
        $this->data = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Std_msgsFloat64MultiArray', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Std_msgsFloat64MultiArray', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveBlendingRequest value. */
final class Ros1Dsr_msgsMoveBlendingRequest
{
    /** @brief Original segment: std_msgs/Float64MultiArray; sequence. */
    public mixed $segment;
    /** @brief Original posCnt: int8; scalar. */
    public mixed $posCnt;
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original syncType: int8; scalar. */
    public mixed $syncType;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->segment = [];
        $this->posCnt = 0;
        $this->vel = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
        $this->ref = 0;
        $this->mode = 0;
        $this->syncType = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveBlendingRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveBlendingRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveBlendingResponse value. */
final class Ros1Dsr_msgsMoveBlendingResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveBlendingResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveBlendingResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveCircleRequest value. */
final class Ros1Dsr_msgsMoveCircleRequest
{
    /** @brief Original pos: std_msgs/Float64MultiArray; sequence. */
    public mixed $pos;
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Original radius: float64; scalar. */
    public mixed $radius;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original angle1: float64; scalar. */
    public mixed $angle1;
    /** @brief Original angle2: float64; scalar. */
    public mixed $angle2;
    /** @brief Original blendType: int8; scalar. */
    public mixed $blendType;
    /** @brief Original syncType: int8; scalar. */
    public mixed $syncType;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        $this->vel = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
        $this->radius = 0.0;
        $this->ref = 0;
        $this->mode = 0;
        $this->angle1 = 0.0;
        $this->angle2 = 0.0;
        $this->blendType = 0;
        $this->syncType = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveCircleRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveCircleRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveCircleResponse value. */
final class Ros1Dsr_msgsMoveCircleResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveCircleResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveCircleResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveJointRequest value. */
final class Ros1Dsr_msgsMoveJointRequest
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original vel: float64; scalar. */
    public mixed $vel;
    /** @brief Original acc: float64; scalar. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Original radius: float64; scalar. */
    public mixed $radius;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original blendType: int8; scalar. */
    public mixed $blendType;
    /** @brief Original syncType: int8; scalar. */
    public mixed $syncType;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->vel = 0.0;
        $this->acc = 0.0;
        $this->time = 0.0;
        $this->radius = 0.0;
        $this->mode = 0;
        $this->blendType = 0;
        $this->syncType = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveJointRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveJointRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveJointResponse value. */
final class Ros1Dsr_msgsMoveJointResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveJointResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveJointResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveJointxRequest value. */
final class Ros1Dsr_msgsMoveJointxRequest
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original vel: float64; scalar. */
    public mixed $vel;
    /** @brief Original acc: float64; scalar. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Original radius: float64; scalar. */
    public mixed $radius;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original blendType: int8; scalar. */
    public mixed $blendType;
    /** @brief Original sol: int8; scalar. */
    public mixed $sol;
    /** @brief Original syncType: int8; scalar. */
    public mixed $syncType;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->vel = 0.0;
        $this->acc = 0.0;
        $this->time = 0.0;
        $this->radius = 0.0;
        $this->ref = 0;
        $this->mode = 0;
        $this->blendType = 0;
        $this->sol = 0;
        $this->syncType = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveJointxRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveJointxRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveJointxResponse value. */
final class Ros1Dsr_msgsMoveJointxResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveJointxResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveJointxResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveLineRequest value. */
final class Ros1Dsr_msgsMoveLineRequest
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Original radius: float64; scalar. */
    public mixed $radius;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original blendType: int8; scalar. */
    public mixed $blendType;
    /** @brief Original syncType: int8; scalar. */
    public mixed $syncType;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->vel = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
        $this->radius = 0.0;
        $this->ref = 0;
        $this->mode = 0;
        $this->blendType = 0;
        $this->syncType = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveLineRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveLineRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveLineResponse value. */
final class Ros1Dsr_msgsMoveLineResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveLineResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveLineResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MovePauseRequest value. */
final class Ros1Dsr_msgsMovePauseRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMovePauseRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMovePauseRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MovePauseResponse value. */
final class Ros1Dsr_msgsMovePauseResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMovePauseResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMovePauseResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MovePeriodicRequest value. */
final class Ros1Dsr_msgsMovePeriodicRequest
{
    /** @brief Original amp: float64; array. */
    public mixed $amp;
    /** @brief Original periodic: float64; array. */
    public mixed $periodic;
    /** @brief Original acc: float64; scalar. */
    public mixed $acc;
    /** @brief Original repeat: int8; scalar. */
    public mixed $repeat;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original syncType: int8; scalar. */
    public mixed $syncType;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->amp = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->amp[] = 0.0;
        }
        $this->periodic = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->periodic[] = 0.0;
        }
        $this->acc = 0.0;
        $this->repeat = 0;
        $this->ref = 0;
        $this->syncType = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMovePeriodicRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMovePeriodicRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MovePeriodicResponse value. */
final class Ros1Dsr_msgsMovePeriodicResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMovePeriodicResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMovePeriodicResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveResumeRequest value. */
final class Ros1Dsr_msgsMoveResumeRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveResumeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveResumeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveResumeResponse value. */
final class Ros1Dsr_msgsMoveResumeResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveResumeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveResumeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveSpiralRequest value. */
final class Ros1Dsr_msgsMoveSpiralRequest
{
    /** @brief Original revolution: float64; scalar. */
    public mixed $revolution;
    /** @brief Original maxRadius: float64; scalar. */
    public mixed $maxRadius;
    /** @brief Original maxLength: float64; scalar. */
    public mixed $maxLength;
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Original taskAxis: int8; scalar. */
    public mixed $taskAxis;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original syncType: int8; scalar. */
    public mixed $syncType;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->revolution = 0.0;
        $this->maxRadius = 0.0;
        $this->maxLength = 0.0;
        $this->vel = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
        $this->taskAxis = 0;
        $this->ref = 0;
        $this->syncType = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveSpiralRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveSpiralRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveSpiralResponse value. */
final class Ros1Dsr_msgsMoveSpiralResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveSpiralResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveSpiralResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveSplineJointRequest value. */
final class Ros1Dsr_msgsMoveSplineJointRequest
{
    /** @brief Original pos: std_msgs/Float64MultiArray; sequence. */
    public mixed $pos;
    /** @brief Original posCnt: int8; scalar. */
    public mixed $posCnt;
    /** @brief Original vel: float64; scalar. */
    public mixed $vel;
    /** @brief Original acc: float64; scalar. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original syncType: int8; scalar. */
    public mixed $syncType;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        $this->posCnt = 0;
        $this->vel = 0.0;
        $this->acc = 0.0;
        $this->time = 0.0;
        $this->mode = 0;
        $this->syncType = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveSplineJointRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveSplineJointRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveSplineJointResponse value. */
final class Ros1Dsr_msgsMoveSplineJointResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveSplineJointResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveSplineJointResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveSplineTaskRequest value. */
final class Ros1Dsr_msgsMoveSplineTaskRequest
{
    /** @brief Original pos: std_msgs/Float64MultiArray; sequence. */
    public mixed $pos;
    /** @brief Original posCnt: int8; scalar. */
    public mixed $posCnt;
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original opt: int8; scalar. */
    public mixed $opt;
    /** @brief Original syncType: int8; scalar. */
    public mixed $syncType;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        $this->posCnt = 0;
        $this->vel = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
        $this->ref = 0;
        $this->mode = 0;
        $this->opt = 0;
        $this->syncType = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveSplineTaskRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveSplineTaskRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveSplineTaskResponse value. */
final class Ros1Dsr_msgsMoveSplineTaskResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveSplineTaskResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveSplineTaskResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveStopRequest value. */
final class Ros1Dsr_msgsMoveStopRequest
{
    /** @brief Original stop_mode: int32; scalar. */
    public mixed $stop_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->stop_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveStopRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveStopRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveStopResponse value. */
final class Ros1Dsr_msgsMoveStopResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveStopResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveStopResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveWaitRequest value. */
final class Ros1Dsr_msgsMoveWaitRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveWaitRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveWaitRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveWaitResponse value. */
final class Ros1Dsr_msgsMoveWaitResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveWaitResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveWaitResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/RobotError value. */
final class Ros1Dsr_msgsRobotError
{
    /** @brief Original level: int32; scalar. */
    public mixed $level;
    /** @brief Original group: int32; scalar. */
    public mixed $group;
    /** @brief Original code: int32; scalar. */
    public mixed $code;
    /** @brief Original msg1: string; scalar. */
    public mixed $msg1;
    /** @brief Original msg2: string; scalar. */
    public mixed $msg2;
    /** @brief Original msg3: string; scalar. */
    public mixed $msg3;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->level = 0;
        $this->group = 0;
        $this->code = 0;
        $this->msg1 = '';
        $this->msg2 = '';
        $this->msg3 = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotError', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotError', $bytes);
    }
}
/** @brief Complete original dsr_msgs/RobotState value. */
final class Ros1Dsr_msgsRobotState
{
    /** @brief Original robot_state: int32; scalar. */
    public mixed $robot_state;
    /** @brief Original robot_state_str: string; scalar. */
    public mixed $robot_state_str;
    /** @brief Original actual_mode: int8; scalar. */
    public mixed $actual_mode;
    /** @brief Original actual_space: int8; scalar. */
    public mixed $actual_space;
    /** @brief Original current_posj: float64; array. */
    public mixed $current_posj;
    /** @brief Original current_velj: float64; array. */
    public mixed $current_velj;
    /** @brief Original joint_abs: float64; array. */
    public mixed $joint_abs;
    /** @brief Original joint_err: float64; array. */
    public mixed $joint_err;
    /** @brief Original target_posj: float64; array. */
    public mixed $target_posj;
    /** @brief Original target_velj: float64; array. */
    public mixed $target_velj;
    /** @brief Original current_posx: float64; array. */
    public mixed $current_posx;
    /** @brief Original current_velx: float64; array. */
    public mixed $current_velx;
    /** @brief Original task_err: float64; array. */
    public mixed $task_err;
    /** @brief Original target_velx: float64; array. */
    public mixed $target_velx;
    /** @brief Original target_posx: float64; array. */
    public mixed $target_posx;
    /** @brief Original solution_space: int8; scalar. */
    public mixed $solution_space;
    /** @brief Original rotation_matrix: std_msgs/Float64MultiArray; sequence. */
    public mixed $rotation_matrix;
    /** @brief Original dynamic_tor: float64; array. */
    public mixed $dynamic_tor;
    /** @brief Original actual_jts: float64; array. */
    public mixed $actual_jts;
    /** @brief Original actual_ejt: float64; array. */
    public mixed $actual_ejt;
    /** @brief Original actual_ett: float64; array. */
    public mixed $actual_ett;
    /** @brief Original sync_time: float64; scalar. */
    public mixed $sync_time;
    /** @brief Original actual_bk: int8; array. */
    public mixed $actual_bk;
    /** @brief Original actual_bt: int8; array. */
    public mixed $actual_bt;
    /** @brief Original actual_mc: float64; array. */
    public mixed $actual_mc;
    /** @brief Original actual_mt: float64; array. */
    public mixed $actual_mt;
    /** @brief Original ctrlbox_digital_input: int8; array. */
    public mixed $ctrlbox_digital_input;
    /** @brief Original ctrlbox_digital_output: int8; array. */
    public mixed $ctrlbox_digital_output;
    /** @brief Original flange_digital_input: int8; array. */
    public mixed $flange_digital_input;
    /** @brief Original flange_digital_output: int8; array. */
    public mixed $flange_digital_output;
    /** @brief Original modbus_state: dsr_msgs/ModbusState; sequence. */
    public mixed $modbus_state;
    /** @brief Original access_control: int32; scalar. */
    public mixed $access_control;
    /** @brief Original homming_completed: bool; scalar. */
    public mixed $homming_completed;
    /** @brief Original tp_initialized: bool; scalar. */
    public mixed $tp_initialized;
    /** @brief Original mastering_need: int8; scalar. */
    public mixed $mastering_need;
    /** @brief Original drl_stopped: bool; scalar. */
    public mixed $drl_stopped;
    /** @brief Original disconnected: bool; scalar. */
    public mixed $disconnected;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_state = 0;
        $this->robot_state_str = '';
        $this->actual_mode = 0;
        $this->actual_space = 0;
        $this->current_posj = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->current_posj[] = 0.0;
        }
        $this->current_velj = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->current_velj[] = 0.0;
        }
        $this->joint_abs = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->joint_abs[] = 0.0;
        }
        $this->joint_err = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->joint_err[] = 0.0;
        }
        $this->target_posj = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_posj[] = 0.0;
        }
        $this->target_velj = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_velj[] = 0.0;
        }
        $this->current_posx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->current_posx[] = 0.0;
        }
        $this->current_velx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->current_velx[] = 0.0;
        }
        $this->task_err = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->task_err[] = 0.0;
        }
        $this->target_velx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_velx[] = 0.0;
        }
        $this->target_posx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_posx[] = 0.0;
        }
        $this->solution_space = 0;
        $this->rotation_matrix = [];
        $this->dynamic_tor = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->dynamic_tor[] = 0.0;
        }
        $this->actual_jts = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_jts[] = 0.0;
        }
        $this->actual_ejt = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_ejt[] = 0.0;
        }
        $this->actual_ett = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_ett[] = 0.0;
        }
        $this->sync_time = 0.0;
        $this->actual_bk = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_bk[] = 0;
        }
        $this->actual_bt = [];
        for ($i = 0; $i < 5; ++$i)
        {
            $this->actual_bt[] = 0;
        }
        $this->actual_mc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_mc[] = 0.0;
        }
        $this->actual_mt = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_mt[] = 0.0;
        }
        $this->ctrlbox_digital_input = [];
        for ($i = 0; $i < 16; ++$i)
        {
            $this->ctrlbox_digital_input[] = 0;
        }
        $this->ctrlbox_digital_output = [];
        for ($i = 0; $i < 16; ++$i)
        {
            $this->ctrlbox_digital_output[] = 0;
        }
        $this->flange_digital_input = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->flange_digital_input[] = 0;
        }
        $this->flange_digital_output = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->flange_digital_output[] = 0;
        }
        $this->modbus_state = [];
        $this->access_control = 0;
        $this->homming_completed = false;
        $this->tp_initialized = false;
        $this->mastering_need = 0;
        $this->drl_stopped = false;
        $this->disconnected = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotState', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotState', $bytes);
    }
}
/** @brief Complete original dsr_msgs/RobotStop value. */
final class Ros1Dsr_msgsRobotStop
{
    /** @brief Original stop_mode: int32; scalar. */
    public mixed $stop_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->stop_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotStop', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotStop', $bytes);
    }
}
/** @brief Complete original dsr_msgs/Robotiq2FCloseRequest value. */
final class Ros1Dsr_msgsRobotiq2FCloseRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotiq2FCloseRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotiq2FCloseRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/Robotiq2FCloseResponse value. */
final class Ros1Dsr_msgsRobotiq2FCloseResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotiq2FCloseResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotiq2FCloseResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/Robotiq2FMoveRequest value. */
final class Ros1Dsr_msgsRobotiq2FMoveRequest
{
    /** @brief Original width: float64; scalar. */
    public mixed $width;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->width = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotiq2FMoveRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotiq2FMoveRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/Robotiq2FMoveResponse value. */
final class Ros1Dsr_msgsRobotiq2FMoveResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotiq2FMoveResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotiq2FMoveResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/Robotiq2FOpenRequest value. */
final class Ros1Dsr_msgsRobotiq2FOpenRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotiq2FOpenRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotiq2FOpenRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/Robotiq2FOpenResponse value. */
final class Ros1Dsr_msgsRobotiq2FOpenResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotiq2FOpenResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotiq2FOpenResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SerialSendDataRequest value. */
final class Ros1Dsr_msgsSerialSendDataRequest
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSerialSendDataRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSerialSendDataRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SerialSendDataResponse value. */
final class Ros1Dsr_msgsSerialSendDataResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSerialSendDataResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSerialSendDataResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogInputTypeRequest value. */
final class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest
{
    /** @brief Original channel: int8; scalar. */
    public mixed $channel;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->channel = 0;
        $this->mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogInputTypeResponse value. */
final class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogOutputRequest value. */
final class Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest
{
    /** @brief Original channel: int8; scalar. */
    public mixed $channel;
    /** @brief Original value: float64; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->channel = 0;
        $this->value = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogOutputResponse value. */
final class Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest value. */
final class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest
{
    /** @brief Original channel: int8; scalar. */
    public mixed $channel;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->channel = 0;
        $this->mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse value. */
final class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCtrlBoxDigitalOutputRequest value. */
final class Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest
{
    /** @brief Original index: int8; scalar. */
    public mixed $index;
    /** @brief Original value: int8; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->index = 0;
        $this->value = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCtrlBoxDigitalOutputResponse value. */
final class Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCurrentTcpRequest value. */
final class Ros1Dsr_msgsSetCurrentTcpRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCurrentTcpRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCurrentTcpRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCurrentTcpResponse value. */
final class Ros1Dsr_msgsSetCurrentTcpResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCurrentTcpResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCurrentTcpResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCurrentToolRequest value. */
final class Ros1Dsr_msgsSetCurrentToolRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCurrentToolRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCurrentToolRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetCurrentToolResponse value. */
final class Ros1Dsr_msgsSetCurrentToolResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetCurrentToolResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetCurrentToolResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetModbusOutputRequest value. */
final class Ros1Dsr_msgsSetModbusOutputRequest
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Original value: int32; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
        $this->value = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetModbusOutputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetModbusOutputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetModbusOutputResponse value. */
final class Ros1Dsr_msgsSetModbusOutputResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetModbusOutputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetModbusOutputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRobotModeRequest value. */
final class Ros1Dsr_msgsSetRobotModeRequest
{
    /** @brief Original robot_mode: int8; scalar. */
    public mixed $robot_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRobotModeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRobotModeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRobotModeResponse value. */
final class Ros1Dsr_msgsSetRobotModeResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRobotModeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRobotModeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRobotSpeedModeRequest value. */
final class Ros1Dsr_msgsSetRobotSpeedModeRequest
{
    /** @brief Original speed_mode: int8; scalar. */
    public mixed $speed_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->speed_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRobotSpeedModeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRobotSpeedModeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRobotSpeedModeResponse value. */
final class Ros1Dsr_msgsSetRobotSpeedModeResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRobotSpeedModeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRobotSpeedModeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRobotSystemRequest value. */
final class Ros1Dsr_msgsSetRobotSystemRequest
{
    /** @brief Original robot_system: int8; scalar. */
    public mixed $robot_system;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_system = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRobotSystemRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRobotSystemRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRobotSystemResponse value. */
final class Ros1Dsr_msgsSetRobotSystemResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRobotSystemResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRobotSystemResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetSafeStopResetTypeRequest value. */
final class Ros1Dsr_msgsSetSafeStopResetTypeRequest
{
    /** @brief Original reset_type: int8; scalar. */
    public mixed $reset_type;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->reset_type = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetSafeStopResetTypeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetSafeStopResetTypeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetSafeStopResetTypeResponse value. */
final class Ros1Dsr_msgsSetSafeStopResetTypeResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetSafeStopResetTypeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetSafeStopResetTypeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetToolDigitalOutputRequest value. */
final class Ros1Dsr_msgsSetToolDigitalOutputRequest
{
    /** @brief Original index: int8; scalar. */
    public mixed $index;
    /** @brief Original value: int8; scalar. */
    public mixed $value;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->index = 0;
        $this->value = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetToolDigitalOutputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetToolDigitalOutputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetToolDigitalOutputResponse value. */
final class Ros1Dsr_msgsSetToolDigitalOutputResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetToolDigitalOutputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetToolDigitalOutputResponse', $bytes);
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
                'Ros1Dsr_msgsConfigCreateModbusRequest' => [
                    'symbol' => 'Ros1Dsr_msgsConfigCreateModbusRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigCreateModbusRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f',
                    'minimum' => 19,
                    'maximum' => 531,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                        ],
                        [
                            'name' => 'ip',
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
                        ],
                        [
                            'name' => 'port',
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
                            'name' => 'reg_type',
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
                            'name' => 'index',
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
                            'name' => 'value',
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
                            'name' => 'slave_id',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsConfigCreateModbusRequest::class
                ],
                'Ros1Dsr_msgsConfigCreateModbusResponse' => [
                    'symbol' => 'Ros1Dsr_msgsConfigCreateModbusResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigCreateModbusResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f',
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
                    'class' => Ros1Dsr_msgsConfigCreateModbusResponse::class
                ],
                'Ros1Dsr_msgsConfigCreateTcpRequest' => [
                    'symbol' => 'Ros1Dsr_msgsConfigCreateTcpRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigCreateTcpRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744',
                    'minimum' => 52,
                    'maximum' => 308,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                        ],
                        [
                            'name' => 'pos',
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
                    'class' => Ros1Dsr_msgsConfigCreateTcpRequest::class
                ],
                'Ros1Dsr_msgsConfigCreateTcpResponse' => [
                    'symbol' => 'Ros1Dsr_msgsConfigCreateTcpResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigCreateTcpResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948',
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
                    'class' => Ros1Dsr_msgsConfigCreateTcpResponse::class
                ],
                'Ros1Dsr_msgsConfigCreateToolRequest' => [
                    'symbol' => 'Ros1Dsr_msgsConfigCreateToolRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigCreateToolRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44',
                    'minimum' => 84,
                    'maximum' => 340,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                        ],
                        [
                            'name' => 'weight',
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
                            'name' => 'cog',
                            'type' => 'float64',
                            'array' => 'array',
                            'count' => 3,
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
                            'name' => 'inertia',
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
                    'class' => Ros1Dsr_msgsConfigCreateToolRequest::class
                ],
                'Ros1Dsr_msgsConfigCreateToolResponse' => [
                    'symbol' => 'Ros1Dsr_msgsConfigCreateToolResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigCreateToolResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b',
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
                    'class' => Ros1Dsr_msgsConfigCreateToolResponse::class
                ],
                'Ros1Dsr_msgsConfigDeleteModbusRequest' => [
                    'symbol' => 'Ros1Dsr_msgsConfigDeleteModbusRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigDeleteModbusRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                    'class' => Ros1Dsr_msgsConfigDeleteModbusRequest::class
                ],
                'Ros1Dsr_msgsConfigDeleteModbusResponse' => [
                    'symbol' => 'Ros1Dsr_msgsConfigDeleteModbusResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigDeleteModbusResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e',
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
                    'class' => Ros1Dsr_msgsConfigDeleteModbusResponse::class
                ],
                'Ros1Dsr_msgsConfigDeleteTcpRequest' => [
                    'symbol' => 'Ros1Dsr_msgsConfigDeleteTcpRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigDeleteTcpRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                    'class' => Ros1Dsr_msgsConfigDeleteTcpRequest::class
                ],
                'Ros1Dsr_msgsConfigDeleteTcpResponse' => [
                    'symbol' => 'Ros1Dsr_msgsConfigDeleteTcpResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigDeleteTcpResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5',
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
                    'class' => Ros1Dsr_msgsConfigDeleteTcpResponse::class
                ],
                'Ros1Dsr_msgsConfigDeleteToolRequest' => [
                    'symbol' => 'Ros1Dsr_msgsConfigDeleteToolRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigDeleteToolRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                    'class' => Ros1Dsr_msgsConfigDeleteToolRequest::class
                ],
                'Ros1Dsr_msgsConfigDeleteToolResponse' => [
                    'symbol' => 'Ros1Dsr_msgsConfigDeleteToolResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConfigDeleteToolResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780',
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
                    'class' => Ros1Dsr_msgsConfigDeleteToolResponse::class
                ],
                'Ros1Dsr_msgsDrlPauseRequest' => [
                    'symbol' => 'Ros1Dsr_msgsDrlPauseRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DrlPauseRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsDrlPauseRequest::class
                ],
                'Ros1Dsr_msgsDrlPauseResponse' => [
                    'symbol' => 'Ros1Dsr_msgsDrlPauseResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DrlPauseResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb',
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
                    'class' => Ros1Dsr_msgsDrlPauseResponse::class
                ],
                'Ros1Dsr_msgsDrlResumeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsDrlResumeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DrlResumeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsDrlResumeRequest::class
                ],
                'Ros1Dsr_msgsDrlResumeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsDrlResumeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DrlResumeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a',
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
                    'class' => Ros1Dsr_msgsDrlResumeResponse::class
                ],
                'Ros1Dsr_msgsDrlStartRequest' => [
                    'symbol' => 'Ros1Dsr_msgsDrlStartRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DrlStartRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65',
                    'minimum' => 5,
                    'maximum' => 261,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robotSystem',
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
                            'name' => 'code',
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
                    'class' => Ros1Dsr_msgsDrlStartRequest::class
                ],
                'Ros1Dsr_msgsDrlStartResponse' => [
                    'symbol' => 'Ros1Dsr_msgsDrlStartResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DrlStartResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76',
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
                    'class' => Ros1Dsr_msgsDrlStartResponse::class
                ],
                'Ros1Dsr_msgsDrlStopRequest' => [
                    'symbol' => 'Ros1Dsr_msgsDrlStopRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DrlStopRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'stop_mode',
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
                    'class' => Ros1Dsr_msgsDrlStopRequest::class
                ],
                'Ros1Dsr_msgsDrlStopResponse' => [
                    'symbol' => 'Ros1Dsr_msgsDrlStopResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DrlStopResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988',
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
                    'class' => Ros1Dsr_msgsDrlStopResponse::class
                ],
                'Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCtrlBoxAnalogInputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'channel',
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
                    'class' => Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest::class
                ],
                'Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCtrlBoxAnalogInputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_53fc14db79f9c63ee04e5e055961e397d6ceefa553e0912c4c944f858376b4b2',
                    'minimum' => 8,
                    'maximum' => 8,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'value',
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
                    'class' => Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse::class
                ],
                'Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCtrlBoxDigitalInputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'index',
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
                    'class' => Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest::class
                ],
                'Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCtrlBoxDigitalInputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_b24172ba7a1d82456b33bcbfccde50c1e0a40d4ce870dae704c00a553591a6a2',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'value',
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
                    'class' => Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentPoseRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentPoseRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentPoseRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'space_type',
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
                    'class' => Ros1Dsr_msgsGetCurrentPoseRequest::class
                ],
                'Ros1Dsr_msgsGetCurrentPoseResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentPoseResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentPoseResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_cae2a551df6b2c548e171cdb181bbbe1fcbfe9fc3039b68f4edab2043ef8b9d6',
                    'minimum' => 48,
                    'maximum' => 48,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pos',
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
                    'class' => Ros1Dsr_msgsGetCurrentPoseResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentSolutionSpaceRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentSolutionSpaceRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentSolutionSpaceRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetCurrentSolutionSpaceRequest::class
                ],
                'Ros1Dsr_msgsGetCurrentSolutionSpaceResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentSolutionSpaceResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentSolutionSpaceResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_57e390c7f039b26fc69fe35d07420ee94084ce9d9531e7e8c6d6a09729b5986f',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'solution_space',
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
                    'class' => Ros1Dsr_msgsGetCurrentSolutionSpaceResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentTcpRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentTcpRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentTcpRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetCurrentTcpRequest::class
                ],
                'Ros1Dsr_msgsGetCurrentTcpResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentTcpResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentTcpResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_8076cd565188d0adcda508a0637b240969a434a924daeed7cf3b7e442b901ee3',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'info',
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
                    'class' => Ros1Dsr_msgsGetCurrentTcpResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentToolRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentToolRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentToolRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetCurrentToolRequest::class
                ],
                'Ros1Dsr_msgsGetCurrentToolResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentToolResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentToolResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_8afef46263fd34fe71e4c33d9add7d71672cb9d95aa237a60e17c3c3cdd58e43',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'info',
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
                    'class' => Ros1Dsr_msgsGetCurrentToolResponse::class
                ],
                'Ros1Dsr_msgsGetDrlStateRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetDrlStateRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDrlStateRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetDrlStateRequest::class
                ],
                'Ros1Dsr_msgsGetDrlStateResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetDrlStateResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDrlStateResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d8238b34c53f1da07057059fadfc1bbc767be38453b0410a90bccb84d99d1a94',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'drl_state',
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
                    'class' => Ros1Dsr_msgsGetDrlStateResponse::class
                ],
                'Ros1Dsr_msgsGetExternalTorqueRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetExternalTorqueRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetExternalTorqueRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetExternalTorqueRequest::class
                ],
                'Ros1Dsr_msgsGetExternalTorqueResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetExternalTorqueResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetExternalTorqueResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_52c063acee790649e0e439390ee3c8bd4e7ac2a124911093ba0fd00f06a07ff2',
                    'minimum' => 48,
                    'maximum' => 48,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'ext_torque',
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
                    'class' => Ros1Dsr_msgsGetExternalTorqueResponse::class
                ],
                'Ros1Dsr_msgsGetJointTorqueRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetJointTorqueRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetJointTorqueRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetJointTorqueRequest::class
                ],
                'Ros1Dsr_msgsGetJointTorqueResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetJointTorqueResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetJointTorqueResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_25bda80075428cb48858ba2ab3d38b52d4fe631596e919c001cf1a4f96391bf1',
                    'minimum' => 48,
                    'maximum' => 48,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'joint_torque',
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
                    'class' => Ros1Dsr_msgsGetJointTorqueResponse::class
                ],
                'Ros1Dsr_msgsGetLastAlarmRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetLastAlarmRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetLastAlarmRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetLastAlarmRequest::class
                ],
                'Ros1Dsr_msgsLogAlarm' => [
                    'symbol' => 'Ros1Dsr_msgsLogAlarm',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/LogAlarm',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f',
                    'minimum' => 24,
                    'maximum' => 792,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'level',
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
                            'name' => 'group',
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
                            'name' => 'index',
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
                            'name' => 'param',
                            'type' => 'string',
                            'array' => 'array',
                            'count' => 3,
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
                    'class' => Ros1Dsr_msgsLogAlarm::class
                ],
                'Ros1Dsr_msgsGetLastAlarmResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetLastAlarmResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetLastAlarmResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_cbf970486efc6fc6dbda7ecfd673f3642f228b27e1a406156d2592d71467995c',
                    'minimum' => 24,
                    'maximum' => 792,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'log_alarm',
                            'type' => 'Ros1Dsr_msgsLogAlarm',
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
                    'class' => Ros1Dsr_msgsGetLastAlarmResponse::class
                ],
                'Ros1Dsr_msgsGetModbusInputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetModbusInputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetModbusInputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                    'class' => Ros1Dsr_msgsGetModbusInputRequest::class
                ],
                'Ros1Dsr_msgsGetModbusInputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetModbusInputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetModbusInputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5a9baa85959370b7562c32510a9ebe6bd48ccb01b5d71d3898126e69fe60afb3',
                    'minimum' => 4,
                    'maximum' => 4,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'value',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetModbusInputResponse::class
                ],
                'Ros1Dsr_msgsGetRobotModeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetRobotModeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRobotModeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetRobotModeRequest::class
                ],
                'Ros1Dsr_msgsGetRobotModeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetRobotModeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRobotModeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_3049e13cf2157e75860253953231b258ac495b2fc424aa2c6343fcf0f91044b5',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_mode',
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
                    'class' => Ros1Dsr_msgsGetRobotModeResponse::class
                ],
                'Ros1Dsr_msgsGetRobotSpeedModeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetRobotSpeedModeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRobotSpeedModeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetRobotSpeedModeRequest::class
                ],
                'Ros1Dsr_msgsGetRobotSpeedModeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetRobotSpeedModeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRobotSpeedModeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e67a5a94c55ea30657ecdf83201cac431e89c11817bb12831d31023d4fd2cec1',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'speed_mode',
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
                    'class' => Ros1Dsr_msgsGetRobotSpeedModeResponse::class
                ],
                'Ros1Dsr_msgsGetRobotStateRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetRobotStateRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRobotStateRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetRobotStateRequest::class
                ],
                'Ros1Dsr_msgsGetRobotStateResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetRobotStateResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRobotStateResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2fdea6418150a77db99b9e1bcecb11a9a10f826690b18853d6adfbdc2b6f8d4d',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_state',
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
                    'class' => Ros1Dsr_msgsGetRobotStateResponse::class
                ],
                'Ros1Dsr_msgsGetRobotSystemRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetRobotSystemRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRobotSystemRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetRobotSystemRequest::class
                ],
                'Ros1Dsr_msgsGetRobotSystemResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetRobotSystemResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRobotSystemResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ecdbadad1fa8a9e22bf20bbb5c7aa489b739a6d0ef725ea20e37d50feb92a570',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_system',
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
                    'class' => Ros1Dsr_msgsGetRobotSystemResponse::class
                ],
                'Ros1Dsr_msgsGetToolDigitalInputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetToolDigitalInputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetToolDigitalInputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'index',
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
                    'class' => Ros1Dsr_msgsGetToolDigitalInputRequest::class
                ],
                'Ros1Dsr_msgsGetToolDigitalInputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetToolDigitalInputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetToolDigitalInputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ee2a97dbab5eb6f818d5165e68ebc9077f8ebae391f79445f35205158e0d7f92',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'value',
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
                    'class' => Ros1Dsr_msgsGetToolDigitalInputResponse::class
                ],
                'Ros1Dsr_msgsGetToolForceRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetToolForceRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetToolForceRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_27ccf47d48432cce678c6dad5ecff2aac258f4b17e4172556fa05183bc5111b7',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetToolForceRequest::class
                ],
                'Ros1Dsr_msgsGetToolForceResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetToolForceResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetToolForceResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_752d1690a4d3b7b6842ce45d1ae599de4cbfdde9bf7da96193cbf3a9e4205026',
                    'minimum' => 48,
                    'maximum' => 48,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'tool_force',
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
                    'class' => Ros1Dsr_msgsGetToolForceResponse::class
                ],
                'Ros1Dsr_msgsJogRequest' => [
                    'symbol' => 'Ros1Dsr_msgsJogRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/JogRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a',
                    'minimum' => 10,
                    'maximum' => 10,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'jog_axis',
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
                            'name' => 'move_reference',
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
                            'name' => 'speed',
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
                    'class' => Ros1Dsr_msgsJogRequest::class
                ],
                'Ros1Dsr_msgsJogResponse' => [
                    'symbol' => 'Ros1Dsr_msgsJogResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/JogResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7',
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
                    'class' => Ros1Dsr_msgsJogResponse::class
                ],
                'Ros1Dsr_msgsJogMultiRequest' => [
                    'symbol' => 'Ros1Dsr_msgsJogMultiRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/JogMultiRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea',
                    'minimum' => 57,
                    'maximum' => 57,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'jog_axis',
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
                        ],
                        [
                            'name' => 'move_reference',
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
                            'name' => 'speed',
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
                    'class' => Ros1Dsr_msgsJogMultiRequest::class
                ],
                'Ros1Dsr_msgsJogMultiResponse' => [
                    'symbol' => 'Ros1Dsr_msgsJogMultiResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/JogMultiResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a',
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
                    'class' => Ros1Dsr_msgsJogMultiResponse::class
                ],
                'Ros1Dsr_msgsJogMultiAxis' => [
                    'symbol' => 'Ros1Dsr_msgsJogMultiAxis',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/JogMultiAxis',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02',
                    'minimum' => 57,
                    'maximum' => 57,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'jog_axis',
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
                        ],
                        [
                            'name' => 'move_reference',
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
                            'name' => 'speed',
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
                    'class' => Ros1Dsr_msgsJogMultiAxis::class
                ],
                'Ros1Dsr_msgsModbusState' => [
                    'symbol' => 'Ros1Dsr_msgsModbusState',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ModbusState',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9',
                    'minimum' => 8,
                    'maximum' => 264,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'modbus_symbol',
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
                        ],
                        [
                            'name' => 'modbus_value',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsModbusState::class
                ],
                'Ros1Std_msgsMultiArrayDimension' => [
                    'symbol' => 'Ros1Std_msgsMultiArrayDimension',
                    'ros_version' => 1,
                    'native_type' => 'std_msgs/MultiArrayDimension',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444',
                    'minimum' => 12,
                    'maximum' => 76,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'label',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 64,
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
                            'name' => 'size',
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
                        ],
                        [
                            'name' => 'stride',
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
                    'class' => Ros1Std_msgsMultiArrayDimension::class
                ],
                'Ros1Std_msgsMultiArrayLayout' => [
                    'symbol' => 'Ros1Std_msgsMultiArrayLayout',
                    'ros_version' => 1,
                    'native_type' => 'std_msgs/MultiArrayLayout',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e',
                    'minimum' => 8,
                    'maximum' => 236,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'dim',
                            'type' => 'Ros1Std_msgsMultiArrayDimension',
                            'array' => 'sequence',
                            'count' => 3,
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
                            'name' => 'data_offset',
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
                    'class' => Ros1Std_msgsMultiArrayLayout::class
                ],
                'Ros1Std_msgsFloat64MultiArray' => [
                    'symbol' => 'Ros1Std_msgsFloat64MultiArray',
                    'ros_version' => 1,
                    'native_type' => 'std_msgs/Float64MultiArray',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8',
                    'minimum' => 12,
                    'maximum' => 368,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'layout',
                            'type' => 'Ros1Std_msgsMultiArrayLayout',
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
                    'class' => Ros1Std_msgsFloat64MultiArray::class
                ],
                'Ros1Dsr_msgsMoveBlendingRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveBlendingRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveBlendingRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6',
                    'minimum' => 48,
                    'maximum' => 2256,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'segment',
                            'type' => 'Ros1Std_msgsFloat64MultiArray',
                            'array' => 'sequence',
                            'count' => 6,
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
                            'name' => 'posCnt',
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
                            'name' => 'vel',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'acc',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'time',
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
                            'name' => 'ref',
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
                            'name' => 'mode',
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
                            'name' => 'syncType',
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
                    'class' => Ros1Dsr_msgsMoveBlendingRequest::class
                ],
                'Ros1Dsr_msgsMoveBlendingResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveBlendingResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveBlendingResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6',
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
                    'class' => Ros1Dsr_msgsMoveBlendingResponse::class
                ],
                'Ros1Dsr_msgsMoveCircleRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveCircleRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveCircleRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4',
                    'minimum' => 72,
                    'maximum' => 2280,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pos',
                            'type' => 'Ros1Std_msgsFloat64MultiArray',
                            'array' => 'sequence',
                            'count' => 6,
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
                            'name' => 'vel',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'acc',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'time',
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
                            'name' => 'radius',
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
                            'name' => 'ref',
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
                            'name' => 'mode',
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
                            'name' => 'angle1',
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
                            'name' => 'angle2',
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
                            'name' => 'blendType',
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
                            'name' => 'syncType',
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
                    'class' => Ros1Dsr_msgsMoveCircleRequest::class
                ],
                'Ros1Dsr_msgsMoveCircleResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveCircleResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveCircleResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3',
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
                    'class' => Ros1Dsr_msgsMoveCircleResponse::class
                ],
                'Ros1Dsr_msgsMoveJointRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveJointRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveJointRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03',
                    'minimum' => 83,
                    'maximum' => 83,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pos',
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
                        ],
                        [
                            'name' => 'vel',
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
                            'name' => 'acc',
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
                            'name' => 'time',
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
                            'name' => 'radius',
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
                            'name' => 'mode',
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
                            'name' => 'blendType',
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
                            'name' => 'syncType',
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
                    'class' => Ros1Dsr_msgsMoveJointRequest::class
                ],
                'Ros1Dsr_msgsMoveJointResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveJointResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveJointResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4',
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
                    'class' => Ros1Dsr_msgsMoveJointResponse::class
                ],
                'Ros1Dsr_msgsMoveJointxRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveJointxRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveJointxRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db',
                    'minimum' => 85,
                    'maximum' => 85,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pos',
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
                        ],
                        [
                            'name' => 'vel',
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
                            'name' => 'acc',
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
                            'name' => 'time',
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
                            'name' => 'radius',
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
                            'name' => 'ref',
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
                            'name' => 'mode',
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
                            'name' => 'blendType',
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
                            'name' => 'sol',
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
                            'name' => 'syncType',
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
                    'class' => Ros1Dsr_msgsMoveJointxRequest::class
                ],
                'Ros1Dsr_msgsMoveJointxResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveJointxResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveJointxResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc',
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
                    'class' => Ros1Dsr_msgsMoveJointxResponse::class
                ],
                'Ros1Dsr_msgsMoveLineRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveLineRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveLineRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e',
                    'minimum' => 100,
                    'maximum' => 100,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pos',
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
                        ],
                        [
                            'name' => 'vel',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'acc',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'time',
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
                            'name' => 'radius',
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
                            'name' => 'ref',
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
                            'name' => 'mode',
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
                            'name' => 'blendType',
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
                            'name' => 'syncType',
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
                    'class' => Ros1Dsr_msgsMoveLineRequest::class
                ],
                'Ros1Dsr_msgsMoveLineResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveLineResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveLineResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c',
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
                    'class' => Ros1Dsr_msgsMoveLineResponse::class
                ],
                'Ros1Dsr_msgsMovePauseRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMovePauseRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MovePauseRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsMovePauseRequest::class
                ],
                'Ros1Dsr_msgsMovePauseResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMovePauseResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MovePauseResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed',
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
                    'class' => Ros1Dsr_msgsMovePauseResponse::class
                ],
                'Ros1Dsr_msgsMovePeriodicRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMovePeriodicRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MovePeriodicRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69',
                    'minimum' => 107,
                    'maximum' => 107,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'amp',
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
                        ],
                        [
                            'name' => 'periodic',
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
                        ],
                        [
                            'name' => 'acc',
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
                            'name' => 'repeat',
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
                            'name' => 'ref',
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
                            'name' => 'syncType',
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
                    'class' => Ros1Dsr_msgsMovePeriodicRequest::class
                ],
                'Ros1Dsr_msgsMovePeriodicResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMovePeriodicResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MovePeriodicResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3',
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
                    'class' => Ros1Dsr_msgsMovePeriodicResponse::class
                ],
                'Ros1Dsr_msgsMoveResumeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveResumeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveResumeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsMoveResumeRequest::class
                ],
                'Ros1Dsr_msgsMoveResumeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveResumeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveResumeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a',
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
                    'class' => Ros1Dsr_msgsMoveResumeResponse::class
                ],
                'Ros1Dsr_msgsMoveSpiralRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveSpiralRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveSpiralRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c',
                    'minimum' => 67,
                    'maximum' => 67,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'revolution',
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
                            'name' => 'maxRadius',
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
                            'name' => 'maxLength',
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
                            'name' => 'vel',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'acc',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'time',
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
                            'name' => 'taskAxis',
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
                            'name' => 'ref',
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
                            'name' => 'syncType',
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
                    'class' => Ros1Dsr_msgsMoveSpiralRequest::class
                ],
                'Ros1Dsr_msgsMoveSpiralResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveSpiralResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveSpiralResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691',
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
                    'class' => Ros1Dsr_msgsMoveSpiralResponse::class
                ],
                'Ros1Dsr_msgsMoveSplineJointRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveSplineJointRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveSplineJointRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6e386632864f2315ba8737001727f9c03bb17a0e70b8eb990ce39fed669aac33',
                    'minimum' => 31,
                    'maximum' => 2239,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pos',
                            'type' => 'Ros1Std_msgsFloat64MultiArray',
                            'array' => 'sequence',
                            'count' => 6,
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
                            'name' => 'posCnt',
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
                            'name' => 'vel',
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
                            'name' => 'acc',
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
                            'name' => 'time',
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
                            'name' => 'mode',
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
                            'name' => 'syncType',
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
                    'class' => Ros1Dsr_msgsMoveSplineJointRequest::class
                ],
                'Ros1Dsr_msgsMoveSplineJointResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveSplineJointResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveSplineJointResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68',
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
                    'class' => Ros1Dsr_msgsMoveSplineJointResponse::class
                ],
                'Ros1Dsr_msgsMoveSplineTaskRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveSplineTaskRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveSplineTaskRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a',
                    'minimum' => 49,
                    'maximum' => 2257,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pos',
                            'type' => 'Ros1Std_msgsFloat64MultiArray',
                            'array' => 'sequence',
                            'count' => 6,
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
                            'name' => 'posCnt',
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
                            'name' => 'vel',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'acc',
                            'type' => 'float64',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'time',
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
                            'name' => 'ref',
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
                            'name' => 'mode',
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
                            'name' => 'opt',
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
                            'name' => 'syncType',
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
                    'class' => Ros1Dsr_msgsMoveSplineTaskRequest::class
                ],
                'Ros1Dsr_msgsMoveSplineTaskResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveSplineTaskResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveSplineTaskResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a',
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
                    'class' => Ros1Dsr_msgsMoveSplineTaskResponse::class
                ],
                'Ros1Dsr_msgsMoveStopRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveStopRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveStopRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4',
                    'minimum' => 4,
                    'maximum' => 4,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'stop_mode',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsMoveStopRequest::class
                ],
                'Ros1Dsr_msgsMoveStopResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveStopResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveStopResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427',
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
                    'class' => Ros1Dsr_msgsMoveStopResponse::class
                ],
                'Ros1Dsr_msgsMoveWaitRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveWaitRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveWaitRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsMoveWaitRequest::class
                ],
                'Ros1Dsr_msgsMoveWaitResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveWaitResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveWaitResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232',
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
                    'class' => Ros1Dsr_msgsMoveWaitResponse::class
                ],
                'Ros1Dsr_msgsRobotError' => [
                    'symbol' => 'Ros1Dsr_msgsRobotError',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/RobotError',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641',
                    'minimum' => 24,
                    'maximum' => 792,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'level',
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
                            'name' => 'group',
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
                            'name' => 'code',
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
                            'name' => 'msg1',
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
                        ],
                        [
                            'name' => 'msg2',
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
                        ],
                        [
                            'name' => 'msg3',
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
                    'class' => Ros1Dsr_msgsRobotError::class
                ],
                'Ros1Dsr_msgsRobotState' => [
                    'symbol' => 'Ros1Dsr_msgsRobotState',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/RobotState',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_67691d32d7b73ab123439c6f14dca8f626ad9e9a6f09f9ecb0e631b5f63d2574',
                    'minimum' => 907,
                    'maximum' => 7595,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_state',
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
                            'name' => 'robot_state_str',
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
                        ],
                        [
                            'name' => 'actual_mode',
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
                            'name' => 'actual_space',
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
                            'name' => 'current_posj',
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
                        ],
                        [
                            'name' => 'current_velj',
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
                        ],
                        [
                            'name' => 'joint_abs',
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
                        ],
                        [
                            'name' => 'joint_err',
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
                        ],
                        [
                            'name' => 'target_posj',
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
                        ],
                        [
                            'name' => 'target_velj',
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
                        ],
                        [
                            'name' => 'current_posx',
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
                        ],
                        [
                            'name' => 'current_velx',
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
                        ],
                        [
                            'name' => 'task_err',
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
                        ],
                        [
                            'name' => 'target_velx',
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
                        ],
                        [
                            'name' => 'target_posx',
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
                        ],
                        [
                            'name' => 'solution_space',
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
                            'name' => 'rotation_matrix',
                            'type' => 'Ros1Std_msgsFloat64MultiArray',
                            'array' => 'sequence',
                            'count' => 6,
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
                            'name' => 'dynamic_tor',
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
                        ],
                        [
                            'name' => 'actual_jts',
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
                        ],
                        [
                            'name' => 'actual_ejt',
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
                        ],
                        [
                            'name' => 'actual_ett',
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
                        ],
                        [
                            'name' => 'sync_time',
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
                            'name' => 'actual_bk',
                            'type' => 'int8',
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
                            'name' => 'actual_bt',
                            'type' => 'int8',
                            'array' => 'array',
                            'count' => 5,
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
                            'name' => 'actual_mc',
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
                        ],
                        [
                            'name' => 'actual_mt',
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
                        ],
                        [
                            'name' => 'ctrlbox_digital_input',
                            'type' => 'int8',
                            'array' => 'array',
                            'count' => 16,
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
                            'name' => 'ctrlbox_digital_output',
                            'type' => 'int8',
                            'array' => 'array',
                            'count' => 16,
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
                            'name' => 'flange_digital_input',
                            'type' => 'int8',
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
                            'name' => 'flange_digital_output',
                            'type' => 'int8',
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
                            'name' => 'modbus_state',
                            'type' => 'Ros1Dsr_msgsModbusState',
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
                        ],
                        [
                            'name' => 'access_control',
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
                            'name' => 'homming_completed',
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
                            'name' => 'tp_initialized',
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
                            'name' => 'mastering_need',
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
                            'name' => 'drl_stopped',
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
                            'name' => 'disconnected',
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
                    'class' => Ros1Dsr_msgsRobotState::class
                ],
                'Ros1Dsr_msgsRobotStop' => [
                    'symbol' => 'Ros1Dsr_msgsRobotStop',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/RobotStop',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323',
                    'minimum' => 4,
                    'maximum' => 4,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'stop_mode',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsRobotStop::class
                ],
                'Ros1Dsr_msgsRobotiq2FCloseRequest' => [
                    'symbol' => 'Ros1Dsr_msgsRobotiq2FCloseRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/Robotiq2FCloseRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsRobotiq2FCloseRequest::class
                ],
                'Ros1Dsr_msgsRobotiq2FCloseResponse' => [
                    'symbol' => 'Ros1Dsr_msgsRobotiq2FCloseResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/Robotiq2FCloseResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d',
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
                    'class' => Ros1Dsr_msgsRobotiq2FCloseResponse::class
                ],
                'Ros1Dsr_msgsRobotiq2FMoveRequest' => [
                    'symbol' => 'Ros1Dsr_msgsRobotiq2FMoveRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/Robotiq2FMoveRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2',
                    'minimum' => 8,
                    'maximum' => 8,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'width',
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
                    'class' => Ros1Dsr_msgsRobotiq2FMoveRequest::class
                ],
                'Ros1Dsr_msgsRobotiq2FMoveResponse' => [
                    'symbol' => 'Ros1Dsr_msgsRobotiq2FMoveResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/Robotiq2FMoveResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183',
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
                    'class' => Ros1Dsr_msgsRobotiq2FMoveResponse::class
                ],
                'Ros1Dsr_msgsRobotiq2FOpenRequest' => [
                    'symbol' => 'Ros1Dsr_msgsRobotiq2FOpenRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/Robotiq2FOpenRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsRobotiq2FOpenRequest::class
                ],
                'Ros1Dsr_msgsRobotiq2FOpenResponse' => [
                    'symbol' => 'Ros1Dsr_msgsRobotiq2FOpenResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/Robotiq2FOpenResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a',
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
                    'class' => Ros1Dsr_msgsRobotiq2FOpenResponse::class
                ],
                'Ros1Dsr_msgsSerialSendDataRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSerialSendDataRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SerialSendDataRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
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
                    'class' => Ros1Dsr_msgsSerialSendDataRequest::class
                ],
                'Ros1Dsr_msgsSerialSendDataResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSerialSendDataResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SerialSendDataResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43',
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
                    'class' => Ros1Dsr_msgsSerialSendDataResponse::class
                ],
                'Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCtrlBoxAnalogInputTypeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'channel',
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
                            'name' => 'mode',
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
                    'class' => Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest::class
                ],
                'Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCtrlBoxAnalogInputTypeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400',
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
                    'class' => Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse::class
                ],
                'Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCtrlBoxAnalogOutputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4',
                    'minimum' => 9,
                    'maximum' => 9,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'channel',
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
                            'name' => 'value',
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
                    'class' => Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest::class
                ],
                'Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCtrlBoxAnalogOutputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5',
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
                    'class' => Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse::class
                ],
                'Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'channel',
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
                            'name' => 'mode',
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
                    'class' => Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest::class
                ],
                'Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2',
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
                    'class' => Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse::class
                ],
                'Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCtrlBoxDigitalOutputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'index',
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
                            'name' => 'value',
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
                    'class' => Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest::class
                ],
                'Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCtrlBoxDigitalOutputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657',
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
                    'class' => Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse::class
                ],
                'Ros1Dsr_msgsSetCurrentTcpRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetCurrentTcpRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCurrentTcpRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                    'class' => Ros1Dsr_msgsSetCurrentTcpRequest::class
                ],
                'Ros1Dsr_msgsSetCurrentTcpResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetCurrentTcpResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCurrentTcpResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab',
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
                    'class' => Ros1Dsr_msgsSetCurrentTcpResponse::class
                ],
                'Ros1Dsr_msgsSetCurrentToolRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetCurrentToolRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCurrentToolRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                    'class' => Ros1Dsr_msgsSetCurrentToolRequest::class
                ],
                'Ros1Dsr_msgsSetCurrentToolResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetCurrentToolResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetCurrentToolResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de',
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
                    'class' => Ros1Dsr_msgsSetCurrentToolResponse::class
                ],
                'Ros1Dsr_msgsSetModbusOutputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetModbusOutputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetModbusOutputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f',
                    'minimum' => 8,
                    'maximum' => 264,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
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
                        ],
                        [
                            'name' => 'value',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsSetModbusOutputRequest::class
                ],
                'Ros1Dsr_msgsSetModbusOutputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetModbusOutputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetModbusOutputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491',
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
                    'class' => Ros1Dsr_msgsSetModbusOutputResponse::class
                ],
                'Ros1Dsr_msgsSetRobotModeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetRobotModeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRobotModeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_mode',
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
                    'class' => Ros1Dsr_msgsSetRobotModeRequest::class
                ],
                'Ros1Dsr_msgsSetRobotModeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetRobotModeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRobotModeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1',
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
                    'class' => Ros1Dsr_msgsSetRobotModeResponse::class
                ],
                'Ros1Dsr_msgsSetRobotSpeedModeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetRobotSpeedModeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRobotSpeedModeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'speed_mode',
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
                    'class' => Ros1Dsr_msgsSetRobotSpeedModeRequest::class
                ],
                'Ros1Dsr_msgsSetRobotSpeedModeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetRobotSpeedModeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRobotSpeedModeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b',
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
                    'class' => Ros1Dsr_msgsSetRobotSpeedModeResponse::class
                ],
                'Ros1Dsr_msgsSetRobotSystemRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetRobotSystemRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRobotSystemRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_system',
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
                    'class' => Ros1Dsr_msgsSetRobotSystemRequest::class
                ],
                'Ros1Dsr_msgsSetRobotSystemResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetRobotSystemResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRobotSystemResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27',
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
                    'class' => Ros1Dsr_msgsSetRobotSystemResponse::class
                ],
                'Ros1Dsr_msgsSetSafeStopResetTypeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetSafeStopResetTypeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetSafeStopResetTypeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'reset_type',
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
                    'class' => Ros1Dsr_msgsSetSafeStopResetTypeRequest::class
                ],
                'Ros1Dsr_msgsSetSafeStopResetTypeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetSafeStopResetTypeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetSafeStopResetTypeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db',
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
                    'class' => Ros1Dsr_msgsSetSafeStopResetTypeResponse::class
                ],
                'Ros1Dsr_msgsSetToolDigitalOutputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetToolDigitalOutputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetToolDigitalOutputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'index',
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
                            'name' => 'value',
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
                    'class' => Ros1Dsr_msgsSetToolDigitalOutputRequest::class
                ],
                'Ros1Dsr_msgsSetToolDigitalOutputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetToolDigitalOutputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetToolDigitalOutputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94',
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
                    'class' => Ros1Dsr_msgsSetToolDigitalOutputResponse::class
                ],
            ]);
        }
        return $wire;
    }
}
