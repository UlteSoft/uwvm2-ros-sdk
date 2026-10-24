<?php
declare(strict_types=1);
namespace Uwvm\Agibot\Ros2SdkV100Main;
/** @file records.php
 * @brief All 120 complete original vendor ROS 2 record classes.
 * @details Every native field, bound, default and identity is retained.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @brief Complete aimdk_msgs/msg/AgentPropertyIdType owning value. */
final class Ros2Aimdk_msgsMsgAgentPropertyIdType
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgAgentPropertyIdType',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/AgentPropertyIdType',
        'constants' => [
            'AGENT_PROPERTY_UNDEFINED' => 0,
            'AGENT_PROPERTY_LANGUAGE' => 1,
            'AGENT_PROPERTY_RUN_MODE' => 2,
            'AGENT_PROPERTY_GREET' => 3,
            'AGENT_PROPERTY_HEAD_FOLLOW' => 4,
            'AGENT_PROPERTY_DUPLEX_TIMEOUT' => 5,
            'AGENT_PROPERTY_ENVIRONMENT_SWITCH' => 6,
            'AGENT_PROPERTY_WELCOME_STATUS' => 7,
            'AGENT_PROPERTY_SITE_SWITCH' => 8,
            'AGENT_PROPERTY_LANGUAGE_LIST' => 9
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
    public const AGENT_PROPERTY_UNDEFINED = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const AGENT_PROPERTY_LANGUAGE = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const AGENT_PROPERTY_RUN_MODE = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const AGENT_PROPERTY_GREET = 3;
    /** @brief Original native constant; no instance wire bytes. */
    public const AGENT_PROPERTY_HEAD_FOLLOW = 4;
    /** @brief Original native constant; no instance wire bytes. */
    public const AGENT_PROPERTY_DUPLEX_TIMEOUT = 5;
    /** @brief Original native constant; no instance wire bytes. */
    public const AGENT_PROPERTY_ENVIRONMENT_SWITCH = 6;
    /** @brief Original native constant; no instance wire bytes. */
    public const AGENT_PROPERTY_WELCOME_STATUS = 7;
    /** @brief Original native constant; no instance wire bytes. */
    public const AGENT_PROPERTY_SITE_SWITCH = 8;
    /** @brief Original native constant; no instance wire bytes. */
    public const AGENT_PROPERTY_LANGUAGE_LIST = 9;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgAgentPropertyIdType', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgAgentPropertyIdType', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/AgentPropertiesValue owning value. */
final class Ros2Aimdk_msgsMsgAgentPropertiesValue
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgAgentPropertiesValue',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb',
        'minimum' => 5,
        'maximum' => 133,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/AgentPropertiesValue',
        'constants' => [],
        'fields' => [
            [
                'name' => 'key',
                'type' => 'Ros2Aimdk_msgsMsgAgentPropertyIdType',
                'array' => '',
                'count' => 0,
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
    /** @brief Original key field; type Ros2Aimdk_msgsMsgAgentPropertyIdType. */
    public mixed $key;
    /** @brief Original value field; type string. */
    public mixed $value;
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
        $this->key = array_key_exists('key', $values)
            ? $values['key']
            : new Ros2Aimdk_msgsMsgAgentPropertyIdType();
        $this->value = array_key_exists('value', $values)
            ? $values['value']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgAgentPropertiesValue', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgAgentPropertiesValue', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/AgentProperties owning value. */
final class Ros2Aimdk_msgsMsgAgentProperties
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgAgentProperties',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa',
        'minimum' => 4,
        'maximum' => 536,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/AgentProperties',
        'constants' => [],
        'fields' => [
            [
                'name' => 'properties',
                'type' => 'Ros2Aimdk_msgsMsgAgentPropertiesValue',
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
                'element_minimum' => 5
            ]
        ]
    ];
    /** @brief Original properties field; type Ros2Aimdk_msgsMsgAgentPropertiesValue. */
    public mixed $properties;
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
        $this->properties = array_key_exists('properties', $values)
            ? $values['properties']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgAgentProperties', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgAgentProperties', $bytes);
    }
}

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

/** @brief Complete aimdk_msgs/msg/AudioInfo owning value. */
final class Ros2Aimdk_msgsMsgAudioInfo
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgAudioInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be',
        'minimum' => 17,
        'maximum' => 273,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/AudioInfo',
        'constants' => [],
        'fields' => [
            [
                'name' => 'channels',
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
                'name' => 'sample_rate',
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
                'name' => 'sample_format',
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
                'name' => 'coding_format',
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
    /** @brief Original channels field; type uint8. */
    public mixed $channels;
    /** @brief Original sample_rate field; type uint32. */
    public mixed $sample_rate;
    /** @brief Original size field; type uint32. */
    public mixed $size;
    /** @brief Original sample_format field; type string. */
    public mixed $sample_format;
    /** @brief Original coding_format field; type string. */
    public mixed $coding_format;
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
        $this->channels = array_key_exists('channels', $values)
            ? $values['channels']
            : 0;
        $this->sample_rate = array_key_exists('sample_rate', $values)
            ? $values['sample_rate']
            : Word::fromDecimal('0', 4, false);
        $this->size = array_key_exists('size', $values)
            ? $values['size']
            : Word::fromDecimal('0', 4, false);
        $this->sample_format = array_key_exists('sample_format', $values)
            ? $values['sample_format']
            : '';
        $this->coding_format = array_key_exists('coding_format', $values)
            ? $values['coding_format']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgAudioInfo', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgAudioInfo', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/AudioData owning value. */
final class Ros2Aimdk_msgsMsgAudioData
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgAudioData',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/AudioData',
        'constants' => [],
        'fields' => [
            [
                'name' => 'data',
                'type' => 'uint8',
                'array' => 'sequence',
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
        ]
    ];
    /** @brief Original data field; type uint8. */
    public mixed $data;
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
        $this->data = array_key_exists('data', $values)
            ? $values['data']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgAudioData', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgAudioData', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/AudioCapture owning value. */
final class Ros2Aimdk_msgsMsgAudioCapture
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgAudioCapture',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c',
        'minimum' => 35,
        'maximum' => 675,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/AudioCapture',
        'constants' => [],
        'fields' => [
            [
                'name' => 'stamps',
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
                'name' => 'mic_channels',
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
                'name' => 'ref_channels',
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
                'name' => 'info',
                'type' => 'Ros2Aimdk_msgsMsgAudioInfo',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 17
            ],
            [
                'name' => 'data',
                'type' => 'Ros2Aimdk_msgsMsgAudioData',
                'array' => '',
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
                'name' => 'pkg_name',
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
    /** @brief Original stamps field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $stamps;
    /** @brief Original mic_channels field; type uint8. */
    public mixed $mic_channels;
    /** @brief Original ref_channels field; type uint8. */
    public mixed $ref_channels;
    /** @brief Original info field; type Ros2Aimdk_msgsMsgAudioInfo. */
    public mixed $info;
    /** @brief Original data field; type Ros2Aimdk_msgsMsgAudioData. */
    public mixed $data;
    /** @brief Original pkg_name field; type string. */
    public mixed $pkg_name;
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
        $this->stamps = array_key_exists('stamps', $values)
            ? $values['stamps']
            : new Ros2Builtin_interfacesMsgTime();
        $this->mic_channels = array_key_exists('mic_channels', $values)
            ? $values['mic_channels']
            : 0;
        $this->ref_channels = array_key_exists('ref_channels', $values)
            ? $values['ref_channels']
            : 0;
        $this->info = array_key_exists('info', $values)
            ? $values['info']
            : new Ros2Aimdk_msgsMsgAudioInfo();
        $this->data = array_key_exists('data', $values)
            ? $values['data']
            : new Ros2Aimdk_msgsMsgAudioData();
        $this->pkg_name = array_key_exists('pkg_name', $values)
            ? $values['pkg_name']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgAudioCapture', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgAudioCapture', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/AudioFile owning value. */
final class Ros2Aimdk_msgsMsgAudioFile
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgAudioFile',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d',
        'minimum' => 37,
        'maximum' => 677,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/AudioFile',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pkg_name',
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
                'name' => 'file_name',
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
                'name' => 'file_path',
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
                'name' => 'info',
                'type' => 'Ros2Aimdk_msgsMsgAudioInfo',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 17
            ],
            [
                'name' => 'priority',
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
                'name' => 'priority_weight',
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
    /** @brief Original pkg_name field; type string. */
    public mixed $pkg_name;
    /** @brief Original file_name field; type string. */
    public mixed $file_name;
    /** @brief Original file_path field; type string. */
    public mixed $file_path;
    /** @brief Original info field; type Ros2Aimdk_msgsMsgAudioInfo. */
    public mixed $info;
    /** @brief Original priority field; type uint32. */
    public mixed $priority;
    /** @brief Original priority_weight field; type uint32. */
    public mixed $priority_weight;
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
        $this->pkg_name = array_key_exists('pkg_name', $values)
            ? $values['pkg_name']
            : '';
        $this->file_name = array_key_exists('file_name', $values)
            ? $values['file_name']
            : '';
        $this->file_path = array_key_exists('file_path', $values)
            ? $values['file_path']
            : '';
        $this->info = array_key_exists('info', $values)
            ? $values['info']
            : new Ros2Aimdk_msgsMsgAudioInfo();
        $this->priority = array_key_exists('priority', $values)
            ? $values['priority']
            : Word::fromDecimal('0', 4, false);
        $this->priority_weight = array_key_exists('priority_weight', $values)
            ? $values['priority_weight']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgAudioFile', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgAudioFile', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/AudioPlayback owning value. */
final class Ros2Aimdk_msgsMsgAudioPlayback
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgAudioPlayback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499',
        'minimum' => 37,
        'maximum' => 805,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/AudioPlayback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'stamps',
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
                'name' => 'info',
                'type' => 'Ros2Aimdk_msgsMsgAudioInfo',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 17
            ],
            [
                'name' => 'data',
                'type' => 'Ros2Aimdk_msgsMsgAudioData',
                'array' => '',
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
                'name' => 'pkg_name',
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
                'name' => 'token_id',
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
    /** @brief Original stamps field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $stamps;
    /** @brief Original info field; type Ros2Aimdk_msgsMsgAudioInfo. */
    public mixed $info;
    /** @brief Original data field; type Ros2Aimdk_msgsMsgAudioData. */
    public mixed $data;
    /** @brief Original pkg_name field; type string. */
    public mixed $pkg_name;
    /** @brief Original token_id field; type string. */
    public mixed $token_id;
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
        $this->stamps = array_key_exists('stamps', $values)
            ? $values['stamps']
            : new Ros2Builtin_interfacesMsgTime();
        $this->info = array_key_exists('info', $values)
            ? $values['info']
            : new Ros2Aimdk_msgsMsgAudioInfo();
        $this->data = array_key_exists('data', $values)
            ? $values['data']
            : new Ros2Aimdk_msgsMsgAudioData();
        $this->pkg_name = array_key_exists('pkg_name', $values)
            ? $values['pkg_name']
            : '';
        $this->token_id = array_key_exists('token_id', $values)
            ? $values['token_id']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgAudioPlayback', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgAudioPlayback', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/AudioVadStateType owning value. */
final class Ros2Aimdk_msgsMsgAudioVadStateType
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgAudioVadStateType',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/AudioVadStateType',
        'constants' => [
            'AUDIO_VAD_STATE_NONE' => 0,
            'AUDIO_VAD_STATE_BEGIN' => 1,
            'AUDIO_VAD_STATE_PROCESSING' => 2,
            'AUDIO_VAD_STATE_END' => 3
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
    public const AUDIO_VAD_STATE_NONE = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const AUDIO_VAD_STATE_BEGIN = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const AUDIO_VAD_STATE_PROCESSING = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const AUDIO_VAD_STATE_END = 3;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgAudioVadStateType', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgAudioVadStateType', $bytes);
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

/** @brief Complete aimdk_msgs/msg/CurrentVersion owning value. */
final class Ros2Aimdk_msgsMsgCurrentVersion
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgCurrentVersion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd',
        'minimum' => 20,
        'maximum' => 2388,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/CurrentVersion',
        'constants' => [],
        'fields' => [
            [
                'name' => 'version',
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
                'name' => 'files',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'download_timestamp_seconds',
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
        ]
    ];
    /** @brief Original version field; type string. */
    public mixed $version;
    /** @brief Original name field; type string. */
    public mixed $name;
    /** @brief Original files field; type string. */
    public mixed $files;
    /** @brief Original download_timestamp_seconds field; type uint64. */
    public mixed $download_timestamp_seconds;
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
        $this->version = array_key_exists('version', $values)
            ? $values['version']
            : '';
        $this->name = array_key_exists('name', $values)
            ? $values['name']
            : '';
        $this->files = array_key_exists('files', $values)
            ? $values['files']
            : [];
        $this->download_timestamp_seconds = array_key_exists('download_timestamp_seconds', $values)
            ? $values['download_timestamp_seconds']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgCurrentVersion', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgCurrentVersion', $bytes);
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

/** @brief Complete aimdk_msgs/msg/FaceEmojiStatus owning value. */
final class Ros2Aimdk_msgsMsgFaceEmojiStatus
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgFaceEmojiStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7',
        'minimum' => 47,
        'maximum' => 2415,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/FaceEmojiStatus',
        'constants' => [
            'STATUS_IDLE' => 0,
            'STATUS_START' => 1,
            'STATUS_RUNNING' => 2,
            'STATUS_FINISHED' => 3,
            'STATUS_STOPPED' => 4
        ],
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
                'name' => 'e_path',
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
                'name' => 'e_path_list',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'e_id',
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
                'name' => 'mode',
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
                'name' => 'priority',
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
                'name' => 'status',
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
                'name' => 'time_to_end_ms',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgMessageHeader. */
    public mixed $header;
    /** @brief Original e_path field; type string. */
    public mixed $e_path;
    /** @brief Original e_path_list field; type string. */
    public mixed $e_path_list;
    /** @brief Original e_id field; type uint8. */
    public mixed $e_id;
    /** @brief Original mode field; type uint8. */
    public mixed $mode;
    /** @brief Original priority field; type int32. */
    public mixed $priority;
    /** @brief Original status field; type uint8. */
    public mixed $status;
    /** @brief Original time_to_end_ms field; type float64. */
    public mixed $time_to_end_ms;
    /** @brief Original native constant; no instance wire bytes. */
    public const STATUS_IDLE = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const STATUS_START = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const STATUS_RUNNING = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const STATUS_FINISHED = 3;
    /** @brief Original native constant; no instance wire bytes. */
    public const STATUS_STOPPED = 4;
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
        $this->e_path = array_key_exists('e_path', $values)
            ? $values['e_path']
            : '';
        $this->e_path_list = array_key_exists('e_path_list', $values)
            ? $values['e_path_list']
            : [];
        $this->e_id = array_key_exists('e_id', $values)
            ? $values['e_id']
            : 0;
        $this->mode = array_key_exists('mode', $values)
            ? $values['mode']
            : 0;
        $this->priority = array_key_exists('priority', $values)
            ? $values['priority']
            : 0;
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : 0;
        $this->time_to_end_ms = array_key_exists('time_to_end_ms', $values)
            ? $values['time_to_end_ms']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgFaceEmojiStatus', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgFaceEmojiStatus', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/FocusRequester owning value. */
final class Ros2Aimdk_msgsMsgFocusRequester
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgFocusRequester',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/FocusRequester',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pkg_name',
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
                'name' => 'priority',
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
                'name' => 'priority_weight',
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
    /** @brief Original pkg_name field; type string. */
    public mixed $pkg_name;
    /** @brief Original priority field; type uint32. */
    public mixed $priority;
    /** @brief Original priority_weight field; type uint32. */
    public mixed $priority_weight;
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
        $this->pkg_name = array_key_exists('pkg_name', $values)
            ? $values['pkg_name']
            : '';
        $this->priority = array_key_exists('priority', $values)
            ? $values['priority']
            : Word::fromDecimal('0', 4, false);
        $this->priority_weight = array_key_exists('priority_weight', $values)
            ? $values['priority_weight']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgFocusRequester', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgFocusRequester', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/FocusResponse owning value. */
final class Ros2Aimdk_msgsMsgFocusResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgFocusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c',
        'minimum' => 5,
        'maximum' => 133,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/FocusResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pkg_name',
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
                'name' => 'focus_gain',
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
        ]
    ];
    /** @brief Original pkg_name field; type string. */
    public mixed $pkg_name;
    /** @brief Original focus_gain field; type bool. */
    public mixed $focus_gain;
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
        $this->pkg_name = array_key_exists('pkg_name', $values)
            ? $values['pkg_name']
            : '';
        $this->focus_gain = array_key_exists('focus_gain', $values)
            ? $values['focus_gain']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgFocusResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgFocusResponse', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/Point owning value. */
final class Ros2Geometry_msgsMsgPoint
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPoint',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Point',
        'constants' => [],
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
        ]
    ];
    /** @brief Original x field; type float64. */
    public mixed $x;
    /** @brief Original y field; type float64. */
    public mixed $y;
    /** @brief Original z field; type float64. */
    public mixed $z;
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
        $this->x = array_key_exists('x', $values)
            ? $values['x']
            : 0;
        $this->y = array_key_exists('y', $values)
            ? $values['y']
            : 0;
        $this->z = array_key_exists('z', $values)
            ? $values['z']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoint', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoint', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/Quaternion owning value. */
final class Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgQuaternion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Quaternion',
        'constants' => [],
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
        ]
    ];
    /** @brief Original x field; type float64. */
    public mixed $x;
    /** @brief Original y field; type float64. */
    public mixed $y;
    /** @brief Original z field; type float64. */
    public mixed $z;
    /** @brief Original w field; type float64. */
    public mixed $w;
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
        $this->x = array_key_exists('x', $values)
            ? $values['x']
            : 0.0;
        $this->y = array_key_exists('y', $values)
            ? $values['y']
            : 0.0;
        $this->z = array_key_exists('z', $values)
            ? $values['z']
            : 0.0;
        $this->w = array_key_exists('w', $values)
            ? $values['w']
            : 1.0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgQuaternion', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgQuaternion', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/Pose owning value. */
