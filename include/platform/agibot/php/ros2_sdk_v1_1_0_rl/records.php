<?php
declare(strict_types=1);
namespace Uwvm\Agibot\Ros2SdkV110Rl;
/** @file records.php
 * @brief All 19 complete original vendor ROS 2 record classes.
 * @details Every native field, bound, default and identity is retained.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @brief Complete builtin_interfaces/msg/Time owning value. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Original full canonical descriptor and identities. */
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
        ]
    ];
    /** @brief Original sec field; type int32. */
    public mixed $sec;
    /** @brief Original nanosec field; type uint32. */
    public mixed $nanosec;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->sec = array_key_exists('sec', $values)
            ? $values['sec']
            : 0;
        $this->nanosec = array_key_exists('nanosec', $values)
            ? $values['nanosec']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/RequestHeader owning value. */
final class Ros2Aimdk_msgsMsgRequestHeader
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgRequestHeader',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/RequestHeader',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original stamp field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $stamp;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->stamp = array_key_exists('stamp', $values)
            ? $values['stamp']
            : new Ros2Builtin_interfacesMsgTime();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgRequestHeader', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgRequestHeader', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/CommonRequest owning value. */
final class Ros2Aimdk_msgsMsgCommonRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgCommonRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/CommonRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgRequestHeader',
                'array' => '',
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
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgRequestHeader. */
    public mixed $header;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros2Aimdk_msgsMsgRequestHeader();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgCommonRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgCommonRequest', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/ResponseHeader owning value. */
final class Ros2Aimdk_msgsMsgResponseHeader
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgResponseHeader',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/ResponseHeader',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'code',
                'type' => 'int64',
                'array' => '',
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
        ]
    ];
    /** @brief Original stamp field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $stamp;
    /** @brief Original code field; type int64. */
    public mixed $code;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->stamp = array_key_exists('stamp', $values)
            ? $values['stamp']
            : new Ros2Builtin_interfacesMsgTime();
        $this->code = array_key_exists('code', $values)
            ? $values['code']
            : Word::fromDecimal('0', 8, true);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgResponseHeader', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgResponseHeader', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/CommonState owning value. */
final class Ros2Aimdk_msgsMsgCommonState
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgCommonState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/CommonState',
        'constants' => [
            'UNKNOWN' => 0,
            'SUCCESS' => 1,
            'FAILURE' => 2,
            'ABORTED' => 3,
            'TIMEOUT' => 4,
            'INVALID' => 5,
            'IN_MANUAL' => 6,
            'NOT_READY' => 100,
            'PENDING' => 200,
            'CREATED' => 300,
            'RUNNING' => 400
        ],
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
        ]
    ];
    /** @brief Original value field; type int32. */
    public mixed $value;
    /** @brief Original native constant; no instance wire bytes. */
    public const UNKNOWN = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const SUCCESS = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const FAILURE = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const ABORTED = 3;
    /** @brief Original native constant; no instance wire bytes. */
    public const TIMEOUT = 4;
    /** @brief Original native constant; no instance wire bytes. */
    public const INVALID = 5;
    /** @brief Original native constant; no instance wire bytes. */
    public const IN_MANUAL = 6;
    /** @brief Original native constant; no instance wire bytes. */
    public const NOT_READY = 100;
    /** @brief Original native constant; no instance wire bytes. */
    public const PENDING = 200;
    /** @brief Original native constant; no instance wire bytes. */
    public const CREATED = 300;
    /** @brief Original native constant; no instance wire bytes. */
    public const RUNNING = 400;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->value = array_key_exists('value', $values)
            ? $values['value']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgCommonState', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgCommonState', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/CommonResponse owning value. */
