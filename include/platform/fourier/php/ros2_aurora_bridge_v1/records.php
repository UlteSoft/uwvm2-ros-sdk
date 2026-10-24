<?php
declare(strict_types=1);
namespace Uwvm\Fourier\Ros2AuroraBridgeV1;
/** @file records.php
 * @brief All 51 complete original vendor ROS 2 record classes.
 * @details Every native field, bound, default and identity is retained.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @brief Complete uwvm_fourier_bridge/msg/GroupState owning value. */
final class Ros2Uwvm_fourier_bridgeMsgGroupState
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeMsgGroupState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4',
        'minimum' => 20,
        'maximum' => 1684,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/msg/GroupState',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeMsgGroupState', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeMsgGroupState', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/msg/GroupValues owning value. */
final class Ros2Uwvm_fourier_bridgeMsgGroupValues
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeMsgGroupValues',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3',
        'minimum' => 8,
        'maximum' => 648,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/msg/GroupValues',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeMsgGroupValues', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeMsgGroupValues', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/msg/MotionRecipe owning value. */
final class Ros2Uwvm_fourier_bridgeMsgMotionRecipe
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeMsgMotionRecipe',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14',
        'minimum' => 18,
        'maximum' => 1170,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/msg/MotionRecipe',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeMsgMotionRecipe', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeMsgMotionRecipe', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/msg/Status owning value. */
final class Ros2Uwvm_fourier_bridgeMsgStatus
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeMsgStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e',
        'minimum' => 32,
        'maximum' => 14400,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/msg/Status',
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
                'type' => 'Ros2Uwvm_fourier_bridgeMsgGroupState',
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
    /** @brief Original groups field; type Ros2Uwvm_fourier_bridgeMsgGroupState. */
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeMsgStatus', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeMsgStatus', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/msg/VelocityCommand owning value. */
final class Ros2Uwvm_fourier_bridgeMsgVelocityCommand
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeMsgVelocityCommand',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d',
        'minimum' => 40,
        'maximum' => 40,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/msg/VelocityCommand',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeMsgVelocityCommand', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeMsgVelocityCommand', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/ExecuteMove_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b',
        'minimum' => 12,
        'maximum' => 9372,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/ExecuteMove_Request',
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
                'type' => 'Ros2Uwvm_fourier_bridgeMsgMotionRecipe',
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
    /** @brief Original moves field; type Ros2Uwvm_fourier_bridgeMsgMotionRecipe. */
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/ExecuteMove_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/ExecuteMove_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetBaseData_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetBaseData_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetBaseData_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetBaseData_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetCartesianState_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetCartesianState_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetCartesianState_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetCartesianState_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetContactData_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetContactData_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetContactData_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetContactData_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetContactData_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetContactData_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetContactData_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetContactData_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetContactData_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetContactData_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetFsmName_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetFsmName_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetFsmName_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetFsmName_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetFsmState_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetFsmState_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetFsmState_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetFsmState_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupMotionState_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetGroupMotionState_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupMotionState_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetGroupMotionState_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupState_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetGroupState_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupState_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetGroupState_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetSnapshot_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetSnapshot_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetSnapshot_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3',
        'minimum' => 40,
        'maximum' => 14536,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetSnapshot_Response',
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
                'type' => 'Ros2Uwvm_fourier_bridgeMsgStatus',
                'array' => '',
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
    /** @brief Original value field; type Ros2Uwvm_fourier_bridgeMsgStatus. */
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
            : new Ros2Uwvm_fourier_bridgeMsgStatus();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetStandPose_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetStandPose_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetStandPose_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2',
        'minimum' => 12,
        'maximum' => 652,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetStandPose_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetUpperFsmName_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetUpperFsmName_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetUpperFsmName_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetUpperFsmName_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetUpperFsmState_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetUpperFsmState_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetUpperFsmState_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetUpperFsmState_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetVelocitySource_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetVelocitySource_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetVelocitySource_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetVelocitySource_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetVelocitySourceName_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/GetVelocitySourceName_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetFsmState_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetFsmState_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetFsmState_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetFsmState_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetGroupCommand_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9',
        'minimum' => 20,
        'maximum' => 15572,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetGroupCommand_Request',
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
                'type' => 'Ros2Uwvm_fourier_bridgeMsgGroupValues',
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
                'type' => 'Ros2Uwvm_fourier_bridgeMsgGroupValues',
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
                'type' => 'Ros2Uwvm_fourier_bridgeMsgGroupValues',
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
    /** @brief Original position field; type Ros2Uwvm_fourier_bridgeMsgGroupValues. */
    public mixed $position;
    /** @brief Original velocity field; type Ros2Uwvm_fourier_bridgeMsgGroupValues. */
    public mixed $velocity;
    /** @brief Original torque field; type Ros2Uwvm_fourier_bridgeMsgGroupValues. */
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetGroupCommand_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetGroupCommand_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de',
        'minimum' => 16,
        'maximum' => 10384,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetMotorCfgPd_Request',
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
                'type' => 'Ros2Uwvm_fourier_bridgeMsgGroupValues',
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
                'type' => 'Ros2Uwvm_fourier_bridgeMsgGroupValues',
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
    /** @brief Original kp field; type Ros2Uwvm_fourier_bridgeMsgGroupValues. */
    public mixed $kp;
    /** @brief Original kd field; type Ros2Uwvm_fourier_bridgeMsgGroupValues. */
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetMotorCfgPd_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetStandPose_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetStandPose_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetStandPose_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetStandPose_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetUpperFsmState_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetUpperFsmState_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetUpperFsmState_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetUpperFsmState_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetVelocity_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44',
        'minimum' => 40,
        'maximum' => 40,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetVelocity_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetVelocity_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetVelocity_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetVelocitySource_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetVelocitySource_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/SetVelocitySource_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/SetVelocitySource_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request owning value. */