final class Ros2Geometry_msgsMsgPose
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Pose',
        'constants' => [],
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
        ]
    ];
    /** @brief Original position field; type Ros2Geometry_msgsMsgPoint. */
    public mixed $position;
    /** @brief Original orientation field; type Ros2Geometry_msgsMsgQuaternion. */
    public mixed $orientation;
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
        $this->position = array_key_exists('position', $values)
            ? $values['position']
            : new Ros2Geometry_msgsMsgPoint();
        $this->orientation = array_key_exists('orientation', $values)
            ? $values['orientation']
            : new Ros2Geometry_msgsMsgQuaternion();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPose', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPose', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/QRCode owning value. */
final class Ros2Aimdk_msgsMsgQRCode
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgQRCode',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd',
        'minimum' => 60,
        'maximum' => 60,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/QRCode',
        'constants' => [],
        'fields' => [
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
            ]
        ]
    ];
    /** @brief Original code field; type int32. */
    public mixed $code;
    /** @brief Original pose field; type Ros2Geometry_msgsMsgPose. */
    public mixed $pose;
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
        $this->code = array_key_exists('code', $values)
            ? $values['code']
            : 0;
        $this->pose = array_key_exists('pose', $values)
            ? $values['pose']
            : new Ros2Geometry_msgsMsgPose();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgQRCode', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgQRCode', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/HRPoint owning value. */
final class Ros2Aimdk_msgsMsgHRPoint
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgHRPoint',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645',
        'minimum' => 65,
        'maximum' => 305,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/HRPoint',
        'constants' => [],
        'fields' => [
            [
                'name' => 'point_id',
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
                'name' => 'qr_list',
                'type' => 'Ros2Aimdk_msgsMsgQRCode',
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
                'element_minimum' => 60
            ],
            [
                'name' => 'use_head',
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
        ]
    ];
    /** @brief Original point_id field; type int32. */
    public mixed $point_id;
    /** @brief Original pose field; type Ros2Geometry_msgsMsgPose. */
    public mixed $pose;
    /** @brief Original qr_list field; type Ros2Aimdk_msgsMsgQRCode. */
    public mixed $qr_list;
    /** @brief Original use_head field; type bool. */
    public mixed $use_head;
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
        $this->point_id = array_key_exists('point_id', $values)
            ? $values['point_id']
            : 0;
        $this->pose = array_key_exists('pose', $values)
            ? $values['pose']
            : new Ros2Geometry_msgsMsgPose();
        $this->qr_list = array_key_exists('qr_list', $values)
            ? $values['qr_list']
            : [];
        $this->use_head = array_key_exists('use_head', $values)
            ? $values['use_head']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgHRPoint', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgHRPoint', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/HandCommand owning value. */
final class Ros2Aimdk_msgsMsgHandCommand
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgHandCommand',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8',
        'minimum' => 44,
        'maximum' => 172,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/HandCommand',
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
                'name' => 'acceleration',
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
                'name' => 'deceleration',
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
            ]
        ]
    ];
    /** @brief Original name field; type string. */
    public mixed $name;
    /** @brief Original position field; type float64. */
    public mixed $position;
    /** @brief Original velocity field; type float64. */
    public mixed $velocity;
    /** @brief Original acceleration field; type float64. */
    public mixed $acceleration;
    /** @brief Original deceleration field; type float64. */
    public mixed $deceleration;
    /** @brief Original effort field; type float64. */
    public mixed $effort;
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
        $this->acceleration = array_key_exists('acceleration', $values)
            ? $values['acceleration']
            : 0;
        $this->deceleration = array_key_exists('deceleration', $values)
            ? $values['deceleration']
            : 0;
        $this->effort = array_key_exists('effort', $values)
            ? $values['effort']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgHandCommand', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgHandCommand', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/HandType owning value. */
final class Ros2Aimdk_msgsMsgHandType
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgHandType',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_be593e2d647a922b02f6f81e52fbfaa805837d6ef6a156de500d4dc40f1fc5bb',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/HandType',
        'constants' => [
            'NONE' => 0,
            'NIMBLE_HANDS' => 1,
            'CLAW' => 2,
            'LEISAI_NIMBLE_HANDS' => 3,
            'ERROR' => 255
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
    public const NIMBLE_HANDS = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const CLAW = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const LEISAI_NIMBLE_HANDS = 3;
    /** @brief Original native constant; no instance wire bytes. */
    public const ERROR = 255;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgHandType', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgHandType', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/HandCommandArray owning value. */
final class Ros2Aimdk_msgsMsgHandCommandArray
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgHandCommandArray',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d7f46a8aa55d6ef296aa86d6522b7add84f4c8e7e3009d1454d573a8af1d17d5',
        'minimum' => 34,
        'maximum' => 1538,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/HandCommandArray',
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
                'name' => 'left_hand_type',
                'type' => 'Ros2Aimdk_msgsMsgHandType',
                'array' => '',
                'count' => 0,
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
                'name' => 'left_hands',
                'type' => 'Ros2Aimdk_msgsMsgHandCommand',
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
                'element_minimum' => 44
            ],
            [
                'name' => 'right_hand_type',
                'type' => 'Ros2Aimdk_msgsMsgHandType',
                'array' => '',
                'count' => 0,
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
                'name' => 'right_hands',
                'type' => 'Ros2Aimdk_msgsMsgHandCommand',
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
                'element_minimum' => 44
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgMessageHeader. */
    public mixed $header;
    /** @brief Original left_hand_type field; type Ros2Aimdk_msgsMsgHandType. */
    public mixed $left_hand_type;
    /** @brief Original left_hands field; type Ros2Aimdk_msgsMsgHandCommand. */
    public mixed $left_hands;
    /** @brief Original right_hand_type field; type Ros2Aimdk_msgsMsgHandType. */
    public mixed $right_hand_type;
    /** @brief Original right_hands field; type Ros2Aimdk_msgsMsgHandCommand. */
    public mixed $right_hands;
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
        $this->left_hand_type = array_key_exists('left_hand_type', $values)
            ? $values['left_hand_type']
            : new Ros2Aimdk_msgsMsgHandType();
        $this->left_hands = array_key_exists('left_hands', $values)
            ? $values['left_hands']
            : [];
        $this->right_hand_type = array_key_exists('right_hand_type', $values)
            ? $values['right_hand_type']
            : new Ros2Aimdk_msgsMsgHandType();
        $this->right_hands = array_key_exists('right_hands', $values)
            ? $values['right_hands']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgHandCommandArray', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgHandCommandArray', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/HandState owning value. */
final class Ros2Aimdk_msgsMsgHandState
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgHandState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c',
        'minimum' => 36,
        'maximum' => 164,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/HandState',
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
                'name' => 'state',
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
                'name' => 'faultcode',
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
    /** @brief Original name field; type string. */
    public mixed $name;
    /** @brief Original position field; type float64. */
    public mixed $position;
    /** @brief Original velocity field; type float64. */
    public mixed $velocity;
    /** @brief Original effort field; type float64. */
    public mixed $effort;
    /** @brief Original state field; type int32. */
    public mixed $state;
    /** @brief Original faultcode field; type int32. */
    public mixed $faultcode;
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
        $this->state = array_key_exists('state', $values)
            ? $values['state']
            : 0;
        $this->faultcode = array_key_exists('faultcode', $values)
            ? $values['faultcode']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgHandState', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgHandState', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/HandTouchSensorData owning value. */
final class Ros2Aimdk_msgsMsgHandTouchSensorData
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgHandTouchSensorData',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0',
        'minimum' => 152,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/HandTouchSensorData',
        'constants' => [],
        'fields' => [
            [
                'name' => 'palm_touch_data',
                'type' => 'uint8',
                'array' => 'array',
                'count' => 36,
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
                'name' => 'back_of_hand_touch_data',
                'type' => 'uint8',
                'array' => 'array',
                'count' => 36,
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
                'name' => 'thumb_touch_data',
                'type' => 'uint8',
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
                'name' => 'index_finger_touch_data',
                'type' => 'uint8',
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
                'name' => 'middle_finger_touch_data',
                'type' => 'uint8',
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
                'name' => 'ring_finger_touch_data',
                'type' => 'uint8',
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
                'name' => 'little_finger_touch_data',
                'type' => 'uint8',
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
            ]
        ]
    ];
    /** @brief Original palm_touch_data field; type uint8. */
    public mixed $palm_touch_data;
    /** @brief Original back_of_hand_touch_data field; type uint8. */
    public mixed $back_of_hand_touch_data;
    /** @brief Original thumb_touch_data field; type uint8. */
    public mixed $thumb_touch_data;
    /** @brief Original index_finger_touch_data field; type uint8. */
    public mixed $index_finger_touch_data;
    /** @brief Original middle_finger_touch_data field; type uint8. */
    public mixed $middle_finger_touch_data;
    /** @brief Original ring_finger_touch_data field; type uint8. */
    public mixed $ring_finger_touch_data;
    /** @brief Original little_finger_touch_data field; type uint8. */
    public mixed $little_finger_touch_data;
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
        $this->palm_touch_data = array_key_exists('palm_touch_data', $values)
            ? $values['palm_touch_data']
            : array_map(static fn($index) => 0, range(1, 36));
        $this->back_of_hand_touch_data = array_key_exists('back_of_hand_touch_data', $values)
            ? $values['back_of_hand_touch_data']
            : array_map(static fn($index) => 0, range(1, 36));
        $this->thumb_touch_data = array_key_exists('thumb_touch_data', $values)
            ? $values['thumb_touch_data']
            : array_map(static fn($index) => 0, range(1, 16));
        $this->index_finger_touch_data = array_key_exists('index_finger_touch_data', $values)
            ? $values['index_finger_touch_data']
            : array_map(static fn($index) => 0, range(1, 16));
        $this->middle_finger_touch_data = array_key_exists('middle_finger_touch_data', $values)
            ? $values['middle_finger_touch_data']
            : array_map(static fn($index) => 0, range(1, 16));
        $this->ring_finger_touch_data = array_key_exists('ring_finger_touch_data', $values)
            ? $values['ring_finger_touch_data']
            : array_map(static fn($index) => 0, range(1, 16));
        $this->little_finger_touch_data = array_key_exists('little_finger_touch_data', $values)
            ? $values['little_finger_touch_data']
            : array_map(static fn($index) => 0, range(1, 16));
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgHandTouchSensorData', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgHandTouchSensorData', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/HandStateArray owning value. */
final class Ros2Aimdk_msgsMsgHandStateArray
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgHandStateArray',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0ea5f872d42818af468d20b20670067c07631691b5988e45dc5e87caf137efb3',
        'minimum' => 338,
        'maximum' => 1778,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/HandStateArray',
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
                'name' => 'left_hand_type',
                'type' => 'Ros2Aimdk_msgsMsgHandType',
                'array' => '',
                'count' => 0,
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
                'name' => 'left_hands',
                'type' => 'Ros2Aimdk_msgsMsgHandState',
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
                'element_minimum' => 36
            ],
            [
                'name' => 'left_touch_sensors',
                'type' => 'Ros2Aimdk_msgsMsgHandTouchSensorData',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 152
            ],
            [
                'name' => 'right_hand_type',
                'type' => 'Ros2Aimdk_msgsMsgHandType',
                'array' => '',
                'count' => 0,
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
                'name' => 'right_hands',
                'type' => 'Ros2Aimdk_msgsMsgHandState',
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
                'element_minimum' => 36
            ],
            [
                'name' => 'right_touch_sensors',
                'type' => 'Ros2Aimdk_msgsMsgHandTouchSensorData',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 152
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgMessageHeader. */
    public mixed $header;
    /** @brief Original left_hand_type field; type Ros2Aimdk_msgsMsgHandType. */
    public mixed $left_hand_type;
    /** @brief Original left_hands field; type Ros2Aimdk_msgsMsgHandState. */
    public mixed $left_hands;
    /** @brief Original left_touch_sensors field; type Ros2Aimdk_msgsMsgHandTouchSensorData. */
    public mixed $left_touch_sensors;
    /** @brief Original right_hand_type field; type Ros2Aimdk_msgsMsgHandType. */
    public mixed $right_hand_type;
    /** @brief Original right_hands field; type Ros2Aimdk_msgsMsgHandState. */
    public mixed $right_hands;
    /** @brief Original right_touch_sensors field; type Ros2Aimdk_msgsMsgHandTouchSensorData. */
    public mixed $right_touch_sensors;
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
        $this->left_hand_type = array_key_exists('left_hand_type', $values)
            ? $values['left_hand_type']
            : new Ros2Aimdk_msgsMsgHandType();
        $this->left_hands = array_key_exists('left_hands', $values)
            ? $values['left_hands']
            : [];
        $this->left_touch_sensors = array_key_exists('left_touch_sensors', $values)
            ? $values['left_touch_sensors']
            : new Ros2Aimdk_msgsMsgHandTouchSensorData();
        $this->right_hand_type = array_key_exists('right_hand_type', $values)
            ? $values['right_hand_type']
            : new Ros2Aimdk_msgsMsgHandType();
        $this->right_hands = array_key_exists('right_hands', $values)
            ? $values['right_hands']
            : [];
        $this->right_touch_sensors = array_key_exists('right_touch_sensors', $values)
            ? $values['right_touch_sensors']
            : new Ros2Aimdk_msgsMsgHandTouchSensorData();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgHandStateArray', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgHandStateArray', $bytes);
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

