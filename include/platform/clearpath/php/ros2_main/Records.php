<?php
declare(strict_types=1);
namespace Uwvm\Clearpath\Ros2_main;
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @file Records.php
 * @brief Complete original clearpath owning classes using the shared PHP codec.
 * @details Full-width words remain exact on PHP32 and PHP64; no native registration is inferred. */
/** @brief Own every original builtin_interfaces/msg/Duration field. */
final class Ros2Builtin_interfacesMsgDuration
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Builtin_interfacesMsgDuration',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-duration',
        'ros_version' => 2,
        'native_type' => 'builtin_interfaces/msg/Duration',
        'constants' => [],
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
                'element_minimum' => 4,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original sec: int32; scalar. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar. */
    public mixed $nanosec;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->sec = array_key_exists('sec', $values) ? $values['sec'] : 0;
        $this->nanosec = array_key_exists('nanosec', $values) ? $values['nanosec'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgDuration', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgDuration', $bytes);
    }
}
/** @brief Own every original builtin_interfaces/msg/Time field. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Builtin_interfacesMsgTime',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
        'ros_version' => 2,
        'native_type' => 'builtin_interfaces/msg/Time',
        'constants' => [],
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
                'element_minimum' => 4,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original sec: int32; scalar. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar. */
    public mixed $nanosec;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->sec = array_key_exists('sec', $values) ? $values['sec'] : 0;
        $this->nanosec = array_key_exists('nanosec', $values) ? $values['nanosec'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Drive field. */
final class Ros2Clearpath_platform_msgsMsgDrive
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgDrive',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785',
        'minimum' => 9,
        'maximum' => 9,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Drive',
        'constants' => [
            'MODE_VELOCITY' => 0,
            'MODE_PWM' => 1,
            'MODE_NONE' => -1,
            'LEFT' => 0,
            'RIGHT' => 1,
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'drivers',
                'type' => 'float32',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original drivers: float32; array. */
    public mixed $drivers;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->mode = array_key_exists('mode', $values) ? $values['mode'] : 0;
        $this->drivers = array_key_exists('drivers', $values) ? $values['drivers'] : array_fill(0, 2, 0.0);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgDrive', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgDrive', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/DriveFeedback field. */
final class Ros2Clearpath_platform_msgsMsgDriveFeedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgDriveFeedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/DriveFeedback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'current',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'duty_cycle',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'bridge_temperature',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'motor_temperature',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'measured_velocity',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'measured_travel',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'driver_fault',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original current: float32; scalar. */
    public mixed $current;
    /** @brief Original duty_cycle: float32; scalar. */
    public mixed $duty_cycle;
    /** @brief Original bridge_temperature: float32; scalar. */
    public mixed $bridge_temperature;
    /** @brief Original motor_temperature: float32; scalar. */
    public mixed $motor_temperature;
    /** @brief Original measured_velocity: float32; scalar. */
    public mixed $measured_velocity;
    /** @brief Original measured_travel: float32; scalar. */
    public mixed $measured_travel;
    /** @brief Original driver_fault: bool; scalar. */
    public mixed $driver_fault;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->current = array_key_exists('current', $values) ? $values['current'] : 0.0;
        $this->duty_cycle = array_key_exists('duty_cycle', $values) ? $values['duty_cycle'] : 0.0;
        $this->bridge_temperature = array_key_exists('bridge_temperature', $values) ? $values['bridge_temperature'] : 0.0;
        $this->motor_temperature = array_key_exists('motor_temperature', $values) ? $values['motor_temperature'] : 0.0;
        $this->measured_velocity = array_key_exists('measured_velocity', $values) ? $values['measured_velocity'] : 0.0;
        $this->measured_travel = array_key_exists('measured_travel', $values) ? $values['measured_travel'] : 0.0;
        $this->driver_fault = array_key_exists('driver_fault', $values) ? $values['driver_fault'] : false;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgDriveFeedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgDriveFeedback', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Fans field. */
final class Ros2Clearpath_platform_msgsMsgFans
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgFans',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317',
        'minimum' => 4,
        'maximum' => 6,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Fans',
        'constants' => [
            'R100_EQUIPMENT_BAY_INTAKE' => 0,
            'R100_EQUIPMENT_BAY_EXHAUST' => 1,
            'R100_CHARGER_BAY_INTAKE' => 2,
            'R100_CHARGER_BAY_EXHAUST' => 3,
            'R100_USER_BAY_INTAKE' => 4,
            'R100_USER_BAY_EXHAUST' => 5,
            'FAN_OFF' => 0,
            'FAN_ON_HIGH' => 1,
            'FAN_ON_LOW' => 2,
        ],
        'fields' => [
            [
                'name' => 'fans',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original fans: uint8; sequence. */
    public mixed $fans;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->fans = array_key_exists('fans', $values) ? $values['fans'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgFans', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgFans', $bytes);
    }
}
/** @brief Own every original std_msgs/msg/Header field. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgHeader',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'std_msgs/msg/Header',
        'constants' => [],
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
                'element_minimum' => 8,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original stamp: Ros2Builtin_interfacesMsgTime; scalar. */
    public mixed $stamp;
    /** @brief Original frame_id: string; scalar. */
    public mixed $frame_id;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->stamp = array_key_exists('stamp', $values) ? $values['stamp'] : new Ros2Builtin_interfacesMsgTime();
        $this->frame_id = array_key_exists('frame_id', $values) ? $values['frame_id'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Feedback field. */
final class Ros2Clearpath_platform_msgsMsgFeedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgFeedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442',
        'minimum' => 64,
        'maximum' => 192,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Feedback',
        'constants' => [],
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
                'element_minimum' => 12,
            ],
            [
                'name' => 'drivers',
                'type' => 'Ros2Clearpath_platform_msgsMsgDriveFeedback',
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
                'element_minimum' => 25,
            ],
            [
                'name' => 'commanded_mode',
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
                'element_minimum' => 1,
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original drivers: Ros2Clearpath_platform_msgsMsgDriveFeedback; array. */
    public mixed $drivers;
    /** @brief Original commanded_mode: int8; scalar. */
    public mixed $commanded_mode;
    /** @brief Original actual_mode: int8; scalar. */
    public mixed $actual_mode;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->drivers = array_key_exists('drivers', $values) ? $values['drivers'] : array_map(static fn() => new Ros2Clearpath_platform_msgsMsgDriveFeedback(), range(1, 2));
        $this->commanded_mode = array_key_exists('commanded_mode', $values) ? $values['commanded_mode'] : 0;
        $this->actual_mode = array_key_exists('actual_mode', $values) ? $values['actual_mode'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgFeedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgFeedback', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/RGB field. */
final class Ros2Clearpath_platform_msgsMsgRGB
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgRGB',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/RGB',
        'constants' => [],
        'fields' => [
            [
                'name' => 'red',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'green',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'blue',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original red: uint8; scalar. */
    public mixed $red;
    /** @brief Original green: uint8; scalar. */
    public mixed $green;
    /** @brief Original blue: uint8; scalar. */
    public mixed $blue;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->red = array_key_exists('red', $values) ? $values['red'] : 0;
        $this->green = array_key_exists('green', $values) ? $values['green'] : 0;
        $this->blue = array_key_exists('blue', $values) ? $values['blue'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgRGB', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgRGB', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Lights field. */
final class Ros2Clearpath_platform_msgsMsgLights
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgLights',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332',
        'minimum' => 4,
        'maximum' => 10,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Lights',
        'constants' => [
            'D100_LIGHTS_REAR_LEFT' => 0,
            'D100_LIGHTS_FRONT_LEFT' => 1,
            'D100_LIGHTS_FRONT_RIGHT' => 2,
            'D100_LIGHTS_REAR_RIGHT' => 3,
            'D150_LIGHTS_REAR_LEFT' => 0,
            'D150_LIGHTS_FRONT_LEFT' => 1,
            'D150_LIGHTS_FRONT_RIGHT' => 2,
            'D150_LIGHTS_REAR_RIGHT' => 3,
            'R100_LIGHTS_FRONT_PORT_UPPER' => 0,
            'R100_LIGHTS_FRONT_PORT_LOWER' => 1,
            'R100_LIGHTS_FRONT_STARBOARD_UPPER' => 2,
            'R100_LIGHTS_FRONT_STARBOARD_LOWER' => 3,
            'R100_LIGHTS_REAR_PORT_UPPER' => 4,
            'R100_LIGHTS_REAR_PORT_LOWER' => 5,
            'R100_LIGHTS_REAR_STARBOARD_UPPER' => 6,
            'R100_LIGHTS_REAR_STARBOARD_LOWER' => 7,
            'W200_LIGHTS_FRONT_LEFT' => 0,
            'W200_LIGHTS_FRONT_RIGHT' => 1,
            'W200_LIGHTS_REAR_LEFT' => 2,
            'W200_LIGHTS_REAR_RIGHT' => 3,
        ],
        'fields' => [
            [
                'name' => 'lights',
                'type' => 'Ros2Clearpath_platform_msgsMsgRGB',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 3,
            ],
        ],
    ];
    /** @brief Original lights: Ros2Clearpath_platform_msgsMsgRGB; sequence. */
    public mixed $lights;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->lights = array_key_exists('lights', $values) ? $values['lights'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgLights', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgLights', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Power field. */
final class Ros2Clearpath_platform_msgsMsgPower
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgPower',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22',
        'minimum' => 25,
        'maximum' => 169,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Power',
        'constants' => [
            'NOT_APPLICABLE' => -1,
            'J100_MEASURED_BATTERY' => 0,
            'J100_MEASURED_5V' => 1,
            'J100_MEASURED_12V' => 2,
            'D100_MEASURED_BATTERY' => 0,
            'D100_MEASURED_5V' => 1,
            'D100_MEASURED_12V' => 2,
            'D150_MEASURED_BATTERY' => 0,
            'D150_MEASURED_5V' => 1,
            'D150_MEASURED_12V' => 2,
            'W200_MEASURED_BATTERY' => 0,
            'W200_MEASURED_12V' => 1,
            'W200_MEASURED_24V' => 2,
            'W200_MEASURED_48V' => 3,
            'R100_MEASURED_BATTERY' => 0,
            'R100_MEASURED_5V' => 1,
            'R100_MEASURED_12V' => 2,
            'R100_MEASURED_INVERTER' => 3,
            'R100_MEASURED_FRONT_AXLE' => 4,
            'R100_MEASURED_REAR_AXLE' => 5,
            'R100_MEASURED_LIGHT' => 6,
            'A200_BATTERY_VOLTAGE' => 0,
            'A200_LEFT_DRIVER_VOLTAGE' => 1,
            'A200_RIGHT_DRIVER_VOLTAGE' => 2,
            'A200_VOLTAGES_SIZE' => 3,
            'J100_TOTAL_CURRENT' => 0,
            'J100_COMPUTER_CURRENT' => 1,
            'J100_DRIVE_CURRENT' => 2,
            'J100_USER_CURRENT' => 3,
            'D100_TOTAL_CURRENT' => 0,
            'D100_COMPUTER_CURRENT' => 1,
            'D150_TOTAL_CURRENT' => 0,
            'D150_COMPUTER_CURRENT' => 1,
            'W200_TOTAL_CURRENT' => 0,
            'W200_COMPUTER_CURRENT' => 1,
            'W200_12V_CURRENT' => 2,
            'W200_24V_CURRENT' => 3,
            'R100_TOTAL_CURRENT' => 0,
            'A200_MCU_AND_USER_PORT_CURRENT' => 0,
            'A200_LEFT_DRIVER_CURRENT' => 1,
            'A200_RIGHT_DRIVER_CURRENT' => 2,
            'A200_CURRENTS_SIZE' => 3,
        ],
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
                'element_minimum' => 12,
            ],
            [
                'name' => 'shore_power_connected',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'battery_connected',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'power_12v_user_nominal',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'charger_connected',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'charging_complete',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'measured_voltages',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'measured_currents',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original shore_power_connected: int8; scalar. */
    public mixed $shore_power_connected;
    /** @brief Original battery_connected: int8; scalar. */
    public mixed $battery_connected;
    /** @brief Original power_12v_user_nominal: int8; scalar. */
    public mixed $power_12v_user_nominal;
    /** @brief Original charger_connected: int8; scalar. */
    public mixed $charger_connected;
    /** @brief Original charging_complete: int8; scalar. */
    public mixed $charging_complete;
    /** @brief Original measured_voltages: float32; sequence. */
    public mixed $measured_voltages;
    /** @brief Original measured_currents: float32; sequence. */
    public mixed $measured_currents;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->shore_power_connected = array_key_exists('shore_power_connected', $values) ? $values['shore_power_connected'] : 0;
        $this->battery_connected = array_key_exists('battery_connected', $values) ? $values['battery_connected'] : 0;
        $this->power_12v_user_nominal = array_key_exists('power_12v_user_nominal', $values) ? $values['power_12v_user_nominal'] : 0;
        $this->charger_connected = array_key_exists('charger_connected', $values) ? $values['charger_connected'] : 0;
        $this->charging_complete = array_key_exists('charging_complete', $values) ? $values['charging_complete'] : 0;
        $this->measured_voltages = array_key_exists('measured_voltages', $values) ? $values['measured_voltages'] : [];
        $this->measured_currents = array_key_exists('measured_currents', $values) ? $values['measured_currents'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgPower', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgPower', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Status field. */
final class Ros2Clearpath_platform_msgsMsgStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1',
        'minimum' => 44,
        'maximum' => 684,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Status',
        'constants' => [],
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
                'element_minimum' => 12,
            ],
            [
                'name' => 'hardware_id',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'firmware_version',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'mcu_uptime',
                'type' => 'Ros2Builtin_interfacesMsgDuration',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'connection_uptime',
                'type' => 'Ros2Builtin_interfacesMsgDuration',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'pcb_temperature',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'mcu_temperature',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original hardware_id: string; scalar. */
    public mixed $hardware_id;
    /** @brief Original firmware_version: string; scalar. */
    public mixed $firmware_version;
    /** @brief Original mcu_uptime: Ros2Builtin_interfacesMsgDuration; scalar. */
    public mixed $mcu_uptime;
    /** @brief Original connection_uptime: Ros2Builtin_interfacesMsgDuration; scalar. */
    public mixed $connection_uptime;
    /** @brief Original pcb_temperature: float32; scalar. */
    public mixed $pcb_temperature;
    /** @brief Original mcu_temperature: float32; scalar. */
    public mixed $mcu_temperature;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->hardware_id = array_key_exists('hardware_id', $values) ? $values['hardware_id'] : '';
        $this->firmware_version = array_key_exists('firmware_version', $values) ? $values['firmware_version'] : '';
        $this->mcu_uptime = array_key_exists('mcu_uptime', $values) ? $values['mcu_uptime'] : new Ros2Builtin_interfacesMsgDuration();
        $this->connection_uptime = array_key_exists('connection_uptime', $values) ? $values['connection_uptime'] : new Ros2Builtin_interfacesMsgDuration();
        $this->pcb_temperature = array_key_exists('pcb_temperature', $values) ? $values['pcb_temperature'] : 0.0;
        $this->mcu_temperature = array_key_exists('mcu_temperature', $values) ? $values['mcu_temperature'] : 0.0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgStatus', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/StopStatus field. */
final class Ros2Clearpath_platform_msgsMsgStopStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgStopStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2',
        'minimum' => 15,
        'maximum' => 143,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/StopStatus',
        'constants' => [],
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
                'element_minimum' => 12,
            ],
            [
                'name' => 'stop_power_status',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'external_stop_present',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'needs_reset',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original stop_power_status: bool; scalar. */
    public mixed $stop_power_status;
    /** @brief Original external_stop_present: bool; scalar. */
    public mixed $external_stop_present;
    /** @brief Original needs_reset: bool; scalar. */
    public mixed $needs_reset;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->stop_power_status = array_key_exists('stop_power_status', $values) ? $values['stop_power_status'] : false;
        $this->external_stop_present = array_key_exists('external_stop_present', $values) ? $values['external_stop_present'] : false;
        $this->needs_reset = array_key_exists('needs_reset', $values) ? $values['needs_reset'] : false;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgStopStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgStopStatus', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/srv/ConfigureMcu_Request field. */
final class Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsSrvConfigureMcu_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/srv/ConfigureMcu_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'domain_id',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'robot_namespace',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original domain_id: uint8; scalar. */
    public mixed $domain_id;
    /** @brief Original robot_namespace: string; scalar. */
    public mixed $robot_namespace;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->domain_id = array_key_exists('domain_id', $values) ? $values['domain_id'] : 0;
        $this->robot_namespace = array_key_exists('robot_namespace', $values) ? $values['robot_namespace'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsSrvConfigureMcu_Request', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsSrvConfigureMcu_Request', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/srv/ConfigureMcu_Response field. */
final class Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsSrvConfigureMcu_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/srv/ConfigureMcu_Response',
        'constants' => [],
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
                'element_minimum' => 1,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original message: string; scalar. */
    public mixed $message;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->success = array_key_exists('success', $values) ? $values['success'] : false;
        $this->message = array_key_exists('message', $values) ? $values['message'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsSrvConfigureMcu_Response', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsSrvConfigureMcu_Response', $bytes);
    }
}
/** @brief Resolve only this exact complete source catalog. */
final class Catalog
{
    /** @brief Borrow the one immutable full descriptor registry. @return Wire Complete catalog codec. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) {
            $wire = new Wire([
                'Ros2Builtin_interfacesMsgDuration' =>
                    Ros2Builtin_interfacesMsgDuration::SCHEMA + [
                        'class' => Ros2Builtin_interfacesMsgDuration::class,
                    ],
                'Ros2Builtin_interfacesMsgTime' =>
                    Ros2Builtin_interfacesMsgTime::SCHEMA + [
                        'class' => Ros2Builtin_interfacesMsgTime::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgDrive' =>
                    Ros2Clearpath_platform_msgsMsgDrive::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgDrive::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgDriveFeedback' =>
                    Ros2Clearpath_platform_msgsMsgDriveFeedback::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgDriveFeedback::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgFans' =>
                    Ros2Clearpath_platform_msgsMsgFans::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgFans::class,
                    ],
                'Ros2Std_msgsMsgHeader' =>
                    Ros2Std_msgsMsgHeader::SCHEMA + [
                        'class' => Ros2Std_msgsMsgHeader::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgFeedback' =>
                    Ros2Clearpath_platform_msgsMsgFeedback::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgFeedback::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgRGB' =>
                    Ros2Clearpath_platform_msgsMsgRGB::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgRGB::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgLights' =>
                    Ros2Clearpath_platform_msgsMsgLights::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgLights::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgPower' =>
                    Ros2Clearpath_platform_msgsMsgPower::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgPower::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgStatus' =>
                    Ros2Clearpath_platform_msgsMsgStatus::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgStatus::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgStopStatus' =>
                    Ros2Clearpath_platform_msgsMsgStopStatus::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgStopStatus::class,
                    ],
                'Ros2Clearpath_platform_msgsSrvConfigureMcu_Request' =>
                    Ros2Clearpath_platform_msgsSrvConfigureMcu_Request::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsSrvConfigureMcu_Request::class,
                    ],
                'Ros2Clearpath_platform_msgsSrvConfigureMcu_Response' =>
                    Ros2Clearpath_platform_msgsSrvConfigureMcu_Response::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsSrvConfigureMcu_Response::class,
                    ],
            ]);
        }
        return $wire;
    }
}
