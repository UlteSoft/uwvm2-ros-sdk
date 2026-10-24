<?php
declare(strict_types=1);
namespace Uwvm\Unitree\Ros1;

/** @file records.php
 * @brief Complete original Unitree ROS 1 owning classes.
 * @details Every original field and canonical identity is retained. */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own every original unitree_legged_msgs/BmsCmd field. */
final class Ros1Unitree_legged_msgsBmsCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsBmsCmd',
        'native_identity' => 'c09195f3200bd8917201f8805a3fe1d1',
        'codec_identity' => 'UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/BmsCmd',
        'constants' => [],
        'fields' => [
            [
                'name' => 'off',
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
                'name' => 'reserve',
                'type' => 'uint8',
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
            ]
        ]
    ];

    /** @brief Original off: uint8; scalar. */
    public mixed $off;

    /** @brief Original reserve: uint8; array. */
    public mixed $reserve;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('off', $values))
        {
            $this->off = $values['off'];
        }
        else
        {
            $this->off = 0;
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = array_map(
                static fn($index) => 0,
                range(1, 3)
            );
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsBmsCmd', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsBmsCmd', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/BmsState field. */
final class Ros1Unitree_legged_msgsBmsState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsBmsState',
        'native_identity' => '8e007c660c590388bca7c2464d80df54',
        'codec_identity' => 'UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a',
        'minimum' => 34,
        'maximum' => 34,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/BmsState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'version_h',
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
                'name' => 'version_l',
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
                'name' => 'bms_status',
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
                'name' => 'SOC',
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
                'name' => 'current',
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
                'name' => 'cycle',
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
                'name' => 'BQ_NTC',
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
                'name' => 'MCU_NTC',
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
                'name' => 'cell_vol',
                'type' => 'uint16',
                'array' => 'array',
                'count' => 10,
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

    /** @brief Original version_h: uint8; scalar. */
    public mixed $version_h;

    /** @brief Original version_l: uint8; scalar. */
    public mixed $version_l;

    /** @brief Original bms_status: uint8; scalar. */
    public mixed $bms_status;

    /** @brief Original SOC: uint8; scalar. */
    public mixed $SOC;

    /** @brief Original current: int32; scalar. */
    public mixed $current;

    /** @brief Original cycle: uint16; scalar. */
    public mixed $cycle;

    /** @brief Original BQ_NTC: int8; array. */
    public mixed $BQ_NTC;

    /** @brief Original MCU_NTC: int8; array. */
    public mixed $MCU_NTC;

    /** @brief Original cell_vol: uint16; array. */
    public mixed $cell_vol;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('version_h', $values))
        {
            $this->version_h = $values['version_h'];
        }
        else
        {
            $this->version_h = 0;
        }
        if (array_key_exists('version_l', $values))
        {
            $this->version_l = $values['version_l'];
        }
        else
        {
            $this->version_l = 0;
        }
        if (array_key_exists('bms_status', $values))
        {
            $this->bms_status = $values['bms_status'];
        }
        else
        {
            $this->bms_status = 0;
        }
        if (array_key_exists('SOC', $values))
        {
            $this->SOC = $values['SOC'];
        }
        else
        {
            $this->SOC = 0;
        }
        if (array_key_exists('current', $values))
        {
            $this->current = $values['current'];
        }
        else
        {
            $this->current = 0;
        }
        if (array_key_exists('cycle', $values))
        {
            $this->cycle = $values['cycle'];
        }
        else
        {
            $this->cycle = 0;
        }
        if (array_key_exists('BQ_NTC', $values))
        {
            $this->BQ_NTC = $values['BQ_NTC'];
        }
        else
        {
            $this->BQ_NTC = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('MCU_NTC', $values))
        {
            $this->MCU_NTC = $values['MCU_NTC'];
        }
        else
        {
            $this->MCU_NTC = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('cell_vol', $values))
        {
            $this->cell_vol = $values['cell_vol'];
        }
        else
        {
            $this->cell_vol = array_map(
                static fn($index) => 0,
                range(1, 10)
            );
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsBmsState', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsBmsState', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/Cartesian field. */
final class Ros1Unitree_legged_msgsCartesian
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsCartesian',
        'native_identity' => 'cc153912f1453b708d221682bc23d9ac',
        'codec_identity' => 'UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/Cartesian',
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

    /** @brief Original x: float32; scalar. */
    public mixed $x;

    /** @brief Original y: float32; scalar. */
    public mixed $y;

    /** @brief Original z: float32; scalar. */
    public mixed $z;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('x', $values))
        {
            $this->x = $values['x'];
        }
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
        {
            $this->y = $values['y'];
        }
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
        {
            $this->z = $values['z'];
        }
        else
        {
            $this->z = 0.0;
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsCartesian', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsCartesian', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/LED field. */
final class Ros1Unitree_legged_msgsLED
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsLED',
        'native_identity' => '353891e354491c51aabe32df673fb446',
        'codec_identity' => 'UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/LED',
        'constants' => [],
        'fields' => [
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
            ]
        ]
    ];

    /** @brief Original r: uint8; scalar. */
    public mixed $r;

    /** @brief Original g: uint8; scalar. */
    public mixed $g;

    /** @brief Original b: uint8; scalar. */
    public mixed $b;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('r', $values))
        {
            $this->r = $values['r'];
        }
        else
        {
            $this->r = 0;
        }
        if (array_key_exists('g', $values))
        {
            $this->g = $values['g'];
        }
        else
        {
            $this->g = 0;
        }
        if (array_key_exists('b', $values))
        {
            $this->b = $values['b'];
        }
        else
        {
            $this->b = 0;
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsLED', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsLED', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/HighCmd field. */
final class Ros1Unitree_legged_msgsHighCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsHighCmd',
        'native_identity' => 'b4825051cf66ae8183b54c57dba16b66',
        'codec_identity' => 'UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38',
        'minimum' => 129,
        'maximum' => 129,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/HighCmd',
        'constants' => [],
        'fields' => [
            [
                'name' => 'head',
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
                'name' => 'levelFlag',
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
                'name' => 'frameReserve',
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
                'name' => 'SN',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'version',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'bandWidth',
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
                'name' => 'gaitType',
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
                'name' => 'speedLevel',
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
                'name' => 'footRaiseHeight',
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
                'name' => 'bodyHeight',
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
                'name' => 'position',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'euler',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'velocity',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'yawSpeed',
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
                'name' => 'bms',
                'type' => 'Ros1Unitree_legged_msgsBmsCmd',
                'array' => '',
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
                'name' => 'led',
                'type' => 'Ros1Unitree_legged_msgsLED',
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
                'element_minimum' => 3
            ],
            [
                'name' => 'wirelessRemote',
                'type' => 'uint8',
                'array' => 'array',
                'count' => 40,
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
                'name' => 'reserve',
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
                'name' => 'crc',
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

    /** @brief Original head: uint8; array. */
    public mixed $head;

    /** @brief Original levelFlag: uint8; scalar. */
    public mixed $levelFlag;

    /** @brief Original frameReserve: uint8; scalar. */
    public mixed $frameReserve;

    /** @brief Original SN: uint32; array. */
    public mixed $SN;

    /** @brief Original version: uint32; array. */
    public mixed $version;

    /** @brief Original bandWidth: uint16; scalar. */
    public mixed $bandWidth;

    /** @brief Original mode: uint8; scalar. */
    public mixed $mode;

    /** @brief Original gaitType: uint8; scalar. */
    public mixed $gaitType;

    /** @brief Original speedLevel: uint8; scalar. */
    public mixed $speedLevel;

    /** @brief Original footRaiseHeight: float32; scalar. */
    public mixed $footRaiseHeight;

    /** @brief Original bodyHeight: float32; scalar. */
    public mixed $bodyHeight;

    /** @brief Original position: float32; array. */
    public mixed $position;

    /** @brief Original euler: float32; array. */
    public mixed $euler;

    /** @brief Original velocity: float32; array. */
    public mixed $velocity;

    /** @brief Original yawSpeed: float32; scalar. */
    public mixed $yawSpeed;

    /** @brief Original bms: Ros1Unitree_legged_msgsBmsCmd; scalar. */
    public mixed $bms;

    /** @brief Original led: Ros1Unitree_legged_msgsLED; array. */
    public mixed $led;

    /** @brief Original wirelessRemote: uint8; array. */
    public mixed $wirelessRemote;

    /** @brief Original reserve: uint32; scalar. */
    public mixed $reserve;

    /** @brief Original crc: uint32; scalar. */
    public mixed $crc;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('head', $values))
        {
            $this->head = $values['head'];
        }
        else
        {
            $this->head = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('levelFlag', $values))
        {
            $this->levelFlag = $values['levelFlag'];
        }
        else
        {
            $this->levelFlag = 0;
        }
        if (array_key_exists('frameReserve', $values))
        {
            $this->frameReserve = $values['frameReserve'];
        }
        else
        {
            $this->frameReserve = 0;
        }
        if (array_key_exists('SN', $values))
        {
            $this->SN = $values['SN'];
        }
        else
        {
            $this->SN = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
        if (array_key_exists('version', $values))
        {
            $this->version = $values['version'];
        }
        else
        {
            $this->version = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
        if (array_key_exists('bandWidth', $values))
        {
            $this->bandWidth = $values['bandWidth'];
        }
        else
        {
            $this->bandWidth = 0;
        }
        if (array_key_exists('mode', $values))
        {
            $this->mode = $values['mode'];
        }
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('gaitType', $values))
        {
            $this->gaitType = $values['gaitType'];
        }
        else
        {
            $this->gaitType = 0;
        }
        if (array_key_exists('speedLevel', $values))
        {
            $this->speedLevel = $values['speedLevel'];
        }
        else
        {
            $this->speedLevel = 0;
        }
        if (array_key_exists('footRaiseHeight', $values))
        {
            $this->footRaiseHeight = $values['footRaiseHeight'];
        }
        else
        {
            $this->footRaiseHeight = 0.0;
        }
        if (array_key_exists('bodyHeight', $values))
        {
            $this->bodyHeight = $values['bodyHeight'];
        }
        else
        {
            $this->bodyHeight = 0.0;
        }
        if (array_key_exists('position', $values))
        {
            $this->position = $values['position'];
        }
        else
        {
            $this->position = array_map(
                static fn($index) => 0.0,
                range(1, 2)
            );
        }
        if (array_key_exists('euler', $values))
        {
            $this->euler = $values['euler'];
        }
        else
        {
            $this->euler = array_map(
                static fn($index) => 0.0,
                range(1, 3)
            );
        }
        if (array_key_exists('velocity', $values))
        {
            $this->velocity = $values['velocity'];
        }
        else
        {
            $this->velocity = array_map(
                static fn($index) => 0.0,
                range(1, 2)
            );
        }
        if (array_key_exists('yawSpeed', $values))
        {
            $this->yawSpeed = $values['yawSpeed'];
        }
        else
        {
            $this->yawSpeed = 0.0;
        }
        if (array_key_exists('bms', $values))
        {
            $this->bms = $values['bms'];
        }
        else
        {
            $this->bms = new Ros1Unitree_legged_msgsBmsCmd();
        }
        if (array_key_exists('led', $values))
        {
            $this->led = $values['led'];
        }
        else
        {
            $this->led = array_map(
                static fn($index) => new Ros1Unitree_legged_msgsLED(),
                range(1, 4)
            );
        }
        if (array_key_exists('wirelessRemote', $values))
        {
            $this->wirelessRemote = $values['wirelessRemote'];
        }
        else
        {
            $this->wirelessRemote = array_map(
                static fn($index) => 0,
                range(1, 40)
            );
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('crc', $values))
        {
            $this->crc = $values['crc'];
        }
        else
        {
            $this->crc = Word::fromDecimal('0', 4, false);
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsHighCmd', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsHighCmd', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/IMU field. */
final class Ros1Unitree_legged_msgsIMU
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsIMU',
        'native_identity' => 'c2bcd83820da00fff261b67d6490da58',
        'codec_identity' => 'UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276',
        'minimum' => 53,
        'maximum' => 53,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/IMU',
        'constants' => [],
        'fields' => [
            [
                'name' => 'quaternion',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'gyroscope',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'accelerometer',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'rpy',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'temperature',
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
        ]
    ];

    /** @brief Original quaternion: float32; array. */
    public mixed $quaternion;

    /** @brief Original gyroscope: float32; array. */
    public mixed $gyroscope;

    /** @brief Original accelerometer: float32; array. */
    public mixed $accelerometer;

    /** @brief Original rpy: float32; array. */
    public mixed $rpy;

    /** @brief Original temperature: int8; scalar. */
    public mixed $temperature;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('quaternion', $values))
        {
            $this->quaternion = $values['quaternion'];
        }
        else
        {
            $this->quaternion = array_map(
                static fn($index) => 0.0,
                range(1, 4)
            );
        }
        if (array_key_exists('gyroscope', $values))
        {
            $this->gyroscope = $values['gyroscope'];
        }
        else
        {
            $this->gyroscope = array_map(
                static fn($index) => 0.0,
                range(1, 3)
            );
        }
        if (array_key_exists('accelerometer', $values))
        {
            $this->accelerometer = $values['accelerometer'];
        }
        else
        {
            $this->accelerometer = array_map(
                static fn($index) => 0.0,
                range(1, 3)
            );
        }
        if (array_key_exists('rpy', $values))
        {
            $this->rpy = $values['rpy'];
        }
        else
        {
            $this->rpy = array_map(
                static fn($index) => 0.0,
                range(1, 3)
            );
        }
        if (array_key_exists('temperature', $values))
        {
            $this->temperature = $values['temperature'];
        }
        else
        {
            $this->temperature = 0;
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsIMU', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsIMU', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/MotorState field. */
final class Ros1Unitree_legged_msgsMotorState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsMotorState',
        'native_identity' => '94c55ee3b7852be2bd437b20ce12a254',
        'codec_identity' => 'UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf',
        'minimum' => 38,
        'maximum' => 38,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/MotorState',
        'constants' => [],
        'fields' => [
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
                'name' => 'q',
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
                'name' => 'dq',
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
                'name' => 'ddq',
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
                'name' => 'tauEst',
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
                'name' => 'q_raw',
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
                'name' => 'dq_raw',
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
                'name' => 'ddq_raw',
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
                'name' => 'temperature',
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
                'name' => 'reserve',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ]
        ]
    ];

    /** @brief Original mode: uint8; scalar. */
    public mixed $mode;

    /** @brief Original q: float32; scalar. */
    public mixed $q;

    /** @brief Original dq: float32; scalar. */
    public mixed $dq;

    /** @brief Original ddq: float32; scalar. */
    public mixed $ddq;

    /** @brief Original tauEst: float32; scalar. */
    public mixed $tauEst;

    /** @brief Original q_raw: float32; scalar. */
    public mixed $q_raw;

    /** @brief Original dq_raw: float32; scalar. */
    public mixed $dq_raw;

    /** @brief Original ddq_raw: float32; scalar. */
    public mixed $ddq_raw;

    /** @brief Original temperature: int8; scalar. */
    public mixed $temperature;

    /** @brief Original reserve: uint32; array. */
    public mixed $reserve;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('mode', $values))
        {
            $this->mode = $values['mode'];
        }
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('q', $values))
        {
            $this->q = $values['q'];
        }
        else
        {
            $this->q = 0.0;
        }
        if (array_key_exists('dq', $values))
        {
            $this->dq = $values['dq'];
        }
        else
        {
            $this->dq = 0.0;
        }
        if (array_key_exists('ddq', $values))
        {
            $this->ddq = $values['ddq'];
        }
        else
        {
            $this->ddq = 0.0;
        }
        if (array_key_exists('tauEst', $values))
        {
            $this->tauEst = $values['tauEst'];
        }
        else
        {
            $this->tauEst = 0.0;
        }
        if (array_key_exists('q_raw', $values))
        {
            $this->q_raw = $values['q_raw'];
        }
        else
        {
            $this->q_raw = 0.0;
        }
        if (array_key_exists('dq_raw', $values))
        {
            $this->dq_raw = $values['dq_raw'];
        }
        else
        {
            $this->dq_raw = 0.0;
        }
        if (array_key_exists('ddq_raw', $values))
        {
            $this->ddq_raw = $values['ddq_raw'];
        }
        else
        {
            $this->ddq_raw = 0.0;
        }
        if (array_key_exists('temperature', $values))
        {
            $this->temperature = $values['temperature'];
        }
        else
        {
            $this->temperature = 0;
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsMotorState', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsMotorState', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/HighState field. */
final class Ros1Unitree_legged_msgsHighState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsHighState',
        'native_identity' => '7904f43019dadf7640d573b4c14b9066',
        'codec_identity' => 'UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d',
        'minimum' => 1087,
        'maximum' => 1087,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/HighState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'head',
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
                'name' => 'levelFlag',
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
                'name' => 'frameReserve',
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
                'name' => 'SN',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'version',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'bandWidth',
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
                'name' => 'imu',
                'type' => 'Ros1Unitree_legged_msgsIMU',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 53
            ],
            [
                'name' => 'motorState',
                'type' => 'Ros1Unitree_legged_msgsMotorState',
                'array' => 'array',
                'count' => 20,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 38
            ],
            [
                'name' => 'bms',
                'type' => 'Ros1Unitree_legged_msgsBmsState',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 34
            ],
            [
                'name' => 'footForce',
                'type' => 'int16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'footForceEst',
                'type' => 'int16',
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
                'element_minimum' => 2
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
                'name' => 'progress',
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
                'name' => 'gaitType',
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
                'name' => 'footRaiseHeight',
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
                'name' => 'position',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'bodyHeight',
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
                'name' => 'velocity',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'yawSpeed',
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
                'name' => 'rangeObstacle',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'footPosition2Body',
                'type' => 'Ros1Unitree_legged_msgsCartesian',
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
                'element_minimum' => 12
            ],
            [
                'name' => 'footSpeed2Body',
                'type' => 'Ros1Unitree_legged_msgsCartesian',
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
                'element_minimum' => 12
            ],
            [
                'name' => 'wirelessRemote',
                'type' => 'uint8',
                'array' => 'array',
                'count' => 40,
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
                'name' => 'reserve',
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
                'name' => 'crc',
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

    /** @brief Original head: uint8; array. */
    public mixed $head;

    /** @brief Original levelFlag: uint8; scalar. */
    public mixed $levelFlag;

    /** @brief Original frameReserve: uint8; scalar. */
    public mixed $frameReserve;

    /** @brief Original SN: uint32; array. */
    public mixed $SN;

    /** @brief Original version: uint32; array. */
    public mixed $version;

    /** @brief Original bandWidth: uint16; scalar. */
    public mixed $bandWidth;

    /** @brief Original imu: Ros1Unitree_legged_msgsIMU; scalar. */
    public mixed $imu;

    /** @brief Original motorState: Ros1Unitree_legged_msgsMotorState; array. */
    public mixed $motorState;

    /** @brief Original bms: Ros1Unitree_legged_msgsBmsState; scalar. */
    public mixed $bms;

    /** @brief Original footForce: int16; array. */
    public mixed $footForce;

    /** @brief Original footForceEst: int16; array. */
    public mixed $footForceEst;

    /** @brief Original mode: uint8; scalar. */
    public mixed $mode;

    /** @brief Original progress: float32; scalar. */
    public mixed $progress;

    /** @brief Original gaitType: uint8; scalar. */
    public mixed $gaitType;

    /** @brief Original footRaiseHeight: float32; scalar. */
    public mixed $footRaiseHeight;

    /** @brief Original position: float32; array. */
    public mixed $position;

    /** @brief Original bodyHeight: float32; scalar. */
    public mixed $bodyHeight;

    /** @brief Original velocity: float32; array. */
    public mixed $velocity;

    /** @brief Original yawSpeed: float32; scalar. */
    public mixed $yawSpeed;

    /** @brief Original rangeObstacle: float32; array. */
    public mixed $rangeObstacle;

    /** @brief Original footPosition2Body: Ros1Unitree_legged_msgsCartesian; array. */
    public mixed $footPosition2Body;

    /** @brief Original footSpeed2Body: Ros1Unitree_legged_msgsCartesian; array. */
    public mixed $footSpeed2Body;

    /** @brief Original wirelessRemote: uint8; array. */
    public mixed $wirelessRemote;

    /** @brief Original reserve: uint32; scalar. */
    public mixed $reserve;

    /** @brief Original crc: uint32; scalar. */
    public mixed $crc;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('head', $values))
        {
            $this->head = $values['head'];
        }
        else
        {
            $this->head = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('levelFlag', $values))
        {
            $this->levelFlag = $values['levelFlag'];
        }
        else
        {
            $this->levelFlag = 0;
        }
        if (array_key_exists('frameReserve', $values))
        {
            $this->frameReserve = $values['frameReserve'];
        }
        else
        {
            $this->frameReserve = 0;
        }
        if (array_key_exists('SN', $values))
        {
            $this->SN = $values['SN'];
        }
        else
        {
            $this->SN = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
        if (array_key_exists('version', $values))
        {
            $this->version = $values['version'];
        }
        else
        {
            $this->version = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
        if (array_key_exists('bandWidth', $values))
        {
            $this->bandWidth = $values['bandWidth'];
        }
        else
        {
            $this->bandWidth = 0;
        }
        if (array_key_exists('imu', $values))
        {
            $this->imu = $values['imu'];
        }
        else
        {
            $this->imu = new Ros1Unitree_legged_msgsIMU();
        }
        if (array_key_exists('motorState', $values))
        {
            $this->motorState = $values['motorState'];
        }
        else
        {
            $this->motorState = array_map(
                static fn($index) => new Ros1Unitree_legged_msgsMotorState(),
                range(1, 20)
            );
        }
        if (array_key_exists('bms', $values))
        {
            $this->bms = $values['bms'];
        }
        else
        {
            $this->bms = new Ros1Unitree_legged_msgsBmsState();
        }
        if (array_key_exists('footForce', $values))
        {
            $this->footForce = $values['footForce'];
        }
        else
        {
            $this->footForce = array_map(
                static fn($index) => 0,
                range(1, 4)
            );
        }
        if (array_key_exists('footForceEst', $values))
        {
            $this->footForceEst = $values['footForceEst'];
        }
        else
        {
            $this->footForceEst = array_map(
                static fn($index) => 0,
                range(1, 4)
            );
        }
        if (array_key_exists('mode', $values))
        {
            $this->mode = $values['mode'];
        }
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('progress', $values))
        {
            $this->progress = $values['progress'];
        }
        else
        {
            $this->progress = 0.0;
        }
        if (array_key_exists('gaitType', $values))
        {
            $this->gaitType = $values['gaitType'];
        }
        else
        {
            $this->gaitType = 0;
        }
        if (array_key_exists('footRaiseHeight', $values))
        {
            $this->footRaiseHeight = $values['footRaiseHeight'];
        }
        else
        {
            $this->footRaiseHeight = 0.0;
        }
        if (array_key_exists('position', $values))
        {
            $this->position = $values['position'];
        }
        else
        {
            $this->position = array_map(
                static fn($index) => 0.0,
                range(1, 3)
            );
        }
        if (array_key_exists('bodyHeight', $values))
        {
            $this->bodyHeight = $values['bodyHeight'];
        }
        else
        {
            $this->bodyHeight = 0.0;
        }
        if (array_key_exists('velocity', $values))
        {
            $this->velocity = $values['velocity'];
        }
        else
        {
            $this->velocity = array_map(
                static fn($index) => 0.0,
                range(1, 3)
            );
        }
        if (array_key_exists('yawSpeed', $values))
        {
            $this->yawSpeed = $values['yawSpeed'];
        }
        else
        {
            $this->yawSpeed = 0.0;
        }
        if (array_key_exists('rangeObstacle', $values))
        {
            $this->rangeObstacle = $values['rangeObstacle'];
        }
        else
        {
            $this->rangeObstacle = array_map(
                static fn($index) => 0.0,
                range(1, 4)
            );
        }
        if (array_key_exists('footPosition2Body', $values))
        {
            $this->footPosition2Body = $values['footPosition2Body'];
        }
        else
        {
            $this->footPosition2Body = array_map(
                static fn($index) => new Ros1Unitree_legged_msgsCartesian(),
                range(1, 4)
            );
        }
        if (array_key_exists('footSpeed2Body', $values))
        {
            $this->footSpeed2Body = $values['footSpeed2Body'];
        }
        else
        {
            $this->footSpeed2Body = array_map(
                static fn($index) => new Ros1Unitree_legged_msgsCartesian(),
                range(1, 4)
            );
        }
        if (array_key_exists('wirelessRemote', $values))
        {
            $this->wirelessRemote = $values['wirelessRemote'];
        }
        else
        {
            $this->wirelessRemote = array_map(
                static fn($index) => 0,
                range(1, 40)
            );
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('crc', $values))
        {
            $this->crc = $values['crc'];
        }
        else
        {
            $this->crc = Word::fromDecimal('0', 4, false);
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsHighState', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsHighState', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/MotorCmd field. */
final class Ros1Unitree_legged_msgsMotorCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsMotorCmd',
        'native_identity' => 'bbb3b7d91319c3a1b99055f0149ba221',
        'codec_identity' => 'UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083',
        'minimum' => 33,
        'maximum' => 33,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/MotorCmd',
        'constants' => [],
        'fields' => [
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
                'name' => 'q',
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
                'name' => 'dq',
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
                'name' => 'tau',
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
                'name' => 'Kp',
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
                'name' => 'Kd',
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
                'name' => 'reserve',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ]
        ]
    ];

    /** @brief Original mode: uint8; scalar. */
    public mixed $mode;

    /** @brief Original q: float32; scalar. */
    public mixed $q;

    /** @brief Original dq: float32; scalar. */
    public mixed $dq;

    /** @brief Original tau: float32; scalar. */
    public mixed $tau;

    /** @brief Original Kp: float32; scalar. */
    public mixed $Kp;

    /** @brief Original Kd: float32; scalar. */
    public mixed $Kd;

    /** @brief Original reserve: uint32; array. */
    public mixed $reserve;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('mode', $values))
        {
            $this->mode = $values['mode'];
        }
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('q', $values))
        {
            $this->q = $values['q'];
        }
        else
        {
            $this->q = 0.0;
        }
        if (array_key_exists('dq', $values))
        {
            $this->dq = $values['dq'];
        }
        else
        {
            $this->dq = 0.0;
        }
        if (array_key_exists('tau', $values))
        {
            $this->tau = $values['tau'];
        }
        else
        {
            $this->tau = 0.0;
        }
        if (array_key_exists('Kp', $values))
        {
            $this->Kp = $values['Kp'];
        }
        else
        {
            $this->Kp = 0.0;
        }
        if (array_key_exists('Kd', $values))
        {
            $this->Kd = $values['Kd'];
        }
        else
        {
            $this->Kd = 0.0;
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 3)
            );
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsMotorCmd', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsMotorCmd', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/LowCmd field. */
final class Ros1Unitree_legged_msgsLowCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsLowCmd',
        'native_identity' => '7a33b01032a894134df9b65b5cd356d1',
        'codec_identity' => 'UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181',
        'minimum' => 734,
        'maximum' => 734,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/LowCmd',
        'constants' => [],
        'fields' => [
            [
                'name' => 'head',
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
                'name' => 'levelFlag',
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
                'name' => 'frameReserve',
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
                'name' => 'SN',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'version',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'bandWidth',
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
                'name' => 'motorCmd',
                'type' => 'Ros1Unitree_legged_msgsMotorCmd',
                'array' => 'array',
                'count' => 20,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 33
            ],
            [
                'name' => 'bms',
                'type' => 'Ros1Unitree_legged_msgsBmsCmd',
                'array' => '',
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
                'name' => 'wirelessRemote',
                'type' => 'uint8',
                'array' => 'array',
                'count' => 40,
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
                'name' => 'reserve',
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
                'name' => 'crc',
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

    /** @brief Original head: uint8; array. */
    public mixed $head;

    /** @brief Original levelFlag: uint8; scalar. */
    public mixed $levelFlag;

    /** @brief Original frameReserve: uint8; scalar. */
    public mixed $frameReserve;

    /** @brief Original SN: uint32; array. */
    public mixed $SN;

    /** @brief Original version: uint32; array. */
    public mixed $version;

    /** @brief Original bandWidth: uint16; scalar. */
    public mixed $bandWidth;

    /** @brief Original motorCmd: Ros1Unitree_legged_msgsMotorCmd; array. */
    public mixed $motorCmd;

    /** @brief Original bms: Ros1Unitree_legged_msgsBmsCmd; scalar. */
    public mixed $bms;

    /** @brief Original wirelessRemote: uint8; array. */
    public mixed $wirelessRemote;

    /** @brief Original reserve: uint32; scalar. */
    public mixed $reserve;

    /** @brief Original crc: uint32; scalar. */
    public mixed $crc;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('head', $values))
        {
            $this->head = $values['head'];
        }
        else
        {
            $this->head = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('levelFlag', $values))
        {
            $this->levelFlag = $values['levelFlag'];
        }
        else
        {
            $this->levelFlag = 0;
        }
        if (array_key_exists('frameReserve', $values))
        {
            $this->frameReserve = $values['frameReserve'];
        }
        else
        {
            $this->frameReserve = 0;
        }
        if (array_key_exists('SN', $values))
        {
            $this->SN = $values['SN'];
        }
        else
        {
            $this->SN = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
        if (array_key_exists('version', $values))
        {
            $this->version = $values['version'];
        }
        else
        {
            $this->version = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
        if (array_key_exists('bandWidth', $values))
        {
            $this->bandWidth = $values['bandWidth'];
        }
        else
        {
            $this->bandWidth = 0;
        }
        if (array_key_exists('motorCmd', $values))
        {
            $this->motorCmd = $values['motorCmd'];
        }
        else
        {
            $this->motorCmd = array_map(
                static fn($index) => new Ros1Unitree_legged_msgsMotorCmd(),
                range(1, 20)
            );
        }
        if (array_key_exists('bms', $values))
        {
            $this->bms = $values['bms'];
        }
        else
        {
            $this->bms = new Ros1Unitree_legged_msgsBmsCmd();
        }
        if (array_key_exists('wirelessRemote', $values))
        {
            $this->wirelessRemote = $values['wirelessRemote'];
        }
        else
        {
            $this->wirelessRemote = array_map(
                static fn($index) => 0,
                range(1, 40)
            );
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('crc', $values))
        {
            $this->crc = $values['crc'];
        }
        else
        {
            $this->crc = Word::fromDecimal('0', 4, false);
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsLowCmd', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsLowCmd', $bytes);
    }
}

/** @brief Own every original unitree_legged_msgs/LowState field. */
final class Ros1Unitree_legged_msgsLowState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Unitree_legged_msgsLowState',
        'native_identity' => '481f8a83f729a25e7cc170da192f80f9',
        'codec_identity' => 'UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0',
        'minimum' => 1069,
        'maximum' => 1069,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'unitree_legged_msgs/LowState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'head',
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
                'name' => 'levelFlag',
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
                'name' => 'frameReserve',
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
                'name' => 'SN',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'version',
                'type' => 'uint32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'bandWidth',
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
                'name' => 'imu',
                'type' => 'Ros1Unitree_legged_msgsIMU',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 53
            ],
            [
                'name' => 'motorState',
                'type' => 'Ros1Unitree_legged_msgsMotorState',
                'array' => 'array',
                'count' => 20,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 38
            ],
            [
                'name' => 'bms',
                'type' => 'Ros1Unitree_legged_msgsBmsState',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 34
            ],
            [
                'name' => 'footForce',
                'type' => 'int16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'footForceEst',
                'type' => 'int16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'tick',
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
                'name' => 'wirelessRemote',
                'type' => 'uint8',
                'array' => 'array',
                'count' => 40,
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
                'name' => 'reserve',
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
                'name' => 'crc',
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
                'name' => 'eeForceRaw',
                'type' => 'Ros1Unitree_legged_msgsCartesian',
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
                'element_minimum' => 12
            ],
            [
                'name' => 'eeForce',
                'type' => 'Ros1Unitree_legged_msgsCartesian',
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
                'element_minimum' => 12
            ],
            [
                'name' => 'position',
                'type' => 'Ros1Unitree_legged_msgsCartesian',
                'array' => '',
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
                'name' => 'velocity',
                'type' => 'Ros1Unitree_legged_msgsCartesian',
                'array' => '',
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
                'name' => 'velocity_w',
                'type' => 'Ros1Unitree_legged_msgsCartesian',
                'array' => '',
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

    /** @brief Original head: uint8; array. */
    public mixed $head;

    /** @brief Original levelFlag: uint8; scalar. */
    public mixed $levelFlag;

    /** @brief Original frameReserve: uint8; scalar. */
    public mixed $frameReserve;

    /** @brief Original SN: uint32; array. */
    public mixed $SN;

    /** @brief Original version: uint32; array. */
    public mixed $version;

    /** @brief Original bandWidth: uint16; scalar. */
    public mixed $bandWidth;

    /** @brief Original imu: Ros1Unitree_legged_msgsIMU; scalar. */
    public mixed $imu;

    /** @brief Original motorState: Ros1Unitree_legged_msgsMotorState; array. */
    public mixed $motorState;

    /** @brief Original bms: Ros1Unitree_legged_msgsBmsState; scalar. */
    public mixed $bms;

    /** @brief Original footForce: int16; array. */
    public mixed $footForce;

    /** @brief Original footForceEst: int16; array. */
    public mixed $footForceEst;

    /** @brief Original tick: uint32; scalar. */
    public mixed $tick;

    /** @brief Original wirelessRemote: uint8; array. */
    public mixed $wirelessRemote;

    /** @brief Original reserve: uint32; scalar. */
    public mixed $reserve;

    /** @brief Original crc: uint32; scalar. */
    public mixed $crc;

    /** @brief Original eeForceRaw: Ros1Unitree_legged_msgsCartesian; array. */
    public mixed $eeForceRaw;

    /** @brief Original eeForce: Ros1Unitree_legged_msgsCartesian; array. */
    public mixed $eeForce;

    /** @brief Original position: Ros1Unitree_legged_msgsCartesian; scalar. */
    public mixed $position;

    /** @brief Original velocity: Ros1Unitree_legged_msgsCartesian; scalar. */
    public mixed $velocity;

    /** @brief Original velocity_w: Ros1Unitree_legged_msgsCartesian; scalar. */
    public mixed $velocity_w;

    /**
     * @brief Construct independent complete defaults and explicit supplied fields.
     * @param array $values Exact original field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown field was supplied.
     * @details Every default nested value is independently allocated. Supplied
     * object values retain normal PHP reference semantics and are not cloned.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
        {
            throw new \InvalidArgumentException('unknown original Unitree field');
        }
        if (array_key_exists('head', $values))
        {
            $this->head = $values['head'];
        }
        else
        {
            $this->head = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('levelFlag', $values))
        {
            $this->levelFlag = $values['levelFlag'];
        }
        else
        {
            $this->levelFlag = 0;
        }
        if (array_key_exists('frameReserve', $values))
        {
            $this->frameReserve = $values['frameReserve'];
        }
        else
        {
            $this->frameReserve = 0;
        }
        if (array_key_exists('SN', $values))
        {
            $this->SN = $values['SN'];
        }
        else
        {
            $this->SN = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
        if (array_key_exists('version', $values))
        {
            $this->version = $values['version'];
        }
        else
        {
            $this->version = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
        if (array_key_exists('bandWidth', $values))
        {
            $this->bandWidth = $values['bandWidth'];
        }
        else
        {
            $this->bandWidth = 0;
        }
        if (array_key_exists('imu', $values))
        {
            $this->imu = $values['imu'];
        }
        else
        {
            $this->imu = new Ros1Unitree_legged_msgsIMU();
        }
        if (array_key_exists('motorState', $values))
        {
            $this->motorState = $values['motorState'];
        }
        else
        {
            $this->motorState = array_map(
                static fn($index) => new Ros1Unitree_legged_msgsMotorState(),
                range(1, 20)
            );
        }
        if (array_key_exists('bms', $values))
        {
            $this->bms = $values['bms'];
        }
        else
        {
            $this->bms = new Ros1Unitree_legged_msgsBmsState();
        }
        if (array_key_exists('footForce', $values))
        {
            $this->footForce = $values['footForce'];
        }
        else
        {
            $this->footForce = array_map(
                static fn($index) => 0,
                range(1, 4)
            );
        }
        if (array_key_exists('footForceEst', $values))
        {
            $this->footForceEst = $values['footForceEst'];
        }
        else
        {
            $this->footForceEst = array_map(
                static fn($index) => 0,
                range(1, 4)
            );
        }
        if (array_key_exists('tick', $values))
        {
            $this->tick = $values['tick'];
        }
        else
        {
            $this->tick = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('wirelessRemote', $values))
        {
            $this->wirelessRemote = $values['wirelessRemote'];
        }
        else
        {
            $this->wirelessRemote = array_map(
                static fn($index) => 0,
                range(1, 40)
            );
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('crc', $values))
        {
            $this->crc = $values['crc'];
        }
        else
        {
            $this->crc = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('eeForceRaw', $values))
        {
            $this->eeForceRaw = $values['eeForceRaw'];
        }
        else
        {
            $this->eeForceRaw = array_map(
                static fn($index) => new Ros1Unitree_legged_msgsCartesian(),
                range(1, 4)
            );
        }
        if (array_key_exists('eeForce', $values))
        {
            $this->eeForce = $values['eeForce'];
        }
        else
        {
            $this->eeForce = array_map(
                static fn($index) => new Ros1Unitree_legged_msgsCartesian(),
                range(1, 4)
            );
        }
        if (array_key_exists('position', $values))
        {
            $this->position = $values['position'];
        }
        else
        {
            $this->position = new Ros1Unitree_legged_msgsCartesian();
        }
        if (array_key_exists('velocity', $values))
        {
            $this->velocity = $values['velocity'];
        }
        else
        {
            $this->velocity = new Ros1Unitree_legged_msgsCartesian();
        }
        if (array_key_exists('velocity_w', $values))
        {
            $this->velocity_w = $values['velocity_w'];
        }
        else
        {
            $this->velocity_w = new Ros1Unitree_legged_msgsCartesian();
        }
    }

    /**
     * @brief Validate and encode every original field without partial output.
     * @return string Entire owned immutable canonical byte string.
     * @throws \InvalidArgumentException A field, shape or scalar is malformed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Unitree_legged_msgsLowState', $this);
    }

    /**
     * @brief Decode exactly one complete original value.
     * @param string $bytes Borrowed complete canonical input, without trailing bytes.
     * @return self Whole independently owned record, including every nested field.
     * @throws \InvalidArgumentException Input is malformed or not wholly consumed.
     * @throws \OutOfRangeException A selected finite wire bound is exceeded.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Unitree_legged_msgsLowState', $bytes);
    }
}

/** @brief Resolve the complete local registry without any ROS authority. */
final class Catalog
{

    /** @brief Retain all complete strict codecs. @return Wire Pure canonical registry. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null)
        {
            $wire = new Wire([
                    'Ros1Unitree_legged_msgsBmsCmd' => Ros1Unitree_legged_msgsBmsCmd::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsBmsCmd::class,
                    ],
                    'Ros1Unitree_legged_msgsBmsState' => Ros1Unitree_legged_msgsBmsState::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsBmsState::class,
                    ],
                    'Ros1Unitree_legged_msgsCartesian' => Ros1Unitree_legged_msgsCartesian::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsCartesian::class,
                    ],
                    'Ros1Unitree_legged_msgsLED' => Ros1Unitree_legged_msgsLED::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsLED::class,
                    ],
                    'Ros1Unitree_legged_msgsHighCmd' => Ros1Unitree_legged_msgsHighCmd::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsHighCmd::class,
                    ],
                    'Ros1Unitree_legged_msgsIMU' => Ros1Unitree_legged_msgsIMU::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsIMU::class,
                    ],
                    'Ros1Unitree_legged_msgsMotorState' => Ros1Unitree_legged_msgsMotorState::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsMotorState::class,
                    ],
                    'Ros1Unitree_legged_msgsHighState' => Ros1Unitree_legged_msgsHighState::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsHighState::class,
                    ],
                    'Ros1Unitree_legged_msgsMotorCmd' => Ros1Unitree_legged_msgsMotorCmd::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsMotorCmd::class,
                    ],
                    'Ros1Unitree_legged_msgsLowCmd' => Ros1Unitree_legged_msgsLowCmd::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsLowCmd::class,
                    ],
                    'Ros1Unitree_legged_msgsLowState' => Ros1Unitree_legged_msgsLowState::SCHEMA + [
                        'class' => Ros1Unitree_legged_msgsLowState::class,
                    ],
                ]);
        }
        return $wire;
    }
}