/** @brief Complete aimdk_msgs/msg/McAction owning value. */
final class Ros2Aimdk_msgsMsgMcAction
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMcAction',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/McAction',
        'constants' => [
            'PASSIVE_DEFAULT' => 1,
            'SOFT_EMERGENCY_STOP' => 2,
            'DAMPING_DEFAULT' => 3,
            'ZERO_TORQUE_DEFAULT' => 4,
            'JOINT_DEFAULT' => 100,
            'JOINT_FREEZE' => 101,
            'STAND_DEFAULT' => 200,
            'STAND_BODY_CONTROL' => 201,
            'LOCOMOTION_DEFAULT' => 300,
            'RUN_DEFAULT' => 301,
            'LOCOMOTION_STEP' => 302,
            'VR_REMOTE_CONTROLLER' => 400,
            'SIT_DOWN_DEFAULT' => 2000,
            'CROUCH_DOWN_DEFAULT' => 2002,
            'LIE_DOWN_DEFAULT' => 2004,
            'STAND_UP_DEFAULT' => 2005,
            'ASCEND_STAIRS' => 2006,
            'DESCEND_STAIRS' => 2008
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
    public const PASSIVE_DEFAULT = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const SOFT_EMERGENCY_STOP = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const DAMPING_DEFAULT = 3;
    /** @brief Original native constant; no instance wire bytes. */
    public const ZERO_TORQUE_DEFAULT = 4;
    /** @brief Original native constant; no instance wire bytes. */
    public const JOINT_DEFAULT = 100;
    /** @brief Original native constant; no instance wire bytes. */
    public const JOINT_FREEZE = 101;
    /** @brief Original native constant; no instance wire bytes. */
    public const STAND_DEFAULT = 200;
    /** @brief Original native constant; no instance wire bytes. */
    public const STAND_BODY_CONTROL = 201;
    /** @brief Original native constant; no instance wire bytes. */
    public const LOCOMOTION_DEFAULT = 300;
    /** @brief Original native constant; no instance wire bytes. */
    public const RUN_DEFAULT = 301;
    /** @brief Original native constant; no instance wire bytes. */
    public const LOCOMOTION_STEP = 302;
    /** @brief Original native constant; no instance wire bytes. */
    public const VR_REMOTE_CONTROLLER = 400;
    /** @brief Original native constant; no instance wire bytes. */
    public const SIT_DOWN_DEFAULT = 2000;
    /** @brief Original native constant; no instance wire bytes. */
    public const CROUCH_DOWN_DEFAULT = 2002;
    /** @brief Original native constant; no instance wire bytes. */
    public const LIE_DOWN_DEFAULT = 2004;
    /** @brief Original native constant; no instance wire bytes. */
    public const STAND_UP_DEFAULT = 2005;
    /** @brief Original native constant; no instance wire bytes. */
    public const ASCEND_STAIRS = 2006;
    /** @brief Original native constant; no instance wire bytes. */
    public const DESCEND_STAIRS = 2008;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMcAction', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMcAction', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/McActionCommand owning value. */
final class Ros2Aimdk_msgsMsgMcActionCommand
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMcActionCommand',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/McActionCommand',
        'constants' => [],
        'fields' => [
            [
                'name' => 'action',
                'type' => 'Ros2Aimdk_msgsMsgMcAction',
                'array' => '',
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
                'name' => 'action_desc',
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
    /** @brief Original action field; type Ros2Aimdk_msgsMsgMcAction. */
    public mixed $action;
    /** @brief Original action_desc field; type string. */
    public mixed $action_desc;
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
        $this->action = array_key_exists('action', $values)
            ? $values['action']
            : new Ros2Aimdk_msgsMsgMcAction();
        $this->action_desc = array_key_exists('action_desc', $values)
            ? $values['action_desc']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMcActionCommand', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMcActionCommand', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/McActionStatus owning value. */
final class Ros2Aimdk_msgsMsgMcActionStatus
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMcActionStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/McActionStatus',
        'constants' => [
            'IDLE' => 0,
            'RUNNING' => 100,
            'TRANSITION' => 200
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
    public const IDLE = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const RUNNING = 100;
    /** @brief Original native constant; no instance wire bytes. */
    public const TRANSITION = 200;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMcActionStatus', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMcActionStatus', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/McActionInfo owning value. */
final class Ros2Aimdk_msgsMsgMcActionInfo
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMcActionInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/McActionInfo',
        'constants' => [],
        'fields' => [
            [
                'name' => 'current_action',
                'type' => 'Ros2Aimdk_msgsMsgMcAction',
                'array' => '',
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
                'name' => 'action_desc',
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
                'name' => 'status',
                'type' => 'Ros2Aimdk_msgsMsgMcActionStatus',
                'array' => '',
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
    /** @brief Original current_action field; type Ros2Aimdk_msgsMsgMcAction. */
    public mixed $current_action;
    /** @brief Original action_desc field; type string. */
    public mixed $action_desc;
    /** @brief Original status field; type Ros2Aimdk_msgsMsgMcActionStatus. */
    public mixed $status;
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
        $this->current_action = array_key_exists('current_action', $values)
            ? $values['current_action']
            : new Ros2Aimdk_msgsMsgMcAction();
        $this->action_desc = array_key_exists('action_desc', $values)
            ? $values['action_desc']
            : '';
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : new Ros2Aimdk_msgsMsgMcActionStatus();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMcActionInfo', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMcActionInfo', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/McControlArea owning value. */
final class Ros2Aimdk_msgsMsgMcControlArea
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMcControlArea',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/McControlArea',
        'constants' => [
            'NONE' => 0,
            'LEFT_HAND' => 1,
            'RIGHT_HAND' => 2,
            'HEAD' => 4,
            'WAIST' => 8
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
    public const NONE = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const LEFT_HAND = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const RIGHT_HAND = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const HEAD = 4;
    /** @brief Original native constant; no instance wire bytes. */
    public const WAIST = 8;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMcControlArea', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMcControlArea', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/McInputAction owning value. */
final class Ros2Aimdk_msgsMsgMcInputAction
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMcInputAction',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/McInputAction',
        'constants' => [
            'INPUTACTION_ADD' => 1001,
            'INPUTACTION_MODIFY' => 1002,
            'INPUTACTION_DELETE' => 1003,
            'INPUTACTION_ENABLE' => 2001,
            'INPUTACTION_DISABLE' => 2002
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
    public const INPUTACTION_ADD = 1001;
    /** @brief Original native constant; no instance wire bytes. */
    public const INPUTACTION_MODIFY = 1002;
    /** @brief Original native constant; no instance wire bytes. */
    public const INPUTACTION_DELETE = 1003;
    /** @brief Original native constant; no instance wire bytes. */
    public const INPUTACTION_ENABLE = 2001;
    /** @brief Original native constant; no instance wire bytes. */
    public const INPUTACTION_DISABLE = 2002;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMcInputAction', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMcInputAction', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/McInputSource owning value. */
final class Ros2Aimdk_msgsMsgMcInputSource
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMcInputSource',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/McInputSource',
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
                'name' => 'priority',
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
                'name' => 'timeout',
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
    /** @brief Original name field; type string. */
    public mixed $name;
    /** @brief Original priority field; type int32. */
    public mixed $priority;
    /** @brief Original timeout field; type int32. */
    public mixed $timeout;
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
        $this->priority = array_key_exists('priority', $values)
            ? $values['priority']
            : 0;
        $this->timeout = array_key_exists('timeout', $values)
            ? $values['timeout']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMcInputSource', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMcInputSource', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/McLocomotionVelocity owning value. */
final class Ros2Aimdk_msgsMsgMcLocomotionVelocity
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMcLocomotionVelocity',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00',
        'minimum' => 52,
        'maximum' => 308,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/McLocomotionVelocity',
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
                'name' => 'source',
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
                'name' => 'forward_velocity',
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
                'name' => 'lateral_velocity',
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
                'name' => 'angular_velocity',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgMessageHeader. */
    public mixed $header;
    /** @brief Original source field; type string. */
    public mixed $source;
    /** @brief Original forward_velocity field; type float64. */
    public mixed $forward_velocity;
    /** @brief Original lateral_velocity field; type float64. */
    public mixed $lateral_velocity;
    /** @brief Original angular_velocity field; type float64. */
    public mixed $angular_velocity;
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
        $this->source = array_key_exists('source', $values)
            ? $values['source']
            : '';
        $this->forward_velocity = array_key_exists('forward_velocity', $values)
            ? $values['forward_velocity']
            : 0;
        $this->lateral_velocity = array_key_exists('lateral_velocity', $values)
            ? $values['lateral_velocity']
            : 0;
        $this->angular_velocity = array_key_exists('angular_velocity', $values)
            ? $values['angular_velocity']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMcLocomotionVelocity', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMcLocomotionVelocity', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/McPresetMotion owning value. */
final class Ros2Aimdk_msgsMsgMcPresetMotion
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgMcPresetMotion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/McPresetMotion',
        'constants' => [
            'RAISE_HAND' => 1001,
            'WAVE_HAND' => 1002,
            'SHAKE_HAND' => 1003,
            'FLYING_KISS_HAND' => 1004,
            'CLAP_HAND' => 1008,
            'TURN_WAVE_HAND' => 2001,
            'INTERACTION_BOW' => 3001,
            'INTERACTION_LIKE' => 3002,
            'INTERACTION_YE' => 3003,
            'INTERACTION_SWEATHEART' => 3004,
            'SALUTE' => 1013,
            'INTERACTION_SAD' => 3006,
            'INTERACTION_LIGHTWAVE' => 3007,
            'INTERACTION_HUG' => 3008,
            'INTERACTION_HANDX' => 3009,
            'INTERACTION_CHESTWAVE' => 3010,
            'INTERACTION_CHEER' => 3011,
            'INTERACTION_BLOWKISS' => 3012,
            'INTERACTION_BASSDANCE1' => 3013,
            'INTERACTION_BASSDANCE2' => 3014,
            'HITCLAP' => 3015,
            'INTERACTION_SPEAK' => 3016,
            'CLIPFIST' => 1009,
            'INTERACTION_PHOTOPOSTURE' => 3018,
            'INTERACTION_PHOTOTRIPPLEPOSTURE' => 3019,
            'POINT_HEAD' => 4001,
            'SHAKE_HEAD' => 4002
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
    public const RAISE_HAND = 1001;
    /** @brief Original native constant; no instance wire bytes. */
    public const WAVE_HAND = 1002;
    /** @brief Original native constant; no instance wire bytes. */
    public const SHAKE_HAND = 1003;
    /** @brief Original native constant; no instance wire bytes. */
    public const FLYING_KISS_HAND = 1004;
    /** @brief Original native constant; no instance wire bytes. */
    public const CLAP_HAND = 1008;
    /** @brief Original native constant; no instance wire bytes. */
    public const TURN_WAVE_HAND = 2001;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_BOW = 3001;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_LIKE = 3002;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_YE = 3003;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_SWEATHEART = 3004;
    /** @brief Original native constant; no instance wire bytes. */
    public const SALUTE = 1013;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_SAD = 3006;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_LIGHTWAVE = 3007;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_HUG = 3008;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_HANDX = 3009;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_CHESTWAVE = 3010;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_CHEER = 3011;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_BLOWKISS = 3012;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_BASSDANCE1 = 3013;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_BASSDANCE2 = 3014;
    /** @brief Original native constant; no instance wire bytes. */
    public const HITCLAP = 3015;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_SPEAK = 3016;
    /** @brief Original native constant; no instance wire bytes. */
    public const CLIPFIST = 1009;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_PHOTOPOSTURE = 3018;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_PHOTOTRIPPLEPOSTURE = 3019;
    /** @brief Original native constant; no instance wire bytes. */
    public const POINT_HEAD = 4001;
    /** @brief Original native constant; no instance wire bytes. */
    public const SHAKE_HEAD = 4002;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgMcPresetMotion', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgMcPresetMotion', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/Pose2D owning value. */
final class Ros2Geometry_msgsMsgPose2D
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPose2D',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Pose2D',
        'constants' => [],
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
                'name' => 'theta',
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
    /** @brief Original x field; type float64. */
    public mixed $x;
    /** @brief Original y field; type float64. */
    public mixed $y;
    /** @brief Original theta field; type float64. */
    public mixed $theta;
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
        $this->x = array_key_exists('x', $values)
            ? $values['x']
            : 0;
        $this->y = array_key_exists('y', $values)
            ? $values['y']
            : 0;
        $this->theta = array_key_exists('theta', $values)
            ? $values['theta']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPose2D', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPose2D', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/NaviPoint owning value. */
final class Ros2Aimdk_msgsMsgNaviPoint
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgNaviPoint',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e',
        'minimum' => 28,
        'maximum' => 28,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/NaviPoint',
        'constants' => [],
        'fields' => [
            [
                'name' => 'point_id',
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
                'name' => 'navi_point',
                'type' => 'Ros2Geometry_msgsMsgPose2D',
                'array' => '',
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
        ]
    ];
    /** @brief Original point_id field; type int32. */
    public mixed $point_id;
    /** @brief Original navi_point field; type Ros2Geometry_msgsMsgPose2D. */
    public mixed $navi_point;
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
        $this->point_id = array_key_exists('point_id', $values)
            ? $values['point_id']
            : 0;
        $this->navi_point = array_key_exists('navi_point', $values)
            ? $values['navi_point']
            : new Ros2Geometry_msgsMsgPose2D();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgNaviPoint', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgNaviPoint', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/Path owning value. */
final class Ros2Aimdk_msgsMsgPath
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgPath',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d',
        'minimum' => 8,
        'maximum' => 104,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/Path',
        'constants' => [],
        'fields' => [
            [
                'name' => 'path_id',
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
                'name' => 'points',
                'type' => 'Ros2Geometry_msgsMsgPose2D',
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
                'element_minimum' => 24
            ]
        ]
    ];
    /** @brief Original path_id field; type int32. */
    public mixed $path_id;
    /** @brief Original points field; type Ros2Geometry_msgsMsgPose2D. */
    public mixed $points;
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
        $this->path_id = array_key_exists('path_id', $values)
            ? $values['path_id']
            : 0;
        $this->points = array_key_exists('points', $values)
            ? $values['points']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgPath', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgPath', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/PlayStateType owning value. */
final class Ros2Aimdk_msgsMsgPlayStateType
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgPlayStateType',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/PlayStateType',
        'constants' => [
            'PLAYER_STATE_CLOSED' => 0,
            'PLAYER_STATE_PLAYING' => 1,
            'PLAYER_STATE_STOPED' => 2
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
    public const PLAYER_STATE_CLOSED = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const PLAYER_STATE_PLAYING = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const PLAYER_STATE_STOPED = 2;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgPlayStateType', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgPlayStateType', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/PlayStateChange owning value. */
final class Ros2Aimdk_msgsMsgPlayStateChange
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgPlayStateChange',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c',
        'minimum' => 5,
        'maximum' => 133,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/PlayStateChange',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pkg_name',
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
                'name' => 'state',
                'type' => 'Ros2Aimdk_msgsMsgPlayStateType',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
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
    /** @brief Original pkg_name field; type string. */
    public mixed $pkg_name;
    /** @brief Original state field; type Ros2Aimdk_msgsMsgPlayStateType. */
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
        $this->pkg_name = array_key_exists('pkg_name', $values)
            ? $values['pkg_name']
            : '';
        $this->state = array_key_exists('state', $values)
            ? $values['state']
            : new Ros2Aimdk_msgsMsgPlayStateType();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgPlayStateChange', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgPlayStateChange', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/TtsPriorityLevel owning value. */
final class Ros2Aimdk_msgsMsgTtsPriorityLevel
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgTtsPriorityLevel',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/TtsPriorityLevel',
        'constants' => [
            'UNKNOWN' => 0,
            'BACKGROUND_L1' => 1,
            'SERVICE_L2' => 2,
            'MISSION_L4' => 4,
            'INTERACTION_L6' => 6,
            'SYSTEM_L7' => 7,
            'WARNING_L8' => 8,
            'SAFETY_L10' => 10
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
    public const UNKNOWN = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const BACKGROUND_L1 = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const SERVICE_L2 = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const MISSION_L4 = 4;
    /** @brief Original native constant; no instance wire bytes. */
    public const INTERACTION_L6 = 6;
    /** @brief Original native constant; no instance wire bytes. */
    public const SYSTEM_L7 = 7;
    /** @brief Original native constant; no instance wire bytes. */
    public const WARNING_L8 = 8;
    /** @brief Original native constant; no instance wire bytes. */
    public const SAFETY_L10 = 10;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgTtsPriorityLevel', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgTtsPriorityLevel', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/PlayTtsRequest owning value. */
final class Ros2Aimdk_msgsMsgPlayTtsRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgPlayTtsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72',
        'minimum' => 18,
        'maximum' => 402,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/PlayTtsRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'text',
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
                'name' => 'priority_level',
                'type' => 'Ros2Aimdk_msgsMsgTtsPriorityLevel',
                'array' => '',
                'count' => 0,
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
                'name' => 'priority_weight',
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
                'name' => 'domain',
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
                'name' => 'trace_id',
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
                'name' => 'is_interrupted',
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
        ]
    ];
    /** @brief Original text field; type string. */
    public mixed $text;
    /** @brief Original priority_level field; type Ros2Aimdk_msgsMsgTtsPriorityLevel. */
    public mixed $priority_level;
    /** @brief Original priority_weight field; type uint32. */
    public mixed $priority_weight;
    /** @brief Original domain field; type string. */
    public mixed $domain;
    /** @brief Original trace_id field; type string. */
    public mixed $trace_id;
    /** @brief Original is_interrupted field; type bool. */
    public mixed $is_interrupted;
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
        $this->text = array_key_exists('text', $values)
            ? $values['text']
            : '';
        $this->priority_level = array_key_exists('priority_level', $values)
            ? $values['priority_level']
            : new Ros2Aimdk_msgsMsgTtsPriorityLevel();
        $this->priority_weight = array_key_exists('priority_weight', $values)
            ? $values['priority_weight']
            : Word::fromDecimal('0', 4, false);
        $this->domain = array_key_exists('domain', $values)
            ? $values['domain']
            : '';
        $this->trace_id = array_key_exists('trace_id', $values)
            ? $values['trace_id']
            : '';
        $this->is_interrupted = array_key_exists('is_interrupted', $values)
            ? $values['is_interrupted']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgPlayTtsRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgPlayTtsRequest', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/PlayTtsResponse owning value. */
final class Ros2Aimdk_msgsMsgPlayTtsResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgPlayTtsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82',
        'minimum' => 26,
        'maximum' => 538,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/PlayTtsResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'text',
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
                'name' => 'priority_level',
                'type' => 'Ros2Aimdk_msgsMsgTtsPriorityLevel',
                'array' => '',
                'count' => 0,
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
                'name' => 'priority_weight',
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
                'name' => 'domain',
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
                'name' => 'trace_id',
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
                'name' => 'is_success',
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
                'name' => 'error_message',
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
                'name' => 'estimated_duration',
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
    /** @brief Original text field; type string. */
    public mixed $text;
    /** @brief Original priority_level field; type Ros2Aimdk_msgsMsgTtsPriorityLevel. */
    public mixed $priority_level;
    /** @brief Original priority_weight field; type uint32. */
    public mixed $priority_weight;
    /** @brief Original domain field; type string. */
    public mixed $domain;
    /** @brief Original trace_id field; type string. */
    public mixed $trace_id;
    /** @brief Original is_success field; type bool. */
    public mixed $is_success;
    /** @brief Original error_message field; type string. */
    public mixed $error_message;
    /** @brief Original estimated_duration field; type uint32. */
    public mixed $estimated_duration;
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
        $this->text = array_key_exists('text', $values)
            ? $values['text']
            : '';
        $this->priority_level = array_key_exists('priority_level', $values)
            ? $values['priority_level']
            : new Ros2Aimdk_msgsMsgTtsPriorityLevel();
        $this->priority_weight = array_key_exists('priority_weight', $values)
            ? $values['priority_weight']
            : Word::fromDecimal('0', 4, false);
        $this->domain = array_key_exists('domain', $values)
            ? $values['domain']
            : '';
        $this->trace_id = array_key_exists('trace_id', $values)
            ? $values['trace_id']
            : '';
        $this->is_success = array_key_exists('is_success', $values)
            ? $values['is_success']
            : false;
        $this->error_message = array_key_exists('error_message', $values)
            ? $values['error_message']
            : '';
        $this->estimated_duration = array_key_exists('estimated_duration', $values)
            ? $values['estimated_duration']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgPlayTtsResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgPlayTtsResponse', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/PmuState owning value. */
final class Ros2Aimdk_msgsMsgPmuState
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgPmuState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd',
        'minimum' => 218,
        'maximum' => 1114,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/PmuState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pmu_software_version',
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
                'name' => 'pmu_hardware_version',
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
                'name' => 'pmu_protocol_version',
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
                'name' => 'pmu_bool_status',
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
                'name' => 'head_power_current',
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
                'name' => 'output_48v_current',
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
                'name' => 'rk3588_current',
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
                'name' => 'output_12v_current',
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
                'name' => 'bus_48v_current',
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
                'name' => 'orin_current',
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
                'name' => 'bus_48v_pmos_voltage',
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
                'name' => 'battery_voltage',
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
                'name' => 'fan_voltage',
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
                'name' => 'output_12v_voltage',
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
                'name' => 'output_48v_voltage',
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
                'name' => 'bus_48v_voltage',
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
                'name' => 'head_power_voltage',
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
                'name' => 'orin_voltage',
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
                'name' => 'rk3588_voltage',
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
                'name' => 'fan_speed',
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
                'name' => 'fan_pecentage',
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
                'name' => 'pmu_temperature',
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
                'name' => 'bms_manufacturer',
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
                'name' => 'bms_serial_number',
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
                'name' => 'bms_hardware_version',
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
                'name' => 'bms_software_version',
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
                'name' => 'bms_status_bits',
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
                'name' => 'battery_balance_line_resistance',
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
                'name' => 'battery_pack_voltage',
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
                'name' => 'battery_current',
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
                'name' => 'battery_output_power',
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
                'name' => 'battery_temperature',
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
                'name' => 'battery_remaining_capacity',
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
                'name' => 'battery_remaining_capacity_percentage',
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
                'name' => 'battery_cycle_count',
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
                'name' => 'battery_cycle_total_capacity',
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
    /** @brief Original pmu_software_version field; type string. */
    public mixed $pmu_software_version;
    /** @brief Original pmu_hardware_version field; type string. */
    public mixed $pmu_hardware_version;
    /** @brief Original pmu_protocol_version field; type string. */
    public mixed $pmu_protocol_version;
    /** @brief Original pmu_bool_status field; type uint32. */
    public mixed $pmu_bool_status;
    /** @brief Original head_power_current field; type float64. */
    public mixed $head_power_current;
    /** @brief Original output_48v_current field; type float64. */
    public mixed $output_48v_current;
    /** @brief Original rk3588_current field; type float64. */
    public mixed $rk3588_current;
    /** @brief Original output_12v_current field; type float64. */
    public mixed $output_12v_current;
    /** @brief Original bus_48v_current field; type float64. */
    public mixed $bus_48v_current;
    /** @brief Original orin_current field; type float64. */
    public mixed $orin_current;
    /** @brief Original bus_48v_pmos_voltage field; type float64. */
    public mixed $bus_48v_pmos_voltage;
    /** @brief Original battery_voltage field; type float64. */
    public mixed $battery_voltage;
    /** @brief Original fan_voltage field; type float64. */
    public mixed $fan_voltage;
    /** @brief Original output_12v_voltage field; type float64. */
    public mixed $output_12v_voltage;
    /** @brief Original output_48v_voltage field; type float64. */
    public mixed $output_48v_voltage;
    /** @brief Original bus_48v_voltage field; type float64. */
    public mixed $bus_48v_voltage;
    /** @brief Original head_power_voltage field; type float64. */
    public mixed $head_power_voltage;
    /** @brief Original orin_voltage field; type float64. */
    public mixed $orin_voltage;
    /** @brief Original rk3588_voltage field; type float64. */
    public mixed $rk3588_voltage;
    /** @brief Original fan_speed field; type float64. */
    public mixed $fan_speed;
    /** @brief Original fan_pecentage field; type uint8. */
    public mixed $fan_pecentage;
    /** @brief Original pmu_temperature field; type float64. */
    public mixed $pmu_temperature;
    /** @brief Original bms_manufacturer field; type string. */
    public mixed $bms_manufacturer;
    /** @brief Original bms_serial_number field; type string. */
    public mixed $bms_serial_number;
    /** @brief Original bms_hardware_version field; type string. */
    public mixed $bms_hardware_version;
    /** @brief Original bms_software_version field; type string. */
    public mixed $bms_software_version;
    /** @brief Original bms_status_bits field; type uint32. */
    public mixed $bms_status_bits;
    /** @brief Original battery_balance_line_resistance field; type uint16. */
    public mixed $battery_balance_line_resistance;
    /** @brief Original battery_pack_voltage field; type float64. */
    public mixed $battery_pack_voltage;
    /** @brief Original battery_current field; type float64. */
    public mixed $battery_current;
    /** @brief Original battery_output_power field; type float64. */
    public mixed $battery_output_power;
    /** @brief Original battery_temperature field; type float64. */
    public mixed $battery_temperature;
    /** @brief Original battery_remaining_capacity field; type uint32. */
    public mixed $battery_remaining_capacity;
    /** @brief Original battery_remaining_capacity_percentage field; type uint8. */
    public mixed $battery_remaining_capacity_percentage;
    /** @brief Original battery_cycle_count field; type uint16. */
    public mixed $battery_cycle_count;
    /** @brief Original battery_cycle_total_capacity field; type uint32. */
    public mixed $battery_cycle_total_capacity;
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
        $this->pmu_software_version = array_key_exists('pmu_software_version', $values)
            ? $values['pmu_software_version']
            : '';
        $this->pmu_hardware_version = array_key_exists('pmu_hardware_version', $values)
            ? $values['pmu_hardware_version']
            : '';
        $this->pmu_protocol_version = array_key_exists('pmu_protocol_version', $values)
            ? $values['pmu_protocol_version']
            : '';
        $this->pmu_bool_status = array_key_exists('pmu_bool_status', $values)
            ? $values['pmu_bool_status']
            : Word::fromDecimal('0', 4, false);
        $this->head_power_current = array_key_exists('head_power_current', $values)
            ? $values['head_power_current']
            : 0;
        $this->output_48v_current = array_key_exists('output_48v_current', $values)
            ? $values['output_48v_current']
            : 0;
        $this->rk3588_current = array_key_exists('rk3588_current', $values)
            ? $values['rk3588_current']
            : 0;
        $this->output_12v_current = array_key_exists('output_12v_current', $values)
            ? $values['output_12v_current']
            : 0;
        $this->bus_48v_current = array_key_exists('bus_48v_current', $values)
            ? $values['bus_48v_current']
            : 0;
        $this->orin_current = array_key_exists('orin_current', $values)
            ? $values['orin_current']
            : 0;
        $this->bus_48v_pmos_voltage = array_key_exists('bus_48v_pmos_voltage', $values)
            ? $values['bus_48v_pmos_voltage']
            : 0;
        $this->battery_voltage = array_key_exists('battery_voltage', $values)
            ? $values['battery_voltage']
            : 0;
        $this->fan_voltage = array_key_exists('fan_voltage', $values)
            ? $values['fan_voltage']
            : 0;
        $this->output_12v_voltage = array_key_exists('output_12v_voltage', $values)
            ? $values['output_12v_voltage']
            : 0;
        $this->output_48v_voltage = array_key_exists('output_48v_voltage', $values)
            ? $values['output_48v_voltage']
            : 0;
        $this->bus_48v_voltage = array_key_exists('bus_48v_voltage', $values)
            ? $values['bus_48v_voltage']
            : 0;
        $this->head_power_voltage = array_key_exists('head_power_voltage', $values)
            ? $values['head_power_voltage']
            : 0;
        $this->orin_voltage = array_key_exists('orin_voltage', $values)
            ? $values['orin_voltage']
            : 0;
        $this->rk3588_voltage = array_key_exists('rk3588_voltage', $values)
            ? $values['rk3588_voltage']
            : 0;
        $this->fan_speed = array_key_exists('fan_speed', $values)
            ? $values['fan_speed']
            : 0;
        $this->fan_pecentage = array_key_exists('fan_pecentage', $values)
            ? $values['fan_pecentage']
            : 0;
        $this->pmu_temperature = array_key_exists('pmu_temperature', $values)
            ? $values['pmu_temperature']
            : 0;
        $this->bms_manufacturer = array_key_exists('bms_manufacturer', $values)
            ? $values['bms_manufacturer']
            : '';
        $this->bms_serial_number = array_key_exists('bms_serial_number', $values)
            ? $values['bms_serial_number']
            : '';
        $this->bms_hardware_version = array_key_exists('bms_hardware_version', $values)
            ? $values['bms_hardware_version']
            : '';
        $this->bms_software_version = array_key_exists('bms_software_version', $values)
            ? $values['bms_software_version']
            : '';
        $this->bms_status_bits = array_key_exists('bms_status_bits', $values)
            ? $values['bms_status_bits']
            : Word::fromDecimal('0', 4, false);
        $this->battery_balance_line_resistance = array_key_exists('battery_balance_line_resistance', $values)
            ? $values['battery_balance_line_resistance']
            : 0;
        $this->battery_pack_voltage = array_key_exists('battery_pack_voltage', $values)
            ? $values['battery_pack_voltage']
            : 0;
        $this->battery_current = array_key_exists('battery_current', $values)
            ? $values['battery_current']
            : 0;
        $this->battery_output_power = array_key_exists('battery_output_power', $values)
            ? $values['battery_output_power']
            : 0;
        $this->battery_temperature = array_key_exists('battery_temperature', $values)
            ? $values['battery_temperature']
            : 0;
        $this->battery_remaining_capacity = array_key_exists('battery_remaining_capacity', $values)
            ? $values['battery_remaining_capacity']
            : Word::fromDecimal('0', 4, false);
        $this->battery_remaining_capacity_percentage = array_key_exists('battery_remaining_capacity_percentage', $values)
            ? $values['battery_remaining_capacity_percentage']
            : 0;
        $this->battery_cycle_count = array_key_exists('battery_cycle_count', $values)
            ? $values['battery_cycle_count']
            : 0;
        $this->battery_cycle_total_capacity = array_key_exists('battery_cycle_total_capacity', $values)
            ? $values['battery_cycle_total_capacity']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgPmuState', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgPmuState', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/ProcessedAudioOutput owning value. */
final class Ros2Aimdk_msgsMsgProcessedAudioOutput
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgProcessedAudioOutput',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30',
        'minimum' => 33,
        'maximum' => 417,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/ProcessedAudioOutput',
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
                'name' => 'stream_id',
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
                'name' => 'audio_vad_state',
                'type' => 'Ros2Aimdk_msgsMsgAudioVadStateType',
                'array' => '',
                'count' => 0,
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
                'name' => 'audio_data',
                'type' => 'uint8',
                'array' => 'sequence',
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
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgMessageHeader. */
    public mixed $header;
    /** @brief Original stream_id field; type uint32. */
    public mixed $stream_id;
    /** @brief Original audio_vad_state field; type Ros2Aimdk_msgsMsgAudioVadStateType. */
    public mixed $audio_vad_state;
    /** @brief Original audio_data field; type uint8. */
    public mixed $audio_data;
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
        $this->stream_id = array_key_exists('stream_id', $values)
            ? $values['stream_id']
            : Word::fromDecimal('0', 4, false);
        $this->audio_vad_state = array_key_exists('audio_vad_state', $values)
            ? $values['audio_vad_state']
            : new Ros2Aimdk_msgsMsgAudioVadStateType();
        $this->audio_data = array_key_exists('audio_data', $values)
            ? $values['audio_data']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgProcessedAudioOutput', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgProcessedAudioOutput', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/QRPoint owning value. */
final class Ros2Aimdk_msgsMsgQRPoint
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgQRPoint',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e',
        'minimum' => 64,
        'maximum' => 64,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/QRPoint',
        'constants' => [],
        'fields' => [
            [
                'name' => 'point_id',
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
                'name' => 'qr_code',
                'type' => 'Ros2Aimdk_msgsMsgQRCode',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 60
            ]
        ]
    ];
    /** @brief Original point_id field; type int32. */
    public mixed $point_id;
    /** @brief Original qr_code field; type Ros2Aimdk_msgsMsgQRCode. */
    public mixed $qr_code;
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
        $this->point_id = array_key_exists('point_id', $values)
            ? $values['point_id']
            : 0;
        $this->qr_code = array_key_exists('qr_code', $values)
            ? $values['qr_code']
            : new Ros2Aimdk_msgsMsgQRCode();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgQRPoint', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgQRPoint', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/Point32 owning value. */
final class Ros2Geometry_msgsMsgPoint32
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPoint32',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Point32',
        'constants' => [],
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
        ]
    ];
    /** @brief Original x field; type float32. */
    public mixed $x;
    /** @brief Original y field; type float32. */
    public mixed $y;
    /** @brief Original z field; type float32. */
    public mixed $z;
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
        $this->x = array_key_exists('x', $values)
            ? $values['x']
            : 0;
        $this->y = array_key_exists('y', $values)
            ? $values['y']
            : 0;
        $this->z = array_key_exists('z', $values)
            ? $values['z']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoint32', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoint32', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/Polygon owning value. */
final class Ros2Geometry_msgsMsgPolygon
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPolygon',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8',
        'minimum' => 4,
        'maximum' => 52,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Polygon',
        'constants' => [],
        'fields' => [
            [
                'name' => 'points',
                'type' => 'Ros2Geometry_msgsMsgPoint32',
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
                'element_minimum' => 12
            ]
        ]
    ];
    /** @brief Original points field; type Ros2Geometry_msgsMsgPoint32. */
    public mixed $points;
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
        $this->points = array_key_exists('points', $values)
            ? $values['points']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPolygon', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPolygon', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/Region owning value. */
final class Ros2Aimdk_msgsMsgRegion
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgRegion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce',
        'minimum' => 10,
        'maximum' => 186,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/Region',
        'constants' => [
            'REGION_UNDEFINED' => 0,
            'REGION_WORKING_SPACE' => 1,
            'REGION_VIRTUAL_WALL' => 2,
            'REGION_DRAWING_UNDEFINED' => 0,
            'REGION_DRAWING_CLOSURE' => 1,
            'REGION_DRAWING_LINES' => 2
        ],
        'fields' => [
            [
                'name' => 'type',
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
                'name' => 'drawing_type',
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
                'name' => 'polygon',
                'type' => 'Ros2Geometry_msgsMsgPolygon',
                'array' => '',
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
    /** @brief Original type field; type uint8. */
    public mixed $type;
    /** @brief Original drawing_type field; type uint8. */
    public mixed $drawing_type;
    /** @brief Original name field; type string. */
    public mixed $name;
    /** @brief Original polygon field; type Ros2Geometry_msgsMsgPolygon. */
    public mixed $polygon;
    /** @brief Original native constant; no instance wire bytes. */
    public const REGION_UNDEFINED = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const REGION_WORKING_SPACE = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const REGION_VIRTUAL_WALL = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const REGION_DRAWING_UNDEFINED = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const REGION_DRAWING_CLOSURE = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const REGION_DRAWING_LINES = 2;
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
        $this->type = array_key_exists('type', $values)
            ? $values['type']
            : 0;
        $this->drawing_type = array_key_exists('drawing_type', $values)
            ? $values['drawing_type']
            : 0;
        $this->name = array_key_exists('name', $values)
            ? $values['name']
            : '';
        $this->polygon = array_key_exists('polygon', $values)
            ? $values['polygon']
            : new Ros2Geometry_msgsMsgPolygon();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgRegion', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgRegion', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/RobotResource owning value. */
final class Ros2Aimdk_msgsMsgRobotResource
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgRobotResource',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d',
        'minimum' => 24,
        'maximum' => 2520,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/RobotResource',
        'constants' => [],
        'fields' => [
            [
                'name' => 'resource_key',
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
                'name' => 'current_version',
                'type' => 'Ros2Aimdk_msgsMsgCurrentVersion',
                'array' => '',
                'count' => 0,
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
    /** @brief Original resource_key field; type string. */
    public mixed $resource_key;
    /** @brief Original current_version field; type Ros2Aimdk_msgsMsgCurrentVersion. */
    public mixed $current_version;
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
        $this->resource_key = array_key_exists('resource_key', $values)
            ? $values['resource_key']
            : '';
        $this->current_version = array_key_exists('current_version', $values)
            ? $values['current_version']
            : new Ros2Aimdk_msgsMsgCurrentVersion();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgRobotResource', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgRobotResource', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/SlaveDevice owning value. */
final class Ros2Aimdk_msgsMsgSlaveDevice
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgSlaveDevice',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255',
        'minimum' => 4,
        'maximum' => 132,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/SlaveDevice',
        'constants' => [],
        'fields' => [
            [
                'name' => 'ip',
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
    /** @brief Original ip field; type string. */
    public mixed $ip;
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
        $this->ip = array_key_exists('ip', $values)
            ? $values['ip']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgSlaveDevice', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgSlaveDevice', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/SystemStatus owning value. */
final class Ros2Aimdk_msgsMsgSystemStatus
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgSystemStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/SystemStatus',
        'constants' => [
            'IN_INITIAL' => 0,
            'IN_READY' => 1,
            'IN_MOVE' => 2,
            'IN_ROLLBACK' => 3,
            'IN_FALLBACK' => 4,
            'IN_FALLBACK_MOVE' => 5
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
    public const IN_INITIAL = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const IN_READY = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const IN_MOVE = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const IN_ROLLBACK = 3;
    /** @brief Original native constant; no instance wire bytes. */
    public const IN_FALLBACK = 4;
    /** @brief Original native constant; no instance wire bytes. */
    public const IN_FALLBACK_MOVE = 5;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgSystemStatus', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgSystemStatus', $bytes);
    }
}

/** @brief Complete aimdk_msgs/msg/TouchState owning value. */
final class Ros2Aimdk_msgsMsgTouchState
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsMsgTouchState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564',
        'minimum' => 97,
        'maximum' => 225,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/msg/TouchState',
        'constants' => [
            'UNKNOWN' => 0,
            'IDLE' => 1,
            'TOUCH' => 2,
            'SLIDE' => 3,
            'PAT_ONCE' => 4,
            'PAT_TWICE' => 5,
            'PAT_TRIPLE' => 6
        ],
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
                'name' => 'event_type',
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
                'name' => 'data',
                'type' => 'uint32',
                'array' => 'array',
                'count' => 8,
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
                'name' => 'threshold',
                'type' => 'uint32',
                'array' => 'array',
                'count' => 8,
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
                'name' => 'is_touched',
                'type' => 'bool',
                'array' => 'array',
                'count' => 8,
                'string_bound' => 0,
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgMessageHeader. */
    public mixed $header;
    /** @brief Original event_type field; type uint8. */
    public mixed $event_type;
    /** @brief Original data field; type uint32. */
    public mixed $data;
    /** @brief Original threshold field; type uint32. */
    public mixed $threshold;
    /** @brief Original is_touched field; type bool. */
    public mixed $is_touched;
    /** @brief Original native constant; no instance wire bytes. */
    public const UNKNOWN = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const IDLE = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const TOUCH = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const SLIDE = 3;
    /** @brief Original native constant; no instance wire bytes. */
    public const PAT_ONCE = 4;
    /** @brief Original native constant; no instance wire bytes. */
    public const PAT_TWICE = 5;
    /** @brief Original native constant; no instance wire bytes. */
    public const PAT_TRIPLE = 6;
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
        $this->event_type = array_key_exists('event_type', $values)
            ? $values['event_type']
            : 0;
        $this->data = array_key_exists('data', $values)
            ? $values['data']
            : array_map(static fn($index) => Word::fromDecimal('0', 4, false), range(1, 8));
        $this->threshold = array_key_exists('threshold', $values)
            ? $values['threshold']
            : array_map(static fn($index) => Word::fromDecimal('0', 4, false), range(1, 8));
        $this->is_touched = array_key_exists('is_touched', $values)
            ? $values['is_touched']
            : array_map(static fn($index) => false, range(1, 8));
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsMsgTouchState', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsMsgTouchState', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/AbandonAudioFocus_Request owning value. */
final class Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvAbandonAudioFocus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5',
        'minimum' => 20,
        'maximum' => 148,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/AbandonAudioFocus_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'focus_requester',
                'type' => 'Ros2Aimdk_msgsMsgFocusRequester',
                'array' => '',
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
            ]
        ]
    ];
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
    /** @brief Original focus_requester field; type Ros2Aimdk_msgsMsgFocusRequester. */
    public mixed $focus_requester;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->focus_requester = array_key_exists('focus_requester', $values)
            ? $values['focus_requester']
            : new Ros2Aimdk_msgsMsgFocusRequester();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvAbandonAudioFocus_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvAbandonAudioFocus_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/AbandonAudioFocus_Response owning value. */
final class Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvAbandonAudioFocus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376',
        'minimum' => 29,
        'maximum' => 285,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/AbandonAudioFocus_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'reponse',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'focus_response',
                'type' => 'Ros2Aimdk_msgsMsgFocusResponse',
                'array' => '',
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
        ]
    ];
    /** @brief Original reponse field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $reponse;
    /** @brief Original focus_response field; type Ros2Aimdk_msgsMsgFocusResponse. */
    public mixed $focus_response;
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
        $this->reponse = array_key_exists('reponse', $values)
            ? $values['reponse']
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->focus_response = array_key_exists('focus_response', $values)
            ? $values['focus_response']
            : new Ros2Aimdk_msgsMsgFocusResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvAbandonAudioFocus_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvAbandonAudioFocus_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/ExecuteActionResource_Request owning value. */
final class Ros2Aimdk_msgsSrvExecuteActionResource_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvExecuteActionResource_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56',
        'minimum' => 24,
        'maximum' => 936,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/ExecuteActionResource_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'resource_key',
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
                'name' => 'resource_version',
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
                'name' => 'slaves',
                'type' => 'Ros2Aimdk_msgsMsgSlaveDevice',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'meta',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $header;
    /** @brief Original resource_key field; type string. */
    public mixed $resource_key;
    /** @brief Original resource_version field; type string. */
    public mixed $resource_version;
    /** @brief Original slaves field; type Ros2Aimdk_msgsMsgSlaveDevice. */
    public mixed $slaves;
    /** @brief Original meta field; type string. */
    public mixed $meta;
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->resource_key = array_key_exists('resource_key', $values)
            ? $values['resource_key']
            : '';
        $this->resource_version = array_key_exists('resource_version', $values)
            ? $values['resource_version']
            : '';
        $this->slaves = array_key_exists('slaves', $values)
            ? $values['slaves']
            : [];
        $this->meta = array_key_exists('meta', $values)
            ? $values['meta']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvExecuteActionResource_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvExecuteActionResource_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/ExecuteActionResource_Response owning value. */
final class Ros2Aimdk_msgsSrvExecuteActionResource_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvExecuteActionResource_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011',
        'minimum' => 24,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/ExecuteActionResource_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvExecuteActionResource_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvExecuteActionResource_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetAllJointState_Request owning value. */
final class Ros2Aimdk_msgsSrvGetAllJointState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetAllJointState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetAllJointState_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetAllJointState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetAllJointState_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetAllJointState_Response owning value. */
final class Ros2Aimdk_msgsSrvGetAllJointState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetAllJointState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2',
        'minimum' => 40,
        'maximum' => 2696,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetAllJointState_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'reponse',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'head_joints',
                'type' => 'Ros2Aimdk_msgsMsgJointState',
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
                'element_minimum' => 30
            ],
            [
                'name' => 'arm_joints',
                'type' => 'Ros2Aimdk_msgsMsgJointState',
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
                'element_minimum' => 30
            ],
            [
                'name' => 'waist_joints',
                'type' => 'Ros2Aimdk_msgsMsgJointState',
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
                'element_minimum' => 30
            ],
            [
                'name' => 'leg_joints',
                'type' => 'Ros2Aimdk_msgsMsgJointState',
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
                'element_minimum' => 30
            ]
        ]
    ];
    /** @brief Original reponse field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $reponse;
    /** @brief Original head_joints field; type Ros2Aimdk_msgsMsgJointState. */
    public mixed $head_joints;
    /** @brief Original arm_joints field; type Ros2Aimdk_msgsMsgJointState. */
    public mixed $arm_joints;
    /** @brief Original waist_joints field; type Ros2Aimdk_msgsMsgJointState. */
    public mixed $waist_joints;
    /** @brief Original leg_joints field; type Ros2Aimdk_msgsMsgJointState. */
    public mixed $leg_joints;
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
        $this->reponse = array_key_exists('reponse', $values)
            ? $values['reponse']
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->head_joints = array_key_exists('head_joints', $values)
            ? $values['head_joints']
            : [];
        $this->arm_joints = array_key_exists('arm_joints', $values)
            ? $values['arm_joints']
            : [];
        $this->waist_joints = array_key_exists('waist_joints', $values)
            ? $values['waist_joints']
            : [];
        $this->leg_joints = array_key_exists('leg_joints', $values)
            ? $values['leg_joints']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetAllJointState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetAllJointState_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetCurrentInputSource_Request owning value. */
