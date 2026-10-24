<?php
declare(strict_types=1);
namespace Uwvm\Leju\Ros1BetaUnregisteredDtos;
/** @file records.php
 * @brief All 2 complete original vendor ROS 1 record classes.
 * @details Every native field, bound, default and identity is retained.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @brief Complete kuavo_sdk/qv owning value. */
final class Ros1Kuavo_sdkQv
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Kuavo_sdkQv',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32',
        'minimum' => 4,
        'maximum' => 132,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'kuavo_sdk/qv',
        'constants' => [],
        'fields' => [
            [
                'name' => 'value',
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
        ]
    ];
    /** @brief Original value field; type float64. */
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
        $this->value = array_key_exists('value', $values)
            ? $values['value']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Kuavo_sdkQv', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Kuavo_sdkQv', $bytes);
    }
}

/** @brief Complete kuavo_sdk/fullBodyTargetTrajectories owning value. */
final class Ros1Kuavo_sdkFullBodyTargetTrajectories
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Kuavo_sdkFullBodyTargetTrajectories',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32',
        'minimum' => 16,
        'maximum' => 2320,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'kuavo_sdk/fullBodyTargetTrajectories',
        'constants' => [],
        'fields' => [
            [
                'name' => 'timeTrajectory',
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
            ],
            [
                'name' => 'footIndexTrajectory',
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
            ],
            [
                'name' => 'fullBodyQTrajectory',
                'type' => 'Ros1Kuavo_sdkQv',
                'array' => 'sequence',
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
                'name' => 'fullBodyVTrajectory',
                'type' => 'Ros1Kuavo_sdkQv',
                'array' => 'sequence',
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
            ]
        ]
    ];
    /** @brief Original timeTrajectory field; type float64. */
    public mixed $timeTrajectory;
    /** @brief Original footIndexTrajectory field; type int32. */
    public mixed $footIndexTrajectory;
    /** @brief Original fullBodyQTrajectory field; type Ros1Kuavo_sdkQv. */
    public mixed $fullBodyQTrajectory;
    /** @brief Original fullBodyVTrajectory field; type Ros1Kuavo_sdkQv. */
    public mixed $fullBodyVTrajectory;
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
        $this->timeTrajectory = array_key_exists('timeTrajectory', $values)
            ? $values['timeTrajectory']
            : [];
        $this->footIndexTrajectory = array_key_exists('footIndexTrajectory', $values)
            ? $values['footIndexTrajectory']
            : [];
        $this->fullBodyQTrajectory = array_key_exists('fullBodyQTrajectory', $values)
            ? $values['fullBodyQTrajectory']
            : [];
        $this->fullBodyVTrajectory = array_key_exists('fullBodyVTrajectory', $values)
            ? $values['fullBodyVTrajectory']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Kuavo_sdkFullBodyTargetTrajectories', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Kuavo_sdkFullBodyTargetTrajectories', $bytes);
    }
}

/** @brief Complete original record codecs and interface component roles. */
final class Catalog
{
    /** @brief Complete original interface identities and components. */
    public const INTERFACES = [
        'kuavo_sdk/fullBodyTargetTrajectories' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Kuavo_sdkFullBodyTargetTrajectories'
            ]
        ],
        'kuavo_sdk/qv' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Kuavo_sdkQv'
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
                'Ros1Kuavo_sdkQv' =>
                    Ros1Kuavo_sdkQv::SCHEMA + [
                        'class' => Ros1Kuavo_sdkQv::class
                    ],
                'Ros1Kuavo_sdkFullBodyTargetTrajectories' =>
                    Ros1Kuavo_sdkFullBodyTargetTrajectories::SCHEMA + [
                        'class' => Ros1Kuavo_sdkFullBodyTargetTrajectories::class
                    ],
            ]);
        }
        return $wire;
    }
}
