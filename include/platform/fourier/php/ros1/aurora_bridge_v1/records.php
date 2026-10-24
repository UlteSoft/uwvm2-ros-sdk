<?php
declare(strict_types=1);
namespace Uwvm\Fourier\Ros1AuroraBridgeV1;
/** @file records.php
 * @brief All 51 complete original vendor ROS 1 record classes.
 * @details Every native field, bound, default and identity is retained.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @brief Complete uwvm_fourier_bridge/MotionRecipe owning value. */
final class Ros1Uwvm_fourier_bridgeMotionRecipe
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeMotionRecipe',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a',
        'minimum' => 18,
        'maximum' => 1170,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/MotionRecipe',
        'constants' => [],
        'fields' => [
            [
                'name' => 'move_type',
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
                'name' => 'group',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'has_velocity',
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
                'name' => 'velocity',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'expected_velocity',
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
    /** @brief Original move_type field; type uint8. */
    public mixed $move_type;
    /** @brief Original group field; type string. */
    public mixed $group;
    /** @brief Original position field; type float64. */
    public mixed $position;
    /** @brief Original has_velocity field; type bool. */
    public mixed $has_velocity;
    /** @brief Original velocity field; type float64. */
    public mixed $velocity;
    /** @brief Original expected_velocity field; type int32. */
    public mixed $expected_velocity;
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
        $this->move_type = array_key_exists('move_type', $values)
            ? $values['move_type']
            : 0;
        $this->group = array_key_exists('group', $values)
            ? $values['group']
            : '';
        $this->position = array_key_exists('position', $values)
            ? $values['position']
            : [];
        $this->has_velocity = array_key_exists('has_velocity', $values)
            ? $values['has_velocity']
            : false;
        $this->velocity = array_key_exists('velocity', $values)
            ? $values['velocity']
            : [];
        $this->expected_velocity = array_key_exists('expected_velocity', $values)
            ? $values['expected_velocity']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeMotionRecipe', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeMotionRecipe', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/ExecuteMoveRequest owning value. */
final class Ros1Uwvm_fourier_bridgeExecuteMoveRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeExecuteMoveRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b',
        'minimum' => 12,
        'maximum' => 9372,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/ExecuteMoveRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'moves',
                'type' => 'Ros1Uwvm_fourier_bridgeMotionRecipe',
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
                'element_minimum' => 18
            ]
        ]
    ];
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original moves field; type Ros1Uwvm_fourier_bridgeMotionRecipe. */
    public mixed $moves;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->moves = array_key_exists('moves', $values)
            ? $values['moves']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeExecuteMoveRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeExecuteMoveRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/ExecuteMoveResponse owning value. */