final class Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetCurrentInputSource_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetCurrentInputSource_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetCurrentInputSource_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetCurrentInputSource_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetCurrentInputSource_Response owning value. */
final class Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetCurrentInputSource_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e',
        'minimum' => 40,
        'maximum' => 168,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetCurrentInputSource_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'response',
                'type' => 'Ros2Aimdk_msgsMsgCommonTaskResponse',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28
            ],
            [
                'name' => 'input_source',
                'type' => 'Ros2Aimdk_msgsMsgMcInputSource',
                'array' => '',
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
            ]
        ]
    ];
    /** @brief Original response field; type Ros2Aimdk_msgsMsgCommonTaskResponse. */
    public mixed $response;
    /** @brief Original input_source field; type Ros2Aimdk_msgsMsgMcInputSource. */
    public mixed $input_source;
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
        $this->response = array_key_exists('response', $values)
            ? $values['response']
            : new Ros2Aimdk_msgsMsgCommonTaskResponse();
        $this->input_source = array_key_exists('input_source', $values)
            ? $values['input_source']
            : new Ros2Aimdk_msgsMsgMcInputSource();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetCurrentInputSource_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetCurrentInputSource_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetHandType_Request owning value. */
final class Ros2Aimdk_msgsSrvGetHandType_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetHandType_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetHandType_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetHandType_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetHandType_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetHandType_Response owning value. */
final class Ros2Aimdk_msgsSrvGetHandType_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetHandType_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_23332f9f7853b7c67f0263a4cbfc9e6f3df2aa4a7c540906f0cf304e06ec9555',
        'minimum' => 26,
        'maximum' => 154,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetHandType_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'reponse',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'left_hands_type',
                'type' => 'Ros2Aimdk_msgsMsgHandType',
                'array' => '',
                'count' => 0,
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
                'name' => 'right_hands_type',
                'type' => 'Ros2Aimdk_msgsMsgHandType',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
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
    /** @brief Original reponse field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $reponse;
    /** @brief Original left_hands_type field; type Ros2Aimdk_msgsMsgHandType. */
    public mixed $left_hands_type;
    /** @brief Original right_hands_type field; type Ros2Aimdk_msgsMsgHandType. */
    public mixed $right_hands_type;
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
        $this->reponse = array_key_exists('reponse', $values)
            ? $values['reponse']
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->left_hands_type = array_key_exists('left_hands_type', $values)
            ? $values['left_hands_type']
            : new Ros2Aimdk_msgsMsgHandType();
        $this->right_hands_type = array_key_exists('right_hands_type', $values)
            ? $values['right_hands_type']
            : new Ros2Aimdk_msgsMsgHandType();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetHandType_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetHandType_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetMcAction_Request owning value. */