final class Ros2Aimdk_msgsMsgCommonResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgCommonResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6',
        'minimum' => 24,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/CommonResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgResponseHeader',
                'array' => '',
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
            ],
            [
                'name' => 'status',
                'type' => 'Ros2Aimdk_msgsMsgCommonState',
                'array' => '',
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
                'name' => 'message',
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
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgResponseHeader. */
    public mixed $header;
    /** @brief Original status field; type Ros2Aimdk_msgsMsgCommonState. */
    public mixed $status;
    /** @brief Original message field; type string. */
    public mixed $message;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros2Aimdk_msgsMsgResponseHeader();
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : new Ros2Aimdk_msgsMsgCommonState();
        $this->message = array_key_exists('message', $values)
            ? $values['message']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgCommonResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgCommonResponse', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/CommonTaskResponse owning value. */
final class Ros2Aimdk_msgsMsgCommonTaskResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgCommonTaskResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2',
        'minimum' => 28,
        'maximum' => 28,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/CommonTaskResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgResponseHeader',
                'array' => '',
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
            ],
            [
                'name' => 'task_id',
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
            ],
            [
                'name' => 'state',
                'type' => 'Ros2Aimdk_msgsMsgCommonState',
                'array' => '',
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
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgResponseHeader. */
    public mixed $header;
    /** @brief Original task_id field; type uint64. */
    public mixed $task_id;
    /** @brief Original state field; type Ros2Aimdk_msgsMsgCommonState. */
    public mixed $state;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros2Aimdk_msgsMsgResponseHeader();
        $this->task_id = array_key_exists('task_id', $values)
            ? $values['task_id']
            : Word::fromDecimal('0', 8, false);
        $this->state = array_key_exists('state', $values)
            ? $values['state']
            : new Ros2Aimdk_msgsMsgCommonState();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgCommonTaskResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgCommonTaskResponse', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/DomainErrorState owning value. */
final class Ros2Aimdk_msgsMsgDomainErrorState
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgDomainErrorState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/DomainErrorState',
        'constants' => [
            'NONE' => 0,
            'DAMPING' => 1,
            'POWERDOWN' => 2,
            'DISABLE' => 3,
            'DISCONNECT' => 4
        ],
        'fields' => [
            [
                'name' => 'value',
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
        ]
    ];
    /** @brief Original value field; type uint8. */
    public mixed $value;
    /** @brief Original native constant; no instance wire bytes. */
    public const NONE = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const DAMPING = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const POWERDOWN = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const DISABLE = 3;
    /** @brief Original native constant; no instance wire bytes. */
    public const DISCONNECT = 4;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->value = array_key_exists('value', $values)
            ? $values['value']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgDomainErrorState', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgDomainErrorState', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/JointCommand owning value. */
final class Ros2Aimdk_msgsMsgJointCommand
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgJointCommand',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f',
        'minimum' => 44,
        'maximum' => 172,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/JointCommand',
        'constants' => [],
        'fields' => [
            [
                'name' => 'name',
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
            ],
            [
                'name' => 'position',
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
                'name' => 'velocity',
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
                'name' => 'effort',
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
                'name' => 'stiffness',
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
                'name' => 'damping',
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
        ]
    ];
    /** @brief Original name field; type string. */
    public mixed $name;
    /** @brief Original position field; type float64. */
    public mixed $position;
    /** @brief Original velocity field; type float64. */
    public mixed $velocity;
    /** @brief Original effort field; type float64. */
    public mixed $effort;
    /** @brief Original stiffness field; type float64. */
    public mixed $stiffness;
    /** @brief Original damping field; type float64. */
    public mixed $damping;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->name = array_key_exists('name', $values)
            ? $values['name']
            : '';
        $this->position = array_key_exists('position', $values)
            ? $values['position']
            : 0;
        $this->velocity = array_key_exists('velocity', $values)
            ? $values['velocity']
            : 0;
        $this->effort = array_key_exists('effort', $values)
            ? $values['effort']
            : 0;
        $this->stiffness = array_key_exists('stiffness', $values)
            ? $values['stiffness']
            : 0;
        $this->damping = array_key_exists('damping', $values)
            ? $values['damping']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgJointCommand', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgJointCommand', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/MessageHeader owning value. */
final class Ros2Aimdk_msgsMsgMessageHeader
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMessageHeader',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496',
        'minimum' => 24,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/MessageHeader',
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
            ],
            [
                'name' => 'sequence',
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
                'name' => 'meas_stamp',
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
            ]
        ]
    ];
    /** @brief Original stamp field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $stamp;
    /** @brief Original frame_id field; type string. */
    public mixed $frame_id;
    /** @brief Original sequence field; type uint32. */
    public mixed $sequence;
    /** @brief Original meas_stamp field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $meas_stamp;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->stamp = array_key_exists('stamp', $values)
            ? $values['stamp']
            : new Ros2Builtin_interfacesMsgTime();
        $this->frame_id = array_key_exists('frame_id', $values)
            ? $values['frame_id']
            : '';
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 4, false);
        $this->meas_stamp = array_key_exists('meas_stamp', $values)
            ? $values['meas_stamp']
            : new Ros2Builtin_interfacesMsgTime();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMessageHeader', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMessageHeader', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/JointCommandArray owning value. */