final class Ros1Uwvm_fourier_bridgeExecuteMoveResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeExecuteMoveResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/ExecuteMoveResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeExecuteMoveResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeExecuteMoveResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetBaseDataRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetBaseDataRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetBaseDataRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetBaseDataRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'key',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original key field; type string. */
    public mixed $key;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->key = array_key_exists('key', $values)
            ? $values['key']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetBaseDataRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetBaseDataRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetBaseDataResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetBaseDataResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetBaseDataResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetBaseDataResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
                'name' => 'values',
                'type' => 'float64',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original values field; type float64. */
    public mixed $values;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
        $this->values = array_key_exists('values', $values)
            ? $values['values']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetBaseDataResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetBaseDataResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetCartesianStateRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetCartesianStateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetCartesianStateRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'group',
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
                'name' => 'key',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original group field; type string. */
    public mixed $group;
    /** @brief Original key field; type string. */
    public mixed $key;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->group = array_key_exists('group', $values)
            ? $values['group']
            : '';
        $this->key = array_key_exists('key', $values)
            ? $values['key']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetCartesianStateRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetCartesianStateRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetCartesianStateResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetCartesianStateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetCartesianStateResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
                'name' => 'values',
                'type' => 'float64',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original values field; type float64. */
    public mixed $values;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
        $this->values = array_key_exists('values', $values)
            ? $values['values']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetCartesianStateResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetCartesianStateResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetContactDataRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetContactDataRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetContactDataRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetContactDataRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'key',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original key field; type string. */
    public mixed $key;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->key = array_key_exists('key', $values)
            ? $values['key']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetContactDataRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetContactDataRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetContactDataResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetContactDataResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetContactDataResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetContactDataResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
                'name' => 'values',
                'type' => 'float64',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original values field; type float64. */
    public mixed $values;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
        $this->values = array_key_exists('values', $values)
            ? $values['values']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetContactDataResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetContactDataResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetFsmNameRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetFsmNameRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetFsmNameRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetFsmNameRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetFsmNameRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetFsmNameRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetFsmNameResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetFsmNameResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetFsmNameResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetFsmNameResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
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
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetFsmNameResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetFsmNameResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetFsmStateRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetFsmStateRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetFsmStateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetFsmStateRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetFsmStateRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetFsmStateRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetFsmStateResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetFsmStateResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetFsmStateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetFsmStateResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original value field; type int32. */
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
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
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetFsmStateResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetFsmStateResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetGroupMotionStateRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetGroupMotionStateRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'group',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original group field; type string. */
    public mixed $group;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->group = array_key_exists('group', $values)
            ? $values['group']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetGroupMotionStateResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetGroupMotionStateResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original value field; type int32. */
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
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
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetGroupMotorCfgRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetGroupMotorCfgRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'group',
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
                'name' => 'key',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original group field; type string. */
    public mixed $group;
    /** @brief Original key field; type string. */
    public mixed $key;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->group = array_key_exists('group', $values)
            ? $values['group']
            : '';
        $this->key = array_key_exists('key', $values)
            ? $values['key']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetGroupMotorCfgResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetGroupMotorCfgResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
                'name' => 'values',
                'type' => 'float64',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original values field; type float64. */
    public mixed $values;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
        $this->values = array_key_exists('values', $values)
            ? $values['values']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetGroupStateRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetGroupStateRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetGroupStateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetGroupStateRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'group',
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
                'name' => 'key',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original group field; type string. */
    public mixed $group;
    /** @brief Original key field; type string. */
    public mixed $key;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->group = array_key_exists('group', $values)
            ? $values['group']
            : '';
        $this->key = array_key_exists('key', $values)
            ? $values['key']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetGroupStateRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetGroupStateRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetGroupStateResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetGroupStateResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetGroupStateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetGroupStateResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
                'name' => 'values',
                'type' => 'float64',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original values field; type float64. */
    public mixed $values;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
        $this->values = array_key_exists('values', $values)
            ? $values['values']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetGroupStateResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetGroupStateResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetSnapshotRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetSnapshotRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetSnapshotRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetSnapshotRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetSnapshotRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetSnapshotRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GroupState owning value. */
final class Ros1Uwvm_fourier_bridgeGroupState
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGroupState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855',
        'minimum' => 20,
        'maximum' => 1684,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GroupState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'group',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'velocity',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'effort',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'motion_state',
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
    /** @brief Original group field; type string. */
    public mixed $group;
    /** @brief Original position field; type float64. */
    public mixed $position;
    /** @brief Original velocity field; type float64. */
    public mixed $velocity;
    /** @brief Original effort field; type float64. */
    public mixed $effort;
    /** @brief Original motion_state field; type int32. */
    public mixed $motion_state;
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
        $this->group = array_key_exists('group', $values)
            ? $values['group']
            : '';
        $this->position = array_key_exists('position', $values)
            ? $values['position']
            : [];
        $this->velocity = array_key_exists('velocity', $values)
            ? $values['velocity']
            : [];
        $this->effort = array_key_exists('effort', $values)
            ? $values['effort']
            : [];
        $this->motion_state = array_key_exists('motion_state', $values)
            ? $values['motion_state']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGroupState', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGroupState', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/Status owning value. */