final class Ros2Aimdk_msgsSrvGetMcAction_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetMcAction_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetMcAction_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetMcAction_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetMcAction_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetMcAction_Response owning value. */
final class Ros2Aimdk_msgsSrvGetMcAction_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetMcAction_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f',
        'minimum' => 28,
        'maximum' => 156,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetMcAction_Response',
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
                'name' => 'info',
                'type' => 'Ros2Aimdk_msgsMsgMcActionInfo',
                'array' => '',
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
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgResponseHeader. */
    public mixed $header;
    /** @brief Original info field; type Ros2Aimdk_msgsMsgMcActionInfo. */
    public mixed $info;
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
        $this->info = array_key_exists('info', $values)
            ? $values['info']
            : new Ros2Aimdk_msgsMsgMcActionInfo();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetMcAction_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetMcAction_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetMicSourceRequest_Request owning value. */
final class Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetMicSourceRequest_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetMicSourceRequest_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetMicSourceRequest_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetMicSourceRequest_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetMicSourceRequest_Response owning value. */
final class Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetMicSourceRequest_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6',
        'minimum' => 28,
        'maximum' => 156,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetMicSourceRequest_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'mic_source',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $header;
    /** @brief Original mic_source field; type uint32. */
    public mixed $mic_source;
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->mic_source = array_key_exists('mic_source', $values)
            ? $values['mic_source']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetMicSourceRequest_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetMicSourceRequest_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetMute_Request owning value. */
final class Ros2Aimdk_msgsSrvGetMute_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetMute_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetMute_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetMute_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetMute_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetMute_Response owning value. */
final class Ros2Aimdk_msgsSrvGetMute_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetMute_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42',
        'minimum' => 25,
        'maximum' => 153,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetMute_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'reponse',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'is_mute',
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
        ]
    ];
    /** @brief Original reponse field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $reponse;
    /** @brief Original is_mute field; type bool. */
    public mixed $is_mute;
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
        $this->reponse = array_key_exists('reponse', $values)
            ? $values['reponse']
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->is_mute = array_key_exists('is_mute', $values)
            ? $values['is_mute']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetMute_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetMute_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetRobotResources_Request owning value. */
final class Ros2Aimdk_msgsSrvGetRobotResources_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetRobotResources_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetRobotResources_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetRobotResources_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetRobotResources_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetRobotResources_Response owning value. */
final class Ros2Aimdk_msgsSrvGetRobotResources_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetRobotResources_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91',
        'minimum' => 28,
        'maximum' => 10236,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetRobotResources_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'robot_resources',
                'type' => 'Ros2Aimdk_msgsMsgRobotResource',
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
                'element_minimum' => 24
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $header;
    /** @brief Original robot_resources field; type Ros2Aimdk_msgsMsgRobotResource. */
    public mixed $robot_resources;
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->robot_resources = array_key_exists('robot_resources', $values)
            ? $values['robot_resources']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetRobotResources_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetRobotResources_Response', $bytes);
    }
}

/** @brief Complete std_msgs/msg/Header owning value. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Original full canonical descriptor and identities. */
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
        ]
    ];
    /** @brief Original stamp field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $stamp;
    /** @brief Original frame_id field; type string. */
    public mixed $frame_id;
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
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetStoredMapByName_Request owning value. */
final class Ros2Aimdk_msgsSrvGetStoredMapByName_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetStoredMapByName_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetStoredMapByName_Request',
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
                'element_minimum' => 12
            ],
            [
                'name' => 'map_name',
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
    /** @brief Original header field; type Ros2Std_msgsMsgHeader. */
    public mixed $header;
    /** @brief Original map_name field; type string. */
    public mixed $map_name;
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
            : new Ros2Std_msgsMsgHeader();
        $this->map_name = array_key_exists('map_name', $values)
            ? $values['map_name']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetStoredMapByName_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetStoredMapByName_Request', $bytes);
    }
}

/** @brief Complete nav_msgs/msg/MapMetaData owning value. */
final class Ros2Nav_msgsMsgMapMetaData
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Nav_msgsMsgMapMetaData',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009',
        'minimum' => 76,
        'maximum' => 76,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'nav_msgs/msg/MapMetaData',
        'constants' => [],
        'fields' => [
            [
                'name' => 'map_load_time',
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
                'name' => 'resolution',
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
                'name' => 'width',
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
                'name' => 'height',
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
                'name' => 'origin',
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
            ]
        ]
    ];
    /** @brief Original map_load_time field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $map_load_time;
    /** @brief Original resolution field; type float32. */
    public mixed $resolution;
    /** @brief Original width field; type uint32. */
    public mixed $width;
    /** @brief Original height field; type uint32. */
    public mixed $height;
    /** @brief Original origin field; type Ros2Geometry_msgsMsgPose. */
    public mixed $origin;
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
        $this->map_load_time = array_key_exists('map_load_time', $values)
            ? $values['map_load_time']
            : new Ros2Builtin_interfacesMsgTime();
        $this->resolution = array_key_exists('resolution', $values)
            ? $values['resolution']
            : 0;
        $this->width = array_key_exists('width', $values)
            ? $values['width']
            : Word::fromDecimal('0', 4, false);
        $this->height = array_key_exists('height', $values)
            ? $values['height']
            : Word::fromDecimal('0', 4, false);
        $this->origin = array_key_exists('origin', $values)
            ? $values['origin']
            : new Ros2Geometry_msgsMsgPose();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Nav_msgsMsgMapMetaData', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Nav_msgsMsgMapMetaData', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetStoredMapByName_Response owning value. */
final class Ros2Aimdk_msgsSrvGetStoredMapByName_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetStoredMapByName_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb',
        'minimum' => 140,
        'maximum' => 3400,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetStoredMapByName_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'code',
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
                'name' => 'map_info',
                'type' => 'Ros2Nav_msgsMsgMapMetaData',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 76
            ],
            [
                'name' => 'map_version',
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
                'name' => 'map_path',
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
                'name' => 'data',
                'type' => 'int8',
                'array' => 'sequence',
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
            ],
            [
                'name' => 'navi_points',
                'type' => 'Ros2Aimdk_msgsMsgNaviPoint',
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
                'element_minimum' => 28
            ],
            [
                'name' => 'qr_points',
                'type' => 'Ros2Aimdk_msgsMsgQRPoint',
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
                'element_minimum' => 64
            ],
            [
                'name' => 'hr_points',
                'type' => 'Ros2Aimdk_msgsMsgHRPoint',
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
                'element_minimum' => 65
            ],
            [
                'name' => 'paths',
                'type' => 'Ros2Aimdk_msgsMsgPath',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'regions',
                'type' => 'Ros2Aimdk_msgsMsgRegion',
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
                'element_minimum' => 10
            ],
            [
                'name' => 'map_id',
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
        ]
    ];
    /** @brief Original code field; type uint64. */
    public mixed $code;
    /** @brief Original header field; type Ros2Std_msgsMsgHeader. */
    public mixed $header;
    /** @brief Original map_info field; type Ros2Nav_msgsMsgMapMetaData. */
    public mixed $map_info;
    /** @brief Original map_version field; type uint64. */
    public mixed $map_version;
    /** @brief Original map_path field; type string. */
    public mixed $map_path;
    /** @brief Original data field; type int8. */
    public mixed $data;
    /** @brief Original navi_points field; type Ros2Aimdk_msgsMsgNaviPoint. */
    public mixed $navi_points;
    /** @brief Original qr_points field; type Ros2Aimdk_msgsMsgQRPoint. */
    public mixed $qr_points;
    /** @brief Original hr_points field; type Ros2Aimdk_msgsMsgHRPoint. */
    public mixed $hr_points;
    /** @brief Original paths field; type Ros2Aimdk_msgsMsgPath. */
    public mixed $paths;
    /** @brief Original regions field; type Ros2Aimdk_msgsMsgRegion. */
    public mixed $regions;
    /** @brief Original map_id field; type uint64. */
    public mixed $map_id;
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
        $this->code = array_key_exists('code', $values)
            ? $values['code']
            : Word::fromDecimal('0', 8, false);
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros2Std_msgsMsgHeader();
        $this->map_info = array_key_exists('map_info', $values)
            ? $values['map_info']
            : new Ros2Nav_msgsMsgMapMetaData();
        $this->map_version = array_key_exists('map_version', $values)
            ? $values['map_version']
            : Word::fromDecimal('0', 8, false);
        $this->map_path = array_key_exists('map_path', $values)
            ? $values['map_path']
            : '';
        $this->data = array_key_exists('data', $values)
            ? $values['data']
            : [];
        $this->navi_points = array_key_exists('navi_points', $values)
            ? $values['navi_points']
            : [];
        $this->qr_points = array_key_exists('qr_points', $values)
            ? $values['qr_points']
            : [];
        $this->hr_points = array_key_exists('hr_points', $values)
            ? $values['hr_points']
            : [];
        $this->paths = array_key_exists('paths', $values)
            ? $values['paths']
            : [];
        $this->regions = array_key_exists('regions', $values)
            ? $values['regions']
            : [];
        $this->map_id = array_key_exists('map_id', $values)
            ? $values['map_id']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetStoredMapByName_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetStoredMapByName_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetSystemState_Request owning value. */
final class Ros2Aimdk_msgsSrvGetSystemState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetSystemState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetSystemState_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetSystemState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetSystemState_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetSystemState_Response owning value. */
final class Ros2Aimdk_msgsSrvGetSystemState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetSystemState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039',
        'minimum' => 29,
        'maximum' => 285,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetSystemState_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'cur_state',
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
                'name' => 'curr_status',
                'type' => 'Ros2Aimdk_msgsMsgSystemStatus',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $header;
    /** @brief Original cur_state field; type string. */
    public mixed $cur_state;
    /** @brief Original curr_status field; type Ros2Aimdk_msgsMsgSystemStatus. */
    public mixed $curr_status;
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->cur_state = array_key_exists('cur_state', $values)
            ? $values['cur_state']
            : '';
        $this->curr_status = array_key_exists('curr_status', $values)
            ? $values['curr_status']
            : new Ros2Aimdk_msgsMsgSystemStatus();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetSystemState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetSystemState_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetVolume_Request owning value. */
final class Ros2Aimdk_msgsSrvGetVolume_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetVolume_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetVolume_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetVolume_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetVolume_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/GetVolume_Response owning value. */
final class Ros2Aimdk_msgsSrvGetVolume_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvGetVolume_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266',
        'minimum' => 28,
        'maximum' => 156,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/GetVolume_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'reponse',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'audio_volume',
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
    /** @brief Original reponse field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $reponse;
    /** @brief Original audio_volume field; type uint32. */
    public mixed $audio_volume;
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
        $this->reponse = array_key_exists('reponse', $values)
            ? $values['reponse']
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->audio_volume = array_key_exists('audio_volume', $values)
            ? $values['audio_volume']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvGetVolume_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvGetVolume_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/MigrateSystemState_Request owning value. */
final class Ros2Aimdk_msgsSrvMigrateSystemState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvMigrateSystemState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/MigrateSystemState_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $header;
    /** @brief Original state field; type string. */
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->state = array_key_exists('state', $values)
            ? $values['state']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvMigrateSystemState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvMigrateSystemState_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/MigrateSystemState_Response owning value. */
final class Ros2Aimdk_msgsSrvMigrateSystemState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvMigrateSystemState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802',
        'minimum' => 24,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/MigrateSystemState_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvMigrateSystemState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvMigrateSystemState_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayAudioFile_Request owning value. */
final class Ros2Aimdk_msgsSrvPlayAudioFile_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayAudioFile_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1',
        'minimum' => 53,
        'maximum' => 693,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayAudioFile_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'file',
                'type' => 'Ros2Aimdk_msgsMsgAudioFile',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 37
            ],
            [
                'name' => 'play_stamps',
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
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
    /** @brief Original file field; type Ros2Aimdk_msgsMsgAudioFile. */
    public mixed $file;
    /** @brief Original play_stamps field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $play_stamps;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->file = array_key_exists('file', $values)
            ? $values['file']
            : new Ros2Aimdk_msgsMsgAudioFile();
        $this->play_stamps = array_key_exists('play_stamps', $values)
            ? $values['play_stamps']
            : new Ros2Builtin_interfacesMsgTime();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayAudioFile_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayAudioFile_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayAudioFile_Response owning value. */
final class Ros2Aimdk_msgsSrvPlayAudioFile_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayAudioFile_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85',
        'minimum' => 24,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayAudioFile_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'reponse',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
        ]
    ];
    /** @brief Original reponse field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $reponse;
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
        $this->reponse = array_key_exists('reponse', $values)
            ? $values['reponse']
            : new Ros2Aimdk_msgsMsgCommonResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayAudioFile_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayAudioFile_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayEmoji_Request owning value. */