final class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202',
        'minimum' => 28,
        'maximum' => 1084,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request', $bytes);
    }
}

/** @brief Complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response owning value. */
final class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f',
        'minimum' => 9,
        'maximum' => 137,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response',
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
        return Catalog::wire()->encode('Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response', $bytes);
    }
}

/** @brief Complete original record codecs and interface component roles. */
final class Catalog
{
    /** @brief Complete original interface identities and components. */
    public const INTERFACES = [
        'uwvm_fourier_bridge/msg/GroupState' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Uwvm_fourier_bridgeMsgGroupState'
            ]
        ],
        'uwvm_fourier_bridge/msg/GroupValues' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Uwvm_fourier_bridgeMsgGroupValues'
            ]
        ],
        'uwvm_fourier_bridge/msg/MotionRecipe' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Uwvm_fourier_bridgeMsgMotionRecipe'
            ]
        ],
        'uwvm_fourier_bridge/msg/Status' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Uwvm_fourier_bridgeMsgStatus'
            ]
        ],
        'uwvm_fourier_bridge/msg/VelocityCommand' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Uwvm_fourier_bridgeMsgVelocityCommand'
            ]
        ],
        'uwvm_fourier_bridge/srv/ExecuteMove' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_3d524d5037753a16963eb13024e6f0aac177c86f0318c120e98b34f7637759c5',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetBaseData' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_33465b066892da2cbcfd600aabbea8b2d8bd55ae166b0b45e3439c867ec8b09d',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetCartesianState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_4a4fb765830d8334545e776e5af2be4243247976119da538ffc009abfde028e4',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetContactData' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_c77818cd9f6ef571a1f0746365499b3133676cdf1b3b652e6b3c6551aa7f9cf5',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetContactData_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetContactData_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetFsmName' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_224061a36b18163063b58ba3d0bfae9bdb892001d9f045eaa6a434b07907947c',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetFsmState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_e312852e3daace8c73ef9154a9541b8d901ec6dd2c02e686c7f4519f17725f34',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetGroupMotionState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_6580234e6eb544f932ab394125546adebdaa5a511cac96b47896fcd563ae9e90',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetGroupMotorCfg' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ca36497f1604471de5bb504997f18944ff6948648d5da7c8b6cd5d30c56f35fb',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetGroupState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_016965e2d9468fa39b392ecd1867aafceece75e5cdca02df22ec7cb115d0679f',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetSnapshot' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_84d7e96ea21959fdefe536fec93b0c53086c08361321f6f528109d85f6815626',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetStandPose' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_7a03e8daab6fde6a2801589af4f2d2e9dcdf58cd92124923674ebf6e2c59f9df',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetUpperFsmName' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_57d4a79f73f84fea3e1e563e624ef98ba85925e9eb6869f9f629bb3ecef84b60',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetUpperFsmState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_7e53ee016ab11c9b2cf1024f39cccd18a3318a0a2d31c862db7ccd80bfea3009',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetVelocitySource' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_9561b4c680aaba4a0f47aeaef4bec56e8bac70118b62baffabcb745454556cf5',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/GetVelocitySourceName' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_88870a0e9cba79a6caed3be13571d4b78c1871daccfeda6491abc8c0da468388',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/SetFsmState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_9507a27e3e3fce5913600b5e4bf954fcec32e8006afc6f5fa046852fa6774dbc',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/SetGroupCommand' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_25f339db010bf01b59484b667237ee5440081b4f72c38c77b2e4a3c36558ea92',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/SetMotorCfgPd' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_bce1cc76cc46343ea9da87185f4612f7ac3392cb540e89f1e3c1e495de0c9a9e',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/SetStandPose' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_cc313a5051581f335ab970bf4f6dd3847ac33fecb5508ea14f237b77b1285487',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/SetUpperFsmState' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_45d552fb6986fe64fc14b66e8bdd63ebdbc995c2c806eca5cb2d954c8835e2a2',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/SetVelocity' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_1d90a138562a5ac1222fb57ba3e4b02f3ecbb6bd02ddbf93a925e5b5446b12ce',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/SetVelocitySource' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_57cd2a4ce6b13785f35173eeeafc13338243d24645b74ccb8d675f7833c88484',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response'
            ]
        ],
        'uwvm_fourier_bridge/srv/WaitGroupsMotionComplete' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_e3fd81ae51305ee817ab9b32eae49560ef5df74fe2548f8d7b2ba5e880b50b89',
            'registered' => true,
            'components' => [
                'request' => 'Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request',
                'response' => 'Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response'
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
                'Ros2Uwvm_fourier_bridgeMsgGroupState' =>
                    Ros2Uwvm_fourier_bridgeMsgGroupState::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeMsgGroupState::class
                    ],
                'Ros2Uwvm_fourier_bridgeMsgGroupValues' =>
                    Ros2Uwvm_fourier_bridgeMsgGroupValues::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeMsgGroupValues::class
                    ],
                'Ros2Uwvm_fourier_bridgeMsgMotionRecipe' =>
                    Ros2Uwvm_fourier_bridgeMsgMotionRecipe::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeMsgMotionRecipe::class
                    ],
                'Ros2Uwvm_fourier_bridgeMsgStatus' =>
                    Ros2Uwvm_fourier_bridgeMsgStatus::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeMsgStatus::class
                    ],
                'Ros2Uwvm_fourier_bridgeMsgVelocityCommand' =>
                    Ros2Uwvm_fourier_bridgeMsgVelocityCommand::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeMsgVelocityCommand::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetContactData_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetContactData_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetContactData_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetContactData_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetContactData_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetContactData_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request' =>
                    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request::class
                    ],
                'Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response' =>
                    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response::SCHEMA + [
                        'class' => Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response::class
                    ],
            ]);
        }
        return $wire;
    }
}