final class Ros2Aimdk_msgsMsgJointCommandArray
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgJointCommandArray',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6',
        'minimum' => 28,
        'maximum' => 11164,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/JointCommandArray',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgMessageHeader',
                'array' => '',
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
                'name' => 'joints',
                'type' => 'Ros2Aimdk_msgsMsgJointCommand',
                'array' => 'sequence',
                'count' => 64,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 44
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgMessageHeader. */
    public mixed $header;
    /** @brief Original joints field; type Ros2Aimdk_msgsMsgJointCommand. */
    public mixed $joints;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros2Aimdk_msgsMsgMessageHeader();
        $this->joints = array_key_exists('joints', $values)
            ? $values['joints']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgJointCommandArray', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgJointCommandArray', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/JointState owning value. */
final class Ros2Aimdk_msgsMsgJointState
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgJointState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53',
        'minimum' => 30,
        'maximum' => 158,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/JointState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'name',
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
            ],
            [
                'name' => 'position',
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
                'name' => 'velocity',
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
                'name' => 'effort',
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
                'name' => 'error_code',
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
            ]
        ]
    ];
    /** @brief Original name field; type string. */
    public mixed $name;
    /** @brief Original position field; type float64. */
    public mixed $position;
    /** @brief Original velocity field; type float64. */
    public mixed $velocity;
    /** @brief Original effort field; type float64. */
    public mixed $effort;
    /** @brief Original error_code field; type uint16. */
    public mixed $error_code;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->name = array_key_exists('name', $values)
            ? $values['name']
            : '';
        $this->position = array_key_exists('position', $values)
            ? $values['position']
            : 0;
        $this->velocity = array_key_exists('velocity', $values)
            ? $values['velocity']
            : 0;
        $this->effort = array_key_exists('effort', $values)
            ? $values['effort']
            : 0;
        $this->error_code = array_key_exists('error_code', $values)
            ? $values['error_code']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgJointState', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgJointState', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/JointStateArray owning value. */
final class Ros2Aimdk_msgsMsgJointStateArray
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgJointStateArray',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e',
        'minimum' => 29,
        'maximum' => 10269,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/JointStateArray',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgMessageHeader',
                'array' => '',
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
                'name' => 'state',
                'type' => 'Ros2Aimdk_msgsMsgDomainErrorState',
                'array' => '',
                'count' => 0,
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
                'name' => 'joints',
                'type' => 'Ros2Aimdk_msgsMsgJointState',
                'array' => 'sequence',
                'count' => 64,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 30
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgMessageHeader. */
    public mixed $header;
    /** @brief Original state field; type Ros2Aimdk_msgsMsgDomainErrorState. */
    public mixed $state;
    /** @brief Original joints field; type Ros2Aimdk_msgsMsgJointState. */
    public mixed $joints;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros2Aimdk_msgsMsgMessageHeader();
        $this->state = array_key_exists('state', $values)
            ? $values['state']
            : new Ros2Aimdk_msgsMsgDomainErrorState();
        $this->joints = array_key_exists('joints', $values)
            ? $values['joints']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgJointStateArray', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgJointStateArray', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/ModuleChannelInfo owning value. */