final class Ros2Aimdk_msgsSrvPlayEmoji_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayEmoji_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43',
        'minimum' => 14,
        'maximum' => 14,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayEmoji_Request',
        'constants' => [
            'EMOTION_UNKNOWN' => 0,
            'EMOTION_IDLE_BLINK' => 1,
            'EMOTION_IDLE_CALM_1' => 10,
            'EMOTION_IDLE_CALM_2' => 11,
            'EMOTION_IDLE_GAME' => 20,
            'EMOTION_IDLE_CUTE_1' => 30,
            'EMOTION_IDLE_CUTE_2' => 31,
            'EMOTION_IDLE_CUTE_3' => 32,
            'EMOTION_IDLE_CUTE_4' => 33,
            'EMOTION_EYE_CLOSE' => 40,
            'EMOTION_EYE_OPEN' => 50,
            'EMOTION_EYE_BORING_1' => 60,
            'EMOTION_EYE_ABNORMAL' => 70,
            'EMOTION_EYE_SLEEPY' => 80,
            'EMOTION_EYE_HAPPY' => 90,
            'EMOTION_EYE_EXTREMEHAPPY_1' => 100,
            'EMOTION_EYE_EXTREMEHAPPY_2' => 101,
            'EMOTION_EYE_SAD' => 110,
            'EMOTION_EYE_SYMPATHY' => 120,
            'EMOTION_EYE_CONFUSE' => 130,
            'EMOTION_EYE_SHOCK' => 140,
            'EMOTION_EYE_ACTCUTE' => 150,
            'EMOTION_EYE_SERIOUS' => 160,
            'EMOTION_EYE_THINKING' => 170,
            'EMOTION_EYE_ANGRY' => 180,
            'EMOTION_EYE_EXTREMEANGRY' => 190,
            'EMOTION_EYE_ADORE' => 200,
            'EMOTION_EYE_EXTREMEADORE' => 210,
            'EMOTION_EYE_CHARGE' => 220,
            'EMOTION_MODE_ONCE' => 1,
            'EMOTION_MODE_LOOP' => 2
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'emotion_id',
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
                'name' => 'mode',
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
                'name' => 'priority',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $header;
    /** @brief Original emotion_id field; type uint8. */
    public mixed $emotion_id;
    /** @brief Original mode field; type uint8. */
    public mixed $mode;
    /** @brief Original priority field; type int32. */
    public mixed $priority;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_UNKNOWN = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_IDLE_BLINK = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_IDLE_CALM_1 = 10;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_IDLE_CALM_2 = 11;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_IDLE_GAME = 20;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_IDLE_CUTE_1 = 30;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_IDLE_CUTE_2 = 31;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_IDLE_CUTE_3 = 32;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_IDLE_CUTE_4 = 33;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_CLOSE = 40;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_OPEN = 50;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_BORING_1 = 60;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_ABNORMAL = 70;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_SLEEPY = 80;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_HAPPY = 90;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_EXTREMEHAPPY_1 = 100;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_EXTREMEHAPPY_2 = 101;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_SAD = 110;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_SYMPATHY = 120;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_CONFUSE = 130;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_SHOCK = 140;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_ACTCUTE = 150;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_SERIOUS = 160;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_THINKING = 170;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_ANGRY = 180;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_EXTREMEANGRY = 190;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_ADORE = 200;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_EXTREMEADORE = 210;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_EYE_CHARGE = 220;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_MODE_ONCE = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_MODE_LOOP = 2;
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->emotion_id = array_key_exists('emotion_id', $values)
            ? $values['emotion_id']
            : 0;
        $this->mode = array_key_exists('mode', $values)
            ? $values['mode']
            : 0;
        $this->priority = array_key_exists('priority', $values)
            ? $values['priority']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayEmoji_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayEmoji_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayEmoji_Response owning value. */
final class Ros2Aimdk_msgsSrvPlayEmoji_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayEmoji_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9',
        'minimum' => 29,
        'maximum' => 285,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayEmoji_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $header;
    /** @brief Original success field; type bool. */
    public mixed $success;
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->success = array_key_exists('success', $values)
            ? $values['success']
            : false;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayEmoji_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayEmoji_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayTts_Request owning value. */
final class Ros2Aimdk_msgsSrvPlayTts_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayTts_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989',
        'minimum' => 26,
        'maximum' => 410,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayTts_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'tts_req',
                'type' => 'Ros2Aimdk_msgsMsgPlayTtsRequest',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 18
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $header;
    /** @brief Original tts_req field; type Ros2Aimdk_msgsMsgPlayTtsRequest. */
    public mixed $tts_req;
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->tts_req = array_key_exists('tts_req', $values)
            ? $values['tts_req']
            : new Ros2Aimdk_msgsMsgPlayTtsRequest();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayTts_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayTts_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayTts_Response owning value. */
final class Ros2Aimdk_msgsSrvPlayTts_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayTts_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_80d6f75ec35cccce215b1ab1321eabeae2e6668eb29a7249c8f8fad77e59bcc6',
        'minimum' => 50,
        'maximum' => 690,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayTts_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'tts_resp',
                'type' => 'Ros2Aimdk_msgsMsgPlayTtsResponse',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 26
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $header;
    /** @brief Original tts_resp field; type Ros2Aimdk_msgsMsgPlayTtsResponse. */
    public mixed $tts_resp;
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->tts_resp = array_key_exists('tts_resp', $values)
            ? $values['tts_resp']
            : new Ros2Aimdk_msgsMsgPlayTtsResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayTts_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayTts_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayVideo_Request owning value. */
final class Ros2Aimdk_msgsSrvPlayVideo_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayVideo_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878',
        'minimum' => 17,
        'maximum' => 145,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayVideo_Request',
        'constants' => [
            'EMOTION_MODE_ONCE' => 1,
            'EMOTION_MODE_LOOP' => 2
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'video_path',
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
                'name' => 'mode',
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
                'name' => 'priority',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $header;
    /** @brief Original video_path field; type string. */
    public mixed $video_path;
    /** @brief Original mode field; type uint8. */
    public mixed $mode;
    /** @brief Original priority field; type int32. */
    public mixed $priority;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_MODE_ONCE = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_MODE_LOOP = 2;
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->video_path = array_key_exists('video_path', $values)
            ? $values['video_path']
            : '';
        $this->mode = array_key_exists('mode', $values)
            ? $values['mode']
            : 0;
        $this->priority = array_key_exists('priority', $values)
            ? $values['priority']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayVideo_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayVideo_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayVideo_Response owning value. */
final class Ros2Aimdk_msgsSrvPlayVideo_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayVideo_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627',
        'minimum' => 29,
        'maximum' => 285,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayVideo_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $header;
    /** @brief Original success field; type bool. */
    public mixed $success;
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->success = array_key_exists('success', $values)
            ? $values['success']
            : false;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayVideo_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayVideo_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayVideoGroup_Request owning value. */
final class Ros2Aimdk_msgsSrvPlayVideoGroup_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayVideoGroup_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473',
        'minimum' => 17,
        'maximum' => 2129,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayVideoGroup_Request',
        'constants' => [
            'EMOTION_MODE_ONCE' => 1,
            'EMOTION_MODE_LOOP' => 2
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'video_path_list',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'mode',
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
                'name' => 'priority',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $header;
    /** @brief Original video_path_list field; type string. */
    public mixed $video_path_list;
    /** @brief Original mode field; type uint8. */
    public mixed $mode;
    /** @brief Original priority field; type int32. */
    public mixed $priority;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_MODE_ONCE = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const EMOTION_MODE_LOOP = 2;
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->video_path_list = array_key_exists('video_path_list', $values)
            ? $values['video_path_list']
            : [];
        $this->mode = array_key_exists('mode', $values)
            ? $values['mode']
            : 0;
        $this->priority = array_key_exists('priority', $values)
            ? $values['priority']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayVideoGroup_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayVideoGroup_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/PlayVideoGroup_Response owning value. */
final class Ros2Aimdk_msgsSrvPlayVideoGroup_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvPlayVideoGroup_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19',
        'minimum' => 29,
        'maximum' => 285,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/PlayVideoGroup_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $header;
    /** @brief Original success field; type bool. */
    public mixed $success;
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->success = array_key_exists('success', $values)
            ? $values['success']
            : false;
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
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvPlayVideoGroup_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvPlayVideoGroup_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/RequestAudioFocus_Request owning value. */
final class Ros2Aimdk_msgsSrvRequestAudioFocus_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvRequestAudioFocus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a',
        'minimum' => 20,
        'maximum' => 148,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/RequestAudioFocus_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'focus_requester',
                'type' => 'Ros2Aimdk_msgsMsgFocusRequester',
                'array' => '',
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
            ]
        ]
    ];
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
    /** @brief Original focus_requester field; type Ros2Aimdk_msgsMsgFocusRequester. */
    public mixed $focus_requester;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->focus_requester = array_key_exists('focus_requester', $values)
            ? $values['focus_requester']
            : new Ros2Aimdk_msgsMsgFocusRequester();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvRequestAudioFocus_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvRequestAudioFocus_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/RequestAudioFocus_Response owning value. */
final class Ros2Aimdk_msgsSrvRequestAudioFocus_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvRequestAudioFocus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180',
        'minimum' => 29,
        'maximum' => 285,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/RequestAudioFocus_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'reponse',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'focus_response',
                'type' => 'Ros2Aimdk_msgsMsgFocusResponse',
                'array' => '',
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
        ]
    ];
    /** @brief Original reponse field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $reponse;
    /** @brief Original focus_response field; type Ros2Aimdk_msgsMsgFocusResponse. */
    public mixed $focus_response;
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
        $this->reponse = array_key_exists('reponse', $values)
            ? $values['reponse']
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->focus_response = array_key_exists('focus_response', $values)
            ? $values['focus_response']
            : new Ros2Aimdk_msgsMsgFocusResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvRequestAudioFocus_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvRequestAudioFocus_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetAgentPropertiesRequest_Request owning value. */
final class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8',
        'minimum' => 12,
        'maximum' => 544,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetAgentPropertiesRequest_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'contents',
                'type' => 'Ros2Aimdk_msgsMsgAgentProperties',
                'array' => '',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $header;
    /** @brief Original contents field; type Ros2Aimdk_msgsMsgAgentProperties. */
    public mixed $contents;
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->contents = array_key_exists('contents', $values)
            ? $values['contents']
            : new Ros2Aimdk_msgsMsgAgentProperties();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetAgentPropertiesRequest_Response owning value. */
final class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b',
        'minimum' => 24,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetAgentPropertiesRequest_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMcAction_Request owning value. */
final class Ros2Aimdk_msgsSrvSetMcAction_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMcAction_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246',
        'minimum' => 20,
        'maximum' => 276,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMcAction_Request',
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
            ],
            [
                'name' => 'source',
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
                'name' => 'command',
                'type' => 'Ros2Aimdk_msgsMsgMcActionCommand',
                'array' => '',
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
    /** @brief Original source field; type string. */
    public mixed $source;
    /** @brief Original command field; type Ros2Aimdk_msgsMsgMcActionCommand. */
    public mixed $command;
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
        $this->source = array_key_exists('source', $values)
            ? $values['source']
            : '';
        $this->command = array_key_exists('command', $values)
            ? $values['command']
            : new Ros2Aimdk_msgsMsgMcActionCommand();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMcAction_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMcAction_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMcAction_Response owning value. */
final class Ros2Aimdk_msgsSrvSetMcAction_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMcAction_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f',
        'minimum' => 24,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMcAction_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'response',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
        ]
    ];
    /** @brief Original response field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $response;
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
        $this->response = array_key_exists('response', $values)
            ? $values['response']
            : new Ros2Aimdk_msgsMsgCommonResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMcAction_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMcAction_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMcInputSource_Request owning value. */
final class Ros2Aimdk_msgsSrvSetMcInputSource_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMcInputSource_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021',
        'minimum' => 24,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMcInputSource_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'action',
                'type' => 'Ros2Aimdk_msgsMsgMcInputAction',
                'array' => '',
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
                'name' => 'input_source',
                'type' => 'Ros2Aimdk_msgsMsgMcInputSource',
                'array' => '',
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
            ]
        ]
    ];
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
    /** @brief Original action field; type Ros2Aimdk_msgsMsgMcInputAction. */
    public mixed $action;
    /** @brief Original input_source field; type Ros2Aimdk_msgsMsgMcInputSource. */
    public mixed $input_source;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->action = array_key_exists('action', $values)
            ? $values['action']
            : new Ros2Aimdk_msgsMsgMcInputAction();
        $this->input_source = array_key_exists('input_source', $values)
            ? $values['input_source']
            : new Ros2Aimdk_msgsMsgMcInputSource();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMcInputSource_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMcInputSource_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMcInputSource_Response owning value. */
final class Ros2Aimdk_msgsSrvSetMcInputSource_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMcInputSource_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb',
        'minimum' => 28,
        'maximum' => 28,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMcInputSource_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'response',
                'type' => 'Ros2Aimdk_msgsMsgCommonTaskResponse',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28
            ]
        ]
    ];
    /** @brief Original response field; type Ros2Aimdk_msgsMsgCommonTaskResponse. */
    public mixed $response;
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
        $this->response = array_key_exists('response', $values)
            ? $values['response']
            : new Ros2Aimdk_msgsMsgCommonTaskResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMcInputSource_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMcInputSource_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMcPresetMotion_Request owning value. */
final class Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMcPresetMotion_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d16880d0ae7ae0801056a3e9632a8a272813d0e206420199c9463987586b2547',
        'minimum' => 29,
        'maximum' => 157,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMcPresetMotion_Request',
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
            ],
            [
                'name' => 'area',
                'type' => 'Ros2Aimdk_msgsMsgMcControlArea',
                'array' => '',
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
                'name' => 'motion',
                'type' => 'Ros2Aimdk_msgsMsgMcPresetMotion',
                'array' => '',
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
                'name' => 'interrupt',
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
                'name' => 'ani_path',
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
                'name' => 'play_timestamp',
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
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgRequestHeader. */
    public mixed $header;
    /** @brief Original area field; type Ros2Aimdk_msgsMsgMcControlArea. */
    public mixed $area;
    /** @brief Original motion field; type Ros2Aimdk_msgsMsgMcPresetMotion. */
    public mixed $motion;
    /** @brief Original interrupt field; type bool. */
    public mixed $interrupt;
    /** @brief Original ani_path field; type string. */
    public mixed $ani_path;
    /** @brief Original play_timestamp field; type uint64. */
    public mixed $play_timestamp;
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
        $this->area = array_key_exists('area', $values)
            ? $values['area']
            : new Ros2Aimdk_msgsMsgMcControlArea();
        $this->motion = array_key_exists('motion', $values)
            ? $values['motion']
            : new Ros2Aimdk_msgsMsgMcPresetMotion();
        $this->interrupt = array_key_exists('interrupt', $values)
            ? $values['interrupt']
            : false;
        $this->ani_path = array_key_exists('ani_path', $values)
            ? $values['ani_path']
            : '';
        $this->play_timestamp = array_key_exists('play_timestamp', $values)
            ? $values['play_timestamp']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMcPresetMotion_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMcPresetMotion_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMcPresetMotion_Response owning value. */
final class Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMcPresetMotion_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85',
        'minimum' => 28,
        'maximum' => 28,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMcPresetMotion_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'response',
                'type' => 'Ros2Aimdk_msgsMsgCommonTaskResponse',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28
            ]
        ]
    ];
    /** @brief Original response field; type Ros2Aimdk_msgsMsgCommonTaskResponse. */
    public mixed $response;
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
        $this->response = array_key_exists('response', $values)
            ? $values['response']
            : new Ros2Aimdk_msgsMsgCommonTaskResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMcPresetMotion_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMcPresetMotion_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMicSourceRequest_Request owning value. */
final class Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMicSourceRequest_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMicSourceRequest_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'mic_source',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $header;
    /** @brief Original mic_source field; type uint32. */
    public mixed $mic_source;
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
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->mic_source = array_key_exists('mic_source', $values)
            ? $values['mic_source']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMicSourceRequest_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMicSourceRequest_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMicSourceRequest_Response owning value. */
final class Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMicSourceRequest_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02',
        'minimum' => 24,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMicSourceRequest_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
        ]
    ];
    /** @brief Original header field; type Ros2Aimdk_msgsMsgCommonResponse. */
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
            : new Ros2Aimdk_msgsMsgCommonResponse();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMicSourceRequest_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMicSourceRequest_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMute_Request owning value. */
final class Ros2Aimdk_msgsSrvSetMute_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMute_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3',
        'minimum' => 9,
        'maximum' => 9,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMute_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'is_mute',
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
        ]
    ];
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
    /** @brief Original is_mute field; type bool. */
    public mixed $is_mute;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->is_mute = array_key_exists('is_mute', $values)
            ? $values['is_mute']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMute_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMute_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetMute_Response owning value. */
final class Ros2Aimdk_msgsSrvSetMute_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetMute_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50',
        'minimum' => 25,
        'maximum' => 153,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetMute_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'reponse',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'is_mute',
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
        ]
    ];
    /** @brief Original reponse field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $reponse;
    /** @brief Original is_mute field; type bool. */
    public mixed $is_mute;
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
        $this->reponse = array_key_exists('reponse', $values)
            ? $values['reponse']
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->is_mute = array_key_exists('is_mute', $values)
            ? $values['is_mute']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetMute_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetMute_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetPmuLed_Request owning value. */