final class Ros1Uwvm_fourier_bridgeStatus
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e',
        'minimum' => 32,
        'maximum' => 14400,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/Status',
        'constants' => [],
        'fields' => [
            [
                'name' => 'fsm_state',
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
                'name' => 'fsm_name',
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
                'name' => 'upper_fsm_state',
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
                'name' => 'upper_fsm_name',
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
                'name' => 'velocity_source',
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
                'name' => 'velocity_source_name',
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
                'name' => 'stand_pose',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'groups',
                'type' => 'Ros1Uwvm_fourier_bridgeGroupState',
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
                'element_minimum' => 20
            ]
        ]
    ];
    /** @brief Original fsm_state field; type int32. */
    public mixed $fsm_state;
    /** @brief Original fsm_name field; type string. */
    public mixed $fsm_name;
    /** @brief Original upper_fsm_state field; type int32. */
    public mixed $upper_fsm_state;
    /** @brief Original upper_fsm_name field; type string. */
    public mixed $upper_fsm_name;
    /** @brief Original velocity_source field; type int32. */
    public mixed $velocity_source;
    /** @brief Original velocity_source_name field; type string. */
    public mixed $velocity_source_name;
    /** @brief Original stand_pose field; type float64. */
    public mixed $stand_pose;
    /** @brief Original groups field; type Ros1Uwvm_fourier_bridgeGroupState. */
    public mixed $groups;
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
        $this->fsm_state = array_key_exists('fsm_state', $values)
            ? $values['fsm_state']
            : 0;
        $this->fsm_name = array_key_exists('fsm_name', $values)
            ? $values['fsm_name']
            : '';
        $this->upper_fsm_state = array_key_exists('upper_fsm_state', $values)
            ? $values['upper_fsm_state']
            : 0;
        $this->upper_fsm_name = array_key_exists('upper_fsm_name', $values)
            ? $values['upper_fsm_name']
            : '';
        $this->velocity_source = array_key_exists('velocity_source', $values)
            ? $values['velocity_source']
            : 0;
        $this->velocity_source_name = array_key_exists('velocity_source_name', $values)
            ? $values['velocity_source_name']
            : '';
        $this->stand_pose = array_key_exists('stand_pose', $values)
            ? $values['stand_pose']
            : [];
        $this->groups = array_key_exists('groups', $values)
            ? $values['groups']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeStatus', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeStatus', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetSnapshotResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetSnapshotResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetSnapshotResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a',
        'minimum' => 40,
        'maximum' => 14536,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetSnapshotResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
                'name' => 'value',
                'type' => 'Ros1Uwvm_fourier_bridgeStatus',
                'array' => '',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original value field; type Ros1Uwvm_fourier_bridgeStatus. */
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
        $this->value = array_key_exists('value', $values)
            ? $values['value']
            : new Ros1Uwvm_fourier_bridgeStatus();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetSnapshotResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetSnapshotResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetStandPoseRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetStandPoseRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetStandPoseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetStandPoseRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetStandPoseRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetStandPoseRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetStandPoseResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetStandPoseResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetStandPoseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetStandPoseResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
                'name' => 'values',
                'type' => 'float64',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original values field; type float64. */
    public mixed $values;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
        $this->values = array_key_exists('values', $values)
            ? $values['values']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetStandPoseResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetStandPoseResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetUpperFsmNameRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetUpperFsmNameRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetUpperFsmNameResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetUpperFsmNameResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
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
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetUpperFsmStateRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetUpperFsmStateRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetUpperFsmStateResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetUpperFsmStateResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original value field; type int32. */
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
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
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetVelocitySourceRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetVelocitySourceRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetVelocitySourceResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetVelocitySourceResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original value field; type int32. */
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
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
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetVelocitySourceNameRequest owning value. */
final class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetVelocitySourceNameRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GetVelocitySourceNameResponse owning value. */
final class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GetVelocitySourceNameResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
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
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/GroupValues owning value. */
final class Ros1Uwvm_fourier_bridgeGroupValues
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeGroupValues',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c',
        'minimum' => 8,
        'maximum' => 648,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/GroupValues',
        'constants' => [],
        'fields' => [
            [
                'name' => 'group',
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
                'name' => 'values',
                'type' => 'float64',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original group field; type string. */
    public mixed $group;
    /** @brief Original values field; type float64. */
    public mixed $values;
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
        $this->group = array_key_exists('group', $values)
            ? $values['group']
            : '';
        $this->values = array_key_exists('values', $values)
            ? $values['values']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeGroupValues', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeGroupValues', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetFsmStateRequest owning value. */
final class Ros1Uwvm_fourier_bridgeSetFsmStateRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetFsmStateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetFsmStateRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original state field; type int32. */
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->state = array_key_exists('state', $values)
            ? $values['state']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetFsmStateRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetFsmStateRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetFsmStateResponse owning value. */
final class Ros1Uwvm_fourier_bridgeSetFsmStateResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetFsmStateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetFsmStateResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetFsmStateResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetFsmStateResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetGroupCommandRequest owning value. */
final class Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetGroupCommandRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220',
        'minimum' => 20,
        'maximum' => 15572,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetGroupCommandRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'position',
                'type' => 'Ros1Uwvm_fourier_bridgeGroupValues',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'velocity',
                'type' => 'Ros1Uwvm_fourier_bridgeGroupValues',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'torque',
                'type' => 'Ros1Uwvm_fourier_bridgeGroupValues',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original position field; type Ros1Uwvm_fourier_bridgeGroupValues. */
    public mixed $position;
    /** @brief Original velocity field; type Ros1Uwvm_fourier_bridgeGroupValues. */
    public mixed $velocity;
    /** @brief Original torque field; type Ros1Uwvm_fourier_bridgeGroupValues. */
    public mixed $torque;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->position = array_key_exists('position', $values)
            ? $values['position']
            : [];
        $this->velocity = array_key_exists('velocity', $values)
            ? $values['velocity']
            : [];
        $this->torque = array_key_exists('torque', $values)
            ? $values['torque']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetGroupCommandRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetGroupCommandRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetGroupCommandResponse owning value. */
final class Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetGroupCommandResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetGroupCommandResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetGroupCommandResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetGroupCommandResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetMotorCfgPdRequest owning value. */
final class Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d',
        'minimum' => 16,
        'maximum' => 10384,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetMotorCfgPdRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'kp',
                'type' => 'Ros1Uwvm_fourier_bridgeGroupValues',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'kd',
                'type' => 'Ros1Uwvm_fourier_bridgeGroupValues',
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original kp field; type Ros1Uwvm_fourier_bridgeGroupValues. */
    public mixed $kp;
    /** @brief Original kd field; type Ros1Uwvm_fourier_bridgeGroupValues. */
    public mixed $kd;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->kp = array_key_exists('kp', $values)
            ? $values['kp']
            : [];
        $this->kd = array_key_exists('kd', $values)
            ? $values['kd']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetMotorCfgPdResponse owning value. */
final class Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetMotorCfgPdResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetStandPoseRequest owning value. */
final class Ros1Uwvm_fourier_bridgeSetStandPoseRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetStandPoseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetStandPoseRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'delta_z',
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
                'name' => 'delta_pitch',
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
                'name' => 'delta_yaw',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original delta_z field; type float64. */
    public mixed $delta_z;
    /** @brief Original delta_pitch field; type float64. */
    public mixed $delta_pitch;
    /** @brief Original delta_yaw field; type float64. */
    public mixed $delta_yaw;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->delta_z = array_key_exists('delta_z', $values)
            ? $values['delta_z']
            : 0;
        $this->delta_pitch = array_key_exists('delta_pitch', $values)
            ? $values['delta_pitch']
            : 0;
        $this->delta_yaw = array_key_exists('delta_yaw', $values)
            ? $values['delta_yaw']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetStandPoseRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetStandPoseRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetStandPoseResponse owning value. */
final class Ros1Uwvm_fourier_bridgeSetStandPoseResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetStandPoseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetStandPoseResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetStandPoseResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetStandPoseResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetUpperFsmStateRequest owning value. */
final class Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetUpperFsmStateRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original state field; type int32. */
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->state = array_key_exists('state', $values)
            ? $values['state']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetUpperFsmStateResponse owning value. */
final class Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetUpperFsmStateResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetVelocityRequest owning value. */
final class Ros1Uwvm_fourier_bridgeSetVelocityRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetVelocityRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d',
        'minimum' => 40,
        'maximum' => 40,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetVelocityRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'vx',
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
                'name' => 'vy',
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
                'name' => 'yaw',
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
                'name' => 'duration',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original vx field; type float64. */
    public mixed $vx;
    /** @brief Original vy field; type float64. */
    public mixed $vy;
    /** @brief Original yaw field; type float64. */
    public mixed $yaw;
    /** @brief Original duration field; type float64. */
    public mixed $duration;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->vx = array_key_exists('vx', $values)
            ? $values['vx']
            : 0;
        $this->vy = array_key_exists('vy', $values)
            ? $values['vy']
            : 0;
        $this->yaw = array_key_exists('yaw', $values)
            ? $values['yaw']
            : 0;
        $this->duration = array_key_exists('duration', $values)
            ? $values['duration']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetVelocityRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetVelocityRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetVelocityResponse owning value. */
final class Ros1Uwvm_fourier_bridgeSetVelocityResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetVelocityResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetVelocityResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetVelocityResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetVelocityResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetVelocitySourceRequest owning value. */
final class Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetVelocitySourceRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'source',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original source field; type int32. */
    public mixed $source;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->source = array_key_exists('source', $values)
            ? $values['source']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/SetVelocitySourceResponse owning value. */
final class Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/SetVelocitySourceResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/VelocityCommand owning value. */
final class Ros1Uwvm_fourier_bridgeVelocityCommand
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeVelocityCommand',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54',
        'minimum' => 40,
        'maximum' => 40,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/VelocityCommand',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'vx',
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
                'name' => 'vy',
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
                'name' => 'yaw',
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
                'name' => 'duration',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original vx field; type float64. */
    public mixed $vx;
    /** @brief Original vy field; type float64. */
    public mixed $vy;
    /** @brief Original yaw field; type float64. */
    public mixed $yaw;
    /** @brief Original duration field; type float64. */
    public mixed $duration;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->vx = array_key_exists('vx', $values)
            ? $values['vx']
            : 0;
        $this->vy = array_key_exists('vy', $values)
            ? $values['vy']
            : 0;
        $this->yaw = array_key_exists('yaw', $values)
            ? $values['yaw']
            : 0;
        $this->duration = array_key_exists('duration', $values)
            ? $values['duration']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeVelocityCommand', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeVelocityCommand', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest owning value. */
final class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33',
        'minimum' => 28,
        'maximum' => 1084,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sequence',
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
                'name' => 'groups',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 8,
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
                'name' => 'timeout_seconds',
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
                'name' => 'poll_seconds',
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
    /** @brief Original sequence field; type uint64. */
    public mixed $sequence;
    /** @brief Original groups field; type string. */
    public mixed $groups;
    /** @brief Original timeout_seconds field; type float64. */
    public mixed $timeout_seconds;
    /** @brief Original poll_seconds field; type float64. */
    public mixed $poll_seconds;
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
        $this->sequence = array_key_exists('sequence', $values)
            ? $values['sequence']
            : Word::fromDecimal('0', 8, false);
        $this->groups = array_key_exists('groups', $values)
            ? $values['groups']
            : [];
        $this->timeout_seconds = array_key_exists('timeout_seconds', $values)
            ? $values['timeout_seconds']
            : 0;
        $this->poll_seconds = array_key_exists('poll_seconds', $values)
            ? $values['poll_seconds']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse owning value. */
final class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8',
        'minimum' => 9,
        'maximum' => 137,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'status',
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
                'name' => 'error',
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
                'name' => 'complete',
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
    /** @brief Original status field; type uint32. */
    public mixed $status;
    /** @brief Original error field; type string. */
    public mixed $error;
    /** @brief Original complete field; type bool. */
    public mixed $complete;
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
        $this->status = array_key_exists('status', $values)
            ? $values['status']
            : Word::fromDecimal('0', 4, false);
        $this->error = array_key_exists('error', $values)
            ? $values['error']
            : '';
        $this->complete = array_key_exists('complete', $values)
            ? $values['complete']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse', $bytes);
    }
}

