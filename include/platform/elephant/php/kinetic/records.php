<?php
declare(strict_types=1);
namespace Uwvm\Elephant\kinetic;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own all 6 original mycobot_communication/MycobotAngles fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationMycobotAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationMycobotAngles',
        'type' => 'mycobot_communication/MycobotAngles',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/MycobotAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationMycobotAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationMycobotAngles', $bytes);
    }
}

/** @brief Own all 6 original mycobot_communication/MycobotCoords fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationMycobotCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationMycobotCoords',
        'type' => 'mycobot_communication/MycobotCoords',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/MycobotCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationMycobotCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationMycobotCoords', $bytes);
    }
}

/** @brief Own all 1 original mycobot_communication/MycobotGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationMycobotGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationMycobotGripperStatus',
        'type' => 'mycobot_communication/MycobotGripperStatus',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/MycobotGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Status',
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
    /** @brief Original Status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Status', $values))
            $this->Status = $values['Status'];
        else
        {
            $this->Status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mycobot_communicationMycobotGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationMycobotGripperStatus', $bytes);
    }
}

/** @brief Own all 3 original mycobot_communication/MycobotPumpStatus fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationMycobotPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationMycobotPumpStatus',
        'type' => 'mycobot_communication/MycobotPumpStatus',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/MycobotPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Status',
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
                'name' => 'Pin1',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'Pin2',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original Status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Status;
    /** @brief Original Pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pin1;
    /** @brief Original Pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Status', $values))
            $this->Status = $values['Status'];
        else
        {
            $this->Status = false;
        }
        if (array_key_exists('Pin1', $values))
            $this->Pin1 = $values['Pin1'];
        else
        {
            $this->Pin1 = 0;
        }
        if (array_key_exists('Pin2', $values))
            $this->Pin2 = $values['Pin2'];
        else
        {
            $this->Pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mycobot_communicationMycobotPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationMycobotPumpStatus', $bytes);
    }
}

/** @brief Own all 7 original mycobot_communication/MycobotSetAngles fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationMycobotSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationMycobotSetAngles',
        'type' => 'mycobot_communication/MycobotSetAngles',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/MycobotSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationMycobotSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationMycobotSetAngles', $bytes);
    }
}

/** @brief Own all 8 original mycobot_communication/MycobotSetCoords fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationMycobotSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationMycobotSetCoords',
        'type' => 'mycobot_communication/MycobotSetCoords',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/MycobotSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationMycobotSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationMycobotSetCoords', $bytes);
    }
}

/** @brief Own all 0 original mycobot_communication/GetAnglesRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationGetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationGetAnglesRequest',
        'type' => 'mycobot_communication/GetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/GetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationGetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationGetAnglesRequest', $bytes);
    }
}

/** @brief Own all 6 original mycobot_communication/GetAnglesResponse fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationGetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationGetAnglesResponse',
        'type' => 'mycobot_communication/GetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/GetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationGetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationGetAnglesResponse', $bytes);
    }
}

/** @brief Own all 0 original mycobot_communication/GetCoordsRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationGetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationGetCoordsRequest',
        'type' => 'mycobot_communication/GetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/GetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationGetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationGetCoordsRequest', $bytes);
    }
}

/** @brief Own all 6 original mycobot_communication/GetCoordsResponse fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationGetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationGetCoordsResponse',
        'type' => 'mycobot_communication/GetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/GetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationGetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationGetCoordsResponse', $bytes);
    }
}

/** @brief Own all 1 original mycobot_communication/GripperStatusRequest fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationGripperStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationGripperStatusRequest',
        'type' => 'mycobot_communication/GripperStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/GripperStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Status',
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
    /** @brief Original Status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Status', $values))
            $this->Status = $values['Status'];
        else
        {
            $this->Status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mycobot_communicationGripperStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationGripperStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mycobot_communication/GripperStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationGripperStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationGripperStatusResponse',
        'type' => 'mycobot_communication/GripperStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/GripperStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Flag',
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
    /** @brief Original Flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Flag', $values))
            $this->Flag = $values['Flag'];
        else
        {
            $this->Flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mycobot_communicationGripperStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationGripperStatusResponse', $bytes);
    }
}

/** @brief Own all 3 original mycobot_communication/PumpStatusRequest fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationPumpStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationPumpStatusRequest',
        'type' => 'mycobot_communication/PumpStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/PumpStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Status',
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
                'name' => 'Pin1',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'Pin2',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original Status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Status;
    /** @brief Original Pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pin1;
    /** @brief Original Pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Status', $values))
            $this->Status = $values['Status'];
        else
        {
            $this->Status = false;
        }
        if (array_key_exists('Pin1', $values))
            $this->Pin1 = $values['Pin1'];
        else
        {
            $this->Pin1 = 0;
        }
        if (array_key_exists('Pin2', $values))
            $this->Pin2 = $values['Pin2'];
        else
        {
            $this->Pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mycobot_communicationPumpStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationPumpStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mycobot_communication/PumpStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationPumpStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationPumpStatusResponse',
        'type' => 'mycobot_communication/PumpStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/PumpStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Flag',
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
    /** @brief Original Flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Flag', $values))
            $this->Flag = $values['Flag'];
        else
        {
            $this->Flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mycobot_communicationPumpStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationPumpStatusResponse', $bytes);
    }
}

/** @brief Own all 7 original mycobot_communication/SetAnglesRequest fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationSetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationSetAnglesRequest',
        'type' => 'mycobot_communication/SetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/SetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationSetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationSetAnglesRequest', $bytes);
    }
}

/** @brief Own all 1 original mycobot_communication/SetAnglesResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationSetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationSetAnglesResponse',
        'type' => 'mycobot_communication/SetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/SetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Flag',
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
    /** @brief Original Flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Flag', $values))
            $this->Flag = $values['Flag'];
        else
        {
            $this->Flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mycobot_communicationSetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationSetAnglesResponse', $bytes);
    }
}

/** @brief Own all 8 original mycobot_communication/SetCoordsRequest fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationSetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationSetCoordsRequest',
        'type' => 'mycobot_communication/SetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/SetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a',
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
        return Catalog::wire()->encode('Ros1Mycobot_communicationSetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationSetCoordsRequest', $bytes);
    }
}

/** @brief Own all 1 original mycobot_communication/SetCoordsResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_communicationSetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_communicationSetCoordsResponse',
        'type' => 'mycobot_communication/SetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_communication/SetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Flag',
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
    /** @brief Original Flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Flag', $values))
            $this->Flag = $values['Flag'];
        else
        {
            $this->Flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mycobot_communicationSetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_communicationSetCoordsResponse', $bytes);
    }
}

/** @brief Own all 4 original mypalletizer_communication/MypalAngles fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationMypalAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationMypalAngles',
        'type' => 'mypalletizer_communication/MypalAngles',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/MypalAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9',
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationMypalAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationMypalAngles', $bytes);
    }
}

/** @brief Own all 4 original mypalletizer_communication/MypalCoords fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationMypalCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationMypalCoords',
        'type' => 'mypalletizer_communication/MypalCoords',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/MypalCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80',
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationMypalCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationMypalCoords', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_communication/MypalGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationMypalGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationMypalGripperStatus',
        'type' => 'mypalletizer_communication/MypalGripperStatus',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/MypalGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Status',
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
    /** @brief Original Status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Status', $values))
            $this->Status = $values['Status'];
        else
        {
            $this->Status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationMypalGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationMypalGripperStatus', $bytes);
    }
}

/** @brief Own all 3 original mypalletizer_communication/MypalPumpStatus fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationMypalPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationMypalPumpStatus',
        'type' => 'mypalletizer_communication/MypalPumpStatus',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/MypalPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Status',
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
                'name' => 'Pin1',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'Pin2',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original Status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Status;
    /** @brief Original Pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pin1;
    /** @brief Original Pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Status', $values))
            $this->Status = $values['Status'];
        else
        {
            $this->Status = false;
        }
        if (array_key_exists('Pin1', $values))
            $this->Pin1 = $values['Pin1'];
        else
        {
            $this->Pin1 = 0;
        }
        if (array_key_exists('Pin2', $values))
            $this->Pin2 = $values['Pin2'];
        else
        {
            $this->Pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationMypalPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationMypalPumpStatus', $bytes);
    }
}

/** @brief Own all 5 original mypalletizer_communication/MypalSetAngles fields.
 * @details 17..17 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationMypalSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationMypalSetAngles',
        'type' => 'mypalletizer_communication/MypalSetAngles',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/MypalSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98',
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationMypalSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationMypalSetAngles', $bytes);
    }
}

/** @brief Own all 6 original mypalletizer_communication/MypalSetCoords fields.
 * @details 18..18 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationMypalSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationMypalSetCoords',
        'type' => 'mypalletizer_communication/MypalSetCoords',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/MypalSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448',
        'minimum' => 18,
        'maximum' => 18,
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationMypalSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationMypalSetCoords', $bytes);
    }
}

/** @brief Own all 0 original mypalletizer_communication/GetAnglesRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationGetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationGetAnglesRequest',
        'type' => 'mypalletizer_communication/GetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/GetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8',
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationGetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationGetAnglesRequest', $bytes);
    }
}

/** @brief Own all 4 original mypalletizer_communication/GetAnglesResponse fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationGetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationGetAnglesResponse',
        'type' => 'mypalletizer_communication/GetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/GetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745',
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationGetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationGetAnglesResponse', $bytes);
    }
}

/** @brief Own all 0 original mypalletizer_communication/GetCoordsRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationGetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationGetCoordsRequest',
        'type' => 'mypalletizer_communication/GetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/GetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8',
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationGetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationGetCoordsRequest', $bytes);
    }
}

/** @brief Own all 4 original mypalletizer_communication/GetCoordsResponse fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationGetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationGetCoordsResponse',
        'type' => 'mypalletizer_communication/GetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/GetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb',
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationGetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationGetCoordsResponse', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_communication/GripperStatusRequest fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationGripperStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationGripperStatusRequest',
        'type' => 'mypalletizer_communication/GripperStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/GripperStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Status',
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
    /** @brief Original Status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Status', $values))
            $this->Status = $values['Status'];
        else
        {
            $this->Status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationGripperStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationGripperStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_communication/GripperStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationGripperStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationGripperStatusResponse',
        'type' => 'mypalletizer_communication/GripperStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/GripperStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Flag',
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
    /** @brief Original Flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Flag', $values))
            $this->Flag = $values['Flag'];
        else
        {
            $this->Flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationGripperStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationGripperStatusResponse', $bytes);
    }
}

/** @brief Own all 3 original mypalletizer_communication/PumpStatusRequest fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationPumpStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationPumpStatusRequest',
        'type' => 'mypalletizer_communication/PumpStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/PumpStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Status',
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
                'name' => 'Pin1',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'Pin2',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original Status field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Status;
    /** @brief Original Pin1 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pin1;
    /** @brief Original Pin2 field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pin2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Status', $values))
            $this->Status = $values['Status'];
        else
        {
            $this->Status = false;
        }
        if (array_key_exists('Pin1', $values))
            $this->Pin1 = $values['Pin1'];
        else
        {
            $this->Pin1 = 0;
        }
        if (array_key_exists('Pin2', $values))
            $this->Pin2 = $values['Pin2'];
        else
        {
            $this->Pin2 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationPumpStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationPumpStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_communication/PumpStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationPumpStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationPumpStatusResponse',
        'type' => 'mypalletizer_communication/PumpStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/PumpStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Flag',
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
    /** @brief Original Flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Flag', $values))
            $this->Flag = $values['Flag'];
        else
        {
            $this->Flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationPumpStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationPumpStatusResponse', $bytes);
    }
}

/** @brief Own all 5 original mypalletizer_communication/SetAnglesRequest fields.
 * @details 17..17 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationSetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationSetAnglesRequest',
        'type' => 'mypalletizer_communication/SetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/SetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d',
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationSetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationSetAnglesRequest', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_communication/SetAnglesResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationSetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationSetAnglesResponse',
        'type' => 'mypalletizer_communication/SetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/SetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Flag',
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
    /** @brief Original Flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Flag', $values))
            $this->Flag = $values['Flag'];
        else
        {
            $this->Flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationSetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationSetAnglesResponse', $bytes);
    }
}

/** @brief Own all 6 original mypalletizer_communication/SetCoordsRequest fields.
 * @details 18..18 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationSetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationSetCoordsRequest',
        'type' => 'mypalletizer_communication/SetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/SetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1',
        'minimum' => 18,
        'maximum' => 18,
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
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationSetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationSetCoordsRequest', $bytes);
    }
}

/** @brief Own all 1 original mypalletizer_communication/SetCoordsResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mypalletizer_communicationSetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mypalletizer_communicationSetCoordsResponse',
        'type' => 'mypalletizer_communication/SetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mypalletizer_communication/SetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Flag',
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
    /** @brief Original Flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Flag', $values))
            $this->Flag = $values['Flag'];
        else
        {
            $this->Flag = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mypalletizer_communicationSetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mypalletizer_communicationSetCoordsResponse', $bytes);
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
            'Ros1Mycobot_communicationMycobotAngles' => Ros1Mycobot_communicationMycobotAngles::SCHEMA + ['class' => Ros1Mycobot_communicationMycobotAngles::class],
            'Ros1Mycobot_communicationMycobotCoords' => Ros1Mycobot_communicationMycobotCoords::SCHEMA + ['class' => Ros1Mycobot_communicationMycobotCoords::class],
            'Ros1Mycobot_communicationMycobotGripperStatus' => Ros1Mycobot_communicationMycobotGripperStatus::SCHEMA + ['class' => Ros1Mycobot_communicationMycobotGripperStatus::class],
            'Ros1Mycobot_communicationMycobotPumpStatus' => Ros1Mycobot_communicationMycobotPumpStatus::SCHEMA + ['class' => Ros1Mycobot_communicationMycobotPumpStatus::class],
            'Ros1Mycobot_communicationMycobotSetAngles' => Ros1Mycobot_communicationMycobotSetAngles::SCHEMA + ['class' => Ros1Mycobot_communicationMycobotSetAngles::class],
            'Ros1Mycobot_communicationMycobotSetCoords' => Ros1Mycobot_communicationMycobotSetCoords::SCHEMA + ['class' => Ros1Mycobot_communicationMycobotSetCoords::class],
            'Ros1Mycobot_communicationGetAnglesRequest' => Ros1Mycobot_communicationGetAnglesRequest::SCHEMA + ['class' => Ros1Mycobot_communicationGetAnglesRequest::class],
            'Ros1Mycobot_communicationGetAnglesResponse' => Ros1Mycobot_communicationGetAnglesResponse::SCHEMA + ['class' => Ros1Mycobot_communicationGetAnglesResponse::class],
            'Ros1Mycobot_communicationGetCoordsRequest' => Ros1Mycobot_communicationGetCoordsRequest::SCHEMA + ['class' => Ros1Mycobot_communicationGetCoordsRequest::class],
            'Ros1Mycobot_communicationGetCoordsResponse' => Ros1Mycobot_communicationGetCoordsResponse::SCHEMA + ['class' => Ros1Mycobot_communicationGetCoordsResponse::class],
            'Ros1Mycobot_communicationGripperStatusRequest' => Ros1Mycobot_communicationGripperStatusRequest::SCHEMA + ['class' => Ros1Mycobot_communicationGripperStatusRequest::class],
            'Ros1Mycobot_communicationGripperStatusResponse' => Ros1Mycobot_communicationGripperStatusResponse::SCHEMA + ['class' => Ros1Mycobot_communicationGripperStatusResponse::class],
            'Ros1Mycobot_communicationPumpStatusRequest' => Ros1Mycobot_communicationPumpStatusRequest::SCHEMA + ['class' => Ros1Mycobot_communicationPumpStatusRequest::class],
            'Ros1Mycobot_communicationPumpStatusResponse' => Ros1Mycobot_communicationPumpStatusResponse::SCHEMA + ['class' => Ros1Mycobot_communicationPumpStatusResponse::class],
            'Ros1Mycobot_communicationSetAnglesRequest' => Ros1Mycobot_communicationSetAnglesRequest::SCHEMA + ['class' => Ros1Mycobot_communicationSetAnglesRequest::class],
            'Ros1Mycobot_communicationSetAnglesResponse' => Ros1Mycobot_communicationSetAnglesResponse::SCHEMA + ['class' => Ros1Mycobot_communicationSetAnglesResponse::class],
            'Ros1Mycobot_communicationSetCoordsRequest' => Ros1Mycobot_communicationSetCoordsRequest::SCHEMA + ['class' => Ros1Mycobot_communicationSetCoordsRequest::class],
            'Ros1Mycobot_communicationSetCoordsResponse' => Ros1Mycobot_communicationSetCoordsResponse::SCHEMA + ['class' => Ros1Mycobot_communicationSetCoordsResponse::class],
            'Ros1Mypalletizer_communicationMypalAngles' => Ros1Mypalletizer_communicationMypalAngles::SCHEMA + ['class' => Ros1Mypalletizer_communicationMypalAngles::class],
            'Ros1Mypalletizer_communicationMypalCoords' => Ros1Mypalletizer_communicationMypalCoords::SCHEMA + ['class' => Ros1Mypalletizer_communicationMypalCoords::class],
            'Ros1Mypalletizer_communicationMypalGripperStatus' => Ros1Mypalletizer_communicationMypalGripperStatus::SCHEMA + ['class' => Ros1Mypalletizer_communicationMypalGripperStatus::class],
            'Ros1Mypalletizer_communicationMypalPumpStatus' => Ros1Mypalletizer_communicationMypalPumpStatus::SCHEMA + ['class' => Ros1Mypalletizer_communicationMypalPumpStatus::class],
            'Ros1Mypalletizer_communicationMypalSetAngles' => Ros1Mypalletizer_communicationMypalSetAngles::SCHEMA + ['class' => Ros1Mypalletizer_communicationMypalSetAngles::class],
            'Ros1Mypalletizer_communicationMypalSetCoords' => Ros1Mypalletizer_communicationMypalSetCoords::SCHEMA + ['class' => Ros1Mypalletizer_communicationMypalSetCoords::class],
            'Ros1Mypalletizer_communicationGetAnglesRequest' => Ros1Mypalletizer_communicationGetAnglesRequest::SCHEMA + ['class' => Ros1Mypalletizer_communicationGetAnglesRequest::class],
            'Ros1Mypalletizer_communicationGetAnglesResponse' => Ros1Mypalletizer_communicationGetAnglesResponse::SCHEMA + ['class' => Ros1Mypalletizer_communicationGetAnglesResponse::class],
            'Ros1Mypalletizer_communicationGetCoordsRequest' => Ros1Mypalletizer_communicationGetCoordsRequest::SCHEMA + ['class' => Ros1Mypalletizer_communicationGetCoordsRequest::class],
            'Ros1Mypalletizer_communicationGetCoordsResponse' => Ros1Mypalletizer_communicationGetCoordsResponse::SCHEMA + ['class' => Ros1Mypalletizer_communicationGetCoordsResponse::class],
            'Ros1Mypalletizer_communicationGripperStatusRequest' => Ros1Mypalletizer_communicationGripperStatusRequest::SCHEMA + ['class' => Ros1Mypalletizer_communicationGripperStatusRequest::class],
            'Ros1Mypalletizer_communicationGripperStatusResponse' => Ros1Mypalletizer_communicationGripperStatusResponse::SCHEMA + ['class' => Ros1Mypalletizer_communicationGripperStatusResponse::class],
            'Ros1Mypalletizer_communicationPumpStatusRequest' => Ros1Mypalletizer_communicationPumpStatusRequest::SCHEMA + ['class' => Ros1Mypalletizer_communicationPumpStatusRequest::class],
            'Ros1Mypalletizer_communicationPumpStatusResponse' => Ros1Mypalletizer_communicationPumpStatusResponse::SCHEMA + ['class' => Ros1Mypalletizer_communicationPumpStatusResponse::class],
            'Ros1Mypalletizer_communicationSetAnglesRequest' => Ros1Mypalletizer_communicationSetAnglesRequest::SCHEMA + ['class' => Ros1Mypalletizer_communicationSetAnglesRequest::class],
            'Ros1Mypalletizer_communicationSetAnglesResponse' => Ros1Mypalletizer_communicationSetAnglesResponse::SCHEMA + ['class' => Ros1Mypalletizer_communicationSetAnglesResponse::class],
            'Ros1Mypalletizer_communicationSetCoordsRequest' => Ros1Mypalletizer_communicationSetCoordsRequest::SCHEMA + ['class' => Ros1Mypalletizer_communicationSetCoordsRequest::class],
            'Ros1Mypalletizer_communicationSetCoordsResponse' => Ros1Mypalletizer_communicationSetCoordsResponse::SCHEMA + ['class' => Ros1Mypalletizer_communicationSetCoordsResponse::class],
        ]);
        return $wire;
    }
}