final class Ros2Aimdk_msgsSrvSetPmuLed_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetPmuLed_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e',
        'minimum' => 21,
        'maximum' => 149,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetPmuLed_Request',
        'constants' => [
            'LED_STRIP_MODE_CONSTANT' => 0,
            'LED_STRIP_MODE_BREATH' => 1,
            'LED_STRIP_MODE_FLASH' => 2,
            'LED_STRIP_MODE_FLOW' => 3,
            'LED_STRIP_MODE_MAX' => 4
        ],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'trace_id',
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
                'name' => 'led_strip_mode',
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
                'name' => 'r',
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
                'name' => 'g',
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
                'name' => 'b',
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
                'name' => 'priority',
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
                'name' => 'reset_priority',
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
        ]
    ];
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
    /** @brief Original trace_id field; type string. */
    public mixed $trace_id;
    /** @brief Original led_strip_mode field; type uint8. */
    public mixed $led_strip_mode;
    /** @brief Original r field; type uint8. */
    public mixed $r;
    /** @brief Original g field; type uint8. */
    public mixed $g;
    /** @brief Original b field; type uint8. */
    public mixed $b;
    /** @brief Original priority field; type int32. */
    public mixed $priority;
    /** @brief Original reset_priority field; type bool. */
    public mixed $reset_priority;
    /** @brief Original native constant; no instance wire bytes. */
    public const LED_STRIP_MODE_CONSTANT = 0;
    /** @brief Original native constant; no instance wire bytes. */
    public const LED_STRIP_MODE_BREATH = 1;
    /** @brief Original native constant; no instance wire bytes. */
    public const LED_STRIP_MODE_FLASH = 2;
    /** @brief Original native constant; no instance wire bytes. */
    public const LED_STRIP_MODE_FLOW = 3;
    /** @brief Original native constant; no instance wire bytes. */
    public const LED_STRIP_MODE_MAX = 4;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->trace_id = array_key_exists('trace_id', $values)
            ? $values['trace_id']
            : '';
        $this->led_strip_mode = array_key_exists('led_strip_mode', $values)
            ? $values['led_strip_mode']
            : 0;
        $this->r = array_key_exists('r', $values)
            ? $values['r']
            : 0;
        $this->g = array_key_exists('g', $values)
            ? $values['g']
            : 0;
        $this->b = array_key_exists('b', $values)
            ? $values['b']
            : 0;
        $this->priority = array_key_exists('priority', $values)
            ? $values['priority']
            : 0;
        $this->reset_priority = array_key_exists('reset_priority', $values)
            ? $values['reset_priority']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetPmuLed_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetPmuLed_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetPmuLed_Response owning value. */
final class Ros2Aimdk_msgsSrvSetPmuLed_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetPmuLed_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28',
        'minimum' => 18,
        'maximum' => 18,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetPmuLed_Response',
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
                'name' => 'status_code',
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
    /** @brief Original header field; type Ros2Aimdk_msgsMsgResponseHeader. */
    public mixed $header;
    /** @brief Original status_code field; type uint16. */
    public mixed $status_code;
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
        $this->status_code = array_key_exists('status_code', $values)
            ? $values['status_code']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetPmuLed_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetPmuLed_Response', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetVolume_Request owning value. */
final class Ros2Aimdk_msgsSrvSetVolume_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetVolume_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetVolume_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'request',
                'type' => 'Ros2Aimdk_msgsMsgCommonRequest',
                'array' => '',
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
                'name' => 'audio_volume',
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
    /** @brief Original request field; type Ros2Aimdk_msgsMsgCommonRequest. */
    public mixed $request;
    /** @brief Original audio_volume field; type uint32. */
    public mixed $audio_volume;
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
        $this->request = array_key_exists('request', $values)
            ? $values['request']
            : new Ros2Aimdk_msgsMsgCommonRequest();
        $this->audio_volume = array_key_exists('audio_volume', $values)
            ? $values['audio_volume']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetVolume_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetVolume_Request', $bytes);
    }
}

/** @brief Complete aimdk_msgs/srv/SetVolume_Response owning value. */
final class Ros2Aimdk_msgsSrvSetVolume_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Aimdk_msgsSrvSetVolume_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e',
        'minimum' => 28,
        'maximum' => 156,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'aimdk_msgs/srv/SetVolume_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'reponse',
                'type' => 'Ros2Aimdk_msgsMsgCommonResponse',
                'array' => '',
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
                'name' => 'audio_volume',
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
    /** @brief Original reponse field; type Ros2Aimdk_msgsMsgCommonResponse. */
    public mixed $reponse;
    /** @brief Original audio_volume field; type uint32. */
    public mixed $audio_volume;
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
        $this->reponse = array_key_exists('reponse', $values)
            ? $values['reponse']
            : new Ros2Aimdk_msgsMsgCommonResponse();
        $this->audio_volume = array_key_exists('audio_volume', $values)
            ? $values['audio_volume']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Aimdk_msgsSrvSetVolume_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Aimdk_msgsSrvSetVolume_Response', $bytes);
    }
}