final class Ros2Aimdk_msgsMsgModuleChannelInfo
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgModuleChannelInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696',
        'minimum' => 58,
        'maximum' => 586,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/ModuleChannelInfo',
        'constants' => [],
        'fields' => [
            [
                'name' => 'name',
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
            ],
            [
                'name' => 'type',
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
            ],
            [
                'name' => 'frequency',
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
                'name' => 'min_time_diff',
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
                'name' => 'max_time_diff',
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
                'name' => 'std_dev',
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
                'name' => 'window_size',
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
                'name' => 'timeout_threshold',
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
                'name' => 'is_active',
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
                'name' => 'is_timeout',
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
                'name' => 'backends',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 4,
                'string_bound' => 64,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ]
    ];
    /** @brief Original name field; type string. */
    public mixed $name;
    /** @brief Original type field; type string. */
    public mixed $type;
    /** @brief Original frequency field; type float64. */
    public mixed $frequency;
    /** @brief Original min_time_diff field; type float64. */
    public mixed $min_time_diff;
    /** @brief Original max_time_diff field; type float64. */
    public mixed $max_time_diff;
    /** @brief Original std_dev field; type float64. */
    public mixed $std_dev;
    /** @brief Original window_size field; type int32. */
    public mixed $window_size;
    /** @brief Original timeout_threshold field; type float64. */
    public mixed $timeout_threshold;
    /** @brief Original is_active field; type bool. */
    public mixed $is_active;
    /** @brief Original is_timeout field; type bool. */
    public mixed $is_timeout;
    /** @brief Original backends field; type string. */
    public mixed $backends;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->name = array_key_exists('name', $values)
            ? $values['name']
            : '';
        $this->type = array_key_exists('type', $values)
            ? $values['type']
            : '';
        $this->frequency = array_key_exists('frequency', $values)
            ? $values['frequency']
            : 0;
        $this->min_time_diff = array_key_exists('min_time_diff', $values)
            ? $values['min_time_diff']
            : 0;
        $this->max_time_diff = array_key_exists('max_time_diff', $values)
            ? $values['max_time_diff']
            : 0;
        $this->std_dev = array_key_exists('std_dev', $values)
            ? $values['std_dev']
            : 0;
        $this->window_size = array_key_exists('window_size', $values)
            ? $values['window_size']
            : 0;
        $this->timeout_threshold = array_key_exists('timeout_threshold', $values)
            ? $values['timeout_threshold']
            : 0;
        $this->is_active = array_key_exists('is_active', $values)
            ? $values['is_active']
            : false;
        $this->is_timeout = array_key_exists('is_timeout', $values)
            ? $values['is_timeout']
            : false;
        $this->backends = array_key_exists('backends', $values)
            ? $values['backends']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgModuleChannelInfo', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgModuleChannelInfo', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/ModuleRpcInfo owning value. */
final class Ros2Aimdk_msgsMsgModuleRpcInfo
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgModuleRpcInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8',
        'minimum' => 16,
        'maximum' => 672,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/ModuleRpcInfo',
        'constants' => [],
        'fields' => [
            [
                'name' => 'name',
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
            ],
            [
                'name' => 'req_type',
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
            ],
            [
                'name' => 'res_type',
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
            ],
            [
                'name' => 'backends',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 4,
                'string_bound' => 64,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ]
    ];
    /** @brief Original name field; type string. */
    public mixed $name;
    /** @brief Original req_type field; type string. */
    public mixed $req_type;
    /** @brief Original res_type field; type string. */
    public mixed $res_type;
    /** @brief Original backends field; type string. */
    public mixed $backends;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->name = array_key_exists('name', $values)
            ? $values['name']
            : '';
        $this->req_type = array_key_exists('req_type', $values)
            ? $values['req_type']
            : '';
        $this->res_type = array_key_exists('res_type', $values)
            ? $values['res_type']
            : '';
        $this->backends = array_key_exists('backends', $values)
            ? $values['backends']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgModuleRpcInfo', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgModuleRpcInfo', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/ModuleResourceInfo owning value. */
