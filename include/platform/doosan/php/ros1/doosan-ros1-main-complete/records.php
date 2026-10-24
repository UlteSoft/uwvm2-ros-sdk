<?php
declare(strict_types=1);
namespace Uwvm\DoosanDoosanRos1MainComplete;
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @file records.php
 * @brief Complete vendor record classes; codec implementation is shared.
 */
/** @brief Complete original dsr_msgs/AlignAxis1Request value. */
final class Ros1Dsr_msgsAlignAxis1Request
{
    /** @brief Original x1: float64; array. */
    public mixed $x1;
    /** @brief Original x2: float64; array. */
    public mixed $x2;
    /** @brief Original x3: float64; array. */
    public mixed $x3;
    /** @brief Original source_vect: float64; array. */
    public mixed $source_vect;
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->x1 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x1[] = 0.0;
        }
        $this->x2 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x2[] = 0.0;
        }
        $this->x3 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x3[] = 0.0;
        }
        $this->source_vect = [];
        for ($i = 0; $i < 3; ++$i)
        {
            $this->source_vect[] = 0.0;
        }
        $this->axis = 0;
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsAlignAxis1Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsAlignAxis1Request', $bytes);
    }
}
/** @brief Complete original dsr_msgs/AlignAxis1Response value. */
final class Ros1Dsr_msgsAlignAxis1Response
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
        return Catalog::wire()->encode('Ros1Dsr_msgsAlignAxis1Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsAlignAxis1Response', $bytes);
    }
}
/** @brief Complete original dsr_msgs/AlignAxis2Request value. */
final class Ros1Dsr_msgsAlignAxis2Request
{
    /** @brief Original target_vect: float64; array. */
    public mixed $target_vect;
    /** @brief Original source_vect: float64; array. */
    public mixed $source_vect;
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->target_vect = [];
        for ($i = 0; $i < 3; ++$i)
        {
            $this->target_vect[] = 0.0;
        }
        $this->source_vect = [];
        for ($i = 0; $i < 3; ++$i)
        {
            $this->source_vect[] = 0.0;
        }
        $this->axis = 0;
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsAlignAxis2Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsAlignAxis2Request', $bytes);
    }
}
/** @brief Complete original dsr_msgs/AlignAxis2Response value. */
final class Ros1Dsr_msgsAlignAxis2Response
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
        return Catalog::wire()->encode('Ros1Dsr_msgsAlignAxis2Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsAlignAxis2Response', $bytes);
    }
}
/** @brief Complete original dsr_msgs/AlterMotionRequest value. */
final class Ros1Dsr_msgsAlterMotionRequest
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
        return Catalog::wire()->encode('Ros1Dsr_msgsAlterMotionRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsAlterMotionRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/AlterMotionResponse value. */
final class Ros1Dsr_msgsAlterMotionResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsAlterMotionResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsAlterMotionResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/AlterMotionStream value. */
final class Ros1Dsr_msgsAlterMotionStream
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
        return Catalog::wire()->encode('Ros1Dsr_msgsAlterMotionStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsAlterMotionStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CalcCoordRequest value. */
final class Ros1Dsr_msgsCalcCoordRequest
{
    /** @brief Original input_pos_cnt: int8; scalar. */
    public mixed $input_pos_cnt;
    /** @brief Original x1: float64; array. */
    public mixed $x1;
    /** @brief Original x2: float64; array. */
    public mixed $x2;
    /** @brief Original x3: float64; array. */
    public mixed $x3;
    /** @brief Original x4: float64; array. */
    public mixed $x4;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original mod: int8; scalar. */
    public mixed $mod;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->input_pos_cnt = 0;
        $this->x1 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x1[] = 0.0;
        }
        $this->x2 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x2[] = 0.0;
        }
        $this->x3 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x3[] = 0.0;
        }
        $this->x4 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x4[] = 0.0;
        }
        $this->ref = 0;
        $this->mod = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCalcCoordRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCalcCoordRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CalcCoordResponse value. */
