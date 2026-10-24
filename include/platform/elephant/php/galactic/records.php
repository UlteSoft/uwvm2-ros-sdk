<?php
declare(strict_types=1);
namespace Uwvm\Elephant\galactic;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own all 6 original mecharm_interfaces/msg/MecharmAngles fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesMsgMecharmAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesMsgMecharmAngles',
        'type' => 'mecharm_interfaces/msg/MecharmAngles',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/msg/MecharmAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesMsgMecharmAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesMsgMecharmAngles', $bytes);
    }
}

/** @brief Own all 6 original mecharm_interfaces/msg/MecharmCoords fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesMsgMecharmCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesMsgMecharmCoords',
        'type' => 'mecharm_interfaces/msg/MecharmCoords',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/msg/MecharmCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesMsgMecharmCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesMsgMecharmCoords', $bytes);
    }
}

/** @brief Own all 1 original mecharm_interfaces/msg/MecharmGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesMsgMecharmGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesMsgMecharmGripperStatus',
        'type' => 'mecharm_interfaces/msg/MecharmGripperStatus',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/msg/MecharmGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesMsgMecharmGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesMsgMecharmGripperStatus', $bytes);
    }
}

/** @brief Own all 3 original mecharm_interfaces/msg/MecharmPumpStatus fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesMsgMecharmPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesMsgMecharmPumpStatus',
        'type' => 'mecharm_interfaces/msg/MecharmPumpStatus',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/msg/MecharmPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
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
                'name' => 'pin1',
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
                'name' => 'pin2',
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

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Original pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin1;
    /** @brief Original pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
        if (array_key_exists('pin1', $values))
            $this->pin1 = $values['pin1'];
        else
        {
            $this->pin1 = 0;
        }
        if (array_key_exists('pin2', $values))
            $this->pin2 = $values['pin2'];
        else
        {
            $this->pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesMsgMecharmPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesMsgMecharmPumpStatus', $bytes);
    }
}

/** @brief Own all 7 original mecharm_interfaces/msg/MecharmSetAngles fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesMsgMecharmSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesMsgMecharmSetAngles',
        'type' => 'mecharm_interfaces/msg/MecharmSetAngles',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/msg/MecharmSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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
        'constants' => [

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesMsgMecharmSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesMsgMecharmSetAngles', $bytes);
    }
}

/** @brief Own all 8 original mecharm_interfaces/msg/MecharmSetCoords fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesMsgMecharmSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesMsgMecharmSetCoords',
        'type' => 'mecharm_interfaces/msg/MecharmSetCoords',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/msg/MecharmSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2',
        'minimum' => 26,
        'maximum' => 26,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
            ],
            [
                'name' => 'model',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original model field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $model;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('model', $values))
            $this->model = $values['model'];
        else
        {
            $this->model = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesMsgMecharmSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesMsgMecharmSetCoords', $bytes);
    }
}

/** @brief Own all 0 original mecharm_interfaces/srv/GetAngles_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvGetAngles_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvGetAngles_Request',
        'type' => 'mecharm_interfaces/srv/GetAngles_Request',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/GetAngles_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvGetAngles_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvGetAngles_Request', $bytes);
    }
}

/** @brief Own all 6 original mecharm_interfaces/srv/GetAngles_Response fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvGetAngles_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvGetAngles_Response',
        'type' => 'mecharm_interfaces/srv/GetAngles_Response',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/GetAngles_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvGetAngles_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvGetAngles_Response', $bytes);
    }
}

/** @brief Own all 0 original mecharm_interfaces/srv/GetCoords_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvGetCoords_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvGetCoords_Request',
        'type' => 'mecharm_interfaces/srv/GetCoords_Request',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/GetCoords_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvGetCoords_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvGetCoords_Request', $bytes);
    }
}

/** @brief Own all 6 original mecharm_interfaces/srv/GetCoords_Response fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvGetCoords_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvGetCoords_Response',
        'type' => 'mecharm_interfaces/srv/GetCoords_Response',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/GetCoords_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvGetCoords_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvGetCoords_Response', $bytes);
    }
}

/** @brief Own all 1 original mecharm_interfaces/srv/GripperStatus_Request fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvGripperStatus_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvGripperStatus_Request',
        'type' => 'mecharm_interfaces/srv/GripperStatus_Request',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/GripperStatus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvGripperStatus_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvGripperStatus_Request', $bytes);
    }
}

/** @brief Own all 1 original mecharm_interfaces/srv/GripperStatus_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvGripperStatus_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvGripperStatus_Response',
        'type' => 'mecharm_interfaces/srv/GripperStatus_Response',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/GripperStatus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvGripperStatus_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvGripperStatus_Response', $bytes);
    }
}

/** @brief Own all 3 original mecharm_interfaces/srv/PumpStatus_Request fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvPumpStatus_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvPumpStatus_Request',
        'type' => 'mecharm_interfaces/srv/PumpStatus_Request',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/PumpStatus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
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
                'name' => 'pin1',
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
                'name' => 'pin2',
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

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Original pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin1;
    /** @brief Original pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
        if (array_key_exists('pin1', $values))
            $this->pin1 = $values['pin1'];
        else
        {
            $this->pin1 = 0;
        }
        if (array_key_exists('pin2', $values))
            $this->pin2 = $values['pin2'];
        else
        {
            $this->pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvPumpStatus_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvPumpStatus_Request', $bytes);
    }
}

/** @brief Own all 1 original mecharm_interfaces/srv/PumpStatus_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvPumpStatus_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvPumpStatus_Response',
        'type' => 'mecharm_interfaces/srv/PumpStatus_Response',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/PumpStatus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvPumpStatus_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvPumpStatus_Response', $bytes);
    }
}

/** @brief Own all 7 original mecharm_interfaces/srv/SetAngles_Request fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvSetAngles_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvSetAngles_Request',
        'type' => 'mecharm_interfaces/srv/SetAngles_Request',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/SetAngles_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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
        'constants' => [

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvSetAngles_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvSetAngles_Request', $bytes);
    }
}

/** @brief Own all 1 original mecharm_interfaces/srv/SetAngles_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvSetAngles_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvSetAngles_Response',
        'type' => 'mecharm_interfaces/srv/SetAngles_Response',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/SetAngles_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvSetAngles_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvSetAngles_Response', $bytes);
    }
}

/** @brief Own all 8 original mecharm_interfaces/srv/SetCoords_Request fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvSetCoords_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvSetCoords_Request',
        'type' => 'mecharm_interfaces/srv/SetCoords_Request',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/SetCoords_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916',
        'minimum' => 26,
        'maximum' => 26,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
            ],
            [
                'name' => 'model',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original model field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $model;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('model', $values))
            $this->model = $values['model'];
        else
        {
            $this->model = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvSetCoords_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvSetCoords_Request', $bytes);
    }
}

/** @brief Own all 1 original mecharm_interfaces/srv/SetCoords_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mecharm_interfacesSrvSetCoords_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mecharm_interfacesSrvSetCoords_Response',
        'type' => 'mecharm_interfaces/srv/SetCoords_Response',
        'ros_version' => 2,
        'native_type' => 'mecharm_interfaces/srv/SetCoords_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mecharm_interfacesSrvSetCoords_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mecharm_interfacesSrvSetCoords_Response', $bytes);
    }
}

/** @brief Own all 6 original mycobot_interfaces/msg/MycobotAngles fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesMsgMycobotAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesMsgMycobotAngles',
        'type' => 'mycobot_interfaces/msg/MycobotAngles',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/msg/MycobotAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesMsgMycobotAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesMsgMycobotAngles', $bytes);
    }
}

/** @brief Own all 6 original mycobot_interfaces/msg/MycobotCoords fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesMsgMycobotCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesMsgMycobotCoords',
        'type' => 'mycobot_interfaces/msg/MycobotCoords',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/msg/MycobotCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesMsgMycobotCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesMsgMycobotCoords', $bytes);
    }
}

/** @brief Own all 1 original mycobot_interfaces/msg/MycobotGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesMsgMycobotGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesMsgMycobotGripperStatus',
        'type' => 'mycobot_interfaces/msg/MycobotGripperStatus',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/msg/MycobotGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesMsgMycobotGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesMsgMycobotGripperStatus', $bytes);
    }
}

/** @brief Own all 3 original mycobot_interfaces/msg/MycobotPumpStatus fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesMsgMycobotPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesMsgMycobotPumpStatus',
        'type' => 'mycobot_interfaces/msg/MycobotPumpStatus',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/msg/MycobotPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
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
                'name' => 'pin1',
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
                'name' => 'pin2',
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

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Original pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin1;
    /** @brief Original pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
        if (array_key_exists('pin1', $values))
            $this->pin1 = $values['pin1'];
        else
        {
            $this->pin1 = 0;
        }
        if (array_key_exists('pin2', $values))
            $this->pin2 = $values['pin2'];
        else
        {
            $this->pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesMsgMycobotPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesMsgMycobotPumpStatus', $bytes);
    }
}

/** @brief Own all 7 original mycobot_interfaces/msg/MycobotSetAngles fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesMsgMycobotSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesMsgMycobotSetAngles',
        'type' => 'mycobot_interfaces/msg/MycobotSetAngles',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/msg/MycobotSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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
        'constants' => [

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesMsgMycobotSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesMsgMycobotSetAngles', $bytes);
    }
}

/** @brief Own all 8 original mycobot_interfaces/msg/MycobotSetCoords fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesMsgMycobotSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesMsgMycobotSetCoords',
        'type' => 'mycobot_interfaces/msg/MycobotSetCoords',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/msg/MycobotSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49',
        'minimum' => 26,
        'maximum' => 26,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
            ],
            [
                'name' => 'model',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original model field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $model;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('model', $values))
            $this->model = $values['model'];
        else
        {
            $this->model = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesMsgMycobotSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesMsgMycobotSetCoords', $bytes);
    }
}

/** @brief Own all 0 original mycobot_interfaces/srv/GetAngles_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvGetAngles_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvGetAngles_Request',
        'type' => 'mycobot_interfaces/srv/GetAngles_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/GetAngles_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvGetAngles_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvGetAngles_Request', $bytes);
    }
}

/** @brief Own all 6 original mycobot_interfaces/srv/GetAngles_Response fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvGetAngles_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvGetAngles_Response',
        'type' => 'mycobot_interfaces/srv/GetAngles_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/GetAngles_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvGetAngles_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvGetAngles_Response', $bytes);
    }
}

/** @brief Own all 0 original mycobot_interfaces/srv/GetCoords_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvGetCoords_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvGetCoords_Request',
        'type' => 'mycobot_interfaces/srv/GetCoords_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/GetCoords_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvGetCoords_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvGetCoords_Request', $bytes);
    }
}

/** @brief Own all 6 original mycobot_interfaces/srv/GetCoords_Response fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvGetCoords_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvGetCoords_Response',
        'type' => 'mycobot_interfaces/srv/GetCoords_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/GetCoords_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvGetCoords_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvGetCoords_Response', $bytes);
    }
}

/** @brief Own all 1 original mycobot_interfaces/srv/GripperStatus_Request fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvGripperStatus_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvGripperStatus_Request',
        'type' => 'mycobot_interfaces/srv/GripperStatus_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/GripperStatus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvGripperStatus_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvGripperStatus_Request', $bytes);
    }
}

/** @brief Own all 1 original mycobot_interfaces/srv/GripperStatus_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvGripperStatus_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvGripperStatus_Response',
        'type' => 'mycobot_interfaces/srv/GripperStatus_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/GripperStatus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvGripperStatus_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvGripperStatus_Response', $bytes);
    }
}

/** @brief Own all 3 original mycobot_interfaces/srv/PumpStatus_Request fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvPumpStatus_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvPumpStatus_Request',
        'type' => 'mycobot_interfaces/srv/PumpStatus_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/PumpStatus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
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
                'name' => 'pin1',
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
                'name' => 'pin2',
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

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Original pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin1;
    /** @brief Original pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
        if (array_key_exists('pin1', $values))
            $this->pin1 = $values['pin1'];
        else
        {
            $this->pin1 = 0;
        }
        if (array_key_exists('pin2', $values))
            $this->pin2 = $values['pin2'];
        else
        {
            $this->pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvPumpStatus_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvPumpStatus_Request', $bytes);
    }
}

/** @brief Own all 1 original mycobot_interfaces/srv/PumpStatus_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvPumpStatus_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvPumpStatus_Response',
        'type' => 'mycobot_interfaces/srv/PumpStatus_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/PumpStatus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvPumpStatus_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvPumpStatus_Response', $bytes);
    }
}

/** @brief Own all 7 original mycobot_interfaces/srv/SetAngles_Request fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvSetAngles_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvSetAngles_Request',
        'type' => 'mycobot_interfaces/srv/SetAngles_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/SetAngles_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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
        'constants' => [

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvSetAngles_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvSetAngles_Request', $bytes);
    }
}

/** @brief Own all 1 original mycobot_interfaces/srv/SetAngles_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvSetAngles_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvSetAngles_Response',
        'type' => 'mycobot_interfaces/srv/SetAngles_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/SetAngles_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvSetAngles_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvSetAngles_Response', $bytes);
    }
}

/** @brief Own all 8 original mycobot_interfaces/srv/SetCoords_Request fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvSetCoords_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvSetCoords_Request',
        'type' => 'mycobot_interfaces/srv/SetCoords_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/SetCoords_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213',
        'minimum' => 26,
        'maximum' => 26,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
            ],
            [
                'name' => 'model',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original model field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $model;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('model', $values))
            $this->model = $values['model'];
        else
        {
            $this->model = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvSetCoords_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvSetCoords_Request', $bytes);
    }
}

/** @brief Own all 1 original mycobot_interfaces/srv/SetCoords_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_interfacesSrvSetCoords_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_interfacesSrvSetCoords_Response',
        'type' => 'mycobot_interfaces/srv/SetCoords_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_interfaces/srv/SetCoords_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_interfacesSrvSetCoords_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_interfacesSrvSetCoords_Response', $bytes);
    }
}

/** @brief Own all 6 original mycobot_pro450_interfaces/msg/MycobotAngles fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesMsgMycobotAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesMsgMycobotAngles',
        'type' => 'mycobot_pro450_interfaces/msg/MycobotAngles',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/msg/MycobotAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesMsgMycobotAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesMsgMycobotAngles', $bytes);
    }
}

/** @brief Own all 6 original mycobot_pro450_interfaces/msg/MycobotCoords fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesMsgMycobotCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesMsgMycobotCoords',
        'type' => 'mycobot_pro450_interfaces/msg/MycobotCoords',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/msg/MycobotCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesMsgMycobotCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesMsgMycobotCoords', $bytes);
    }
}

/** @brief Own all 1 original mycobot_pro450_interfaces/msg/MycobotGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus',
        'type' => 'mycobot_pro450_interfaces/msg/MycobotGripperStatus',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/msg/MycobotGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus', $bytes);
    }
}

/** @brief Own all 7 original mycobot_pro450_interfaces/msg/MycobotSetAngles fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles',
        'type' => 'mycobot_pro450_interfaces/msg/MycobotSetAngles',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/msg/MycobotSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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
        'constants' => [

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles', $bytes);
    }
}

/** @brief Own all 7 original mycobot_pro450_interfaces/msg/MycobotSetCoords fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords',
        'type' => 'mycobot_pro450_interfaces/msg/MycobotSetCoords',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/msg/MycobotSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
        'constants' => [

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords', $bytes);
    }
}

/** @brief Own all 0 original mycobot_pro450_interfaces/srv/GetAngles_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvGetAngles_Request',
        'type' => 'mycobot_pro450_interfaces/srv/GetAngles_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/GetAngles_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvGetAngles_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvGetAngles_Request', $bytes);
    }
}

/** @brief Own all 6 original mycobot_pro450_interfaces/srv/GetAngles_Response fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvGetAngles_Response',
        'type' => 'mycobot_pro450_interfaces/srv/GetAngles_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/GetAngles_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvGetAngles_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvGetAngles_Response', $bytes);
    }
}

/** @brief Own all 0 original mycobot_pro450_interfaces/srv/GetCoords_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvGetCoords_Request',
        'type' => 'mycobot_pro450_interfaces/srv/GetCoords_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/GetCoords_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvGetCoords_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvGetCoords_Request', $bytes);
    }
}

/** @brief Own all 6 original mycobot_pro450_interfaces/srv/GetCoords_Response fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvGetCoords_Response',
        'type' => 'mycobot_pro450_interfaces/srv/GetCoords_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/GetCoords_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvGetCoords_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvGetCoords_Response', $bytes);
    }
}

/** @brief Own all 0 original mycobot_pro450_interfaces/srv/GetGripperValue_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request',
        'type' => 'mycobot_pro450_interfaces/srv/GetGripperValue_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/GetGripperValue_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request', $bytes);
    }
}

/** @brief Own all 1 original mycobot_pro450_interfaces/srv/GetGripperValue_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response',
        'type' => 'mycobot_pro450_interfaces/srv/GetGripperValue_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/GetGripperValue_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'gripper_angle',
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

        ]
    ];
    /** @brief Original gripper_angle field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $gripper_angle;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('gripper_angle', $values))
            $this->gripper_angle = $values['gripper_angle'];
        else
        {
            $this->gripper_angle = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response', $bytes);
    }
}

/** @brief Own all 1 original mycobot_pro450_interfaces/srv/GripperStatus_Request fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request',
        'type' => 'mycobot_pro450_interfaces/srv/GripperStatus_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/GripperStatus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request', $bytes);
    }
}

/** @brief Own all 1 original mycobot_pro450_interfaces/srv/GripperStatus_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response',
        'type' => 'mycobot_pro450_interfaces/srv/GripperStatus_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/GripperStatus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response', $bytes);
    }
}

/** @brief Own all 7 original mycobot_pro450_interfaces/srv/SetAngles_Request fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvSetAngles_Request',
        'type' => 'mycobot_pro450_interfaces/srv/SetAngles_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/SetAngles_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
                'name' => 'joint_5',
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
                'name' => 'joint_6',
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
        'constants' => [

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original joint_5 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_5;
    /** @brief Original joint_6 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_6;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('joint_5', $values))
            $this->joint_5 = $values['joint_5'];
        else
        {
            $this->joint_5 = 0.0;
        }
        if (array_key_exists('joint_6', $values))
            $this->joint_6 = $values['joint_6'];
        else
        {
            $this->joint_6 = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvSetAngles_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvSetAngles_Request', $bytes);
    }
}

/** @brief Own all 1 original mycobot_pro450_interfaces/srv/SetAngles_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvSetAngles_Response',
        'type' => 'mycobot_pro450_interfaces/srv/SetAngles_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/SetAngles_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvSetAngles_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvSetAngles_Response', $bytes);
    }
}

/** @brief Own all 7 original mycobot_pro450_interfaces/srv/SetCoords_Request fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvSetCoords_Request',
        'type' => 'mycobot_pro450_interfaces/srv/SetCoords_Request',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/SetCoords_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
        'constants' => [

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvSetCoords_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvSetCoords_Request', $bytes);
    }
}

/** @brief Own all 1 original mycobot_pro450_interfaces/srv/SetCoords_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mycobot_pro450_interfacesSrvSetCoords_Response',
        'type' => 'mycobot_pro450_interfaces/srv/SetCoords_Response',
        'ros_version' => 2,
        'native_type' => 'mycobot_pro450_interfaces/srv/SetCoords_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mycobot_pro450_interfacesSrvSetCoords_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mycobot_pro450_interfacesSrvSetCoords_Response', $bytes);
    }
}

/** @brief Own all 4 original mypalletizer_interfaces/msg/MypalAngles fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesMsgMypalAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesMsgMypalAngles',
        'type' => 'mypalletizer_interfaces/msg/MypalAngles',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/msg/MypalAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesMsgMypalAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesMsgMypalAngles', $bytes);
    }
}

/** @brief Own all 4 original mypalletizer_interfaces/msg/MypalCoords fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesMsgMypalCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesMsgMypalCoords',
        'type' => 'mypalletizer_interfaces/msg/MypalCoords',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/msg/MypalCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesMsgMypalCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesMsgMypalCoords', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_interfaces/msg/MypalGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesMsgMypalGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesMsgMypalGripperStatus',
        'type' => 'mypalletizer_interfaces/msg/MypalGripperStatus',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/msg/MypalGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesMsgMypalGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesMsgMypalGripperStatus', $bytes);
    }
}

/** @brief Own all 3 original mypalletizer_interfaces/msg/MypalPumpStatus fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesMsgMypalPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesMsgMypalPumpStatus',
        'type' => 'mypalletizer_interfaces/msg/MypalPumpStatus',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/msg/MypalPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
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
                'name' => 'pin1',
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
                'name' => 'pin2',
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

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Original pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin1;
    /** @brief Original pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
        if (array_key_exists('pin1', $values))
            $this->pin1 = $values['pin1'];
        else
        {
            $this->pin1 = 0;
        }
        if (array_key_exists('pin2', $values))
            $this->pin2 = $values['pin2'];
        else
        {
            $this->pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesMsgMypalPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesMsgMypalPumpStatus', $bytes);
    }
}

/** @brief Own all 5 original mypalletizer_interfaces/msg/MypalSetAngles fields.
 * @details 17..17 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesMsgMypalSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesMsgMypalSetAngles',
        'type' => 'mypalletizer_interfaces/msg/MypalSetAngles',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/msg/MypalSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5',
        'minimum' => 17,
        'maximum' => 17,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
        'constants' => [

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesMsgMypalSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesMsgMypalSetAngles', $bytes);
    }
}

/** @brief Own all 5 original mypalletizer_interfaces/msg/MypalSetCoords fields.
 * @details 17..17 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesMsgMypalSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesMsgMypalSetCoords',
        'type' => 'mypalletizer_interfaces/msg/MypalSetCoords',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/msg/MypalSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79',
        'minimum' => 17,
        'maximum' => 17,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
        'constants' => [

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesMsgMypalSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesMsgMypalSetCoords', $bytes);
    }
}

/** @brief Own all 0 original mypalletizer_interfaces/srv/GetAngles_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvGetAngles_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvGetAngles_Request',
        'type' => 'mypalletizer_interfaces/srv/GetAngles_Request',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/GetAngles_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvGetAngles_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvGetAngles_Request', $bytes);
    }
}

/** @brief Own all 4 original mypalletizer_interfaces/srv/GetAngles_Response fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvGetAngles_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvGetAngles_Response',
        'type' => 'mypalletizer_interfaces/srv/GetAngles_Response',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/GetAngles_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvGetAngles_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvGetAngles_Response', $bytes);
    }
}

/** @brief Own all 0 original mypalletizer_interfaces/srv/GetCoords_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvGetCoords_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvGetCoords_Request',
        'type' => 'mypalletizer_interfaces/srv/GetCoords_Request',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/GetCoords_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvGetCoords_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvGetCoords_Request', $bytes);
    }
}

/** @brief Own all 4 original mypalletizer_interfaces/srv/GetCoords_Response fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvGetCoords_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvGetCoords_Response',
        'type' => 'mypalletizer_interfaces/srv/GetCoords_Response',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/GetCoords_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvGetCoords_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvGetCoords_Response', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_interfaces/srv/GripperStatus_Request fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvGripperStatus_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvGripperStatus_Request',
        'type' => 'mypalletizer_interfaces/srv/GripperStatus_Request',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/GripperStatus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvGripperStatus_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvGripperStatus_Request', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_interfaces/srv/GripperStatus_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvGripperStatus_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvGripperStatus_Response',
        'type' => 'mypalletizer_interfaces/srv/GripperStatus_Response',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/GripperStatus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvGripperStatus_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvGripperStatus_Response', $bytes);
    }
}

/** @brief Own all 3 original mypalletizer_interfaces/srv/PumpStatus_Request fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvPumpStatus_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvPumpStatus_Request',
        'type' => 'mypalletizer_interfaces/srv/PumpStatus_Request',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/PumpStatus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
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
                'name' => 'pin1',
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
                'name' => 'pin2',
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

        ]
    ];
    /** @brief Original status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Original pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin1;
    /** @brief Original pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = false;
        }
        if (array_key_exists('pin1', $values))
            $this->pin1 = $values['pin1'];
        else
        {
            $this->pin1 = 0;
        }
        if (array_key_exists('pin2', $values))
            $this->pin2 = $values['pin2'];
        else
        {
            $this->pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvPumpStatus_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvPumpStatus_Request', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_interfaces/srv/PumpStatus_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvPumpStatus_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvPumpStatus_Response',
        'type' => 'mypalletizer_interfaces/srv/PumpStatus_Response',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/PumpStatus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvPumpStatus_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvPumpStatus_Response', $bytes);
    }
}

/** @brief Own all 5 original mypalletizer_interfaces/srv/SetAngles_Request fields.
 * @details 17..17 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvSetAngles_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvSetAngles_Request',
        'type' => 'mypalletizer_interfaces/srv/SetAngles_Request',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/SetAngles_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec',
        'minimum' => 17,
        'maximum' => 17,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_1',
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
                'name' => 'joint_2',
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
                'name' => 'joint_3',
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
                'name' => 'joint_4',
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
        'constants' => [

        ]
    ];
    /** @brief Original joint_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_1;
    /** @brief Original joint_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_2;
    /** @brief Original joint_3 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_3;
    /** @brief Original joint_4 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_4;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_1', $values))
            $this->joint_1 = $values['joint_1'];
        else
        {
            $this->joint_1 = 0.0;
        }
        if (array_key_exists('joint_2', $values))
            $this->joint_2 = $values['joint_2'];
        else
        {
            $this->joint_2 = 0.0;
        }
        if (array_key_exists('joint_3', $values))
            $this->joint_3 = $values['joint_3'];
        else
        {
            $this->joint_3 = 0.0;
        }
        if (array_key_exists('joint_4', $values))
            $this->joint_4 = $values['joint_4'];
        else
        {
            $this->joint_4 = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvSetAngles_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvSetAngles_Request', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_interfaces/srv/SetAngles_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvSetAngles_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvSetAngles_Response',
        'type' => 'mypalletizer_interfaces/srv/SetAngles_Response',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/SetAngles_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvSetAngles_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvSetAngles_Response', $bytes);
    }
}

/** @brief Own all 5 original mypalletizer_interfaces/srv/SetCoords_Request fields.
 * @details 17..17 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvSetCoords_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvSetCoords_Request',
        'type' => 'mypalletizer_interfaces/srv/SetCoords_Request',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/SetCoords_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541',
        'minimum' => 17,
        'maximum' => 17,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
        'constants' => [

        ]
    ];
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original speed field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvSetCoords_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvSetCoords_Request', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_interfaces/srv/SetCoords_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Mypalletizer_interfacesSrvSetCoords_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Mypalletizer_interfacesSrvSetCoords_Response',
        'type' => 'mypalletizer_interfaces/srv/SetCoords_Response',
        'ros_version' => 2,
        'native_type' => 'mypalletizer_interfaces/srv/SetCoords_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'flag',
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
        'constants' => [

        ]
    ];
    /** @brief Original flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Mypalletizer_interfacesSrvSetCoords_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Mypalletizer_interfacesSrvSetCoords_Response', $bytes);
    }
}

/** @brief Resolve complete local codecs; never a native type registry or permission. */
final class Catalog
{
    /** @return Wire Shared pure full-record codec registry. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) $wire = new Wire([
            'Ros2Mecharm_interfacesMsgMecharmAngles' => Ros2Mecharm_interfacesMsgMecharmAngles::SCHEMA + ['class' => Ros2Mecharm_interfacesMsgMecharmAngles::class],
            'Ros2Mecharm_interfacesMsgMecharmCoords' => Ros2Mecharm_interfacesMsgMecharmCoords::SCHEMA + ['class' => Ros2Mecharm_interfacesMsgMecharmCoords::class],
            'Ros2Mecharm_interfacesMsgMecharmGripperStatus' => Ros2Mecharm_interfacesMsgMecharmGripperStatus::SCHEMA + ['class' => Ros2Mecharm_interfacesMsgMecharmGripperStatus::class],
            'Ros2Mecharm_interfacesMsgMecharmPumpStatus' => Ros2Mecharm_interfacesMsgMecharmPumpStatus::SCHEMA + ['class' => Ros2Mecharm_interfacesMsgMecharmPumpStatus::class],
            'Ros2Mecharm_interfacesMsgMecharmSetAngles' => Ros2Mecharm_interfacesMsgMecharmSetAngles::SCHEMA + ['class' => Ros2Mecharm_interfacesMsgMecharmSetAngles::class],
            'Ros2Mecharm_interfacesMsgMecharmSetCoords' => Ros2Mecharm_interfacesMsgMecharmSetCoords::SCHEMA + ['class' => Ros2Mecharm_interfacesMsgMecharmSetCoords::class],
            'Ros2Mecharm_interfacesSrvGetAngles_Request' => Ros2Mecharm_interfacesSrvGetAngles_Request::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvGetAngles_Request::class],
            'Ros2Mecharm_interfacesSrvGetAngles_Response' => Ros2Mecharm_interfacesSrvGetAngles_Response::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvGetAngles_Response::class],
            'Ros2Mecharm_interfacesSrvGetCoords_Request' => Ros2Mecharm_interfacesSrvGetCoords_Request::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvGetCoords_Request::class],
            'Ros2Mecharm_interfacesSrvGetCoords_Response' => Ros2Mecharm_interfacesSrvGetCoords_Response::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvGetCoords_Response::class],
            'Ros2Mecharm_interfacesSrvGripperStatus_Request' => Ros2Mecharm_interfacesSrvGripperStatus_Request::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvGripperStatus_Request::class],
            'Ros2Mecharm_interfacesSrvGripperStatus_Response' => Ros2Mecharm_interfacesSrvGripperStatus_Response::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvGripperStatus_Response::class],
            'Ros2Mecharm_interfacesSrvPumpStatus_Request' => Ros2Mecharm_interfacesSrvPumpStatus_Request::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvPumpStatus_Request::class],
            'Ros2Mecharm_interfacesSrvPumpStatus_Response' => Ros2Mecharm_interfacesSrvPumpStatus_Response::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvPumpStatus_Response::class],
            'Ros2Mecharm_interfacesSrvSetAngles_Request' => Ros2Mecharm_interfacesSrvSetAngles_Request::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvSetAngles_Request::class],
            'Ros2Mecharm_interfacesSrvSetAngles_Response' => Ros2Mecharm_interfacesSrvSetAngles_Response::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvSetAngles_Response::class],
            'Ros2Mecharm_interfacesSrvSetCoords_Request' => Ros2Mecharm_interfacesSrvSetCoords_Request::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvSetCoords_Request::class],
            'Ros2Mecharm_interfacesSrvSetCoords_Response' => Ros2Mecharm_interfacesSrvSetCoords_Response::SCHEMA + ['class' => Ros2Mecharm_interfacesSrvSetCoords_Response::class],
            'Ros2Mycobot_interfacesMsgMycobotAngles' => Ros2Mycobot_interfacesMsgMycobotAngles::SCHEMA + ['class' => Ros2Mycobot_interfacesMsgMycobotAngles::class],
            'Ros2Mycobot_interfacesMsgMycobotCoords' => Ros2Mycobot_interfacesMsgMycobotCoords::SCHEMA + ['class' => Ros2Mycobot_interfacesMsgMycobotCoords::class],
            'Ros2Mycobot_interfacesMsgMycobotGripperStatus' => Ros2Mycobot_interfacesMsgMycobotGripperStatus::SCHEMA + ['class' => Ros2Mycobot_interfacesMsgMycobotGripperStatus::class],
            'Ros2Mycobot_interfacesMsgMycobotPumpStatus' => Ros2Mycobot_interfacesMsgMycobotPumpStatus::SCHEMA + ['class' => Ros2Mycobot_interfacesMsgMycobotPumpStatus::class],
            'Ros2Mycobot_interfacesMsgMycobotSetAngles' => Ros2Mycobot_interfacesMsgMycobotSetAngles::SCHEMA + ['class' => Ros2Mycobot_interfacesMsgMycobotSetAngles::class],
            'Ros2Mycobot_interfacesMsgMycobotSetCoords' => Ros2Mycobot_interfacesMsgMycobotSetCoords::SCHEMA + ['class' => Ros2Mycobot_interfacesMsgMycobotSetCoords::class],
            'Ros2Mycobot_interfacesSrvGetAngles_Request' => Ros2Mycobot_interfacesSrvGetAngles_Request::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvGetAngles_Request::class],
            'Ros2Mycobot_interfacesSrvGetAngles_Response' => Ros2Mycobot_interfacesSrvGetAngles_Response::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvGetAngles_Response::class],
            'Ros2Mycobot_interfacesSrvGetCoords_Request' => Ros2Mycobot_interfacesSrvGetCoords_Request::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvGetCoords_Request::class],
            'Ros2Mycobot_interfacesSrvGetCoords_Response' => Ros2Mycobot_interfacesSrvGetCoords_Response::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvGetCoords_Response::class],
            'Ros2Mycobot_interfacesSrvGripperStatus_Request' => Ros2Mycobot_interfacesSrvGripperStatus_Request::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvGripperStatus_Request::class],
            'Ros2Mycobot_interfacesSrvGripperStatus_Response' => Ros2Mycobot_interfacesSrvGripperStatus_Response::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvGripperStatus_Response::class],
            'Ros2Mycobot_interfacesSrvPumpStatus_Request' => Ros2Mycobot_interfacesSrvPumpStatus_Request::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvPumpStatus_Request::class],
            'Ros2Mycobot_interfacesSrvPumpStatus_Response' => Ros2Mycobot_interfacesSrvPumpStatus_Response::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvPumpStatus_Response::class],
            'Ros2Mycobot_interfacesSrvSetAngles_Request' => Ros2Mycobot_interfacesSrvSetAngles_Request::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvSetAngles_Request::class],
            'Ros2Mycobot_interfacesSrvSetAngles_Response' => Ros2Mycobot_interfacesSrvSetAngles_Response::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvSetAngles_Response::class],
            'Ros2Mycobot_interfacesSrvSetCoords_Request' => Ros2Mycobot_interfacesSrvSetCoords_Request::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvSetCoords_Request::class],
            'Ros2Mycobot_interfacesSrvSetCoords_Response' => Ros2Mycobot_interfacesSrvSetCoords_Response::SCHEMA + ['class' => Ros2Mycobot_interfacesSrvSetCoords_Response::class],
            'Ros2Mycobot_pro450_interfacesMsgMycobotAngles' => Ros2Mycobot_pro450_interfacesMsgMycobotAngles::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesMsgMycobotAngles::class],
            'Ros2Mycobot_pro450_interfacesMsgMycobotCoords' => Ros2Mycobot_pro450_interfacesMsgMycobotCoords::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesMsgMycobotCoords::class],
            'Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus' => Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus::class],
            'Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles' => Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles::class],
            'Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords' => Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords::class],
            'Ros2Mycobot_pro450_interfacesSrvGetAngles_Request' => Ros2Mycobot_pro450_interfacesSrvGetAngles_Request::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvGetAngles_Request::class],
            'Ros2Mycobot_pro450_interfacesSrvGetAngles_Response' => Ros2Mycobot_pro450_interfacesSrvGetAngles_Response::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvGetAngles_Response::class],
            'Ros2Mycobot_pro450_interfacesSrvGetCoords_Request' => Ros2Mycobot_pro450_interfacesSrvGetCoords_Request::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvGetCoords_Request::class],
            'Ros2Mycobot_pro450_interfacesSrvGetCoords_Response' => Ros2Mycobot_pro450_interfacesSrvGetCoords_Response::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvGetCoords_Response::class],
            'Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request' => Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request::class],
            'Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response' => Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response::class],
            'Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request' => Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request::class],
            'Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response' => Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response::class],
            'Ros2Mycobot_pro450_interfacesSrvSetAngles_Request' => Ros2Mycobot_pro450_interfacesSrvSetAngles_Request::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvSetAngles_Request::class],
            'Ros2Mycobot_pro450_interfacesSrvSetAngles_Response' => Ros2Mycobot_pro450_interfacesSrvSetAngles_Response::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvSetAngles_Response::class],
            'Ros2Mycobot_pro450_interfacesSrvSetCoords_Request' => Ros2Mycobot_pro450_interfacesSrvSetCoords_Request::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvSetCoords_Request::class],
            'Ros2Mycobot_pro450_interfacesSrvSetCoords_Response' => Ros2Mycobot_pro450_interfacesSrvSetCoords_Response::SCHEMA + ['class' => Ros2Mycobot_pro450_interfacesSrvSetCoords_Response::class],
            'Ros2Mypalletizer_interfacesMsgMypalAngles' => Ros2Mypalletizer_interfacesMsgMypalAngles::SCHEMA + ['class' => Ros2Mypalletizer_interfacesMsgMypalAngles::class],
            'Ros2Mypalletizer_interfacesMsgMypalCoords' => Ros2Mypalletizer_interfacesMsgMypalCoords::SCHEMA + ['class' => Ros2Mypalletizer_interfacesMsgMypalCoords::class],
            'Ros2Mypalletizer_interfacesMsgMypalGripperStatus' => Ros2Mypalletizer_interfacesMsgMypalGripperStatus::SCHEMA + ['class' => Ros2Mypalletizer_interfacesMsgMypalGripperStatus::class],
            'Ros2Mypalletizer_interfacesMsgMypalPumpStatus' => Ros2Mypalletizer_interfacesMsgMypalPumpStatus::SCHEMA + ['class' => Ros2Mypalletizer_interfacesMsgMypalPumpStatus::class],
            'Ros2Mypalletizer_interfacesMsgMypalSetAngles' => Ros2Mypalletizer_interfacesMsgMypalSetAngles::SCHEMA + ['class' => Ros2Mypalletizer_interfacesMsgMypalSetAngles::class],
            'Ros2Mypalletizer_interfacesMsgMypalSetCoords' => Ros2Mypalletizer_interfacesMsgMypalSetCoords::SCHEMA + ['class' => Ros2Mypalletizer_interfacesMsgMypalSetCoords::class],
            'Ros2Mypalletizer_interfacesSrvGetAngles_Request' => Ros2Mypalletizer_interfacesSrvGetAngles_Request::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvGetAngles_Request::class],
            'Ros2Mypalletizer_interfacesSrvGetAngles_Response' => Ros2Mypalletizer_interfacesSrvGetAngles_Response::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvGetAngles_Response::class],
            'Ros2Mypalletizer_interfacesSrvGetCoords_Request' => Ros2Mypalletizer_interfacesSrvGetCoords_Request::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvGetCoords_Request::class],
            'Ros2Mypalletizer_interfacesSrvGetCoords_Response' => Ros2Mypalletizer_interfacesSrvGetCoords_Response::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvGetCoords_Response::class],
            'Ros2Mypalletizer_interfacesSrvGripperStatus_Request' => Ros2Mypalletizer_interfacesSrvGripperStatus_Request::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvGripperStatus_Request::class],
            'Ros2Mypalletizer_interfacesSrvGripperStatus_Response' => Ros2Mypalletizer_interfacesSrvGripperStatus_Response::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvGripperStatus_Response::class],
            'Ros2Mypalletizer_interfacesSrvPumpStatus_Request' => Ros2Mypalletizer_interfacesSrvPumpStatus_Request::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvPumpStatus_Request::class],
            'Ros2Mypalletizer_interfacesSrvPumpStatus_Response' => Ros2Mypalletizer_interfacesSrvPumpStatus_Response::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvPumpStatus_Response::class],
            'Ros2Mypalletizer_interfacesSrvSetAngles_Request' => Ros2Mypalletizer_interfacesSrvSetAngles_Request::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvSetAngles_Request::class],
            'Ros2Mypalletizer_interfacesSrvSetAngles_Response' => Ros2Mypalletizer_interfacesSrvSetAngles_Response::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvSetAngles_Response::class],
            'Ros2Mypalletizer_interfacesSrvSetCoords_Request' => Ros2Mypalletizer_interfacesSrvSetCoords_Request::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvSetCoords_Request::class],
            'Ros2Mypalletizer_interfacesSrvSetCoords_Response' => Ros2Mypalletizer_interfacesSrvSetCoords_Response::SCHEMA + ['class' => Ros2Mypalletizer_interfacesSrvSetCoords_Response::class],
        ]);
        return $wire;
    }
}