final class Ros2Aimdk_msgsMsgModuleResourceInfo
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgModuleResourceInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f',
        'minimum' => 20,
        'maximum' => 5180,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/ModuleResourceInfo',
        'constants' => [],
        'fields' => [
            [
                'name' => 'module_name',
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
            ],
            [
                'name' => 'rpc_clients',
                'type' => 'Ros2Aimdk_msgsMsgModuleRpcInfo',
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
                'element_minimum' => 16
            ],
            [
                'name' => 'rpc_services',
                'type' => 'Ros2Aimdk_msgsMsgModuleRpcInfo',
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
                'element_minimum' => 16
            ],
            [
                'name' => 'pub_channels',
                'type' => 'Ros2Aimdk_msgsMsgModuleChannelInfo',
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
                'element_minimum' => 58
            ],
            [
                'name' => 'sub_channels',
                'type' => 'Ros2Aimdk_msgsMsgModuleChannelInfo',
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
                'element_minimum' => 58
            ]
        ]
    ];
    /** @brief Original module_name field; type string. */
    public mixed $module_name;
    /** @brief Original rpc_clients field; type Ros2Aimdk_msgsMsgModuleRpcInfo. */
    public mixed $rpc_clients;
    /** @brief Original rpc_services field; type Ros2Aimdk_msgsMsgModuleRpcInfo. */
    public mixed $rpc_services;
    /** @brief Original pub_channels field; type Ros2Aimdk_msgsMsgModuleChannelInfo. */
    public mixed $pub_channels;
    /** @brief Original sub_channels field; type Ros2Aimdk_msgsMsgModuleChannelInfo. */
    public mixed $sub_channels;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->module_name = array_key_exists('module_name', $values)
            ? $values['module_name']
            : '';
        $this->rpc_clients = array_key_exists('rpc_clients', $values)
            ? $values['rpc_clients']
            : [];
        $this->rpc_services = array_key_exists('rpc_services', $values)
            ? $values['rpc_services']
            : [];
        $this->pub_channels = array_key_exists('pub_channels', $values)
            ? $values['pub_channels']
            : [];
        $this->sub_channels = array_key_exists('sub_channels', $values)
            ? $values['sub_channels']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgModuleResourceInfo', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgModuleResourceInfo', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/ThreadResourceInfo owning value. */
final class Ros2Aimdk_msgsMsgThreadResourceInfo
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgThreadResourceInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15',
        'minimum' => 32,
        'maximum' => 352,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/ThreadResourceInfo',
        'constants' => [],
        'fields' => [
            [
                'name' => 'thread_id',
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
            ],
            [
                'name' => 'thread_name',
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
            ],
            [
                'name' => 'cpu_usage_ratio',
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
                'name' => 'cpu_sched_policy',
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
            ],
            [
                'name' => 'cpu_sched_priority',
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
                'name' => 'bounding_cpus',
                'type' => 'int32',
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
        ]
    ];
    /** @brief Original thread_id field; type uint64. */
    public mixed $thread_id;
    /** @brief Original thread_name field; type string. */
    public mixed $thread_name;
    /** @brief Original cpu_usage_ratio field; type float64. */
    public mixed $cpu_usage_ratio;
    /** @brief Original cpu_sched_policy field; type string. */
    public mixed $cpu_sched_policy;
    /** @brief Original cpu_sched_priority field; type int32. */
    public mixed $cpu_sched_priority;
    /** @brief Original bounding_cpus field; type int32. */
    public mixed $bounding_cpus;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->thread_id = array_key_exists('thread_id', $values)
            ? $values['thread_id']
            : Word::fromDecimal('0', 8, false);
        $this->thread_name = array_key_exists('thread_name', $values)
            ? $values['thread_name']
            : '';
        $this->cpu_usage_ratio = array_key_exists('cpu_usage_ratio', $values)
            ? $values['cpu_usage_ratio']
            : 0;
        $this->cpu_sched_policy = array_key_exists('cpu_sched_policy', $values)
            ? $values['cpu_sched_policy']
            : '';
        $this->cpu_sched_priority = array_key_exists('cpu_sched_priority', $values)
            ? $values['cpu_sched_priority']
            : 0;
        $this->bounding_cpus = array_key_exists('bounding_cpus', $values)
            ? $values['bounding_cpus']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgThreadResourceInfo', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgThreadResourceInfo', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/ProcessResourceInfo owning value. */