/** @brief Complete original record codecs and interface component roles. */
final class Catalog
{
    /** @brief Complete original interface identities and components. */
    public const INTERFACES = [
        'uwvm_fourier_bridge/ExecuteMove' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_deeffa3aad6e2da3a618b552536764447c31864566234b818258001ebb0436a2',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeExecuteMoveRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeExecuteMoveResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetBaseData' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_a69d14d8868fce46927a5772eca976e2884ce8b4f52ff2f0533ecfbf1943b677',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetBaseDataRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetBaseDataResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetCartesianState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_0b698ced40e7974c5fc6df952cb2762a2763df9b8ce4a99eea04e5828de18e6b',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetCartesianStateRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetCartesianStateResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetContactData' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_d8048fb82be890dec829230cf13ae650f6e1c7a80de26cc6b30f23084ab4cda1',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetContactDataRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetContactDataResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetFsmName' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_3051fed770a2fd9262cbc456a70abeedd8b4744dd3baf8f8bc43a069562827fd',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetFsmNameRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetFsmNameResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetFsmState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_1559b3e88de4d7be4e72bffce5ebe8cf985351e1f9742c583af9acbe3d0cb4c0',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetFsmStateRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetFsmStateResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetGroupMotionState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ca5563b3e6079da8363bfc3552215525a4073e94c98846277b1838fce92f0751',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetGroupMotorCfg' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_55c6e9f68cdfd862edfd5e6c9f2336ffed6fbb6835e0b7f6ffaa122a5ef03f0d',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetGroupState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_c28464322ce334785df352c6720733acbcf432dbcd56b95a503bb3c77d1c5238',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetGroupStateRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetGroupStateResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetSnapshot' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_cbeaf65ef032acea69622f2ec3bab363615554228ab5e04123a885d7467a78f1',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetSnapshotRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetSnapshotResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetStandPose' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_5baffcec74970b8d31b0d951f712c9c9adaa9df903a3292cb1fa3ad28bfdd64f',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetStandPoseRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetStandPoseResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetUpperFsmName' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_6beab05a6e9fb183b562b658b66dbc5cb0d82cc95831ff2d5d741bca012f8f59',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetUpperFsmState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_2737f6560ad81a36121a157081603fbca207c069f66f7bffbc5c4d880e296523',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetVelocitySource' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b083c599b73b832376227edeec4eb05a733f1ab43dd14f39d3ad9822ac7b33ec',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse'
            ]
        ],
        'uwvm_fourier_bridge/GetVelocitySourceName' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_f7ca412ae514e558ba841eb431f6c0947e76aef2f6ae4622e2a6f3b11bfe237d',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse'
            ]
        ],
        'uwvm_fourier_bridge/GroupState' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855',
            'registered' => true,
            'components' => [
                'message' => 'Ros1Uwvm_fourier_bridgeGroupState'
            ]
        ],
        'uwvm_fourier_bridge/GroupValues' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c',
            'registered' => true,
            'components' => [
                'message' => 'Ros1Uwvm_fourier_bridgeGroupValues'
            ]
        ],
        'uwvm_fourier_bridge/MotionRecipe' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a',
            'registered' => true,
            'components' => [
                'message' => 'Ros1Uwvm_fourier_bridgeMotionRecipe'
            ]
        ],
        'uwvm_fourier_bridge/SetFsmState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_7eb58a3b22e4ebd0948b4da9f66cea93db2c655454c858cc34c384ef6e1140fe',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeSetFsmStateRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeSetFsmStateResponse'
            ]
        ],
        'uwvm_fourier_bridge/SetGroupCommand' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_0361c94252f73f79a79dd3eb367169a0d4a71e3c9f67337fc7f4e2ad4d88af07',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeSetGroupCommandRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeSetGroupCommandResponse'
            ]
        ],
        'uwvm_fourier_bridge/SetMotorCfgPd' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ce75a3d9c17f19c27ce31406d1ed3eab065f8a0358b20154b6bfc78cbb5248df',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse'
            ]
        ],
        'uwvm_fourier_bridge/SetStandPose' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ac9c3bb559aad292ec34750b837c2b8bfddeffcf6da6792858371b69927b2ca9',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeSetStandPoseRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeSetStandPoseResponse'
            ]
        ],
        'uwvm_fourier_bridge/SetUpperFsmState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_5c0b2b0cf2004c1d44c0dcfc9b9cc83fda6ac77f371f24a03b473a28b57c6278',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse'
            ]
        ],
        'uwvm_fourier_bridge/SetVelocity' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_a0142cffa88caa7d2bdd519de3ef361e556c0e7db9862464f60835e1852bba1a',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeSetVelocityRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeSetVelocityResponse'
            ]
        ],
        'uwvm_fourier_bridge/SetVelocitySource' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_6bcc9b55a50010bbf3ff383c9f0f895783cf46b39339c04c718ac40e197c045c',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse'
            ]
        ],
        'uwvm_fourier_bridge/Status' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e',
            'registered' => true,
            'components' => [
                'message' => 'Ros1Uwvm_fourier_bridgeStatus'
            ]
        ],
        'uwvm_fourier_bridge/VelocityCommand' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54',
            'registered' => true,
            'components' => [
                'message' => 'Ros1Uwvm_fourier_bridgeVelocityCommand'
            ]
        ],
        'uwvm_fourier_bridge/WaitGroupsMotionComplete' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_58aef86ba192bf64e8c97e03bb120fbdf4693df069c80043d15de89695031157',
            'registered' => true,
            'components' => [
                'request' => 'Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest',
                'response' => 'Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse'
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
                'Ros1Uwvm_fourier_bridgeMotionRecipe' =>
                    Ros1Uwvm_fourier_bridgeMotionRecipe::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeMotionRecipe::class
                    ],
                'Ros1Uwvm_fourier_bridgeExecuteMoveRequest' =>
                    Ros1Uwvm_fourier_bridgeExecuteMoveRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeExecuteMoveRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeExecuteMoveResponse' =>
                    Ros1Uwvm_fourier_bridgeExecuteMoveResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeExecuteMoveResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetBaseDataRequest' =>
                    Ros1Uwvm_fourier_bridgeGetBaseDataRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetBaseDataRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetBaseDataResponse' =>
                    Ros1Uwvm_fourier_bridgeGetBaseDataResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetBaseDataResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetCartesianStateRequest' =>
                    Ros1Uwvm_fourier_bridgeGetCartesianStateRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetCartesianStateRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetCartesianStateResponse' =>
                    Ros1Uwvm_fourier_bridgeGetCartesianStateResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetCartesianStateResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetContactDataRequest' =>
                    Ros1Uwvm_fourier_bridgeGetContactDataRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetContactDataRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetContactDataResponse' =>
                    Ros1Uwvm_fourier_bridgeGetContactDataResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetContactDataResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetFsmNameRequest' =>
                    Ros1Uwvm_fourier_bridgeGetFsmNameRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetFsmNameRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetFsmNameResponse' =>
                    Ros1Uwvm_fourier_bridgeGetFsmNameResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetFsmNameResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetFsmStateRequest' =>
                    Ros1Uwvm_fourier_bridgeGetFsmStateRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetFsmStateRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetFsmStateResponse' =>
                    Ros1Uwvm_fourier_bridgeGetFsmStateResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetFsmStateResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest' =>
                    Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse' =>
                    Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest' =>
                    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse' =>
                    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetGroupStateRequest' =>
                    Ros1Uwvm_fourier_bridgeGetGroupStateRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetGroupStateRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetGroupStateResponse' =>
                    Ros1Uwvm_fourier_bridgeGetGroupStateResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetGroupStateResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetSnapshotRequest' =>
                    Ros1Uwvm_fourier_bridgeGetSnapshotRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetSnapshotRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGroupState' =>
                    Ros1Uwvm_fourier_bridgeGroupState::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGroupState::class
                    ],
                'Ros1Uwvm_fourier_bridgeStatus' =>
                    Ros1Uwvm_fourier_bridgeStatus::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeStatus::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetSnapshotResponse' =>
                    Ros1Uwvm_fourier_bridgeGetSnapshotResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetSnapshotResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetStandPoseRequest' =>
                    Ros1Uwvm_fourier_bridgeGetStandPoseRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetStandPoseRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetStandPoseResponse' =>
                    Ros1Uwvm_fourier_bridgeGetStandPoseResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetStandPoseResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest' =>
                    Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse' =>
                    Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest' =>
                    Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse' =>
                    Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest' =>
                    Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse' =>
                    Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest' =>
                    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse' =>
                    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeGroupValues' =>
                    Ros1Uwvm_fourier_bridgeGroupValues::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeGroupValues::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetFsmStateRequest' =>
                    Ros1Uwvm_fourier_bridgeSetFsmStateRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetFsmStateRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetFsmStateResponse' =>
                    Ros1Uwvm_fourier_bridgeSetFsmStateResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetFsmStateResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetGroupCommandRequest' =>
                    Ros1Uwvm_fourier_bridgeSetGroupCommandRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetGroupCommandRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetGroupCommandResponse' =>
                    Ros1Uwvm_fourier_bridgeSetGroupCommandResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetGroupCommandResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest' =>
                    Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse' =>
                    Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetStandPoseRequest' =>
                    Ros1Uwvm_fourier_bridgeSetStandPoseRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetStandPoseRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetStandPoseResponse' =>
                    Ros1Uwvm_fourier_bridgeSetStandPoseResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetStandPoseResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest' =>
                    Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse' =>
                    Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetVelocityRequest' =>
                    Ros1Uwvm_fourier_bridgeSetVelocityRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetVelocityRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetVelocityResponse' =>
                    Ros1Uwvm_fourier_bridgeSetVelocityResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetVelocityResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest' =>
                    Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse' =>
                    Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse::class
                    ],
                'Ros1Uwvm_fourier_bridgeVelocityCommand' =>
                    Ros1Uwvm_fourier_bridgeVelocityCommand::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeVelocityCommand::class
                    ],
                'Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest' =>
                    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest::class
                    ],
                'Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse' =>
                    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse::SCHEMA + [
                        'class' => Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse::class
                    ],
            ]);
        }
        return $wire;
    }
}