final class Ros1Dsr_msgsCalcCoordResponse
{
    /** @brief Original conv_posx: float64; array. */
    public mixed $conv_posx;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->conv_posx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->conv_posx[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCalcCoordResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCalcCoordResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ChangeOperationSpeedRequest value. */
final class Ros1Dsr_msgsChangeOperationSpeedRequest
{
    /** @brief Original speed: int8; scalar. */
    public mixed $speed;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->speed = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsChangeOperationSpeedRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsChangeOperationSpeedRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ChangeOperationSpeedResponse value. */
final class Ros1Dsr_msgsChangeOperationSpeedResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsChangeOperationSpeedResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsChangeOperationSpeedResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckForceConditionRequest value. */
final class Ros1Dsr_msgsCheckForceConditionRequest
{
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Original min: float64; scalar. */
    public mixed $min;
    /** @brief Original max: float64; scalar. */
    public mixed $max;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->axis = 0;
        $this->min = 0.0;
        $this->max = 0.0;
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckForceConditionRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckForceConditionRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckForceConditionResponse value. */
final class Ros1Dsr_msgsCheckForceConditionResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckForceConditionResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckForceConditionResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckMotionRequest value. */
final class Ros1Dsr_msgsCheckMotionRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckMotionRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckMotionRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckMotionResponse value. */
final class Ros1Dsr_msgsCheckMotionResponse
{
    /** @brief Original status: int8; scalar. */
    public mixed $status;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->status = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckMotionResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckMotionResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckOrientationCondition1Request value. */
final class Ros1Dsr_msgsCheckOrientationCondition1Request
{
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Original min: float64; array. */
    public mixed $min;
    /** @brief Original max: float64; array. */
    public mixed $max;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->axis = 0;
        $this->min = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->min[] = 0.0;
        }
        $this->max = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->max[] = 0.0;
        }
        $this->ref = 0;
        $this->mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckOrientationCondition1Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckOrientationCondition1Request', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckOrientationCondition1Response value. */
final class Ros1Dsr_msgsCheckOrientationCondition1Response
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
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckOrientationCondition1Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckOrientationCondition1Response', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckOrientationCondition2Request value. */
final class Ros1Dsr_msgsCheckOrientationCondition2Request
{
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Original min: float64; scalar. */
    public mixed $min;
    /** @brief Original max: float64; scalar. */
    public mixed $max;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->axis = 0;
        $this->min = 0.0;
        $this->max = 0.0;
        $this->ref = 0;
        $this->mode = 0;
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckOrientationCondition2Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckOrientationCondition2Request', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckOrientationCondition2Response value. */
final class Ros1Dsr_msgsCheckOrientationCondition2Response
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
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckOrientationCondition2Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckOrientationCondition2Response', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckPositionConditionRequest value. */
final class Ros1Dsr_msgsCheckPositionConditionRequest
{
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Original min: float64; scalar. */
    public mixed $min;
    /** @brief Original max: float64; scalar. */
    public mixed $max;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->axis = 0;
        $this->min = 0.0;
        $this->max = 0.0;
        $this->ref = 0;
        $this->mode = 0;
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckPositionConditionRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckPositionConditionRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CheckPositionConditionResponse value. */
final class Ros1Dsr_msgsCheckPositionConditionResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsCheckPositionConditionResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCheckPositionConditionResponse', $bytes);
    }
}
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
/** @brief Complete original dsr_msgs/ConnectRTControlRequest value. */
final class Ros1Dsr_msgsConnectRTControlRequest
{
    /** @brief Original ip_address: string; scalar. */
    public mixed $ip_address;
    /** @brief Original port: uint32; scalar. */
    public mixed $port;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ip_address = '';
        $this->port = Word::fromDecimal('0', 4, false);
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsConnectRTControlRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConnectRTControlRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ConnectRTControlResponse value. */
final class Ros1Dsr_msgsConnectRTControlResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsConnectRTControlResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsConnectRTControlResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CoordTransformRequest value. */
final class Ros1Dsr_msgsCoordTransformRequest
{
    /** @brief Original pos_in: float64; array. */
    public mixed $pos_in;
    /** @brief Original ref_in: int8; scalar. */
    public mixed $ref_in;
    /** @brief Original ref_out: int8; scalar. */
    public mixed $ref_out;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos_in = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos_in[] = 0.0;
        }
        $this->ref_in = 0;
        $this->ref_out = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCoordTransformRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCoordTransformRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/CoordTransformResponse value. */
final class Ros1Dsr_msgsCoordTransformResponse
{
    /** @brief Original conv_posx: float64; array. */
    public mixed $conv_posx;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->conv_posx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->conv_posx[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsCoordTransformResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsCoordTransformResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DisableAlterMotionRequest value. */
final class Ros1Dsr_msgsDisableAlterMotionRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsDisableAlterMotionRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDisableAlterMotionRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DisableAlterMotionResponse value. */
final class Ros1Dsr_msgsDisableAlterMotionResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsDisableAlterMotionResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDisableAlterMotionResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DisconnectRTControlRequest value. */
final class Ros1Dsr_msgsDisconnectRTControlRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsDisconnectRTControlRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDisconnectRTControlRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/DisconnectRTControlResponse value. */
final class Ros1Dsr_msgsDisconnectRTControlResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsDisconnectRTControlResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsDisconnectRTControlResponse', $bytes);
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
/** @brief Complete original dsr_msgs/EnableAlterMotionRequest value. */
final class Ros1Dsr_msgsEnableAlterMotionRequest
{
    /** @brief Original n: int32; scalar. */
    public mixed $n;
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original limit_dPOS: float64; array. */
    public mixed $limit_dPOS;
    /** @brief Original limit_dPOS_per: float64; array. */
    public mixed $limit_dPOS_per;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->n = 0;
        $this->mode = 0;
        $this->ref = 0;
        $this->limit_dPOS = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->limit_dPOS[] = 0.0;
        }
        $this->limit_dPOS_per = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->limit_dPOS_per[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsEnableAlterMotionRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsEnableAlterMotionRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/EnableAlterMotionResponse value. */
final class Ros1Dsr_msgsEnableAlterMotionResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsEnableAlterMotionResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsEnableAlterMotionResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/FkinRequest value. */
final class Ros1Dsr_msgsFkinRequest
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsFkinRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsFkinRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/FkinResponse value. */
final class Ros1Dsr_msgsFkinResponse
{
    /** @brief Original conv_posx: float64; array. */
    public mixed $conv_posx;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->conv_posx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->conv_posx[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsFkinResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsFkinResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetControlModeRequest value. */
final class Ros1Dsr_msgsGetControlModeRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetControlModeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetControlModeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetControlModeResponse value. */
final class Ros1Dsr_msgsGetControlModeResponse
{
    /** @brief Original control_mode: int8; scalar. */
    public mixed $control_mode;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->control_mode = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetControlModeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetControlModeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetControlSpaceRequest value. */
final class Ros1Dsr_msgsGetControlSpaceRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetControlSpaceRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetControlSpaceRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetControlSpaceResponse value. */
final class Ros1Dsr_msgsGetControlSpaceResponse
{
    /** @brief Original space: int8; scalar. */
    public mixed $space;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->space = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetControlSpaceResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetControlSpaceResponse', $bytes);
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = 0.0;
        $this->success = false;
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
    /** @brief Original value: int8; scalar. */
    public mixed $value;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = 0;
        $this->success = false;
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
/** @brief Complete original dsr_msgs/GetCtrlBoxDigitalOutputRequest value. */
final class Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest
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
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCtrlBoxDigitalOutputResponse value. */
final class Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse
{
    /** @brief Original value: int8; scalar. */
    public mixed $value;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse', $bytes);
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->success = false;
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
/** @brief Complete original dsr_msgs/GetCurrentPosjRequest value. */
final class Ros1Dsr_msgsGetCurrentPosjRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentPosjRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentPosjRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentPosjResponse value. */
final class Ros1Dsr_msgsGetCurrentPosjResponse
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentPosjResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentPosjResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentPosxRequest value. */
final class Ros1Dsr_msgsGetCurrentPosxRequest
{
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentPosxRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentPosxRequest', $bytes);
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
/** @brief Complete original dsr_msgs/GetCurrentPosxResponse value. */
final class Ros1Dsr_msgsGetCurrentPosxResponse
{
    /** @brief Original task_pos_info: std_msgs/Float64MultiArray; sequence. */
    public mixed $task_pos_info;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->task_pos_info = [];
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentPosxResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentPosxResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentRotmRequest value. */
final class Ros1Dsr_msgsGetCurrentRotmRequest
{
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentRotmRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentRotmRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentRotmResponse value. */
final class Ros1Dsr_msgsGetCurrentRotmResponse
{
    /** @brief Original rot_matrix: std_msgs/Float64MultiArray; sequence. */
    public mixed $rot_matrix;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->rot_matrix = [];
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentRotmResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentRotmResponse', $bytes);
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
    /** @brief Original sol_space: int8; scalar. */
    public mixed $sol_space;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->sol_space = 0;
        $this->success = false;
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->info = '';
        $this->success = false;
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->info = '';
        $this->success = false;
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
/** @brief Complete original dsr_msgs/GetCurrentToolFlangePosxRequest value. */
final class Ros1Dsr_msgsGetCurrentToolFlangePosxRequest
{
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentToolFlangePosxRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentToolFlangePosxRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentToolFlangePosxResponse value. */
final class Ros1Dsr_msgsGetCurrentToolFlangePosxResponse
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentToolFlangePosxResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentToolFlangePosxResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentVeljRequest value. */
final class Ros1Dsr_msgsGetCurrentVeljRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentVeljRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentVeljRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentVeljResponse value. */
final class Ros1Dsr_msgsGetCurrentVeljResponse
{
    /** @brief Original joint_speed: float64; array. */
    public mixed $joint_speed;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->joint_speed = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->joint_speed[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentVeljResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentVeljResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentVelxRequest value. */
final class Ros1Dsr_msgsGetCurrentVelxRequest
{
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentVelxRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentVelxRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetCurrentVelxResponse value. */
final class Ros1Dsr_msgsGetCurrentVelxResponse
{
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetCurrentVelxResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetCurrentVelxResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDesiredPosjRequest value. */
final class Ros1Dsr_msgsGetDesiredPosjRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDesiredPosjRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDesiredPosjRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDesiredPosjResponse value. */
final class Ros1Dsr_msgsGetDesiredPosjResponse
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDesiredPosjResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDesiredPosjResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDesiredPosxRequest value. */
final class Ros1Dsr_msgsGetDesiredPosxRequest
{
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDesiredPosxRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDesiredPosxRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDesiredPosxResponse value. */
final class Ros1Dsr_msgsGetDesiredPosxResponse
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDesiredPosxResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDesiredPosxResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDesiredVeljRequest value. */
final class Ros1Dsr_msgsGetDesiredVeljRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDesiredVeljRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDesiredVeljRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDesiredVeljResponse value. */
final class Ros1Dsr_msgsGetDesiredVeljResponse
{
    /** @brief Original joint_vel: float64; array. */
    public mixed $joint_vel;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->joint_vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->joint_vel[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDesiredVeljResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDesiredVeljResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDesiredVelxRequest value. */
final class Ros1Dsr_msgsGetDesiredVelxRequest
{
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDesiredVelxRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDesiredVelxRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetDesiredVelxResponse value. */
final class Ros1Dsr_msgsGetDesiredVelxResponse
{
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetDesiredVelxResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetDesiredVelxResponse', $bytes);
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->drl_state = 0;
        $this->success = false;
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ext_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->ext_torque[] = 0.0;
        }
        $this->success = false;
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
    /** @brief Original jts: float64; array. */
    public mixed $jts;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->jts = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->jts[] = 0.0;
        }
        $this->success = false;
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->log_alarm = new Ros1Dsr_msgsLogAlarm();
        $this->success = false;
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = 0;
        $this->success = false;
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
/** @brief Complete original dsr_msgs/GetOrientationErrorRequest value. */
final class Ros1Dsr_msgsGetOrientationErrorRequest
{
    /** @brief Original xd: float64; array. */
    public mixed $xd;
    /** @brief Original xc: float64; array. */
    public mixed $xc;
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->xd = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->xd[] = 0.0;
        }
        $this->xc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->xc[] = 0.0;
        }
        $this->axis = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetOrientationErrorRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetOrientationErrorRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetOrientationErrorResponse value. */
final class Ros1Dsr_msgsGetOrientationErrorResponse
{
    /** @brief Original ori_error: float32; scalar. */
    public mixed $ori_error;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ori_error = 0.0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetOrientationErrorResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetOrientationErrorResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRTControlInputDataListRequest value. */
final class Ros1Dsr_msgsGetRTControlInputDataListRequest
{
    /** @brief Original version: string; scalar. */
    public mixed $version;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->version = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRTControlInputDataListRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRTControlInputDataListRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRTControlInputDataListResponse value. */
final class Ros1Dsr_msgsGetRTControlInputDataListResponse
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original data: string; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
        $this->data = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRTControlInputDataListResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRTControlInputDataListResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRTControlInputVersionListRequest value. */
final class Ros1Dsr_msgsGetRTControlInputVersionListRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRTControlInputVersionListRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRTControlInputVersionListRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRTControlInputVersionListResponse value. */
final class Ros1Dsr_msgsGetRTControlInputVersionListResponse
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original version: string; scalar. */
    public mixed $version;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
        $this->version = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRTControlInputVersionListResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRTControlInputVersionListResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRTControlOutputDataListRequest value. */
final class Ros1Dsr_msgsGetRTControlOutputDataListRequest
{
    /** @brief Original version: string; scalar. */
    public mixed $version;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->version = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRTControlOutputDataListRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRTControlOutputDataListRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRTControlOutputDataListResponse value. */
final class Ros1Dsr_msgsGetRTControlOutputDataListResponse
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original data: string; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
        $this->data = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRTControlOutputDataListResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRTControlOutputDataListResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRTControlOutputVersionListRequest value. */
final class Ros1Dsr_msgsGetRTControlOutputVersionListRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRTControlOutputVersionListRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRTControlOutputVersionListRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetRTControlOutputVersionListResponse value. */
final class Ros1Dsr_msgsGetRTControlOutputVersionListResponse
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original version: string; scalar. */
    public mixed $version;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
        $this->version = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetRTControlOutputVersionListResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetRTControlOutputVersionListResponse', $bytes);
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_mode = 0;
        $this->success = false;
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->speed_mode = 0;
        $this->success = false;
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_state = 0;
        $this->success = false;
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_system = 0;
        $this->success = false;
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
/** @brief Complete original dsr_msgs/GetSolutionSpaceRequest value. */
final class Ros1Dsr_msgsGetSolutionSpaceRequest
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
        return Catalog::wire()->encode('Ros1Dsr_msgsGetSolutionSpaceRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetSolutionSpaceRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetSolutionSpaceResponse value. */
final class Ros1Dsr_msgsGetSolutionSpaceResponse
{
    /** @brief Original sol_space: int8; scalar. */
    public mixed $sol_space;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->sol_space = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetSolutionSpaceResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetSolutionSpaceResponse', $bytes);
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
    /** @brief Original value: int8; scalar. */
    public mixed $value;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = 0;
        $this->success = false;
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
/** @brief Complete original dsr_msgs/GetToolDigitalOutputRequest value. */
final class Ros1Dsr_msgsGetToolDigitalOutputRequest
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
        return Catalog::wire()->encode('Ros1Dsr_msgsGetToolDigitalOutputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetToolDigitalOutputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetToolDigitalOutputResponse value. */
final class Ros1Dsr_msgsGetToolDigitalOutputResponse
{
    /** @brief Original value: int8; scalar. */
    public mixed $value;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->value = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetToolDigitalOutputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetToolDigitalOutputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetToolForceRequest value. */
final class Ros1Dsr_msgsGetToolForceRequest
{
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->ref = 0;
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
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->tool_force = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->tool_force[] = 0.0;
        }
        $this->success = false;
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
/** @brief Complete original dsr_msgs/GetUserCartCoordRequest value. */
final class Ros1Dsr_msgsGetUserCartCoordRequest
{
    /** @brief Original id: int8; scalar. */
    public mixed $id;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->id = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetUserCartCoordRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetUserCartCoordRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetUserCartCoordResponse value. */
final class Ros1Dsr_msgsGetUserCartCoordResponse
{
    /** @brief Original conv_posx: float64; array. */
    public mixed $conv_posx;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->conv_posx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->conv_posx[] = 0.0;
        }
        $this->ref = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetUserCartCoordResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetUserCartCoordResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetWorkpieceWeightRequest value. */
final class Ros1Dsr_msgsGetWorkpieceWeightRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetWorkpieceWeightRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetWorkpieceWeightRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/GetWorkpieceWeightResponse value. */
final class Ros1Dsr_msgsGetWorkpieceWeightResponse
{
    /** @brief Original weight: float32; scalar. */
    public mixed $weight;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->weight = 0.0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsGetWorkpieceWeightResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsGetWorkpieceWeightResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/IkinRequest value. */
final class Ros1Dsr_msgsIkinRequest
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original sol_space: int8; scalar. */
    public mixed $sol_space;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->sol_space = 0;
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsIkinRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsIkinRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/IkinResponse value. */
final class Ros1Dsr_msgsIkinResponse
{
    /** @brief Original conv_posj: float64; array. */
    public mixed $conv_posj;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->conv_posj = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->conv_posj[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsIkinResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsIkinResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/IkinExRequest value. */
final class Ros1Dsr_msgsIkinExRequest
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original sol_space: int8; scalar. */
    public mixed $sol_space;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original ref_pos_opt: int8; scalar. */
    public mixed $ref_pos_opt;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->sol_space = 0;
        $this->ref = 0;
        $this->ref_pos_opt = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsIkinExRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsIkinExRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/IkinExResponse value. */
final class Ros1Dsr_msgsIkinExResponse
{
    /** @brief Original conv_posj: float64; array. */
    public mixed $conv_posj;
    /** @brief Original status: bool; scalar. */
    public mixed $status;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->conv_posj = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->conv_posj[] = 0.0;
        }
        $this->status = false;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsIkinExResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsIkinExResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/IsDoneBoltTighteningRequest value. */
final class Ros1Dsr_msgsIsDoneBoltTighteningRequest
{
    /** @brief Original m: float64; scalar. */
    public mixed $m;
    /** @brief Original timeout: float64; scalar. */
    public mixed $timeout;
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->m = 0.0;
        $this->timeout = 0.0;
        $this->axis = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsIsDoneBoltTighteningRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsIsDoneBoltTighteningRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/IsDoneBoltTighteningResponse value. */
final class Ros1Dsr_msgsIsDoneBoltTighteningResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsIsDoneBoltTighteningResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsIsDoneBoltTighteningResponse', $bytes);
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
/** @brief Complete original dsr_msgs/ManageAccessControlRequest value. */
final class Ros1Dsr_msgsManageAccessControlRequest
{
    /** @brief Original access_control: int8; scalar. */
    public mixed $access_control;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->access_control = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsManageAccessControlRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsManageAccessControlRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ManageAccessControlResponse value. */
final class Ros1Dsr_msgsManageAccessControlResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsManageAccessControlResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsManageAccessControlResponse', $bytes);
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
/** @brief Complete original dsr_msgs/MoveHomeRequest value. */
final class Ros1Dsr_msgsMoveHomeRequest
{
    /** @brief Original target: int8; scalar. */
    public mixed $target;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->target = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveHomeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveHomeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/MoveHomeResponse value. */
final class Ros1Dsr_msgsMoveHomeResponse
{
    /** @brief Original res: int8; scalar. */
    public mixed $res;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->res = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsMoveHomeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsMoveHomeResponse', $bytes);
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
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
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
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->acc[] = 0.0;
        }
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
/** @brief Complete original dsr_msgs/OverwriteUserCartCoordRequest value. */
final class Ros1Dsr_msgsOverwriteUserCartCoordRequest
{
    /** @brief Original id: int8; scalar. */
    public mixed $id;
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->id = 0;
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsOverwriteUserCartCoordRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsOverwriteUserCartCoordRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/OverwriteUserCartCoordResponse value. */
final class Ros1Dsr_msgsOverwriteUserCartCoordResponse
{
    /** @brief Original id: int8; scalar. */
    public mixed $id;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->id = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsOverwriteUserCartCoordResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsOverwriteUserCartCoordResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ParallelAxis1Request value. */
final class Ros1Dsr_msgsParallelAxis1Request
{
    /** @brief Original x1: float64; array. */
    public mixed $x1;
    /** @brief Original x2: float64; array. */
    public mixed $x2;
    /** @brief Original x3: float64; array. */
    public mixed $x3;
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->x1 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x1[] = 0.0;
        }
        $this->x2 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x2[] = 0.0;
        }
        $this->x3 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x3[] = 0.0;
        }
        $this->axis = 0;
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsParallelAxis1Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsParallelAxis1Request', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ParallelAxis1Response value. */
final class Ros1Dsr_msgsParallelAxis1Response
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
        return Catalog::wire()->encode('Ros1Dsr_msgsParallelAxis1Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsParallelAxis1Response', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ParallelAxis2Request value. */
final class Ros1Dsr_msgsParallelAxis2Request
{
    /** @brief Original vect: float64; array. */
    public mixed $vect;
    /** @brief Original axis: int8; scalar. */
    public mixed $axis;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->vect = [];
        for ($i = 0; $i < 3; ++$i)
        {
            $this->vect[] = 0.0;
        }
        $this->axis = 0;
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsParallelAxis2Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsParallelAxis2Request', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ParallelAxis2Response value. */
final class Ros1Dsr_msgsParallelAxis2Response
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
        return Catalog::wire()->encode('Ros1Dsr_msgsParallelAxis2Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsParallelAxis2Response', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ReadDataRTRequest value. */
final class Ros1Dsr_msgsReadDataRTRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsReadDataRTRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsReadDataRTRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/RobotStateRT value. */
final class Ros1Dsr_msgsRobotStateRT
{
    /** @brief Original time_stamp: float64; scalar. */
    public mixed $time_stamp;
    /** @brief Original actual_joint_position: float64; array. */
    public mixed $actual_joint_position;
    /** @brief Original actual_joint_position_abs: float64; array. */
    public mixed $actual_joint_position_abs;
    /** @brief Original actual_joint_velocity: float64; array. */
    public mixed $actual_joint_velocity;
    /** @brief Original actual_joint_velocity_abs: float64; array. */
    public mixed $actual_joint_velocity_abs;
    /** @brief Original actual_tcp_position: float64; array. */
    public mixed $actual_tcp_position;
    /** @brief Original actual_tcp_velocity: float64; array. */
    public mixed $actual_tcp_velocity;
    /** @brief Original actual_flange_position: float64; array. */
    public mixed $actual_flange_position;
    /** @brief Original actual_flange_velocity: float64; array. */
    public mixed $actual_flange_velocity;
    /** @brief Original actual_motor_torque: float64; array. */
    public mixed $actual_motor_torque;
    /** @brief Original actual_joint_torque: float64; array. */
    public mixed $actual_joint_torque;
    /** @brief Original raw_joint_torque: float64; array. */
    public mixed $raw_joint_torque;
    /** @brief Original raw_force_torque: float64; array. */
    public mixed $raw_force_torque;
    /** @brief Original external_joint_torque: float64; array. */
    public mixed $external_joint_torque;
    /** @brief Original external_tcp_force: float64; array. */
    public mixed $external_tcp_force;
    /** @brief Original target_joint_position: float64; array. */
    public mixed $target_joint_position;
    /** @brief Original target_joint_velocity: float64; array. */
    public mixed $target_joint_velocity;
    /** @brief Original target_joint_acceleration: float64; array. */
    public mixed $target_joint_acceleration;
    /** @brief Original target_motor_torque: float64; array. */
    public mixed $target_motor_torque;
    /** @brief Original target_tcp_position: float64; array. */
    public mixed $target_tcp_position;
    /** @brief Original target_tcp_velocity: float64; array. */
    public mixed $target_tcp_velocity;
    /** @brief Original jacobian_matrix: std_msgs/Float64MultiArray; sequence. */
    public mixed $jacobian_matrix;
    /** @brief Original gravity_torque: float64; array. */
    public mixed $gravity_torque;
    /** @brief Original coriolis_matrix: std_msgs/Float64MultiArray; sequence. */
    public mixed $coriolis_matrix;
    /** @brief Original mass_matrix: std_msgs/Float64MultiArray; sequence. */
    public mixed $mass_matrix;
    /** @brief Original solution_space: uint16; scalar. */
    public mixed $solution_space;
    /** @brief Original singularity: float64; scalar. */
    public mixed $singularity;
    /** @brief Original operation_speed_rate: float64; scalar. */
    public mixed $operation_speed_rate;
    /** @brief Original joint_temperature: float64; array. */
    public mixed $joint_temperature;
    /** @brief Original controller_digital_input: uint16; scalar. */
    public mixed $controller_digital_input;
    /** @brief Original controller_digital_output: uint16; scalar. */
    public mixed $controller_digital_output;
    /** @brief Original controller_analog_input_type: uint8; array. */
    public mixed $controller_analog_input_type;
    /** @brief Original controller_analog_input: float64; array. */
    public mixed $controller_analog_input;
    /** @brief Original controller_analog_output_type: uint8; array. */
    public mixed $controller_analog_output_type;
    /** @brief Original controller_analog_output: float64; array. */
    public mixed $controller_analog_output;
    /** @brief Original flange_digital_input: uint8; scalar. */
    public mixed $flange_digital_input;
    /** @brief Original flange_digital_output: uint8; scalar. */
    public mixed $flange_digital_output;
    /** @brief Original flange_analog_input: float64; array. */
    public mixed $flange_analog_input;
    /** @brief Original external_encoder_strobe_count: uint8; array. */
    public mixed $external_encoder_strobe_count;
    /** @brief Original external_encoder_count: uint16; array. */
    public mixed $external_encoder_count;
    /** @brief Original goal_joint_position: float64; array. */
    public mixed $goal_joint_position;
    /** @brief Original goal_tcp_position: float64; array. */
    public mixed $goal_tcp_position;
    /** @brief Original robot_mode: uint8; scalar. */
    public mixed $robot_mode;
    /** @brief Original robot_state: uint8; scalar. */
    public mixed $robot_state;
    /** @brief Original control_mode: uint16; scalar. */
    public mixed $control_mode;
    /** @brief Original reserved: uint8; array. */
    public mixed $reserved;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->time_stamp = 0.0;
        $this->actual_joint_position = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_joint_position[] = 0.0;
        }
        $this->actual_joint_position_abs = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_joint_position_abs[] = 0.0;
        }
        $this->actual_joint_velocity = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_joint_velocity[] = 0.0;
        }
        $this->actual_joint_velocity_abs = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_joint_velocity_abs[] = 0.0;
        }
        $this->actual_tcp_position = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_tcp_position[] = 0.0;
        }
        $this->actual_tcp_velocity = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_tcp_velocity[] = 0.0;
        }
        $this->actual_flange_position = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_flange_position[] = 0.0;
        }
        $this->actual_flange_velocity = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_flange_velocity[] = 0.0;
        }
        $this->actual_motor_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_motor_torque[] = 0.0;
        }
        $this->actual_joint_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_joint_torque[] = 0.0;
        }
        $this->raw_joint_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->raw_joint_torque[] = 0.0;
        }
        $this->raw_force_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->raw_force_torque[] = 0.0;
        }
        $this->external_joint_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->external_joint_torque[] = 0.0;
        }
        $this->external_tcp_force = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->external_tcp_force[] = 0.0;
        }
        $this->target_joint_position = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_joint_position[] = 0.0;
        }
        $this->target_joint_velocity = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_joint_velocity[] = 0.0;
        }
        $this->target_joint_acceleration = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_joint_acceleration[] = 0.0;
        }
        $this->target_motor_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_motor_torque[] = 0.0;
        }
        $this->target_tcp_position = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_tcp_position[] = 0.0;
        }
        $this->target_tcp_velocity = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->target_tcp_velocity[] = 0.0;
        }
        $this->jacobian_matrix = [];
        $this->gravity_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->gravity_torque[] = 0.0;
        }
        $this->coriolis_matrix = [];
        $this->mass_matrix = [];
        $this->solution_space = 0;
        $this->singularity = 0.0;
        $this->operation_speed_rate = 0.0;
        $this->joint_temperature = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->joint_temperature[] = 0.0;
        }
        $this->controller_digital_input = 0;
        $this->controller_digital_output = 0;
        $this->controller_analog_input_type = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->controller_analog_input_type[] = 0;
        }
        $this->controller_analog_input = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->controller_analog_input[] = 0.0;
        }
        $this->controller_analog_output_type = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->controller_analog_output_type[] = 0;
        }
        $this->controller_analog_output = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->controller_analog_output[] = 0.0;
        }
        $this->flange_digital_input = 0;
        $this->flange_digital_output = 0;
        $this->flange_analog_input = [];
        for ($i = 0; $i < 4; ++$i)
        {
            $this->flange_analog_input[] = 0.0;
        }
        $this->external_encoder_strobe_count = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->external_encoder_strobe_count[] = 0;
        }
        $this->external_encoder_count = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->external_encoder_count[] = 0;
        }
        $this->goal_joint_position = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->goal_joint_position[] = 0.0;
        }
        $this->goal_tcp_position = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->goal_tcp_position[] = 0.0;
        }
        $this->robot_mode = 0;
        $this->robot_state = 0;
        $this->control_mode = 0;
        $this->reserved = [];
        for ($i = 0; $i < 256; ++$i)
        {
            $this->reserved[] = 0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsRobotStateRT', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsRobotStateRT', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ReadDataRTResponse value. */
final class Ros1Dsr_msgsReadDataRTResponse
{
    /** @brief Original data: dsr_msgs/RobotStateRT; scalar. */
    public mixed $data;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->data = new Ros1Dsr_msgsRobotStateRT();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsReadDataRTResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsReadDataRTResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ReleaseComplianceCtrlRequest value. */
final class Ros1Dsr_msgsReleaseComplianceCtrlRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsReleaseComplianceCtrlRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsReleaseComplianceCtrlRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ReleaseComplianceCtrlResponse value. */
final class Ros1Dsr_msgsReleaseComplianceCtrlResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsReleaseComplianceCtrlResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsReleaseComplianceCtrlResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ReleaseForceRequest value. */
final class Ros1Dsr_msgsReleaseForceRequest
{
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsReleaseForceRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsReleaseForceRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ReleaseForceResponse value. */
final class Ros1Dsr_msgsReleaseForceResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsReleaseForceResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsReleaseForceResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ReleaseProtectiveStopRequest value. */
final class Ros1Dsr_msgsReleaseProtectiveStopRequest
{
    /** @brief Original release_mode: int8; scalar. */
    public mixed $release_mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->release_mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsReleaseProtectiveStopRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsReleaseProtectiveStopRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ReleaseProtectiveStopResponse value. */
final class Ros1Dsr_msgsReleaseProtectiveStopResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsReleaseProtectiveStopResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsReleaseProtectiveStopResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ResetWorkpieceWeightRequest value. */
final class Ros1Dsr_msgsResetWorkpieceWeightRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsResetWorkpieceWeightRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsResetWorkpieceWeightRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ResetWorkpieceWeightResponse value. */
final class Ros1Dsr_msgsResetWorkpieceWeightResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsResetWorkpieceWeightResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsResetWorkpieceWeightResponse', $bytes);
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
    /** @brief Original current_tool_posx: float64; array. */
    public mixed $current_tool_posx;
    /** @brief Original current_velx: float64; array. */
    public mixed $current_velx;
    /** @brief Original task_err: float64; array. */
    public mixed $task_err;
    /** @brief Original target_velx: float64; array. */
    public mixed $target_velx;
    /** @brief Original target_posx: float64; array. */
    public mixed $target_posx;
    /** @brief Original dynamic_tor: float64; array. */
    public mixed $dynamic_tor;
    /** @brief Original actual_jts: float64; array. */
    public mixed $actual_jts;
    /** @brief Original actual_ejt: float64; array. */
    public mixed $actual_ejt;
    /** @brief Original actual_ett: float64; array. */
    public mixed $actual_ett;
    /** @brief Original actual_bk: int8; array. */
    public mixed $actual_bk;
    /** @brief Original actual_mc: float64; array. */
    public mixed $actual_mc;
    /** @brief Original actual_mt: float64; array. */
    public mixed $actual_mt;
    /** @brief Original solution_space: int8; scalar. */
    public mixed $solution_space;
    /** @brief Original sync_time: float64; scalar. */
    public mixed $sync_time;
    /** @brief Original actual_bt: int8; array. */
    public mixed $actual_bt;
    /** @brief Original rotation_matrix: std_msgs/Float64MultiArray; sequence. */
    public mixed $rotation_matrix;
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
    /** @brief Original fActualW2B: float64; array. */
    public mixed $fActualW2B;
    /** @brief Original fCurrentPosW: std_msgs/Float64MultiArray; sequence. */
    public mixed $fCurrentPosW;
    /** @brief Original fCurrentVelW: float64; array. */
    public mixed $fCurrentVelW;
    /** @brief Original fWorldETT: float64; array. */
    public mixed $fWorldETT;
    /** @brief Original fTargetPosW: float64; array. */
    public mixed $fTargetPosW;
    /** @brief Original fTargetVelW: float64; array. */
    public mixed $fTargetVelW;
    /** @brief Original fRotationMatrixWorld: std_msgs/Float64MultiArray; sequence. */
    public mixed $fRotationMatrixWorld;
    /** @brief Original iActualUCN: int8; scalar. */
    public mixed $iActualUCN;
    /** @brief Original iParent: int8; scalar. */
    public mixed $iParent;
    /** @brief Original fCurrentPosU: std_msgs/Float64MultiArray; sequence. */
    public mixed $fCurrentPosU;
    /** @brief Original fCurrentVelU: float64; array. */
    public mixed $fCurrentVelU;
    /** @brief Original fUserETT: float64; array. */
    public mixed $fUserETT;
    /** @brief Original fTargetPosU: float64; array. */
    public mixed $fTargetPosU;
    /** @brief Original fTargetVelU: float64; array. */
    public mixed $fTargetVelU;
    /** @brief Original fRotationMatrixUser: std_msgs/Float64MultiArray; sequence. */
    public mixed $fRotationMatrixUser;
    /** @brief Original fActualAI: float64; array. */
    public mixed $fActualAI;
    /** @brief Original bActualSW: bool; array. */
    public mixed $bActualSW;
    /** @brief Original bActualSI: bool; array. */
    public mixed $bActualSI;
    /** @brief Original iActualAT: int8; array. */
    public mixed $iActualAT;
    /** @brief Original fTargetAO: float64; array. */
    public mixed $fTargetAO;
    /** @brief Original iTargetAT: int8; array. */
    public mixed $iTargetAT;
    /** @brief Original bActualES: bool; array. */
    public mixed $bActualES;
    /** @brief Original iActualED: int8; array. */
    public mixed $iActualED;
    /** @brief Original bActualER: bool; array. */
    public mixed $bActualER;
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
        $this->current_tool_posx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->current_tool_posx[] = 0.0;
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
        $this->actual_bk = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->actual_bk[] = 0;
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
        $this->solution_space = 0;
        $this->sync_time = 0.0;
        $this->actual_bt = [];
        for ($i = 0; $i < 5; ++$i)
        {
            $this->actual_bt[] = 0;
        }
        $this->rotation_matrix = [];
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
        $this->fActualW2B = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fActualW2B[] = 0.0;
        }
        $this->fCurrentPosW = [];
        $this->fCurrentVelW = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fCurrentVelW[] = 0.0;
        }
        $this->fWorldETT = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fWorldETT[] = 0.0;
        }
        $this->fTargetPosW = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fTargetPosW[] = 0.0;
        }
        $this->fTargetVelW = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fTargetVelW[] = 0.0;
        }
        $this->fRotationMatrixWorld = [];
        $this->iActualUCN = 0;
        $this->iParent = 0;
        $this->fCurrentPosU = [];
        $this->fCurrentVelU = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fCurrentVelU[] = 0.0;
        }
        $this->fUserETT = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fUserETT[] = 0.0;
        }
        $this->fTargetPosU = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fTargetPosU[] = 0.0;
        }
        $this->fTargetVelU = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fTargetVelU[] = 0.0;
        }
        $this->fRotationMatrixUser = [];
        $this->fActualAI = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fActualAI[] = 0.0;
        }
        $this->bActualSW = [];
        for ($i = 0; $i < 3; ++$i)
        {
            $this->bActualSW[] = false;
        }
        $this->bActualSI = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->bActualSI[] = false;
        }
        $this->iActualAT = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->iActualAT[] = 0;
        }
        $this->fTargetAO = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->fTargetAO[] = 0.0;
        }
        $this->iTargetAT = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->iTargetAT[] = 0;
        }
        $this->bActualES = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->bActualES[] = false;
        }
        $this->iActualED = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->iActualED[] = 0;
        }
        $this->bActualER = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->bActualER[] = false;
        }
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
/** @brief Complete original dsr_msgs/ServoJRTStream value. */
final class Ros1Dsr_msgsServoJRTStream
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsServoJRTStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsServoJRTStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ServoJStream value. */
final class Ros1Dsr_msgsServoJStream
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsServoJStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsServoJStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ServoLRTStream value. */
final class Ros1Dsr_msgsServoLRTStream
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsServoLRTStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsServoLRTStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/ServoLStream value. */
final class Ros1Dsr_msgsServoLStream
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
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
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsServoLStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsServoLStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetAccJRTRequest value. */
final class Ros1Dsr_msgsSetAccJRTRequest
{
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->acc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->acc[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetAccJRTRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetAccJRTRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetAccJRTResponse value. */
final class Ros1Dsr_msgsSetAccJRTResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetAccJRTResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetAccJRTResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetAccXRTRequest value. */
final class Ros1Dsr_msgsSetAccXRTRequest
{
    /** @brief Original trans: float64; scalar. */
    public mixed $trans;
    /** @brief Original rotation: float64; scalar. */
    public mixed $rotation;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->trans = 0.0;
        $this->rotation = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetAccXRTRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetAccXRTRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetAccXRTResponse value. */
final class Ros1Dsr_msgsSetAccXRTResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetAccXRTResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetAccXRTResponse', $bytes);
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
/** @brief Complete original dsr_msgs/SetDesiredForceRequest value. */
final class Ros1Dsr_msgsSetDesiredForceRequest
{
    /** @brief Original fd: float64; array. */
    public mixed $fd;
    /** @brief Original dir: int8; array. */
    public mixed $dir;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Original mod: int8; scalar. */
    public mixed $mod;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->fd = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->fd[] = 0.0;
        }
        $this->dir = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->dir[] = 0;
        }
        $this->ref = 0;
        $this->time = 0.0;
        $this->mod = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetDesiredForceRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetDesiredForceRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetDesiredForceResponse value. */
final class Ros1Dsr_msgsSetDesiredForceResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetDesiredForceResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetDesiredForceResponse', $bytes);
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
/** @brief Complete original dsr_msgs/SetRTControlInputRequest value. */
final class Ros1Dsr_msgsSetRTControlInputRequest
{
    /** @brief Original version: string; scalar. */
    public mixed $version;
    /** @brief Original period: float64; scalar. */
    public mixed $period;
    /** @brief Original loss: int32; scalar. */
    public mixed $loss;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->version = '';
        $this->period = 0.0;
        $this->loss = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRTControlInputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRTControlInputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRTControlInputResponse value. */
final class Ros1Dsr_msgsSetRTControlInputResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRTControlInputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRTControlInputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRTControlOutputRequest value. */
final class Ros1Dsr_msgsSetRTControlOutputRequest
{
    /** @brief Original version: string; scalar. */
    public mixed $version;
    /** @brief Original period: float64; scalar. */
    public mixed $period;
    /** @brief Original loss: int32; scalar. */
    public mixed $loss;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->version = '';
        $this->period = 0.0;
        $this->loss = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRTControlOutputRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRTControlOutputRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRTControlOutputResponse value. */
final class Ros1Dsr_msgsSetRTControlOutputResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRTControlOutputResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRTControlOutputResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRefCoordRequest value. */
final class Ros1Dsr_msgsSetRefCoordRequest
{
    /** @brief Original coord: int8; scalar. */
    public mixed $coord;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->coord = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRefCoordRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRefCoordRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRefCoordResponse value. */
final class Ros1Dsr_msgsSetRefCoordResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRefCoordResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRefCoordResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRobotControlRequest value. */
final class Ros1Dsr_msgsSetRobotControlRequest
{
    /** @brief Original robot_control: int8; scalar. */
    public mixed $robot_control;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_control = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRobotControlRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRobotControlRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetRobotControlResponse value. */
final class Ros1Dsr_msgsSetRobotControlResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetRobotControlResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetRobotControlResponse', $bytes);
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
/** @brief Complete original dsr_msgs/SetSafetyModeRequest value. */
final class Ros1Dsr_msgsSetSafetyModeRequest
{
    /** @brief Original safety_mode: int8; scalar. */
    public mixed $safety_mode;
    /** @brief Original safety_mode_event: int8; scalar. */
    public mixed $safety_mode_event;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->safety_mode = 0;
        $this->safety_mode_event = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetSafetyModeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetSafetyModeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetSafetyModeResponse value. */
final class Ros1Dsr_msgsSetSafetyModeResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetSafetyModeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetSafetyModeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetSingularityHandlingRequest value. */
final class Ros1Dsr_msgsSetSingularityHandlingRequest
{
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->mode = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetSingularityHandlingRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetSingularityHandlingRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetSingularityHandlingResponse value. */
final class Ros1Dsr_msgsSetSingularityHandlingResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetSingularityHandlingResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetSingularityHandlingResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetStiffnessxRequest value. */
final class Ros1Dsr_msgsSetStiffnessxRequest
{
    /** @brief Original stx: float64; array. */
    public mixed $stx;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->stx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->stx[] = 0.0;
        }
        $this->ref = 0;
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetStiffnessxRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetStiffnessxRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetStiffnessxResponse value. */
final class Ros1Dsr_msgsSetStiffnessxResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetStiffnessxResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetStiffnessxResponse', $bytes);
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
/** @brief Complete original dsr_msgs/SetToolShapeRequest value. */
final class Ros1Dsr_msgsSetToolShapeRequest
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetToolShapeRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetToolShapeRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetToolShapeResponse value. */
final class Ros1Dsr_msgsSetToolShapeResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetToolShapeResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetToolShapeResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetUserCartCoord1Request value. */
final class Ros1Dsr_msgsSetUserCartCoord1Request
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetUserCartCoord1Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetUserCartCoord1Request', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetUserCartCoord1Response value. */
final class Ros1Dsr_msgsSetUserCartCoord1Response
{
    /** @brief Original id: int8; scalar. */
    public mixed $id;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->id = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetUserCartCoord1Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetUserCartCoord1Response', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetUserCartCoord2Request value. */
final class Ros1Dsr_msgsSetUserCartCoord2Request
{
    /** @brief Original x1: float64; array. */
    public mixed $x1;
    /** @brief Original x2: float64; array. */
    public mixed $x2;
    /** @brief Original x3: float64; array. */
    public mixed $x3;
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->x1 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x1[] = 0.0;
        }
        $this->x2 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x2[] = 0.0;
        }
        $this->x3 = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->x3[] = 0.0;
        }
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetUserCartCoord2Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetUserCartCoord2Request', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetUserCartCoord2Response value. */
final class Ros1Dsr_msgsSetUserCartCoord2Response
{
    /** @brief Original id: int8; scalar. */
    public mixed $id;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->id = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetUserCartCoord2Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetUserCartCoord2Response', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetUserCartCoord3Request value. */
final class Ros1Dsr_msgsSetUserCartCoord3Request
{
    /** @brief Original u1: float64; array. */
    public mixed $u1;
    /** @brief Original v1: float64; array. */
    public mixed $v1;
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->u1 = [];
        for ($i = 0; $i < 3; ++$i)
        {
            $this->u1[] = 0.0;
        }
        $this->v1 = [];
        for ($i = 0; $i < 3; ++$i)
        {
            $this->v1[] = 0.0;
        }
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->ref = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetUserCartCoord3Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetUserCartCoord3Request', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetUserCartCoord3Response value. */
final class Ros1Dsr_msgsSetUserCartCoord3Response
{
    /** @brief Original id: int8; scalar. */
    public mixed $id;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->id = 0;
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetUserCartCoord3Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetUserCartCoord3Response', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetVelJRTRequest value. */
final class Ros1Dsr_msgsSetVelJRTRequest
{
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetVelJRTRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetVelJRTRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetVelJRTResponse value. */
final class Ros1Dsr_msgsSetVelJRTResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetVelJRTResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetVelJRTResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetVelXRTRequest value. */
final class Ros1Dsr_msgsSetVelXRTRequest
{
    /** @brief Original trans: float64; scalar. */
    public mixed $trans;
    /** @brief Original rotation: float64; scalar. */
    public mixed $rotation;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->trans = 0.0;
        $this->rotation = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSetVelXRTRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetVelXRTRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SetVelXRTResponse value. */
final class Ros1Dsr_msgsSetVelXRTResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsSetVelXRTResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSetVelXRTResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SpeedJRTStream value. */
final class Ros1Dsr_msgsSpeedJRTStream
{
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSpeedJRTStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSpeedJRTStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SpeedJStream value. */
final class Ros1Dsr_msgsSpeedJStream
{
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSpeedJStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSpeedJStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SpeedLRTStream value. */
final class Ros1Dsr_msgsSpeedLRTStream
{
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSpeedLRTStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSpeedLRTStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/SpeedLStream value. */
final class Ros1Dsr_msgsSpeedLStream
{
    /** @brief Original vel: float64; array. */
    public mixed $vel;
    /** @brief Original acc: float64; array. */
    public mixed $acc;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->vel = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->vel[] = 0.0;
        }
        $this->acc = [];
        for ($i = 0; $i < 2; ++$i)
        {
            $this->acc[] = 0.0;
        }
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsSpeedLStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsSpeedLStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/StartRTControlRequest value. */
final class Ros1Dsr_msgsStartRTControlRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsStartRTControlRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsStartRTControlRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/StartRTControlResponse value. */
final class Ros1Dsr_msgsStartRTControlResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsStartRTControlResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsStartRTControlResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/StopRTControlRequest value. */
final class Ros1Dsr_msgsStopRTControlRequest
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsStopRTControlRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsStopRTControlRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/StopRTControlResponse value. */
final class Ros1Dsr_msgsStopRTControlResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsStopRTControlResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsStopRTControlResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/TaskComplianceCtrlRequest value. */
final class Ros1Dsr_msgsTaskComplianceCtrlRequest
{
    /** @brief Original stx: float64; array. */
    public mixed $stx;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->stx = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->stx[] = 0.0;
        }
        $this->ref = 0;
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsTaskComplianceCtrlRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsTaskComplianceCtrlRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/TaskComplianceCtrlResponse value. */
final class Ros1Dsr_msgsTaskComplianceCtrlResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsTaskComplianceCtrlResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsTaskComplianceCtrlResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/TorqueRTStream value. */
final class Ros1Dsr_msgsTorqueRTStream
{
    /** @brief Original tor: float64; array. */
    public mixed $tor;
    /** @brief Original time: float64; scalar. */
    public mixed $time;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->tor = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->tor[] = 0.0;
        }
        $this->time = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsTorqueRTStream', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsTorqueRTStream', $bytes);
    }
}
/** @brief Complete original dsr_msgs/TransRequest value. */
final class Ros1Dsr_msgsTransRequest
{
    /** @brief Original pos: float64; array. */
    public mixed $pos;
    /** @brief Original delta: float64; array. */
    public mixed $delta;
    /** @brief Original ref: int8; scalar. */
    public mixed $ref;
    /** @brief Original ref_out: int8; scalar. */
    public mixed $ref_out;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->pos[] = 0.0;
        }
        $this->delta = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->delta[] = 0.0;
        }
        $this->ref = 0;
        $this->ref_out = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsTransRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsTransRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/TransResponse value. */
final class Ros1Dsr_msgsTransResponse
{
    /** @brief Original trans_pos: float64; array. */
    public mixed $trans_pos;
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->trans_pos = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->trans_pos[] = 0.0;
        }
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsTransResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsTransResponse', $bytes);
    }
}
/** @brief Complete original dsr_msgs/WriteDataRTRequest value. */
final class Ros1Dsr_msgsWriteDataRTRequest
{
    /** @brief Original external_force_torque: float64; array. */
    public mixed $external_force_torque;
    /** @brief Original external_digital_input: int32; scalar. */
    public mixed $external_digital_input;
    /** @brief Original external_digital_output: int32; scalar. */
    public mixed $external_digital_output;
    /** @brief Original external_analog_input: float64; array. */
    public mixed $external_analog_input;
    /** @brief Original external_analog_output: float64; array. */
    public mixed $external_analog_output;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->external_force_torque = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->external_force_torque[] = 0.0;
        }
        $this->external_digital_input = 0;
        $this->external_digital_output = 0;
        $this->external_analog_input = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->external_analog_input[] = 0.0;
        }
        $this->external_analog_output = [];
        for ($i = 0; $i < 6; ++$i)
        {
            $this->external_analog_output[] = 0.0;
        }
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Dsr_msgsWriteDataRTRequest', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsWriteDataRTRequest', $bytes);
    }
}
/** @brief Complete original dsr_msgs/WriteDataRTResponse value. */
final class Ros1Dsr_msgsWriteDataRTResponse
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
        return Catalog::wire()->encode('Ros1Dsr_msgsWriteDataRTResponse', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Dsr_msgsWriteDataRTResponse', $bytes);
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
                'Ros1Dsr_msgsAlignAxis1Request' => [
                    'symbol' => 'Ros1Dsr_msgsAlignAxis1Request',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/AlignAxis1Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_708643fa3a09d74f06ee9ba327c3fc05fb60dd73447ea95e43d9d96f7c5b6e54',
                    'minimum' => 170,
                    'maximum' => 170,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'x1',
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
                            'name' => 'x2',
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
                            'name' => 'x3',
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
                            'name' => 'source_vect',
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
                            'name' => 'axis',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsAlignAxis1Request::class
                ],
                'Ros1Dsr_msgsAlignAxis1Response' => [
                    'symbol' => 'Ros1Dsr_msgsAlignAxis1Response',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/AlignAxis1Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_dda31d7d89f3f8b2bb3c68c0d685a30ccfc32a9c363ea5399a1777da80d2f33d',
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
                    'class' => Ros1Dsr_msgsAlignAxis1Response::class
                ],
                'Ros1Dsr_msgsAlignAxis2Request' => [
                    'symbol' => 'Ros1Dsr_msgsAlignAxis2Request',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/AlignAxis2Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_3e1c136bdfe0d97015a19c2fffc6b40460933a3ada556e57142d6309f99fe1ea',
                    'minimum' => 50,
                    'maximum' => 50,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'target_vect',
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
                            'name' => 'source_vect',
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
                            'name' => 'axis',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsAlignAxis2Request::class
                ],
                'Ros1Dsr_msgsAlignAxis2Response' => [
                    'symbol' => 'Ros1Dsr_msgsAlignAxis2Response',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/AlignAxis2Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_79618c7ede73decd7a8cb4f0cc013b95c463ca37126d49c0b54e17ad17224ade',
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
                    'class' => Ros1Dsr_msgsAlignAxis2Response::class
                ],
                'Ros1Dsr_msgsAlterMotionRequest' => [
                    'symbol' => 'Ros1Dsr_msgsAlterMotionRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/AlterMotionRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2230e6b8bc09c902ab6ba9ed4e9fdb59a9e8d691cf614599e5f96fd8d2820787',
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
                    'class' => Ros1Dsr_msgsAlterMotionRequest::class
                ],
                'Ros1Dsr_msgsAlterMotionResponse' => [
                    'symbol' => 'Ros1Dsr_msgsAlterMotionResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/AlterMotionResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d27db25bae1cbb78fedfb24b96acbe023949948766ed856ad91e942fe367f716',
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
                    'class' => Ros1Dsr_msgsAlterMotionResponse::class
                ],
                'Ros1Dsr_msgsAlterMotionStream' => [
                    'symbol' => 'Ros1Dsr_msgsAlterMotionStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/AlterMotionStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_18119f940783ffa402b9f51773f9eac801b70f891039aa1da99b1bea04bc50ac',
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
                    'class' => Ros1Dsr_msgsAlterMotionStream::class
                ],
                'Ros1Dsr_msgsCalcCoordRequest' => [
                    'symbol' => 'Ros1Dsr_msgsCalcCoordRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CalcCoordRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_7124a7312fd476b49ef2fd9fb468ea19ce7ae644da5c8fffb3ddfc67c175c70d',
                    'minimum' => 195,
                    'maximum' => 195,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'input_pos_cnt',
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
                            'name' => 'x1',
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
                            'name' => 'x2',
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
                            'name' => 'x3',
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
                            'name' => 'x4',
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
                            'name' => 'mod',
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
                    'class' => Ros1Dsr_msgsCalcCoordRequest::class
                ],
                'Ros1Dsr_msgsCalcCoordResponse' => [
                    'symbol' => 'Ros1Dsr_msgsCalcCoordResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CalcCoordResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c34ef9bfe05948a853305174e1084443e5358bc5877c0dd5d05ba6655dc6d993',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'conv_posx',
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
                    'class' => Ros1Dsr_msgsCalcCoordResponse::class
                ],
                'Ros1Dsr_msgsChangeOperationSpeedRequest' => [
                    'symbol' => 'Ros1Dsr_msgsChangeOperationSpeedRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ChangeOperationSpeedRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_8d8beb40ab8ebd7d0f69509832bc71ac9e460ec01bdecc41a82f4eab28017616',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'speed',
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
                    'class' => Ros1Dsr_msgsChangeOperationSpeedRequest::class
                ],
                'Ros1Dsr_msgsChangeOperationSpeedResponse' => [
                    'symbol' => 'Ros1Dsr_msgsChangeOperationSpeedResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ChangeOperationSpeedResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_bf8b7e30e18d38f6dde9b02576151cb57c4789cef7b7ea6c56fc8581eafc08f6',
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
                    'class' => Ros1Dsr_msgsChangeOperationSpeedResponse::class
                ],
                'Ros1Dsr_msgsCheckForceConditionRequest' => [
                    'symbol' => 'Ros1Dsr_msgsCheckForceConditionRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckForceConditionRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_590694ea44b90bb2aa6fa1f903d129e2a58a33af58fe26c9f67f9b0272b34673',
                    'minimum' => 18,
                    'maximum' => 18,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'axis',
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
                            'name' => 'min',
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
                            'name' => 'max',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsCheckForceConditionRequest::class
                ],
                'Ros1Dsr_msgsCheckForceConditionResponse' => [
                    'symbol' => 'Ros1Dsr_msgsCheckForceConditionResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckForceConditionResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6d0cb8413b824c1a469f77cd592946e67dd0a0c15d5945b0ea908c0e0e7a3270',
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
                    'class' => Ros1Dsr_msgsCheckForceConditionResponse::class
                ],
                'Ros1Dsr_msgsCheckMotionRequest' => [
                    'symbol' => 'Ros1Dsr_msgsCheckMotionRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckMotionRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f38bee5e76ececdf4868a092e4ee673da6bcd95db9baacd504ef31017b94b7d5',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsCheckMotionRequest::class
                ],
                'Ros1Dsr_msgsCheckMotionResponse' => [
                    'symbol' => 'Ros1Dsr_msgsCheckMotionResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckMotionResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2e11dbf1b2a447dd3b6f302f3839b2383f6c3e0c0408c138cb7acb12062df480',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'status',
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
                    'class' => Ros1Dsr_msgsCheckMotionResponse::class
                ],
                'Ros1Dsr_msgsCheckOrientationCondition1Request' => [
                    'symbol' => 'Ros1Dsr_msgsCheckOrientationCondition1Request',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckOrientationCondition1Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_048532f02d47e889e7299755886812a454c0457d4c70fda58bd090c959a52c6e',
                    'minimum' => 99,
                    'maximum' => 99,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'axis',
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
                            'name' => 'min',
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
                            'name' => 'max',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsCheckOrientationCondition1Request::class
                ],
                'Ros1Dsr_msgsCheckOrientationCondition1Response' => [
                    'symbol' => 'Ros1Dsr_msgsCheckOrientationCondition1Response',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckOrientationCondition1Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4b8359166eedb70a505b0d1829168618088cbedada2bc5d6f7d9e9a5dfa79b32',
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
                    'class' => Ros1Dsr_msgsCheckOrientationCondition1Response::class
                ],
                'Ros1Dsr_msgsCheckOrientationCondition2Request' => [
                    'symbol' => 'Ros1Dsr_msgsCheckOrientationCondition2Request',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckOrientationCondition2Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_42287a8e7cef2b93a1bd5778de6ae4ef4d1aa484dd0c74fcd29c660b400b6ff0',
                    'minimum' => 67,
                    'maximum' => 67,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'axis',
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
                            'name' => 'min',
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
                            'name' => 'max',
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
                    'class' => Ros1Dsr_msgsCheckOrientationCondition2Request::class
                ],
                'Ros1Dsr_msgsCheckOrientationCondition2Response' => [
                    'symbol' => 'Ros1Dsr_msgsCheckOrientationCondition2Response',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckOrientationCondition2Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_334774329557c04594f02ee344f0af39d250c482c3f9c4b2dd5f275e87880e83',
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
                    'class' => Ros1Dsr_msgsCheckOrientationCondition2Response::class
                ],
                'Ros1Dsr_msgsCheckPositionConditionRequest' => [
                    'symbol' => 'Ros1Dsr_msgsCheckPositionConditionRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckPositionConditionRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_973c397ac52f4eba5f5956bd25c6552749d14ebd070ea659cea7601bf2bfdbeb',
                    'minimum' => 67,
                    'maximum' => 67,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'axis',
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
                            'name' => 'min',
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
                            'name' => 'max',
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
                    'class' => Ros1Dsr_msgsCheckPositionConditionRequest::class
                ],
                'Ros1Dsr_msgsCheckPositionConditionResponse' => [
                    'symbol' => 'Ros1Dsr_msgsCheckPositionConditionResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CheckPositionConditionResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e809f6231e9bea172a7c00c6d32bb553e97026a607a6070e6fa82d007c3bf94a',
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
                    'class' => Ros1Dsr_msgsCheckPositionConditionResponse::class
                ],
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
                'Ros1Dsr_msgsConnectRTControlRequest' => [
                    'symbol' => 'Ros1Dsr_msgsConnectRTControlRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConnectRTControlRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c9843ae994672ab18e264c025f929a10d208952e0583da7200b6aa26ec3eb755',
                    'minimum' => 8,
                    'maximum' => 264,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'ip_address',
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
                    'class' => Ros1Dsr_msgsConnectRTControlRequest::class
                ],
                'Ros1Dsr_msgsConnectRTControlResponse' => [
                    'symbol' => 'Ros1Dsr_msgsConnectRTControlResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ConnectRTControlResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_716d95e3f734dff8442935476028644077836389e8d54f73661fd3c52804f5a4',
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
                    'class' => Ros1Dsr_msgsConnectRTControlResponse::class
                ],
                'Ros1Dsr_msgsCoordTransformRequest' => [
                    'symbol' => 'Ros1Dsr_msgsCoordTransformRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CoordTransformRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_28b33cdb83f95f41982ccc99d276cc4efb34ff33707101e1d56cf63580095436',
                    'minimum' => 50,
                    'maximum' => 50,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'pos_in',
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
                            'name' => 'ref_in',
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
                            'name' => 'ref_out',
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
                    'class' => Ros1Dsr_msgsCoordTransformRequest::class
                ],
                'Ros1Dsr_msgsCoordTransformResponse' => [
                    'symbol' => 'Ros1Dsr_msgsCoordTransformResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/CoordTransformResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1b9492d45f096bfd2a53e1ed8a701d53698a7aebc525b70e95de70c6275035c9',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'conv_posx',
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
                    'class' => Ros1Dsr_msgsCoordTransformResponse::class
                ],
                'Ros1Dsr_msgsDisableAlterMotionRequest' => [
                    'symbol' => 'Ros1Dsr_msgsDisableAlterMotionRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DisableAlterMotionRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4ff4905d3843c08022003c96abd4031a5438078e919e0b8e43554aae3229bbc1',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsDisableAlterMotionRequest::class
                ],
                'Ros1Dsr_msgsDisableAlterMotionResponse' => [
                    'symbol' => 'Ros1Dsr_msgsDisableAlterMotionResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DisableAlterMotionResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_feff25cf5412112d1ebc9fd4dd0aca62f1a9af7f63673a0633f6f32e915a27b1',
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
                    'class' => Ros1Dsr_msgsDisableAlterMotionResponse::class
                ],
                'Ros1Dsr_msgsDisconnectRTControlRequest' => [
                    'symbol' => 'Ros1Dsr_msgsDisconnectRTControlRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DisconnectRTControlRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4fb305bf56dfd6e1cbaa3f5a9e86f7fdb9cd3c5822447dbdd953944545686d82',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsDisconnectRTControlRequest::class
                ],
                'Ros1Dsr_msgsDisconnectRTControlResponse' => [
                    'symbol' => 'Ros1Dsr_msgsDisconnectRTControlResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/DisconnectRTControlResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4e9481ecb0b6a13cf344d2fab2f044eb7a75d9d3277fd5dba87bd73f107c822e',
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
                    'class' => Ros1Dsr_msgsDisconnectRTControlResponse::class
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
                'Ros1Dsr_msgsEnableAlterMotionRequest' => [
                    'symbol' => 'Ros1Dsr_msgsEnableAlterMotionRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/EnableAlterMotionRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_fa62f478a04e6d92a170e62e1ea690f6e6827e3784388fab3ecc58966c25c99f',
                    'minimum' => 38,
                    'maximum' => 38,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'n',
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
                            'name' => 'limit_dPOS',
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
                            'name' => 'limit_dPOS_per',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsEnableAlterMotionRequest::class
                ],
                'Ros1Dsr_msgsEnableAlterMotionResponse' => [
                    'symbol' => 'Ros1Dsr_msgsEnableAlterMotionResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/EnableAlterMotionResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_24f3d751a4b49ff5f3280893ecb2f896ae57a9a05309a8827c5ae8eb18daf885',
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
                    'class' => Ros1Dsr_msgsEnableAlterMotionResponse::class
                ],
                'Ros1Dsr_msgsFkinRequest' => [
                    'symbol' => 'Ros1Dsr_msgsFkinRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/FkinRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6bbd7ead217dd4d6ed0f5d044df5a32d3be159fcc929a395396ec7c1208c325d',
                    'minimum' => 49,
                    'maximum' => 49,
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsFkinRequest::class
                ],
                'Ros1Dsr_msgsFkinResponse' => [
                    'symbol' => 'Ros1Dsr_msgsFkinResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/FkinResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_86e79e02833be0498aef75436df542063454b0e5b0a46fb153467afc5a492c94',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'conv_posx',
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
                    'class' => Ros1Dsr_msgsFkinResponse::class
                ],
                'Ros1Dsr_msgsGetControlModeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetControlModeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetControlModeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c7872f67adf097ccf8b60b910ea0c9ce8831a88b1ab82827b3789355b19fbaab',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetControlModeRequest::class
                ],
                'Ros1Dsr_msgsGetControlModeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetControlModeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetControlModeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_29bcb7b65473a8e0c70660a270b9110c95d486358b6ccece3580214cb47d8f4f',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'control_mode',
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
                    'class' => Ros1Dsr_msgsGetControlModeResponse::class
                ],
                'Ros1Dsr_msgsGetControlSpaceRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetControlSpaceRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetControlSpaceRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_eaff6359de691c20936219f59c4c63b1a439ef1367afee1e554d22c013bf74cf',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetControlSpaceRequest::class
                ],
                'Ros1Dsr_msgsGetControlSpaceResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetControlSpaceResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetControlSpaceResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4ef8cc2465e8d38e5d44fa83e907ea5658f14f5f4f95776f8044f791e8311dfb',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'space',
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
                    'class' => Ros1Dsr_msgsGetControlSpaceResponse::class
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
                    'codec_identity' => 'UWVMROS1_a23bcb46f249dc92a614e37a44ebb9e683921ee4104a22446855c8f3b35a6be7',
                    'minimum' => 9,
                    'maximum' => 9,
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
                        ],
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
                    'codec_identity' => 'UWVMROS1_f838432468390d51d64a6d9bc714b503b168a9fedfabcfb96cce7a202a34613f',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
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
                    'class' => Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse::class
                ],
                'Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCtrlBoxDigitalOutputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a33419794c2431ab9d5b6c3a96becb14edca0d7b00953aa7a7ec1f11ea7bbdb5',
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
                    'class' => Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest::class
                ],
                'Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCtrlBoxDigitalOutputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_cf472a4ed84d8005ce6ea97ae3c2fd72aba049015924069ee16c79ad41c76534',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
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
                    'class' => Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse::class
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
                    'codec_identity' => 'UWVMROS1_8b57d2561b1a04d2ddb60c29f9a4ffb6ba6eeb2f73e8b7e704ee091b49861fe1',
                    'minimum' => 49,
                    'maximum' => 49,
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
                    'class' => Ros1Dsr_msgsGetCurrentPoseResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentPosjRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentPosjRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentPosjRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5a4d2e7f7304671d96e5ee9ff83ad957d6e74f49ac2562aea6e3dbfcc1726be7',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetCurrentPosjRequest::class
                ],
                'Ros1Dsr_msgsGetCurrentPosjResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentPosjResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentPosjResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6d9f277e82052e84ee2494991ffcca6b8cb8457c2d0fdeb805122f99ae583c29',
                    'minimum' => 49,
                    'maximum' => 49,
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
                    'class' => Ros1Dsr_msgsGetCurrentPosjResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentPosxRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentPosxRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentPosxRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e134a62a318034e8ab66c88085f8e9f0380500394b9d61bb2998a618fc7d3437',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetCurrentPosxRequest::class
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
                'Ros1Dsr_msgsGetCurrentPosxResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentPosxResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentPosxResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2fb411b9e660dddd17fcd65507bd6437db63aa41b3d1eeecd5c0048405828bf4',
                    'minimum' => 5,
                    'maximum' => 2213,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'task_pos_info',
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
                    'class' => Ros1Dsr_msgsGetCurrentPosxResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentRotmRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentRotmRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentRotmRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e0f4ee3e0c208a87004cca9771a0696f4acfa8a09ab6a861b8a83bd28ccfb436',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetCurrentRotmRequest::class
                ],
                'Ros1Dsr_msgsGetCurrentRotmResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentRotmResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentRotmResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6cfa5fffb8e5c1575cb821b9330dd9e1f60ab3b325d54ff4d00bc8859e7535d1',
                    'minimum' => 5,
                    'maximum' => 2213,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'rot_matrix',
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
                    'class' => Ros1Dsr_msgsGetCurrentRotmResponse::class
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
                    'codec_identity' => 'UWVMROS1_e7ef22b6516c92acb76e6173e0d14f0b7c25a7ec669ef18060b4f1158e877c68',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'sol_space',
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
                    'codec_identity' => 'UWVMROS1_e0041507b5cdc970e31a6df40a0af22a4115724b1e4c4f615b54c788cf2f27b6',
                    'minimum' => 5,
                    'maximum' => 261,
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
                        ],
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
                    'codec_identity' => 'UWVMROS1_ab0de7b251e53fe03818ec0169e428bf70c27bdef187c792c54e65e37b2e717b',
                    'minimum' => 5,
                    'maximum' => 261,
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
                        ],
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
                    'class' => Ros1Dsr_msgsGetCurrentToolResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentToolFlangePosxRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentToolFlangePosxRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentToolFlangePosxRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c5377881231716926a6e0abeff2b115eaf5292f0d7e41478a7f1b4ccf7896d53',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetCurrentToolFlangePosxRequest::class
                ],
                'Ros1Dsr_msgsGetCurrentToolFlangePosxResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentToolFlangePosxResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentToolFlangePosxResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0de91ced161ef1b14003e0e248887f641fd366500674aae15cbbb0f7d915caac',
                    'minimum' => 49,
                    'maximum' => 49,
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
                    'class' => Ros1Dsr_msgsGetCurrentToolFlangePosxResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentVeljRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentVeljRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentVeljRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ee4ef9a4e0b65ed58844e3b545094c569113b23d2478717306a14edb399242fa',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetCurrentVeljRequest::class
                ],
                'Ros1Dsr_msgsGetCurrentVeljResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentVeljResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentVeljResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_000fed042d8de5fd8a1d95fe6b45cec5e4ad20ea2833199d7836ebb9e3ae5b2c',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'joint_speed',
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
                    'class' => Ros1Dsr_msgsGetCurrentVeljResponse::class
                ],
                'Ros1Dsr_msgsGetCurrentVelxRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentVelxRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentVelxRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6f37a0ffd22a29a6b7812d551680cacb146192c25b234806ff16686992c34efb',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetCurrentVelxRequest::class
                ],
                'Ros1Dsr_msgsGetCurrentVelxResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetCurrentVelxResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetCurrentVelxResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_98c1cd7ae5663063ce12ea61d9be3dbfd37e9e0b10b6a7f4cc1c212419392f40',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'vel',
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
                    'class' => Ros1Dsr_msgsGetCurrentVelxResponse::class
                ],
                'Ros1Dsr_msgsGetDesiredPosjRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetDesiredPosjRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDesiredPosjRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2937a5625d07a7681c80c13557018978107abc537a22ee85ff562f15925caf1e',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetDesiredPosjRequest::class
                ],
                'Ros1Dsr_msgsGetDesiredPosjResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetDesiredPosjResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDesiredPosjResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_11ac4a05e65b0142f18a152904020780179fadfe540fbff7d5c53e4f177bc833',
                    'minimum' => 49,
                    'maximum' => 49,
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
                    'class' => Ros1Dsr_msgsGetDesiredPosjResponse::class
                ],
                'Ros1Dsr_msgsGetDesiredPosxRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetDesiredPosxRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDesiredPosxRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_812744777c143dfb5c4b60f71ab9461b3e95ead9e599473f87f88ba4f21d3563',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetDesiredPosxRequest::class
                ],
                'Ros1Dsr_msgsGetDesiredPosxResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetDesiredPosxResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDesiredPosxResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2cf88bb8a14a1c2083a659a509fc1d29531aed1a1f9eb18590ad4381ff00a10a',
                    'minimum' => 49,
                    'maximum' => 49,
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
                    'class' => Ros1Dsr_msgsGetDesiredPosxResponse::class
                ],
                'Ros1Dsr_msgsGetDesiredVeljRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetDesiredVeljRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDesiredVeljRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0b93381c0f1e5f57e086d316056912ecb10e3697346e5f250fa5efa612d76e99',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetDesiredVeljRequest::class
                ],
                'Ros1Dsr_msgsGetDesiredVeljResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetDesiredVeljResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDesiredVeljResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_753747a45767aad1a06f610e11bfd405d07aa365ff1ede44c4b78de99ef6ef22',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'joint_vel',
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
                    'class' => Ros1Dsr_msgsGetDesiredVeljResponse::class
                ],
                'Ros1Dsr_msgsGetDesiredVelxRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetDesiredVelxRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDesiredVelxRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f26e4ab51d82b3afdaf0f628f62346c740e2bb331d7f482001662884fd6d8aff',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetDesiredVelxRequest::class
                ],
                'Ros1Dsr_msgsGetDesiredVelxResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetDesiredVelxResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetDesiredVelxResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_30fd91ceb67fa5a2cdaf78fc9b537befc89bac4e3db1203f1da10181fb7d9e51',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'vel',
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
                    'class' => Ros1Dsr_msgsGetDesiredVelxResponse::class
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
                    'codec_identity' => 'UWVMROS1_2d0e1a81d0a1b5cda2cc3c4a9a5e627878324c67a0843e8a47583d4d86c149c9',
                    'minimum' => 2,
                    'maximum' => 2,
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
                        ],
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
                    'codec_identity' => 'UWVMROS1_bdcda8b96e5a22a9143c70f5af6ea56deabe1c68fbf03eb176689c14cc2f50e4',
                    'minimum' => 49,
                    'maximum' => 49,
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
                        ],
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
                    'codec_identity' => 'UWVMROS1_da41dbdbac4580eaab3ad355caaa9e0075b87894256722521303559c698b9962',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'jts',
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
                    'codec_identity' => 'UWVMROS1_477c434da50cd9b26e93b02ca9072542afc22b62084cf5a9eb785cd43cb4d61e',
                    'minimum' => 25,
                    'maximum' => 793,
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
                        ],
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
                    'codec_identity' => 'UWVMROS1_29360b7702eec80f1dd7915cc8bb58fb5126d93b545cb921b7eb9c3ffa0b49d5',
                    'minimum' => 5,
                    'maximum' => 5,
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
                        ],
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
                    'class' => Ros1Dsr_msgsGetModbusInputResponse::class
                ],
                'Ros1Dsr_msgsGetOrientationErrorRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetOrientationErrorRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetOrientationErrorRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_db1e637c2f187602b5c3aaa2b3e33fb1b7636b28281832d393d3516984e9e01e',
                    'minimum' => 97,
                    'maximum' => 97,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'xd',
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
                            'name' => 'xc',
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
                            'name' => 'axis',
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
                    'class' => Ros1Dsr_msgsGetOrientationErrorRequest::class
                ],
                'Ros1Dsr_msgsGetOrientationErrorResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetOrientationErrorResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetOrientationErrorResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_909be18b65c95198ce5c5a7b2a11ae97cfad9509c360aec833bbfd239497b9e6',
                    'minimum' => 5,
                    'maximum' => 5,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'ori_error',
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
                        ],
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
                    'class' => Ros1Dsr_msgsGetOrientationErrorResponse::class
                ],
                'Ros1Dsr_msgsGetRTControlInputDataListRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetRTControlInputDataListRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRTControlInputDataListRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_7f10baf8b008b8de00c2fcc20aea49615584980c73d20b6018e39e5a6b98542e',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'version',
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
                    'class' => Ros1Dsr_msgsGetRTControlInputDataListRequest::class
                ],
                'Ros1Dsr_msgsGetRTControlInputDataListResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetRTControlInputDataListResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRTControlInputDataListResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e930906de3694556f29baaacac82899dab1ad90716d52c67789e2494ed64ec63',
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
                    'class' => Ros1Dsr_msgsGetRTControlInputDataListResponse::class
                ],
                'Ros1Dsr_msgsGetRTControlInputVersionListRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetRTControlInputVersionListRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRTControlInputVersionListRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e9bef63b747d0b01343249f0df32a27a7f97a5b031ec2215fac346a9df113fb8',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetRTControlInputVersionListRequest::class
                ],
                'Ros1Dsr_msgsGetRTControlInputVersionListResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetRTControlInputVersionListResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRTControlInputVersionListResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d7c478e4dce0983f786db7df29798eee087e500169b9e1f676a3c57c835d94f1',
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
                            'name' => 'version',
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
                    'class' => Ros1Dsr_msgsGetRTControlInputVersionListResponse::class
                ],
                'Ros1Dsr_msgsGetRTControlOutputDataListRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetRTControlOutputDataListRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRTControlOutputDataListRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ce20938bf62ee2d5389c4151d16af5e0cb8f935b5cf4c7e14070f269a0baa524',
                    'minimum' => 4,
                    'maximum' => 260,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'version',
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
                    'class' => Ros1Dsr_msgsGetRTControlOutputDataListRequest::class
                ],
                'Ros1Dsr_msgsGetRTControlOutputDataListResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetRTControlOutputDataListResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRTControlOutputDataListResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_030d3e350790b44f0101b263558518a807d97c772289c2eb16763808be6b1d5f',
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
                    'class' => Ros1Dsr_msgsGetRTControlOutputDataListResponse::class
                ],
                'Ros1Dsr_msgsGetRTControlOutputVersionListRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetRTControlOutputVersionListRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRTControlOutputVersionListRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_67330fd6822948e262d4d68e48593e67189bada0e5281607a074235f086b34d0',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetRTControlOutputVersionListRequest::class
                ],
                'Ros1Dsr_msgsGetRTControlOutputVersionListResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetRTControlOutputVersionListResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetRTControlOutputVersionListResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_19ca1e03d18347033f071489428024a1f9204b64aced31a42c8161d11e5fa76b',
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
                            'name' => 'version',
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
                    'class' => Ros1Dsr_msgsGetRTControlOutputVersionListResponse::class
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
                    'codec_identity' => 'UWVMROS1_559f9328cba413aa572f66818aace6061020777c2cbb6bea475adf3cbca1a88c',
                    'minimum' => 2,
                    'maximum' => 2,
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
                        ],
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
                    'codec_identity' => 'UWVMROS1_eaef45ce098108c89a49b2ed3e0cfeba901d7a9e8e4fee86d7c646e181cfe3c4',
                    'minimum' => 2,
                    'maximum' => 2,
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
                        ],
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
                    'codec_identity' => 'UWVMROS1_1e210aa1fd0a833b8d8dedbbda759f12b860c7cbe161f2bed50b41015451ba51',
                    'minimum' => 2,
                    'maximum' => 2,
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
                        ],
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
                    'codec_identity' => 'UWVMROS1_b7f7ec9a3e0bf607295bc5d0af1d82d192bc35103401c913c4ed8a8c77811c7f',
                    'minimum' => 2,
                    'maximum' => 2,
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
                        ],
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
                    'class' => Ros1Dsr_msgsGetRobotSystemResponse::class
                ],
                'Ros1Dsr_msgsGetSolutionSpaceRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetSolutionSpaceRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetSolutionSpaceRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_416c6623add6fed0900f585292905890932f326162a1431b481b28aac52c7bf3',
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
                    'class' => Ros1Dsr_msgsGetSolutionSpaceRequest::class
                ],
                'Ros1Dsr_msgsGetSolutionSpaceResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetSolutionSpaceResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetSolutionSpaceResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d6cf69fb571a6947cabc01a594e84d1eed7a581511e755db9dde5452f1230511',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'sol_space',
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
                    'class' => Ros1Dsr_msgsGetSolutionSpaceResponse::class
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
                    'codec_identity' => 'UWVMROS1_ba289ccf352c0560a70d99ec99a95c01b84ab7436f5638874ae4e1d89364a8b6',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
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
                    'class' => Ros1Dsr_msgsGetToolDigitalInputResponse::class
                ],
                'Ros1Dsr_msgsGetToolDigitalOutputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetToolDigitalOutputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetToolDigitalOutputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_bfed701bd5b788685802e15709a594b065dff57f5c6706b14ad41bc6f80736ce',
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
                    'class' => Ros1Dsr_msgsGetToolDigitalOutputRequest::class
                ],
                'Ros1Dsr_msgsGetToolDigitalOutputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetToolDigitalOutputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetToolDigitalOutputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0873d83b7b79d0270af4d61d86fd77bb248a75ebfe91177e4acc9299c46a309d',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
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
                    'class' => Ros1Dsr_msgsGetToolDigitalOutputResponse::class
                ],
                'Ros1Dsr_msgsGetToolForceRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetToolForceRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetToolForceRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2df77a1075113a1c8febd77c89e13417c596c6d1d4abd26454a4439620e397b4',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetToolForceRequest::class
                ],
                'Ros1Dsr_msgsGetToolForceResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetToolForceResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetToolForceResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_11dfdda93d1818dbcb331bba86cf08815f24bb8adb34e70792a730ce27d95ed9',
                    'minimum' => 49,
                    'maximum' => 49,
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
                        ],
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
                    'class' => Ros1Dsr_msgsGetToolForceResponse::class
                ],
                'Ros1Dsr_msgsGetUserCartCoordRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetUserCartCoordRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetUserCartCoordRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_07824b4c8403d59fad8e8a33c615fcf96a0556bd8de1c1639a16d3aa28db0637',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'id',
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
                    'class' => Ros1Dsr_msgsGetUserCartCoordRequest::class
                ],
                'Ros1Dsr_msgsGetUserCartCoordResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetUserCartCoordResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetUserCartCoordResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2fea411082260a3dbaf3fb3f4c1314f74dda9fb864222fe5837e1d5f62502a22',
                    'minimum' => 50,
                    'maximum' => 50,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'conv_posx',
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
                    'class' => Ros1Dsr_msgsGetUserCartCoordResponse::class
                ],
                'Ros1Dsr_msgsGetWorkpieceWeightRequest' => [
                    'symbol' => 'Ros1Dsr_msgsGetWorkpieceWeightRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetWorkpieceWeightRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_fa987920bd5c89882bd52b444bec319c5b83c3fdf6086c065c87e924d40890ec',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsGetWorkpieceWeightRequest::class
                ],
                'Ros1Dsr_msgsGetWorkpieceWeightResponse' => [
                    'symbol' => 'Ros1Dsr_msgsGetWorkpieceWeightResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/GetWorkpieceWeightResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_687f2eaa565bbbb878ff0018ad4fa9bc1596316cbbb83c07df85df5cd81887ca',
                    'minimum' => 5,
                    'maximum' => 5,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'weight',
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
                        ],
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
                    'class' => Ros1Dsr_msgsGetWorkpieceWeightResponse::class
                ],
                'Ros1Dsr_msgsIkinRequest' => [
                    'symbol' => 'Ros1Dsr_msgsIkinRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/IkinRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_64192c8fc182151b11fe48b99d05e142994a0724cbde8572058378e843fe7f27',
                    'minimum' => 50,
                    'maximum' => 50,
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
                            'name' => 'sol_space',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsIkinRequest::class
                ],
                'Ros1Dsr_msgsIkinResponse' => [
                    'symbol' => 'Ros1Dsr_msgsIkinResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/IkinResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_fa64a9417d777219d7142d600391a80c0001464e3777174bef040ecd80df1e23',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'conv_posj',
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
                    'class' => Ros1Dsr_msgsIkinResponse::class
                ],
                'Ros1Dsr_msgsIkinExRequest' => [
                    'symbol' => 'Ros1Dsr_msgsIkinExRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/IkinExRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6af2997a590ef83a15238d4837d7540ba1f5dd0d40067c74e03ebda063fa0cd0',
                    'minimum' => 51,
                    'maximum' => 51,
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
                            'name' => 'sol_space',
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
                            'name' => 'ref_pos_opt',
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
                    'class' => Ros1Dsr_msgsIkinExRequest::class
                ],
                'Ros1Dsr_msgsIkinExResponse' => [
                    'symbol' => 'Ros1Dsr_msgsIkinExResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/IkinExResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_67a37bdec1e80488a520a0efc6f7bc1781cbd90b5137068c7e2961b5cb1ee1d1',
                    'minimum' => 50,
                    'maximum' => 50,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'conv_posj',
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
                            'name' => 'status',
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
                    'class' => Ros1Dsr_msgsIkinExResponse::class
                ],
                'Ros1Dsr_msgsIsDoneBoltTighteningRequest' => [
                    'symbol' => 'Ros1Dsr_msgsIsDoneBoltTighteningRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/IsDoneBoltTighteningRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_40ab245e2e736f9171f7ab55ff340717ef3f1ec89614730f4f9e3811ba6afa9e',
                    'minimum' => 17,
                    'maximum' => 17,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'm',
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
                            'name' => 'timeout',
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
                            'name' => 'axis',
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
                    'class' => Ros1Dsr_msgsIsDoneBoltTighteningRequest::class
                ],
                'Ros1Dsr_msgsIsDoneBoltTighteningResponse' => [
                    'symbol' => 'Ros1Dsr_msgsIsDoneBoltTighteningResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/IsDoneBoltTighteningResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_86e7eb378e84a1feec9b2abfb3b8af889b9cf986c7455e0d74bb8832af6ff611',
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
                    'class' => Ros1Dsr_msgsIsDoneBoltTighteningResponse::class
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
                'Ros1Dsr_msgsManageAccessControlRequest' => [
                    'symbol' => 'Ros1Dsr_msgsManageAccessControlRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ManageAccessControlRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0b29aed59d855590ad69ec9bf8e2585b39ee8ce05bed1e305dd7f2a7c1b79d36',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'access_control',
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
                    'class' => Ros1Dsr_msgsManageAccessControlRequest::class
                ],
                'Ros1Dsr_msgsManageAccessControlResponse' => [
                    'symbol' => 'Ros1Dsr_msgsManageAccessControlResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ManageAccessControlResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_64837b0ea282acdc16ad7d0a4e6679d9b9b74a3ff3d276dad77042529fa897b3',
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
                    'class' => Ros1Dsr_msgsManageAccessControlResponse::class
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
                'Ros1Dsr_msgsMoveHomeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsMoveHomeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveHomeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_99b3fe492438ffc71627412077f7b0ced950e0f6038722ecfb34191093e0308f',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'target',
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
                    'class' => Ros1Dsr_msgsMoveHomeRequest::class
                ],
                'Ros1Dsr_msgsMoveHomeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsMoveHomeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/MoveHomeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_9906457df2f7eccd40564fb7ba76fe7245ad943f20461bf23192cfbcba3a596f',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'res',
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
                    'class' => Ros1Dsr_msgsMoveHomeResponse::class
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
                    'codec_identity' => 'UWVMROS1_f5ccf9a5eade1a2f7f11c741c26e3b045fa11d81d8f03587e4a527b0256e2a8a',
                    'minimum' => 111,
                    'maximum' => 2319,
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
                'Ros1Dsr_msgsOverwriteUserCartCoordRequest' => [
                    'symbol' => 'Ros1Dsr_msgsOverwriteUserCartCoordRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/OverwriteUserCartCoordRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_b89858cf40ee4ae756c90e048fb0cffd362dd2477ca23ba1172749353eb63721',
                    'minimum' => 50,
                    'maximum' => 50,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'id',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsOverwriteUserCartCoordRequest::class
                ],
                'Ros1Dsr_msgsOverwriteUserCartCoordResponse' => [
                    'symbol' => 'Ros1Dsr_msgsOverwriteUserCartCoordResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/OverwriteUserCartCoordResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_953c73d75e0381b067612ea733d58faf95919f5f20f940b6827396fc9d363833',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'id',
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
                    'class' => Ros1Dsr_msgsOverwriteUserCartCoordResponse::class
                ],
                'Ros1Dsr_msgsParallelAxis1Request' => [
                    'symbol' => 'Ros1Dsr_msgsParallelAxis1Request',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ParallelAxis1Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d032b8ab9d71b7f30b395c0f7ecf376e7ca056fa893479754780a90c8db7f7fe',
                    'minimum' => 146,
                    'maximum' => 146,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'x1',
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
                            'name' => 'x2',
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
                            'name' => 'x3',
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
                            'name' => 'axis',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsParallelAxis1Request::class
                ],
                'Ros1Dsr_msgsParallelAxis1Response' => [
                    'symbol' => 'Ros1Dsr_msgsParallelAxis1Response',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ParallelAxis1Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f7ba09a96d450b53ef9b2fb77b6de6a6e760de65fc8dce42dcbc7dace8fef543',
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
                    'class' => Ros1Dsr_msgsParallelAxis1Response::class
                ],
                'Ros1Dsr_msgsParallelAxis2Request' => [
                    'symbol' => 'Ros1Dsr_msgsParallelAxis2Request',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ParallelAxis2Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_11dcf871306958211993961d60c607836696edf5c825bb7a109ec5efd885f191',
                    'minimum' => 26,
                    'maximum' => 26,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'vect',
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
                            'name' => 'axis',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsParallelAxis2Request::class
                ],
                'Ros1Dsr_msgsParallelAxis2Response' => [
                    'symbol' => 'Ros1Dsr_msgsParallelAxis2Response',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ParallelAxis2Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_41ca262ffdbabdde6ee4bbb0521813cc08cb56a86eb59335be8af82aa5d629c4',
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
                    'class' => Ros1Dsr_msgsParallelAxis2Response::class
                ],
                'Ros1Dsr_msgsReadDataRTRequest' => [
                    'symbol' => 'Ros1Dsr_msgsReadDataRTRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ReadDataRTRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2c1ece2dc02863d851f0d24f9705a3c66217b1557827d450e1b58c9fb64af4bf',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsReadDataRTRequest::class
                ],
                'Ros1Dsr_msgsRobotStateRT' => [
                    'symbol' => 'Ros1Dsr_msgsRobotStateRT',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/RobotStateRT',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_558a295457376b0d96845db2a2bd64c5549a9e72ea49f01036286d14e5022232',
                    'minimum' => 1530,
                    'maximum' => 8154,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'time_stamp',
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
                            'name' => 'actual_joint_position',
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
                            'name' => 'actual_joint_position_abs',
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
                            'name' => 'actual_joint_velocity',
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
                            'name' => 'actual_joint_velocity_abs',
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
                            'name' => 'actual_tcp_position',
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
                            'name' => 'actual_tcp_velocity',
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
                            'name' => 'actual_flange_position',
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
                            'name' => 'actual_flange_velocity',
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
                            'name' => 'actual_motor_torque',
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
                            'name' => 'actual_joint_torque',
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
                            'name' => 'raw_joint_torque',
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
                            'name' => 'raw_force_torque',
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
                            'name' => 'external_joint_torque',
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
                            'name' => 'external_tcp_force',
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
                            'name' => 'target_joint_position',
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
                            'name' => 'target_joint_velocity',
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
                            'name' => 'target_joint_acceleration',
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
                            'name' => 'target_motor_torque',
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
                            'name' => 'target_tcp_position',
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
                            'name' => 'target_tcp_velocity',
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
                            'name' => 'jacobian_matrix',
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
                            'name' => 'gravity_torque',
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
                            'name' => 'coriolis_matrix',
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
                            'name' => 'mass_matrix',
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
                            'name' => 'solution_space',
                            'type' => 'uint16',
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
                        ],
                        [
                            'name' => 'singularity',
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
                            'name' => 'operation_speed_rate',
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
                            'name' => 'joint_temperature',
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
                            'name' => 'controller_digital_input',
                            'type' => 'uint16',
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
                        ],
                        [
                            'name' => 'controller_digital_output',
                            'type' => 'uint16',
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
                        ],
                        [
                            'name' => 'controller_analog_input_type',
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
                        ],
                        [
                            'name' => 'controller_analog_input',
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
                            'name' => 'controller_analog_output_type',
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
                        ],
                        [
                            'name' => 'controller_analog_output',
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
                            'name' => 'flange_digital_input',
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
                            'name' => 'flange_digital_output',
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
                            'name' => 'flange_analog_input',
                            'type' => 'float64',
                            'array' => 'array',
                            'count' => 4,
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
                            'name' => 'external_encoder_strobe_count',
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
                        ],
                        [
                            'name' => 'external_encoder_count',
                            'type' => 'uint16',
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
                            'element_minimum' => 2
                        ],
                        [
                            'name' => 'goal_joint_position',
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
                            'name' => 'goal_tcp_position',
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
                            'name' => 'robot_mode',
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
                            'name' => 'robot_state',
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
                            'name' => 'control_mode',
                            'type' => 'uint16',
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
                        ],
                        [
                            'name' => 'reserved',
                            'type' => 'uint8',
                            'array' => 'array',
                            'count' => 256,
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
                    'class' => Ros1Dsr_msgsRobotStateRT::class
                ],
                'Ros1Dsr_msgsReadDataRTResponse' => [
                    'symbol' => 'Ros1Dsr_msgsReadDataRTResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ReadDataRTResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_bb6425973c166cd6f5ab88ae080d521d6f3f2e3e40cfb4ec0493c59e71f83bda',
                    'minimum' => 1530,
                    'maximum' => 8154,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'data',
                            'type' => 'Ros1Dsr_msgsRobotStateRT',
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
                            'element_minimum' => 1530
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsReadDataRTResponse::class
                ],
                'Ros1Dsr_msgsReleaseComplianceCtrlRequest' => [
                    'symbol' => 'Ros1Dsr_msgsReleaseComplianceCtrlRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ReleaseComplianceCtrlRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_963f201a73d6cb461e28bf94dc6223bf0c8e603adb96142cde94a764349ccdd2',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsReleaseComplianceCtrlRequest::class
                ],
                'Ros1Dsr_msgsReleaseComplianceCtrlResponse' => [
                    'symbol' => 'Ros1Dsr_msgsReleaseComplianceCtrlResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ReleaseComplianceCtrlResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5c5e9252fd9e8c346e8317f600fa46eb18c8e53be3447eddf3fb5f474a44682d',
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
                    'class' => Ros1Dsr_msgsReleaseComplianceCtrlResponse::class
                ],
                'Ros1Dsr_msgsReleaseForceRequest' => [
                    'symbol' => 'Ros1Dsr_msgsReleaseForceRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ReleaseForceRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5809993bacca15147eaf819181a6c1d187512d169539b6125e112b56bc0d2bc2',
                    'minimum' => 8,
                    'maximum' => 8,
                    'semantics' => '',
                    'fields' => [
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsReleaseForceRequest::class
                ],
                'Ros1Dsr_msgsReleaseForceResponse' => [
                    'symbol' => 'Ros1Dsr_msgsReleaseForceResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ReleaseForceResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_59e8fed1895c6e1664d689126a2df57918728f4006b20e50c1bc0055e76cc2d5',
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
                    'class' => Ros1Dsr_msgsReleaseForceResponse::class
                ],
                'Ros1Dsr_msgsReleaseProtectiveStopRequest' => [
                    'symbol' => 'Ros1Dsr_msgsReleaseProtectiveStopRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ReleaseProtectiveStopRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0703fb0af5fef931ae1b4364f05b4f5325e6195a2b4865e1dfcfeb3dd6f7c175',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'release_mode',
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
                    'class' => Ros1Dsr_msgsReleaseProtectiveStopRequest::class
                ],
                'Ros1Dsr_msgsReleaseProtectiveStopResponse' => [
                    'symbol' => 'Ros1Dsr_msgsReleaseProtectiveStopResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ReleaseProtectiveStopResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2fdc5568ddd9e700513489ccbf9078932bc28fe902f815fdd9a722b13ab599ec',
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
                    'class' => Ros1Dsr_msgsReleaseProtectiveStopResponse::class
                ],
                'Ros1Dsr_msgsResetWorkpieceWeightRequest' => [
                    'symbol' => 'Ros1Dsr_msgsResetWorkpieceWeightRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ResetWorkpieceWeightRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_b2cf228390cc1aa473c6e1a9025d7ea7e789acb3f7dd6a0a4178402b6d843ed6',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsResetWorkpieceWeightRequest::class
                ],
                'Ros1Dsr_msgsResetWorkpieceWeightResponse' => [
                    'symbol' => 'Ros1Dsr_msgsResetWorkpieceWeightResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ResetWorkpieceWeightResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f11776348fcebca43e64f7a635e2a080642a29c32762704029bd1429055cc025',
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
                    'class' => Ros1Dsr_msgsResetWorkpieceWeightResponse::class
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
                    'codec_identity' => 'UWVMROS1_3f34278ee2cdceff51b3bb665ce314cc4a0d4e164b110969102a04c96e374456',
                    'minimum' => 1484,
                    'maximum' => 17004,
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
                            'name' => 'current_tool_posx',
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
                        ],
                        [
                            'name' => 'fActualW2B',
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
                            'name' => 'fCurrentPosW',
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
                            'name' => 'fCurrentVelW',
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
                            'name' => 'fWorldETT',
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
                            'name' => 'fTargetPosW',
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
                            'name' => 'fTargetVelW',
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
                            'name' => 'fRotationMatrixWorld',
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
                            'name' => 'iActualUCN',
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
                            'name' => 'iParent',
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
                            'name' => 'fCurrentPosU',
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
                            'name' => 'fCurrentVelU',
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
                            'name' => 'fUserETT',
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
                            'name' => 'fTargetPosU',
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
                            'name' => 'fTargetVelU',
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
                            'name' => 'fRotationMatrixUser',
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
                            'name' => 'fActualAI',
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
                            'name' => 'bActualSW',
                            'type' => 'bool',
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
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'bActualSI',
                            'type' => 'bool',
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
                        ],
                        [
                            'name' => 'iActualAT',
                            'type' => 'int8',
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
                        ],
                        [
                            'name' => 'fTargetAO',
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
                            'name' => 'iTargetAT',
                            'type' => 'int8',
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
                        ],
                        [
                            'name' => 'bActualES',
                            'type' => 'bool',
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
                        ],
                        [
                            'name' => 'iActualED',
                            'type' => 'int8',
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
                        ],
                        [
                            'name' => 'bActualER',
                            'type' => 'bool',
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
                'Ros1Dsr_msgsServoJRTStream' => [
                    'symbol' => 'Ros1Dsr_msgsServoJRTStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ServoJRTStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f401a85a9e6940e11cdc58f5f7390456553ff73bc298d0f9c089a1f5e9921677',
                    'minimum' => 152,
                    'maximum' => 152,
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsServoJRTStream::class
                ],
                'Ros1Dsr_msgsServoJStream' => [
                    'symbol' => 'Ros1Dsr_msgsServoJStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ServoJStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2f7e730c7f7d0c29ffc15f345a9352822e94cc98e298235e57397ea46f90db8b',
                    'minimum' => 152,
                    'maximum' => 152,
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsServoJStream::class
                ],
                'Ros1Dsr_msgsServoLRTStream' => [
                    'symbol' => 'Ros1Dsr_msgsServoLRTStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ServoLRTStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_858f4172a6511013eabff068457b05ce5a0cfc507b86a5817d55a5d274763b4d',
                    'minimum' => 152,
                    'maximum' => 152,
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsServoLRTStream::class
                ],
                'Ros1Dsr_msgsServoLStream' => [
                    'symbol' => 'Ros1Dsr_msgsServoLStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/ServoLStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_b6be06412820c88909f37961227679a9ccbc8176ad662efc7f41f35a797035e8',
                    'minimum' => 88,
                    'maximum' => 88,
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsServoLStream::class
                ],
                'Ros1Dsr_msgsSetAccJRTRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetAccJRTRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetAccJRTRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_867345ecf0c7fa3e84375c009d3bd9d2ee2c52a011158215ddae3ff7de977d35',
                    'minimum' => 48,
                    'maximum' => 48,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'acc',
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
                    'class' => Ros1Dsr_msgsSetAccJRTRequest::class
                ],
                'Ros1Dsr_msgsSetAccJRTResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetAccJRTResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetAccJRTResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1bc5cb7aafef1ab3cfcde7fda9108670bc96f2298f3921ca832cab01b7670e00',
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
                    'class' => Ros1Dsr_msgsSetAccJRTResponse::class
                ],
                'Ros1Dsr_msgsSetAccXRTRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetAccXRTRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetAccXRTRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1fa5e2a32de2e4a212702aa6cb1cbfa7d451c51a0f6cb871fc337cd09b166cb6',
                    'minimum' => 16,
                    'maximum' => 16,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'trans',
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
                            'name' => 'rotation',
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
                    'class' => Ros1Dsr_msgsSetAccXRTRequest::class
                ],
                'Ros1Dsr_msgsSetAccXRTResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetAccXRTResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetAccXRTResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_7a42293efa247633f5e72a20749342b0530795a4e963f3c47248c2e703ae7c65',
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
                    'class' => Ros1Dsr_msgsSetAccXRTResponse::class
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
                'Ros1Dsr_msgsSetDesiredForceRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetDesiredForceRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetDesiredForceRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1020073d308553e7eb01e3fdd76a8a29cd169131d95516ae8c07a54b29f01b1a',
                    'minimum' => 64,
                    'maximum' => 64,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'fd',
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
                            'name' => 'dir',
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
                            'name' => 'mod',
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
                    'class' => Ros1Dsr_msgsSetDesiredForceRequest::class
                ],
                'Ros1Dsr_msgsSetDesiredForceResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetDesiredForceResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetDesiredForceResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_fb07701ce7c215300e155c1d46e345f6467fe43bba3fc71bed94943459ce1928',
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
                    'class' => Ros1Dsr_msgsSetDesiredForceResponse::class
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
                'Ros1Dsr_msgsSetRTControlInputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetRTControlInputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRTControlInputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_83562a6a3191e48ab47af1e2d35775048bf146a8175985b356a416882e5374cd',
                    'minimum' => 16,
                    'maximum' => 272,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'version',
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
                            'name' => 'period',
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
                            'name' => 'loss',
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
                    'class' => Ros1Dsr_msgsSetRTControlInputRequest::class
                ],
                'Ros1Dsr_msgsSetRTControlInputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetRTControlInputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRTControlInputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_8fef3733c6f17fcbc1e0eaa2633321d63b78d63d0156802417e87c8a5330008f',
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
                    'class' => Ros1Dsr_msgsSetRTControlInputResponse::class
                ],
                'Ros1Dsr_msgsSetRTControlOutputRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetRTControlOutputRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRTControlOutputRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_83976c84f752fbfb1bf6e84a3816ab069e5d4f454dac4a602753f9d2049050c6',
                    'minimum' => 16,
                    'maximum' => 272,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'version',
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
                            'name' => 'period',
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
                            'name' => 'loss',
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
                    'class' => Ros1Dsr_msgsSetRTControlOutputRequest::class
                ],
                'Ros1Dsr_msgsSetRTControlOutputResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetRTControlOutputResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRTControlOutputResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ac2888098d0b18d9188b116877ade53eb4481ca4e5a7c20bff64511bd5ad9ba9',
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
                    'class' => Ros1Dsr_msgsSetRTControlOutputResponse::class
                ],
                'Ros1Dsr_msgsSetRefCoordRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetRefCoordRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRefCoordRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_269accc3ced8dd5c86b93c8a412301e47f0084be7f5294d19866868eb5858144',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'coord',
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
                    'class' => Ros1Dsr_msgsSetRefCoordRequest::class
                ],
                'Ros1Dsr_msgsSetRefCoordResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetRefCoordResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRefCoordResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d33d88ff3985821ce2b9773f2d80ebf3394d89647e760dea55b9303c9e3b3562',
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
                    'class' => Ros1Dsr_msgsSetRefCoordResponse::class
                ],
                'Ros1Dsr_msgsSetRobotControlRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetRobotControlRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRobotControlRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d84763896b47427acc4d2c4cd75972c2c4f07c2f87dd1df781c8d7ef9e43c919',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_control',
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
                    'class' => Ros1Dsr_msgsSetRobotControlRequest::class
                ],
                'Ros1Dsr_msgsSetRobotControlResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetRobotControlResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetRobotControlResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6f6a9dd616a340ad9a733b3f19c61a07b3101fc519f26f9c7d6e80af868663ee',
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
                    'class' => Ros1Dsr_msgsSetRobotControlResponse::class
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
                'Ros1Dsr_msgsSetSafetyModeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetSafetyModeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetSafetyModeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_e3e42b2be7c9f0974cb0f4a4192128c06a8df4a09eecb471358e41744d85d811',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'safety_mode',
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
                            'name' => 'safety_mode_event',
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
                    'class' => Ros1Dsr_msgsSetSafetyModeRequest::class
                ],
                'Ros1Dsr_msgsSetSafetyModeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetSafetyModeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetSafetyModeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_107e9a75ba6b7fa85f2a92b4595f0b55e451b2cbabb2f0035d16b6d35be69320',
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
                    'class' => Ros1Dsr_msgsSetSafetyModeResponse::class
                ],
                'Ros1Dsr_msgsSetSingularityHandlingRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetSingularityHandlingRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetSingularityHandlingRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_44dd4695620a3cf3f95504b73ad6978c9073ab3703f73f4a6449c7763f31cb7b',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
                    'fields' => [
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
                    'class' => Ros1Dsr_msgsSetSingularityHandlingRequest::class
                ],
                'Ros1Dsr_msgsSetSingularityHandlingResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetSingularityHandlingResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetSingularityHandlingResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a022bf9d809ac39a4dfe0487fdbc83f3b4ef81f179a6b3dd7d8fb1854aba1aa2',
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
                    'class' => Ros1Dsr_msgsSetSingularityHandlingResponse::class
                ],
                'Ros1Dsr_msgsSetStiffnessxRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetStiffnessxRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetStiffnessxRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_7cf0721d0f9cd45422a4277a63834f75572ead2833ca4100752d51abc2b4e3d3',
                    'minimum' => 57,
                    'maximum' => 57,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'stx',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsSetStiffnessxRequest::class
                ],
                'Ros1Dsr_msgsSetStiffnessxResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetStiffnessxResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetStiffnessxResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_41ae59cb41184a6c167db14ac58ef80966c500fb31417b21900e42d1cb9a4549',
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
                    'class' => Ros1Dsr_msgsSetStiffnessxResponse::class
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
                'Ros1Dsr_msgsSetToolShapeRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetToolShapeRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetToolShapeRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1eb4f1d4e9fea4e9f5324fc50acd744365940912055fbc359ecc4748b1ddeeea',
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
                    'class' => Ros1Dsr_msgsSetToolShapeRequest::class
                ],
                'Ros1Dsr_msgsSetToolShapeResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetToolShapeResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetToolShapeResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_7d18f475fd4230c7f15ddc10401373d296cfaef1d525a26e983cda4c8b2b5e70',
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
                    'class' => Ros1Dsr_msgsSetToolShapeResponse::class
                ],
                'Ros1Dsr_msgsSetUserCartCoord1Request' => [
                    'symbol' => 'Ros1Dsr_msgsSetUserCartCoord1Request',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetUserCartCoord1Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f54a10c9fd4687670111ba2b3d0a6bceea638fc71da62d59b81a01c59dd457b3',
                    'minimum' => 49,
                    'maximum' => 49,
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsSetUserCartCoord1Request::class
                ],
                'Ros1Dsr_msgsSetUserCartCoord1Response' => [
                    'symbol' => 'Ros1Dsr_msgsSetUserCartCoord1Response',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetUserCartCoord1Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c8749fa152e4396e977e110a901dfc791a26b54d1f282752039a20c0c4531f53',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'id',
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
                    'class' => Ros1Dsr_msgsSetUserCartCoord1Response::class
                ],
                'Ros1Dsr_msgsSetUserCartCoord2Request' => [
                    'symbol' => 'Ros1Dsr_msgsSetUserCartCoord2Request',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetUserCartCoord2Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_581a8164d6593be7422364300fabd854bc3b438726a3182cd388be5c629dc235',
                    'minimum' => 193,
                    'maximum' => 193,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'x1',
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
                            'name' => 'x2',
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
                            'name' => 'x3',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsSetUserCartCoord2Request::class
                ],
                'Ros1Dsr_msgsSetUserCartCoord2Response' => [
                    'symbol' => 'Ros1Dsr_msgsSetUserCartCoord2Response',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetUserCartCoord2Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_01ce185d3b4585bfdb9187c7b3cf628874da91fdd8c289a5b72d7bcb0e84880d',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'id',
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
                    'class' => Ros1Dsr_msgsSetUserCartCoord2Response::class
                ],
                'Ros1Dsr_msgsSetUserCartCoord3Request' => [
                    'symbol' => 'Ros1Dsr_msgsSetUserCartCoord3Request',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetUserCartCoord3Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a8a9aa12ff690f1a26223248b0c84537b7fe23ffa0af33be0ef0c99092f78c3c',
                    'minimum' => 97,
                    'maximum' => 97,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'u1',
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
                            'name' => 'v1',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsSetUserCartCoord3Request::class
                ],
                'Ros1Dsr_msgsSetUserCartCoord3Response' => [
                    'symbol' => 'Ros1Dsr_msgsSetUserCartCoord3Response',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetUserCartCoord3Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_9409ea43f5b28fc6aa7c1089c69e828edda3440a50e1c35b5f8b8ca600d11fd1',
                    'minimum' => 2,
                    'maximum' => 2,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'id',
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
                    'class' => Ros1Dsr_msgsSetUserCartCoord3Response::class
                ],
                'Ros1Dsr_msgsSetVelJRTRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetVelJRTRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetVelJRTRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_bde411c75906468cfbbd4a3da157be4c66755a4e2c73e5db0c87eb5414a40768',
                    'minimum' => 48,
                    'maximum' => 48,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'vel',
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
                    'class' => Ros1Dsr_msgsSetVelJRTRequest::class
                ],
                'Ros1Dsr_msgsSetVelJRTResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetVelJRTResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetVelJRTResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2e671f1ce71584ee764eb88431dc883a1759312126cc722e6abb91718eb4cd3f',
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
                    'class' => Ros1Dsr_msgsSetVelJRTResponse::class
                ],
                'Ros1Dsr_msgsSetVelXRTRequest' => [
                    'symbol' => 'Ros1Dsr_msgsSetVelXRTRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetVelXRTRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_62043248325fe8c561c26c914c702a17469c3e020542760f40dab518190a29e8',
                    'minimum' => 16,
                    'maximum' => 16,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'trans',
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
                            'name' => 'rotation',
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
                    'class' => Ros1Dsr_msgsSetVelXRTRequest::class
                ],
                'Ros1Dsr_msgsSetVelXRTResponse' => [
                    'symbol' => 'Ros1Dsr_msgsSetVelXRTResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SetVelXRTResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_88fa186a19c4591d69e31ae18a8121fa28beec749c78c6c3ad92885d95947119',
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
                    'class' => Ros1Dsr_msgsSetVelXRTResponse::class
                ],
                'Ros1Dsr_msgsSpeedJRTStream' => [
                    'symbol' => 'Ros1Dsr_msgsSpeedJRTStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SpeedJRTStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c99c5b844f12da3d0a2b4d1f44e88dbedc66be70a4576def8bb59593d4c3a780',
                    'minimum' => 104,
                    'maximum' => 104,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'vel',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsSpeedJRTStream::class
                ],
                'Ros1Dsr_msgsSpeedJStream' => [
                    'symbol' => 'Ros1Dsr_msgsSpeedJStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SpeedJStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_7042ec2c204507e699747702d4e22a4eb704b9ca077ec270311196f779d2532f',
                    'minimum' => 104,
                    'maximum' => 104,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'vel',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsSpeedJStream::class
                ],
                'Ros1Dsr_msgsSpeedLRTStream' => [
                    'symbol' => 'Ros1Dsr_msgsSpeedLRTStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SpeedLRTStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_2f95bdb3b90ca295355faa1667221774ba1932dd50fa9e87d05cc16168a664cc',
                    'minimum' => 104,
                    'maximum' => 104,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'vel',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsSpeedLRTStream::class
                ],
                'Ros1Dsr_msgsSpeedLStream' => [
                    'symbol' => 'Ros1Dsr_msgsSpeedLStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/SpeedLStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_9f6f75583bddd6dc3e6bb3b79fbe66db3a1076c58a48e887ebcf88e8587058eb',
                    'minimum' => 72,
                    'maximum' => 72,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'vel',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsSpeedLStream::class
                ],
                'Ros1Dsr_msgsStartRTControlRequest' => [
                    'symbol' => 'Ros1Dsr_msgsStartRTControlRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/StartRTControlRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_37b1255c34ebbba47ef2cca802168237a90aa2b52032fea64efa4517332a85ac',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsStartRTControlRequest::class
                ],
                'Ros1Dsr_msgsStartRTControlResponse' => [
                    'symbol' => 'Ros1Dsr_msgsStartRTControlResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/StartRTControlResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0f2be11b260cd9286c55ac65dc7f675701ba130eb2d81c2c8fba592c605216de',
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
                    'class' => Ros1Dsr_msgsStartRTControlResponse::class
                ],
                'Ros1Dsr_msgsStopRTControlRequest' => [
                    'symbol' => 'Ros1Dsr_msgsStopRTControlRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/StopRTControlRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1163e97603c5de79aed634642587128d6ca9d0a64d5eef1e73502c4479e1c6ce',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsStopRTControlRequest::class
                ],
                'Ros1Dsr_msgsStopRTControlResponse' => [
                    'symbol' => 'Ros1Dsr_msgsStopRTControlResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/StopRTControlResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_49ed2b792c0872d3fce723e09b2bb01fad52370f7674f438d2c0fc99422ffe62',
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
                    'class' => Ros1Dsr_msgsStopRTControlResponse::class
                ],
                'Ros1Dsr_msgsTaskComplianceCtrlRequest' => [
                    'symbol' => 'Ros1Dsr_msgsTaskComplianceCtrlRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/TaskComplianceCtrlRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_05fa479a787001504e982b77fd61e6a3e6bb2a7cbc34ff900fa12634d8842671',
                    'minimum' => 57,
                    'maximum' => 57,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'stx',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsTaskComplianceCtrlRequest::class
                ],
                'Ros1Dsr_msgsTaskComplianceCtrlResponse' => [
                    'symbol' => 'Ros1Dsr_msgsTaskComplianceCtrlResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/TaskComplianceCtrlResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_29c513521ec8c6ac5c39bf1cb12d8db19a025a2036fb0398633b544d53c39625',
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
                    'class' => Ros1Dsr_msgsTaskComplianceCtrlResponse::class
                ],
                'Ros1Dsr_msgsTorqueRTStream' => [
                    'symbol' => 'Ros1Dsr_msgsTorqueRTStream',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/TorqueRTStream',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6c6f5462dec4f5990ef5cd6d64ffde89f092d590498dc97cf347caa06635d545',
                    'minimum' => 56,
                    'maximum' => 56,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'tor',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros1Dsr_msgsTorqueRTStream::class
                ],
                'Ros1Dsr_msgsTransRequest' => [
                    'symbol' => 'Ros1Dsr_msgsTransRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/TransRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6724ac7a62b77d6d6e52145306c4ac5a0e05221a636fb5cd0048e185ddcee273',
                    'minimum' => 98,
                    'maximum' => 98,
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
                            'name' => 'delta',
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
                            'name' => 'ref_out',
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
                    'class' => Ros1Dsr_msgsTransRequest::class
                ],
                'Ros1Dsr_msgsTransResponse' => [
                    'symbol' => 'Ros1Dsr_msgsTransResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/TransResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a36593de3d68fc991b3cf230f98c28f1f1d9fa0fc72e3160a5f005d9cb6105e5',
                    'minimum' => 49,
                    'maximum' => 49,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'trans_pos',
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
                    'class' => Ros1Dsr_msgsTransResponse::class
                ],
                'Ros1Dsr_msgsWriteDataRTRequest' => [
                    'symbol' => 'Ros1Dsr_msgsWriteDataRTRequest',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/WriteDataRTRequest',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_300128a7619804166443a58c387f127d670f91724c8f642fd5b0884c317db73e',
                    'minimum' => 152,
                    'maximum' => 152,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'external_force_torque',
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
                            'name' => 'external_digital_input',
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
                            'name' => 'external_digital_output',
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
                            'name' => 'external_analog_input',
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
                            'name' => 'external_analog_output',
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
                    'class' => Ros1Dsr_msgsWriteDataRTRequest::class
                ],
                'Ros1Dsr_msgsWriteDataRTResponse' => [
                    'symbol' => 'Ros1Dsr_msgsWriteDataRTResponse',
                    'ros_version' => 1,
                    'native_type' => 'dsr_msgs/WriteDataRTResponse',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f1d97ee43375db129025b3c587979ca7ffacb06c66d54d829c5590c7c8943d5c',
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
                    'class' => Ros1Dsr_msgsWriteDataRTResponse::class
                ],
            ]);
        }
        return $wire;
    }
}