final class Ros2Aimdk_msgsMsgProcessResourceInfo
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgProcessResourceInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550',
        'minimum' => 48,
        'maximum' => 1584,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/ProcessResourceInfo',
        'constants' => [],
        'fields' => [
            [
                'name' => 'process_id',
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
            ],
            [
                'name' => 'process_name',
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
            ],
            [
                'name' => 'process_mem_usage',
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
            ],
            [
                'name' => 'process_mem_usage_ratio',
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
                'name' => 'process_cpu_usage_ratio',
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
                'name' => 'thread_count',
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
            ],
            [
                'name' => 'threads',
                'type' => 'Ros2Aimdk_msgsMsgThreadResourceInfo',
                'array' => 'sequence',
                'count' => 4,
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
        ]
    ];
    /** @brief Original process_id field; type uint64. */
    public mixed $process_id;
    /** @brief Original process_name field; type string. */
    public mixed $process_name;
    /** @brief Original process_mem_usage field; type uint64. */
    public mixed $process_mem_usage;
    /** @brief Original process_mem_usage_ratio field; type float64. */
    public mixed $process_mem_usage_ratio;
    /** @brief Original process_cpu_usage_ratio field; type float64. */
    public mixed $process_cpu_usage_ratio;
    /** @brief Original thread_count field; type uint64. */
    public mixed $thread_count;
    /** @brief Original threads field; type Ros2Aimdk_msgsMsgThreadResourceInfo. */
    public mixed $threads;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->process_id = array_key_exists('process_id', $values)
            ? $values['process_id']
            : Word::fromDecimal('0', 8, false);
        $this->process_name = array_key_exists('process_name', $values)
            ? $values['process_name']
            : '';
        $this->process_mem_usage = array_key_exists('process_mem_usage', $values)
            ? $values['process_mem_usage']
            : Word::fromDecimal('0', 8, false);
        $this->process_mem_usage_ratio = array_key_exists('process_mem_usage_ratio', $values)
            ? $values['process_mem_usage_ratio']
            : 0;
        $this->process_cpu_usage_ratio = array_key_exists('process_cpu_usage_ratio', $values)
            ? $values['process_cpu_usage_ratio']
            : 0;
        $this->thread_count = array_key_exists('thread_count', $values)
            ? $values['thread_count']
            : Word::fromDecimal('0', 8, false);
        $this->threads = array_key_exists('threads', $values)
            ? $values['threads']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgProcessResourceInfo', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgProcessResourceInfo', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/ProcessInfo owning value. */
final class Ros2Aimdk_msgsMsgProcessInfo
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgProcessInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996',
        'minimum' => 80,
        'maximum' => 12232,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/ProcessInfo',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgMessageHeader',
                'array' => '',
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
                'name' => 'app_name',
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
            ],
            [
                'name' => 'resource',
                'type' => 'Ros2Aimdk_msgsMsgProcessResourceInfo',
                'array' => '',
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
            ],
            [
                'name' => 'modules',
                'type' => 'Ros2Aimdk_msgsMsgModuleResourceInfo',
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
                'element_minimum' => 20
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgMessageHeader. */
    public mixed $header;
    /** @brief Original app_name field; type string. */
    public mixed $app_name;
    /** @brief Original resource field; type Ros2Aimdk_msgsMsgProcessResourceInfo. */
    public mixed $resource;
    /** @brief Original modules field; type Ros2Aimdk_msgsMsgModuleResourceInfo. */
    public mixed $modules;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros2Aimdk_msgsMsgMessageHeader();
        $this->app_name = array_key_exists('app_name', $values)
            ? $values['app_name']
            : '';
        $this->resource = array_key_exists('resource', $values)
            ? $values['resource']
            : new Ros2Aimdk_msgsMsgProcessResourceInfo();
        $this->modules = array_key_exists('modules', $values)
            ? $values['modules']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgProcessInfo', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgProcessInfo', $bytes);
    }
}