/** @brief Complete original record codecs and interface component roles. */
final class Catalog
{
    /** @brief Complete original interface identities and components. */
    public const INTERFACES = [
        'aimdk_msgs/msg/AgentProperties' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgAgentProperties'
            ]
        ],
        'aimdk_msgs/msg/AgentPropertiesValue' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgAgentPropertiesValue'
            ]
        ],
        'aimdk_msgs/msg/AgentPropertyIdType' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgAgentPropertyIdType'
            ]
        ],
        'aimdk_msgs/msg/AudioCapture' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgAudioCapture'
            ]
        ],
        'aimdk_msgs/msg/AudioData' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgAudioData'
            ]
        ],
        'aimdk_msgs/msg/AudioFile' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgAudioFile'
            ]
        ],
        'aimdk_msgs/msg/AudioInfo' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgAudioInfo'
            ]
        ],
        'aimdk_msgs/msg/AudioPlayback' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgAudioPlayback'
            ]
        ],
        'aimdk_msgs/msg/AudioVadStateType' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgAudioVadStateType'
            ]
        ],
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
        'aimdk_msgs/msg/CurrentVersion' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgCurrentVersion'
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
        'aimdk_msgs/msg/FaceEmojiStatus' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgFaceEmojiStatus'
            ]
        ],
        'aimdk_msgs/msg/FocusRequester' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgFocusRequester'
            ]
        ],
        'aimdk_msgs/msg/FocusResponse' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgFocusResponse'
            ]
        ],
        'aimdk_msgs/msg/HRPoint' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgHRPoint'
            ]
        ],
        'aimdk_msgs/msg/HandCommand' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgHandCommand'
            ]
        ],
        'aimdk_msgs/msg/HandCommandArray' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_d7f46a8aa55d6ef296aa86d6522b7add84f4c8e7e3009d1454d573a8af1d17d5',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgHandCommandArray'
            ]
        ],
        'aimdk_msgs/msg/HandState' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgHandState'
            ]
        ],
        'aimdk_msgs/msg/HandStateArray' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_0ea5f872d42818af468d20b20670067c07631691b5988e45dc5e87caf137efb3',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgHandStateArray'
            ]
        ],
        'aimdk_msgs/msg/HandTouchSensorData' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgHandTouchSensorData'
            ]
        ],
        'aimdk_msgs/msg/HandType' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_be593e2d647a922b02f6f81e52fbfaa805837d6ef6a156de500d4dc40f1fc5bb',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgHandType'
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
        'aimdk_msgs/msg/McAction' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMcAction'
            ]
        ],
        'aimdk_msgs/msg/McActionCommand' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMcActionCommand'
            ]
        ],
        'aimdk_msgs/msg/McActionInfo' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMcActionInfo'
            ]
        ],
        'aimdk_msgs/msg/McActionStatus' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMcActionStatus'
            ]
        ],
        'aimdk_msgs/msg/McControlArea' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMcControlArea'
            ]
        ],
        'aimdk_msgs/msg/McInputAction' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMcInputAction'
            ]
        ],
        'aimdk_msgs/msg/McInputSource' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMcInputSource'
            ]
        ],
        'aimdk_msgs/msg/McLocomotionVelocity' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMcLocomotionVelocity'
            ]
        ],
        'aimdk_msgs/msg/McPresetMotion' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgMcPresetMotion'
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
        'aimdk_msgs/msg/NaviPoint' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgNaviPoint'
            ]
        ],
        'aimdk_msgs/msg/Path' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgPath'
            ]
        ],
        'aimdk_msgs/msg/PlayStateChange' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgPlayStateChange'
            ]
        ],
        'aimdk_msgs/msg/PlayStateType' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgPlayStateType'
            ]
        ],
        'aimdk_msgs/msg/PlayTtsRequest' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgPlayTtsRequest'
            ]
        ],
        'aimdk_msgs/msg/PlayTtsResponse' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgPlayTtsResponse'
            ]
        ],
        'aimdk_msgs/msg/PmuState' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgPmuState'
            ]
        ],
        'aimdk_msgs/msg/ProcessedAudioOutput' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgProcessedAudioOutput'
            ]
        ],
        'aimdk_msgs/msg/QRCode' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgQRCode'
            ]
        ],
        'aimdk_msgs/msg/QRPoint' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgQRPoint'
            ]
        ],
        'aimdk_msgs/msg/Region' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgRegion'
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
        'aimdk_msgs/msg/RobotResource' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgRobotResource'
            ]
        ],
        'aimdk_msgs/msg/SlaveDevice' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgSlaveDevice'
            ]
        ],
        'aimdk_msgs/msg/SystemStatus' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgSystemStatus'
            ]
        ],
        'aimdk_msgs/msg/TouchState' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgTouchState'
            ]
        ],
        'aimdk_msgs/msg/TtsPriorityLevel' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Aimdk_msgsMsgTtsPriorityLevel'
            ]
        ],
        'aimdk_msgs/srv/AbandonAudioFocus' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_15dc050a42c9fda25e98b52ee6a5d6816e82788df5f8ae6d52bb0f0a1617f886',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvAbandonAudioFocus_Request',
                'response' => 'Ros2Aimdk_msgsSrvAbandonAudioFocus_Response'
            ]
        ],
        'aimdk_msgs/srv/ExecuteActionResource' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_97b23a8e88704f45fbd065993108902d3f6c66b7ae33db18da77ea6fd5dc40b9',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvExecuteActionResource_Request',
                'response' => 'Ros2Aimdk_msgsSrvExecuteActionResource_Response'
            ]
        ],
        'aimdk_msgs/srv/GetAllJointState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ddd22803fe0445f38e81e7201a390ce7a7491c188a1fd0332f9a94b64a82ba6c',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetAllJointState_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetAllJointState_Response'
            ]
        ],
        'aimdk_msgs/srv/GetCurrentInputSource' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_8182a9c156b777821b4cde19692040de0cf2cca8ac05be57ed0738c921023539',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetCurrentInputSource_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetCurrentInputSource_Response'
            ]
        ],
        'aimdk_msgs/srv/GetHandType' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_408db57ccd694d08a000c3cc3ba970c71c2d38fc55c08b13730be2b9fea08ebc',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetHandType_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetHandType_Response'
            ]
        ],
        'aimdk_msgs/srv/GetMcAction' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_a95b95476db13d3d218d20b48025bd6bee4a0b1e77c019f20edf589b804a96cc',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetMcAction_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetMcAction_Response'
            ]
        ],
        'aimdk_msgs/srv/GetMicSourceRequest' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_7b33c041d0fe8cf6c5ddbd35716dc6f7620c2d68355ea0b0e438e0e5f64eb7ef',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetMicSourceRequest_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetMicSourceRequest_Response'
            ]
        ],
        'aimdk_msgs/srv/GetMute' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_8f6bb870876a102805f90896a06f238f053e6dba7712e7a1140e8a8d39baf192',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetMute_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetMute_Response'
            ]
        ],
        'aimdk_msgs/srv/GetRobotResources' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_4f800287064e682dbb0b8a90e6092437de52f19cf2b8112051c8f5810a9c414a',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetRobotResources_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetRobotResources_Response'
            ]
        ],
        'aimdk_msgs/srv/GetStoredMapByName' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_93a7e6c19226cf1a5fcd1ba48326e537dc8f1de89500d9ff286ead567c7866f0',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetStoredMapByName_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetStoredMapByName_Response'
            ]
        ],
        'aimdk_msgs/srv/GetSystemState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_0fcc613f64e47fd0ad666480d7909034fef1014a64b771035d960238ee088277',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetSystemState_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetSystemState_Response'
            ]
        ],
        'aimdk_msgs/srv/GetVolume' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_d6e35b0432ba2584c9e62ce2c3535a227a09442672da9349c725767e516508a4',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvGetVolume_Request',
                'response' => 'Ros2Aimdk_msgsSrvGetVolume_Response'
            ]
        ],
        'aimdk_msgs/srv/MigrateSystemState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_fd4cbcce3eec87425f469f22893aad27c08e1dc3fa66d7a461dc7bca604b7f4d',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvMigrateSystemState_Request',
                'response' => 'Ros2Aimdk_msgsSrvMigrateSystemState_Response'
            ]
        ],
        'aimdk_msgs/srv/PlayAudioFile' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_2f51b7c3700ad380fdac773fe678bfb4dfea6c465fc0c59642cf56fd8f0dd5a1',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvPlayAudioFile_Request',
                'response' => 'Ros2Aimdk_msgsSrvPlayAudioFile_Response'
            ]
        ],
        'aimdk_msgs/srv/PlayEmoji' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_aa4c9e8e12aa8f62320d39cb315eeb53ddda7a2d04720ff7a4ffdbcd8027bbe6',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvPlayEmoji_Request',
                'response' => 'Ros2Aimdk_msgsSrvPlayEmoji_Response'
            ]
        ],
        'aimdk_msgs/srv/PlayTts' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_c0da2d56221a5b56fe461acef98d473541c789d3139f9a9bf4b48ae0d2ff85d4',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvPlayTts_Request',
                'response' => 'Ros2Aimdk_msgsSrvPlayTts_Response'
            ]
        ],
        'aimdk_msgs/srv/PlayVideo' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_5a50ce7cb64d8e95e2ee00bfa153579a059313a28ab904a648d96d7fc74df26e',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvPlayVideo_Request',
                'response' => 'Ros2Aimdk_msgsSrvPlayVideo_Response'
            ]
        ],
        'aimdk_msgs/srv/PlayVideoGroup' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b301c9a66002ed17f73c1e3ac60c85d7b309f51661f7a73022ded03b3893de97',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvPlayVideoGroup_Request',
                'response' => 'Ros2Aimdk_msgsSrvPlayVideoGroup_Response'
            ]
        ],
        'aimdk_msgs/srv/RequestAudioFocus' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_e7182a287e85dab2549122c157e58bc1027614a0352eb34a4d8e16c008ff8676',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvRequestAudioFocus_Request',
                'response' => 'Ros2Aimdk_msgsSrvRequestAudioFocus_Response'
            ]
        ],
        'aimdk_msgs/srv/SetAgentPropertiesRequest' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_0c14d9869283d236f85842640e880ab733c13f7e745905ec84ff1364e1379808',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request',
                'response' => 'Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response'
            ]
        ],
        'aimdk_msgs/srv/SetMcAction' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_e2e77df91c6978b2194525ec2e19d158de4c8d74c853b73c551bd84691023e00',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvSetMcAction_Request',
                'response' => 'Ros2Aimdk_msgsSrvSetMcAction_Response'
            ]
        ],
        'aimdk_msgs/srv/SetMcInputSource' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_5cb41d592f88d74e0171cd8cb631101431a797d03c58d68232b0dc2c5065e189',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvSetMcInputSource_Request',
                'response' => 'Ros2Aimdk_msgsSrvSetMcInputSource_Response'
            ]
        ],
        'aimdk_msgs/srv/SetMcPresetMotion' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_1aaa4dd92828248c075b191f0b34bf9381af64c3cf046a379375a61119231610',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvSetMcPresetMotion_Request',
                'response' => 'Ros2Aimdk_msgsSrvSetMcPresetMotion_Response'
            ]
        ],
        'aimdk_msgs/srv/SetMicSourceRequest' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_e1ae214212614dfd2d49464811454033662e98156c47aa80a3e1aa78c9b29cf9',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvSetMicSourceRequest_Request',
                'response' => 'Ros2Aimdk_msgsSrvSetMicSourceRequest_Response'
            ]
        ],
        'aimdk_msgs/srv/SetMute' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_4f26d16c45e77ca37aa7d391b85e93b0c10b266ee66a962da7f059233d2c1bd1',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvSetMute_Request',
                'response' => 'Ros2Aimdk_msgsSrvSetMute_Response'
            ]
        ],
        'aimdk_msgs/srv/SetPmuLed' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_e2fc1fdf49bbe2b0a46f7d27a171e56851d60acf85cf466a7c533ed12971e391',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvSetPmuLed_Request',
                'response' => 'Ros2Aimdk_msgsSrvSetPmuLed_Response'
            ]
        ],
        'aimdk_msgs/srv/SetVolume' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b26c304f3fb37e96b3ab6512311e12d5b7cc9f382d2e39e0a279a46223feb567',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Aimdk_msgsSrvSetVolume_Request',
                'response' => 'Ros2Aimdk_msgsSrvSetVolume_Response'
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
        ],
        'geometry_msgs/msg/Point' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgPoint'
            ]
        ],
        'geometry_msgs/msg/Point32' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgPoint32'
            ]
        ],
        'geometry_msgs/msg/Polygon' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgPolygon'
            ]
        ],
        'geometry_msgs/msg/Pose' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgPose'
            ]
        ],
        'geometry_msgs/msg/Pose2D' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgPose2D'
            ]
        ],
        'geometry_msgs/msg/Quaternion' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgQuaternion'
            ]
        ],
        'nav_msgs/msg/MapMetaData' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Nav_msgsMsgMapMetaData'
            ]
        ],
        'std_msgs/msg/Header' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Std_msgsMsgHeader'
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
                'Ros2Aimdk_msgsMsgAgentPropertyIdType' =>
                    Ros2Aimdk_msgsMsgAgentPropertyIdType::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgAgentPropertyIdType::class
                    ],
                'Ros2Aimdk_msgsMsgAgentPropertiesValue' =>
                    Ros2Aimdk_msgsMsgAgentPropertiesValue::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgAgentPropertiesValue::class
                    ],
                'Ros2Aimdk_msgsMsgAgentProperties' =>
                    Ros2Aimdk_msgsMsgAgentProperties::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgAgentProperties::class
                    ],
                'Ros2Builtin_interfacesMsgTime' =>
                    Ros2Builtin_interfacesMsgTime::SCHEMA + [
                        'class' => Ros2Builtin_interfacesMsgTime::class
                    ],
                'Ros2Aimdk_msgsMsgAudioInfo' =>
                    Ros2Aimdk_msgsMsgAudioInfo::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgAudioInfo::class
                    ],
                'Ros2Aimdk_msgsMsgAudioData' =>
                    Ros2Aimdk_msgsMsgAudioData::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgAudioData::class
                    ],
                'Ros2Aimdk_msgsMsgAudioCapture' =>
                    Ros2Aimdk_msgsMsgAudioCapture::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgAudioCapture::class
                    ],
                'Ros2Aimdk_msgsMsgAudioFile' =>
                    Ros2Aimdk_msgsMsgAudioFile::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgAudioFile::class
                    ],
                'Ros2Aimdk_msgsMsgAudioPlayback' =>
                    Ros2Aimdk_msgsMsgAudioPlayback::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgAudioPlayback::class
                    ],
                'Ros2Aimdk_msgsMsgAudioVadStateType' =>
                    Ros2Aimdk_msgsMsgAudioVadStateType::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgAudioVadStateType::class
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
                'Ros2Aimdk_msgsMsgCurrentVersion' =>
                    Ros2Aimdk_msgsMsgCurrentVersion::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgCurrentVersion::class
                    ],
                'Ros2Aimdk_msgsMsgDomainErrorState' =>
                    Ros2Aimdk_msgsMsgDomainErrorState::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgDomainErrorState::class
                    ],
                'Ros2Aimdk_msgsMsgMessageHeader' =>
                    Ros2Aimdk_msgsMsgMessageHeader::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMessageHeader::class
                    ],
                'Ros2Aimdk_msgsMsgFaceEmojiStatus' =>
                    Ros2Aimdk_msgsMsgFaceEmojiStatus::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgFaceEmojiStatus::class
                    ],
                'Ros2Aimdk_msgsMsgFocusRequester' =>
                    Ros2Aimdk_msgsMsgFocusRequester::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgFocusRequester::class
                    ],
                'Ros2Aimdk_msgsMsgFocusResponse' =>
                    Ros2Aimdk_msgsMsgFocusResponse::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgFocusResponse::class
                    ],
                'Ros2Geometry_msgsMsgPoint' =>
                    Ros2Geometry_msgsMsgPoint::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPoint::class
                    ],
                'Ros2Geometry_msgsMsgQuaternion' =>
                    Ros2Geometry_msgsMsgQuaternion::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgQuaternion::class
                    ],
                'Ros2Geometry_msgsMsgPose' =>
                    Ros2Geometry_msgsMsgPose::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPose::class
                    ],
                'Ros2Aimdk_msgsMsgQRCode' =>
                    Ros2Aimdk_msgsMsgQRCode::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgQRCode::class
                    ],
                'Ros2Aimdk_msgsMsgHRPoint' =>
                    Ros2Aimdk_msgsMsgHRPoint::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgHRPoint::class
                    ],
                'Ros2Aimdk_msgsMsgHandCommand' =>
                    Ros2Aimdk_msgsMsgHandCommand::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgHandCommand::class
                    ],
                'Ros2Aimdk_msgsMsgHandType' =>
                    Ros2Aimdk_msgsMsgHandType::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgHandType::class
                    ],
                'Ros2Aimdk_msgsMsgHandCommandArray' =>
                    Ros2Aimdk_msgsMsgHandCommandArray::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgHandCommandArray::class
                    ],
                'Ros2Aimdk_msgsMsgHandState' =>
                    Ros2Aimdk_msgsMsgHandState::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgHandState::class
                    ],
                'Ros2Aimdk_msgsMsgHandTouchSensorData' =>
                    Ros2Aimdk_msgsMsgHandTouchSensorData::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgHandTouchSensorData::class
                    ],
                'Ros2Aimdk_msgsMsgHandStateArray' =>
                    Ros2Aimdk_msgsMsgHandStateArray::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgHandStateArray::class
                    ],
                'Ros2Aimdk_msgsMsgJointCommand' =>
                    Ros2Aimdk_msgsMsgJointCommand::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgJointCommand::class
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
                'Ros2Aimdk_msgsMsgMcAction' =>
                    Ros2Aimdk_msgsMsgMcAction::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMcAction::class
                    ],
                'Ros2Aimdk_msgsMsgMcActionCommand' =>
                    Ros2Aimdk_msgsMsgMcActionCommand::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMcActionCommand::class
                    ],
                'Ros2Aimdk_msgsMsgMcActionStatus' =>
                    Ros2Aimdk_msgsMsgMcActionStatus::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMcActionStatus::class
                    ],
                'Ros2Aimdk_msgsMsgMcActionInfo' =>
                    Ros2Aimdk_msgsMsgMcActionInfo::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMcActionInfo::class
                    ],
                'Ros2Aimdk_msgsMsgMcControlArea' =>
                    Ros2Aimdk_msgsMsgMcControlArea::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMcControlArea::class
                    ],
                'Ros2Aimdk_msgsMsgMcInputAction' =>
                    Ros2Aimdk_msgsMsgMcInputAction::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMcInputAction::class
                    ],
                'Ros2Aimdk_msgsMsgMcInputSource' =>
                    Ros2Aimdk_msgsMsgMcInputSource::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMcInputSource::class
                    ],
                'Ros2Aimdk_msgsMsgMcLocomotionVelocity' =>
                    Ros2Aimdk_msgsMsgMcLocomotionVelocity::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMcLocomotionVelocity::class
                    ],
                'Ros2Aimdk_msgsMsgMcPresetMotion' =>
                    Ros2Aimdk_msgsMsgMcPresetMotion::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgMcPresetMotion::class
                    ],
                'Ros2Geometry_msgsMsgPose2D' =>
                    Ros2Geometry_msgsMsgPose2D::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPose2D::class
                    ],
                'Ros2Aimdk_msgsMsgNaviPoint' =>
                    Ros2Aimdk_msgsMsgNaviPoint::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgNaviPoint::class
                    ],
                'Ros2Aimdk_msgsMsgPath' =>
                    Ros2Aimdk_msgsMsgPath::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgPath::class
                    ],
                'Ros2Aimdk_msgsMsgPlayStateType' =>
                    Ros2Aimdk_msgsMsgPlayStateType::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgPlayStateType::class
                    ],
                'Ros2Aimdk_msgsMsgPlayStateChange' =>
                    Ros2Aimdk_msgsMsgPlayStateChange::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgPlayStateChange::class
                    ],
                'Ros2Aimdk_msgsMsgTtsPriorityLevel' =>
                    Ros2Aimdk_msgsMsgTtsPriorityLevel::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgTtsPriorityLevel::class
                    ],
                'Ros2Aimdk_msgsMsgPlayTtsRequest' =>
                    Ros2Aimdk_msgsMsgPlayTtsRequest::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgPlayTtsRequest::class
                    ],
                'Ros2Aimdk_msgsMsgPlayTtsResponse' =>
                    Ros2Aimdk_msgsMsgPlayTtsResponse::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgPlayTtsResponse::class
                    ],
                'Ros2Aimdk_msgsMsgPmuState' =>
                    Ros2Aimdk_msgsMsgPmuState::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgPmuState::class
                    ],
                'Ros2Aimdk_msgsMsgProcessedAudioOutput' =>
                    Ros2Aimdk_msgsMsgProcessedAudioOutput::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgProcessedAudioOutput::class
                    ],
                'Ros2Aimdk_msgsMsgQRPoint' =>
                    Ros2Aimdk_msgsMsgQRPoint::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgQRPoint::class
                    ],
                'Ros2Geometry_msgsMsgPoint32' =>
                    Ros2Geometry_msgsMsgPoint32::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPoint32::class
                    ],
                'Ros2Geometry_msgsMsgPolygon' =>
                    Ros2Geometry_msgsMsgPolygon::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPolygon::class
                    ],
                'Ros2Aimdk_msgsMsgRegion' =>
                    Ros2Aimdk_msgsMsgRegion::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgRegion::class
                    ],
                'Ros2Aimdk_msgsMsgRobotResource' =>
                    Ros2Aimdk_msgsMsgRobotResource::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgRobotResource::class
                    ],
                'Ros2Aimdk_msgsMsgSlaveDevice' =>
                    Ros2Aimdk_msgsMsgSlaveDevice::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgSlaveDevice::class
                    ],
                'Ros2Aimdk_msgsMsgSystemStatus' =>
                    Ros2Aimdk_msgsMsgSystemStatus::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgSystemStatus::class
                    ],
                'Ros2Aimdk_msgsMsgTouchState' =>
                    Ros2Aimdk_msgsMsgTouchState::SCHEMA + [
                        'class' => Ros2Aimdk_msgsMsgTouchState::class
                    ],
                'Ros2Aimdk_msgsSrvAbandonAudioFocus_Request' =>
                    Ros2Aimdk_msgsSrvAbandonAudioFocus_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvAbandonAudioFocus_Request::class
                    ],
                'Ros2Aimdk_msgsSrvAbandonAudioFocus_Response' =>
                    Ros2Aimdk_msgsSrvAbandonAudioFocus_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvAbandonAudioFocus_Response::class
                    ],
                'Ros2Aimdk_msgsSrvExecuteActionResource_Request' =>
                    Ros2Aimdk_msgsSrvExecuteActionResource_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvExecuteActionResource_Request::class
                    ],
                'Ros2Aimdk_msgsSrvExecuteActionResource_Response' =>
                    Ros2Aimdk_msgsSrvExecuteActionResource_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvExecuteActionResource_Response::class
                    ],
                'Ros2Aimdk_msgsSrvGetAllJointState_Request' =>
                    Ros2Aimdk_msgsSrvGetAllJointState_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetAllJointState_Request::class
                    ],
                'Ros2Aimdk_msgsSrvGetAllJointState_Response' =>
                    Ros2Aimdk_msgsSrvGetAllJointState_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetAllJointState_Response::class
                    ],
                'Ros2Aimdk_msgsSrvGetCurrentInputSource_Request' =>
                    Ros2Aimdk_msgsSrvGetCurrentInputSource_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetCurrentInputSource_Request::class
                    ],
                'Ros2Aimdk_msgsSrvGetCurrentInputSource_Response' =>
                    Ros2Aimdk_msgsSrvGetCurrentInputSource_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetCurrentInputSource_Response::class
                    ],
                'Ros2Aimdk_msgsSrvGetHandType_Request' =>
                    Ros2Aimdk_msgsSrvGetHandType_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetHandType_Request::class
                    ],
                'Ros2Aimdk_msgsSrvGetHandType_Response' =>
                    Ros2Aimdk_msgsSrvGetHandType_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetHandType_Response::class
                    ],
                'Ros2Aimdk_msgsSrvGetMcAction_Request' =>
                    Ros2Aimdk_msgsSrvGetMcAction_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetMcAction_Request::class
                    ],
                'Ros2Aimdk_msgsSrvGetMcAction_Response' =>
                    Ros2Aimdk_msgsSrvGetMcAction_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetMcAction_Response::class
                    ],
                'Ros2Aimdk_msgsSrvGetMicSourceRequest_Request' =>
                    Ros2Aimdk_msgsSrvGetMicSourceRequest_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetMicSourceRequest_Request::class
                    ],
                'Ros2Aimdk_msgsSrvGetMicSourceRequest_Response' =>
                    Ros2Aimdk_msgsSrvGetMicSourceRequest_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetMicSourceRequest_Response::class
                    ],
                'Ros2Aimdk_msgsSrvGetMute_Request' =>
                    Ros2Aimdk_msgsSrvGetMute_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetMute_Request::class
                    ],
                'Ros2Aimdk_msgsSrvGetMute_Response' =>
                    Ros2Aimdk_msgsSrvGetMute_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetMute_Response::class
                    ],
                'Ros2Aimdk_msgsSrvGetRobotResources_Request' =>
                    Ros2Aimdk_msgsSrvGetRobotResources_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetRobotResources_Request::class
                    ],
                'Ros2Aimdk_msgsSrvGetRobotResources_Response' =>
                    Ros2Aimdk_msgsSrvGetRobotResources_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetRobotResources_Response::class
                    ],
                'Ros2Std_msgsMsgHeader' =>
                    Ros2Std_msgsMsgHeader::SCHEMA + [
                        'class' => Ros2Std_msgsMsgHeader::class
                    ],
                'Ros2Aimdk_msgsSrvGetStoredMapByName_Request' =>
                    Ros2Aimdk_msgsSrvGetStoredMapByName_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetStoredMapByName_Request::class
                    ],
                'Ros2Nav_msgsMsgMapMetaData' =>
                    Ros2Nav_msgsMsgMapMetaData::SCHEMA + [
                        'class' => Ros2Nav_msgsMsgMapMetaData::class
                    ],
                'Ros2Aimdk_msgsSrvGetStoredMapByName_Response' =>
                    Ros2Aimdk_msgsSrvGetStoredMapByName_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetStoredMapByName_Response::class
                    ],
                'Ros2Aimdk_msgsSrvGetSystemState_Request' =>
                    Ros2Aimdk_msgsSrvGetSystemState_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetSystemState_Request::class
                    ],
                'Ros2Aimdk_msgsSrvGetSystemState_Response' =>
                    Ros2Aimdk_msgsSrvGetSystemState_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetSystemState_Response::class
                    ],
                'Ros2Aimdk_msgsSrvGetVolume_Request' =>
                    Ros2Aimdk_msgsSrvGetVolume_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetVolume_Request::class
                    ],
                'Ros2Aimdk_msgsSrvGetVolume_Response' =>
                    Ros2Aimdk_msgsSrvGetVolume_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvGetVolume_Response::class
                    ],
                'Ros2Aimdk_msgsSrvMigrateSystemState_Request' =>
                    Ros2Aimdk_msgsSrvMigrateSystemState_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvMigrateSystemState_Request::class
                    ],
                'Ros2Aimdk_msgsSrvMigrateSystemState_Response' =>
                    Ros2Aimdk_msgsSrvMigrateSystemState_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvMigrateSystemState_Response::class
                    ],
                'Ros2Aimdk_msgsSrvPlayAudioFile_Request' =>
                    Ros2Aimdk_msgsSrvPlayAudioFile_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayAudioFile_Request::class
                    ],
                'Ros2Aimdk_msgsSrvPlayAudioFile_Response' =>
                    Ros2Aimdk_msgsSrvPlayAudioFile_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayAudioFile_Response::class
                    ],
                'Ros2Aimdk_msgsSrvPlayEmoji_Request' =>
                    Ros2Aimdk_msgsSrvPlayEmoji_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayEmoji_Request::class
                    ],
                'Ros2Aimdk_msgsSrvPlayEmoji_Response' =>
                    Ros2Aimdk_msgsSrvPlayEmoji_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayEmoji_Response::class
                    ],
                'Ros2Aimdk_msgsSrvPlayTts_Request' =>
                    Ros2Aimdk_msgsSrvPlayTts_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayTts_Request::class
                    ],
                'Ros2Aimdk_msgsSrvPlayTts_Response' =>
                    Ros2Aimdk_msgsSrvPlayTts_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayTts_Response::class
                    ],
                'Ros2Aimdk_msgsSrvPlayVideo_Request' =>
                    Ros2Aimdk_msgsSrvPlayVideo_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayVideo_Request::class
                    ],
                'Ros2Aimdk_msgsSrvPlayVideo_Response' =>
                    Ros2Aimdk_msgsSrvPlayVideo_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayVideo_Response::class
                    ],
                'Ros2Aimdk_msgsSrvPlayVideoGroup_Request' =>
                    Ros2Aimdk_msgsSrvPlayVideoGroup_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayVideoGroup_Request::class
                    ],
                'Ros2Aimdk_msgsSrvPlayVideoGroup_Response' =>
                    Ros2Aimdk_msgsSrvPlayVideoGroup_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvPlayVideoGroup_Response::class
                    ],
                'Ros2Aimdk_msgsSrvRequestAudioFocus_Request' =>
                    Ros2Aimdk_msgsSrvRequestAudioFocus_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvRequestAudioFocus_Request::class
                    ],
                'Ros2Aimdk_msgsSrvRequestAudioFocus_Response' =>
                    Ros2Aimdk_msgsSrvRequestAudioFocus_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvRequestAudioFocus_Response::class
                    ],
                'Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request' =>
                    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request::class
                    ],
                'Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response' =>
                    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response::class
                    ],
                'Ros2Aimdk_msgsSrvSetMcAction_Request' =>
                    Ros2Aimdk_msgsSrvSetMcAction_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMcAction_Request::class
                    ],
                'Ros2Aimdk_msgsSrvSetMcAction_Response' =>
                    Ros2Aimdk_msgsSrvSetMcAction_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMcAction_Response::class
                    ],
                'Ros2Aimdk_msgsSrvSetMcInputSource_Request' =>
                    Ros2Aimdk_msgsSrvSetMcInputSource_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMcInputSource_Request::class
                    ],
                'Ros2Aimdk_msgsSrvSetMcInputSource_Response' =>
                    Ros2Aimdk_msgsSrvSetMcInputSource_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMcInputSource_Response::class
                    ],
                'Ros2Aimdk_msgsSrvSetMcPresetMotion_Request' =>
                    Ros2Aimdk_msgsSrvSetMcPresetMotion_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMcPresetMotion_Request::class
                    ],
                'Ros2Aimdk_msgsSrvSetMcPresetMotion_Response' =>
                    Ros2Aimdk_msgsSrvSetMcPresetMotion_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMcPresetMotion_Response::class
                    ],
                'Ros2Aimdk_msgsSrvSetMicSourceRequest_Request' =>
                    Ros2Aimdk_msgsSrvSetMicSourceRequest_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMicSourceRequest_Request::class
                    ],
                'Ros2Aimdk_msgsSrvSetMicSourceRequest_Response' =>
                    Ros2Aimdk_msgsSrvSetMicSourceRequest_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMicSourceRequest_Response::class
                    ],
                'Ros2Aimdk_msgsSrvSetMute_Request' =>
                    Ros2Aimdk_msgsSrvSetMute_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMute_Request::class
                    ],
                'Ros2Aimdk_msgsSrvSetMute_Response' =>
                    Ros2Aimdk_msgsSrvSetMute_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetMute_Response::class
                    ],
                'Ros2Aimdk_msgsSrvSetPmuLed_Request' =>
                    Ros2Aimdk_msgsSrvSetPmuLed_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetPmuLed_Request::class
                    ],
                'Ros2Aimdk_msgsSrvSetPmuLed_Response' =>
                    Ros2Aimdk_msgsSrvSetPmuLed_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetPmuLed_Response::class
                    ],
                'Ros2Aimdk_msgsSrvSetVolume_Request' =>
                    Ros2Aimdk_msgsSrvSetVolume_Request::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetVolume_Request::class
                    ],
                'Ros2Aimdk_msgsSrvSetVolume_Response' =>
                    Ros2Aimdk_msgsSrvSetVolume_Response::SCHEMA + [
                        'class' => Ros2Aimdk_msgsSrvSetVolume_Response::class
                    ],
            ]);
        }
        return $wire;
    }
}