/** @brief Complete original record codecs and interface component roles. */
final class Catalog
{
    /** @brief Complete original interface identities and components. */
    public const INTERFACES = [
        'aimdk_msgs/msg/CommonRequest' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgCommonRequest'
            ]
        ],
        'aimdk_msgs/msg/CommonResponse' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgCommonResponse'
            ]
        ],
        'aimdk_msgs/msg/CommonState' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgCommonState'
            ]
        ],
        'aimdk_msgs/msg/CommonTaskResponse' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgCommonTaskResponse'
            ]
        ],
        'aimdk_msgs/msg/DomainErrorState' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgDomainErrorState'
            ]
        ],
        'aimdk_msgs/msg/JointCommand' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgJointCommand'
            ]
        ],
        'aimdk_msgs/msg/JointCommandArray' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgJointCommandArray'
            ]
        ],
        'aimdk_msgs/msg/JointState' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgJointState'
            ]
        ],
        'aimdk_msgs/msg/JointStateArray' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgJointStateArray'
            ]
        ],
        'aimdk_msgs/msg/MessageHeader' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMessageHeader'
            ]
        ],
        'aimdk_msgs/msg/ModuleChannelInfo' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgModuleChannelInfo'
            ]
        ],
        'aimdk_msgs/msg/ModuleResourceInfo' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgModuleResourceInfo'
            ]
        ],
        'aimdk_msgs/msg/ModuleRpcInfo' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgModuleRpcInfo'
            ]
        ],
        'aimdk_msgs/msg/ProcessInfo' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgProcessInfo'
            ]
        ],
        'aimdk_msgs/msg/ProcessResourceInfo' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgProcessResourceInfo'
            ]
        ],
        'aimdk_msgs/msg/RequestHeader' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgRequestHeader'
            ]
        ],
        'aimdk_msgs/msg/ResponseHeader' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgResponseHeader'
            ]
        ],
        'aimdk_msgs/msg/ThreadResourceInfo' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgThreadResourceInfo'
            ]
        ],
        'builtin_interfaces/msg/Time' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Builtin_interfacesMsgTime'
            ]
        ]
    ];
    /**
     * @brief Return the local full-record canonical registry.
     * @return Wire Complete ordinary namespace registry.
     */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null)
        {
            $wire = new Wire([
                'Ros2Builtin_interfacesMsgTime' =>
                    Ros2Builtin_interfacesMsgTime::SCHEMA + [
                        'class' => Ros2Builtin_interfacesMsgTime::class
                    ],
                'Ros2Aimdk_msgsMsgRequestHeader' =>
                    Ros2Aimdk_msgsMsgRequestHeader::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgRequestHeader::class
                    ],
                'Ros2Aimdk_msgsMsgCommonRequest' =>
                    Ros2Aimdk_msgsMsgCommonRequest::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgCommonRequest::class
                    ],
                'Ros2Aimdk_msgsMsgResponseHeader' =>
                    Ros2Aimdk_msgsMsgResponseHeader::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgResponseHeader::class
                    ],
                'Ros2Aimdk_msgsMsgCommonState' =>
                    Ros2Aimdk_msgsMsgCommonState::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgCommonState::class
                    ],
                'Ros2Aimdk_msgsMsgCommonResponse' =>
                    Ros2Aimdk_msgsMsgCommonResponse::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgCommonResponse::class
                    ],
                'Ros2Aimdk_msgsMsgCommonTaskResponse' =>
                    Ros2Aimdk_msgsMsgCommonTaskResponse::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgCommonTaskResponse::class
                    ],
                'Ros2Aimdk_msgsMsgDomainErrorState' =>
                    Ros2Aimdk_msgsMsgDomainErrorState::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgDomainErrorState::class
                    ],
                'Ros2Aimdk_msgsMsgJointCommand' =>
                    Ros2Aimdk_msgsMsgJointCommand::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgJointCommand::class
                    ],
                'Ros2Aimdk_msgsMsgMessageHeader' =>
                    Ros2Aimdk_msgsMsgMessageHeader::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMessageHeader::class
                    ],
                'Ros2Aimdk_msgsMsgJointCommandArray' =>
                    Ros2Aimdk_msgsMsgJointCommandArray::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgJointCommandArray::class
                    ],
                'Ros2Aimdk_msgsMsgJointState' =>
                    Ros2Aimdk_msgsMsgJointState::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgJointState::class
                    ],
                'Ros2Aimdk_msgsMsgJointStateArray' =>
                    Ros2Aimdk_msgsMsgJointStateArray::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgJointStateArray::class
                    ],
                'Ros2Aimdk_msgsMsgModuleChannelInfo' =>
                    Ros2Aimdk_msgsMsgModuleChannelInfo::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgModuleChannelInfo::class
                    ],
                'Ros2Aimdk_msgsMsgModuleRpcInfo' =>
                    Ros2Aimdk_msgsMsgModuleRpcInfo::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgModuleRpcInfo::class
                    ],
                'Ros2Aimdk_msgsMsgModuleResourceInfo' =>
                    Ros2Aimdk_msgsMsgModuleResourceInfo::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgModuleResourceInfo::class
                    ],
                'Ros2Aimdk_msgsMsgThreadResourceInfo' =>
                    Ros2Aimdk_msgsMsgThreadResourceInfo::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgThreadResourceInfo::class
                    ],
                'Ros2Aimdk_msgsMsgProcessResourceInfo' =>
                    Ros2Aimdk_msgsMsgProcessResourceInfo::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgProcessResourceInfo::class
                    ],
                'Ros2Aimdk_msgsMsgProcessInfo' =>
                    Ros2Aimdk_msgsMsgProcessInfo::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgProcessInfo::class
                    ],
            ]);
        }
        return $wire;
    }
}
