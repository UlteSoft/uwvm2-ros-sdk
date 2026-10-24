<?php
declare(strict_types=1);
namespace Uwvm\Elephant\melodic;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own all 13 original mybuddy_communication/MybuddyAngles fields.
 * @details 52..52 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationMybuddyAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationMybuddyAngles',
        'type' => 'mybuddy_communication/MybuddyAngles',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/MybuddyAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f3c510869207e6d72e868ae35ef95d49a1eea5164c7ef1056cb3d335029563e9',
        'minimum' => 52,
        'maximum' => 52,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_0',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
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
                'name' => 'joint_7',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_8',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_9',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_10',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_11',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_12',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
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
    /** @brief Original joint_0 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_0;
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
    /** @brief Original joint_7 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_7;
    /** @brief Original joint_8 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_8;
    /** @brief Original joint_9 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_9;
    /** @brief Original joint_10 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_10;
    /** @brief Original joint_11 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_11;
    /** @brief Original joint_12 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_12;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_0', $values))
            $this->joint_0 = $values['joint_0'];
        else
        {
            $this->joint_0 = 0.0;
        }
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
        if (array_key_exists('joint_7', $values))
            $this->joint_7 = $values['joint_7'];
        else
        {
            $this->joint_7 = 0.0;
        }
        if (array_key_exists('joint_8', $values))
            $this->joint_8 = $values['joint_8'];
        else
        {
            $this->joint_8 = 0.0;
        }
        if (array_key_exists('joint_9', $values))
            $this->joint_9 = $values['joint_9'];
        else
        {
            $this->joint_9 = 0.0;
        }
        if (array_key_exists('joint_10', $values))
            $this->joint_10 = $values['joint_10'];
        else
        {
            $this->joint_10 = 0.0;
        }
        if (array_key_exists('joint_11', $values))
            $this->joint_11 = $values['joint_11'];
        else
        {
            $this->joint_11 = 0.0;
        }
        if (array_key_exists('joint_12', $values))
            $this->joint_12 = $values['joint_12'];
        else
        {
            $this->joint_12 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mybuddy_communicationMybuddyAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationMybuddyAngles', $bytes);
    }
}

/** @brief Own all 6 original mybuddy_communication/MybuddyCoords fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationMybuddyCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationMybuddyCoords',
        'type' => 'mybuddy_communication/MybuddyCoords',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/MybuddyCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a1df376733f2673e25fed814a038e00f556b82c2b8bce3755644904e50c95384',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationMybuddyCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationMybuddyCoords', $bytes);
    }
}

/** @brief Own all 1 original mybuddy_communication/MybuddyGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationMybuddyGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationMybuddyGripperStatus',
        'type' => 'mybuddy_communication/MybuddyGripperStatus',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/MybuddyGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_86fdaf7d3397b26155c891e15d2ebdd903d5899a0895128e720276eb35a63854',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationMybuddyGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationMybuddyGripperStatus', $bytes);
    }
}

/** @brief Own all 3 original mybuddy_communication/MybuddyPumpStatus fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationMybuddyPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationMybuddyPumpStatus',
        'type' => 'mybuddy_communication/MybuddyPumpStatus',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/MybuddyPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_33b6419700f9baf41b584bb464d0234426a04e1bd86d198fe3d66c06845cd80a',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationMybuddyPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationMybuddyPumpStatus', $bytes);
    }
}

/** @brief Own all 14 original mybuddy_communication/MybuddySetAngles fields.
 * @details 53..53 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationMybuddySetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationMybuddySetAngles',
        'type' => 'mybuddy_communication/MybuddySetAngles',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/MybuddySetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8f41fddfb715bfaa95c90974cf257181a9ae3e2f36969f6fdfdf3ab03b7d4486',
        'minimum' => 53,
        'maximum' => 53,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_0',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
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
                'name' => 'joint_7',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_8',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_9',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_10',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_11',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_12',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original joint_0 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_0;
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
    /** @brief Original joint_7 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_7;
    /** @brief Original joint_8 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_8;
    /** @brief Original joint_9 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_9;
    /** @brief Original joint_10 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_10;
    /** @brief Original joint_11 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_11;
    /** @brief Original joint_12 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_12;
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
        if (array_key_exists('joint_0', $values))
            $this->joint_0 = $values['joint_0'];
        else
        {
            $this->joint_0 = 0.0;
        }
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
        if (array_key_exists('joint_7', $values))
            $this->joint_7 = $values['joint_7'];
        else
        {
            $this->joint_7 = 0.0;
        }
        if (array_key_exists('joint_8', $values))
            $this->joint_8 = $values['joint_8'];
        else
        {
            $this->joint_8 = 0.0;
        }
        if (array_key_exists('joint_9', $values))
            $this->joint_9 = $values['joint_9'];
        else
        {
            $this->joint_9 = 0.0;
        }
        if (array_key_exists('joint_10', $values))
            $this->joint_10 = $values['joint_10'];
        else
        {
            $this->joint_10 = 0.0;
        }
        if (array_key_exists('joint_11', $values))
            $this->joint_11 = $values['joint_11'];
        else
        {
            $this->joint_11 = 0.0;
        }
        if (array_key_exists('joint_12', $values))
            $this->joint_12 = $values['joint_12'];
        else
        {
            $this->joint_12 = 0.0;
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationMybuddySetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationMybuddySetAngles', $bytes);
    }
}

/** @brief Own all 8 original mybuddy_communication/MybuddySetCoords fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationMybuddySetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationMybuddySetCoords',
        'type' => 'mybuddy_communication/MybuddySetCoords',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/MybuddySetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bf9f2ee073928aafabbd532644eb57eec70d4b864a3097e2ab1a37840abd3669',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationMybuddySetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationMybuddySetCoords', $bytes);
    }
}

/** @brief Own all 0 original mybuddy_communication/GetAnglesRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationGetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationGetAnglesRequest',
        'type' => 'mybuddy_communication/GetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/GetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7ba90c12eb91dbcc296c0d61069d0dc12c3ac576c970cd2fe9a0fed29f058e38',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationGetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationGetAnglesRequest', $bytes);
    }
}

/** @brief Own all 13 original mybuddy_communication/GetAnglesResponse fields.
 * @details 52..52 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationGetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationGetAnglesResponse',
        'type' => 'mybuddy_communication/GetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/GetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_98085b01a21ae26a74a286d790aab310530fff2a88d7a3c35e071df09abd709d',
        'minimum' => 52,
        'maximum' => 52,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_0',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
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
                'name' => 'joint_7',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_8',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_9',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_10',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_11',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_12',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
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
    /** @brief Original joint_0 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_0;
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
    /** @brief Original joint_7 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_7;
    /** @brief Original joint_8 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_8;
    /** @brief Original joint_9 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_9;
    /** @brief Original joint_10 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_10;
    /** @brief Original joint_11 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_11;
    /** @brief Original joint_12 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_12;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_0', $values))
            $this->joint_0 = $values['joint_0'];
        else
        {
            $this->joint_0 = 0.0;
        }
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
        if (array_key_exists('joint_7', $values))
            $this->joint_7 = $values['joint_7'];
        else
        {
            $this->joint_7 = 0.0;
        }
        if (array_key_exists('joint_8', $values))
            $this->joint_8 = $values['joint_8'];
        else
        {
            $this->joint_8 = 0.0;
        }
        if (array_key_exists('joint_9', $values))
            $this->joint_9 = $values['joint_9'];
        else
        {
            $this->joint_9 = 0.0;
        }
        if (array_key_exists('joint_10', $values))
            $this->joint_10 = $values['joint_10'];
        else
        {
            $this->joint_10 = 0.0;
        }
        if (array_key_exists('joint_11', $values))
            $this->joint_11 = $values['joint_11'];
        else
        {
            $this->joint_11 = 0.0;
        }
        if (array_key_exists('joint_12', $values))
            $this->joint_12 = $values['joint_12'];
        else
        {
            $this->joint_12 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Mybuddy_communicationGetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationGetAnglesResponse', $bytes);
    }
}

/** @brief Own all 0 original mybuddy_communication/GetCoordsRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationGetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationGetCoordsRequest',
        'type' => 'mybuddy_communication/GetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/GetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e5b4bd6f4d17f79bf3477c2577e73355b871523291aace267fea201f5a2b43ef',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationGetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationGetCoordsRequest', $bytes);
    }
}

/** @brief Own all 6 original mybuddy_communication/GetCoordsResponse fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationGetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationGetCoordsResponse',
        'type' => 'mybuddy_communication/GetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/GetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_604a9a58b11d6e51faee74226c4820db7668b2054b2e48949cf9deb5958f5873',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationGetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationGetCoordsResponse', $bytes);
    }
}

/** @brief Own all 1 original mybuddy_communication/GripperStatusRequest fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationGripperStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationGripperStatusRequest',
        'type' => 'mybuddy_communication/GripperStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/GripperStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7816f3fa4c8b7068eeb16e74940d2e26401df47b7bc6881d123f94b554523173',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationGripperStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationGripperStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mybuddy_communication/GripperStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationGripperStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationGripperStatusResponse',
        'type' => 'mybuddy_communication/GripperStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/GripperStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b329fd687ef106ed366d80c5651fc536ad266d2b16dee8f985f1bad32738330b',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationGripperStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationGripperStatusResponse', $bytes);
    }
}

/** @brief Own all 3 original mybuddy_communication/PumpStatusRequest fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationPumpStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationPumpStatusRequest',
        'type' => 'mybuddy_communication/PumpStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/PumpStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4261e7e11f0c6065de868444a0be45d363465b0913246b06b4a2c413714d77e9',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationPumpStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationPumpStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mybuddy_communication/PumpStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationPumpStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationPumpStatusResponse',
        'type' => 'mybuddy_communication/PumpStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/PumpStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_975f537d88c880f8daa3459f6762dc6ec7d7eee1f580c0e79f3cb581b77cabd4',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationPumpStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationPumpStatusResponse', $bytes);
    }
}

/** @brief Own all 14 original mybuddy_communication/SetAnglesRequest fields.
 * @details 53..53 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationSetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationSetAnglesRequest',
        'type' => 'mybuddy_communication/SetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/SetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_47d19578189892ca10e073d8d250839f1e2b39ebbb3525ed9b03a15af18eb240',
        'minimum' => 53,
        'maximum' => 53,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_0',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
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
                'name' => 'joint_7',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_8',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_9',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_10',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_11',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_12',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original joint_0 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_0;
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
    /** @brief Original joint_7 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_7;
    /** @brief Original joint_8 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_8;
    /** @brief Original joint_9 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_9;
    /** @brief Original joint_10 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_10;
    /** @brief Original joint_11 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_11;
    /** @brief Original joint_12 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_12;
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
        if (array_key_exists('joint_0', $values))
            $this->joint_0 = $values['joint_0'];
        else
        {
            $this->joint_0 = 0.0;
        }
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
        if (array_key_exists('joint_7', $values))
            $this->joint_7 = $values['joint_7'];
        else
        {
            $this->joint_7 = 0.0;
        }
        if (array_key_exists('joint_8', $values))
            $this->joint_8 = $values['joint_8'];
        else
        {
            $this->joint_8 = 0.0;
        }
        if (array_key_exists('joint_9', $values))
            $this->joint_9 = $values['joint_9'];
        else
        {
            $this->joint_9 = 0.0;
        }
        if (array_key_exists('joint_10', $values))
            $this->joint_10 = $values['joint_10'];
        else
        {
            $this->joint_10 = 0.0;
        }
        if (array_key_exists('joint_11', $values))
            $this->joint_11 = $values['joint_11'];
        else
        {
            $this->joint_11 = 0.0;
        }
        if (array_key_exists('joint_12', $values))
            $this->joint_12 = $values['joint_12'];
        else
        {
            $this->joint_12 = 0.0;
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationSetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationSetAnglesRequest', $bytes);
    }
}

/** @brief Own all 1 original mybuddy_communication/SetAnglesResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationSetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationSetAnglesResponse',
        'type' => 'mybuddy_communication/SetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/SetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7371fa369708af552fd68522d7effdd00bf82bf7e2fe21469ceb210f51582f81',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationSetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationSetAnglesResponse', $bytes);
    }
}

/** @brief Own all 8 original mybuddy_communication/SetCoordsRequest fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationSetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationSetCoordsRequest',
        'type' => 'mybuddy_communication/SetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/SetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_81f7315bebd612a9406a2805b393415b8a1956e49f3d1b8efb21f9e703b0bfe0',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationSetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationSetCoordsRequest', $bytes);
    }
}

/** @brief Own all 1 original mybuddy_communication/SetCoordsResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mybuddy_communicationSetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mybuddy_communicationSetCoordsResponse',
        'type' => 'mybuddy_communication/SetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mybuddy_communication/SetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e5c41ea9420e43a5406ddee23cee961347bfad4f83baf9ebac93d16cdb5d0b21',
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
        return Catalog::wire()->encode('Ros1Mybuddy_communicationSetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mybuddy_communicationSetCoordsResponse', $bytes);
    }
}

/** @brief Own all 6 original mecharm_communication/MycobotAngles fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationMycobotAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationMycobotAngles',
        'type' => 'mecharm_communication/MycobotAngles',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/MycobotAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4afa3dc66ce6ffe02170c76da688514a04aa7b47008aeb8f79c44f9ff867d189',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationMycobotAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationMycobotAngles', $bytes);
    }
}

/** @brief Own all 6 original mecharm_communication/MycobotCoords fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationMycobotCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationMycobotCoords',
        'type' => 'mecharm_communication/MycobotCoords',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/MycobotCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a6a82e22cd0a2f24657c0a253ed00bf31c0a266e6ebaab071cfd369780818d35',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationMycobotCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationMycobotCoords', $bytes);
    }
}

/** @brief Own all 1 original mecharm_communication/MycobotGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationMycobotGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationMycobotGripperStatus',
        'type' => 'mecharm_communication/MycobotGripperStatus',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/MycobotGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_07e04dad52b423c371dc5432b68a2f4272cf55328d6f0a10f091dc389d57a4bf',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationMycobotGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationMycobotGripperStatus', $bytes);
    }
}

/** @brief Own all 3 original mecharm_communication/MycobotPumpStatus fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationMycobotPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationMycobotPumpStatus',
        'type' => 'mecharm_communication/MycobotPumpStatus',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/MycobotPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f559fbf7d5d2c872b3660132eb8c17c79ca3c2d27e975f8fb8fde1d86072a6fa',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationMycobotPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationMycobotPumpStatus', $bytes);
    }
}

/** @brief Own all 7 original mecharm_communication/MycobotSetAngles fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationMycobotSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationMycobotSetAngles',
        'type' => 'mecharm_communication/MycobotSetAngles',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/MycobotSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bce09b709e806417595c05e0e795d689b8c53008f9916633d934f935f9389de9',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationMycobotSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationMycobotSetAngles', $bytes);
    }
}

/** @brief Own all 8 original mecharm_communication/MycobotSetCoords fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationMycobotSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationMycobotSetCoords',
        'type' => 'mecharm_communication/MycobotSetCoords',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/MycobotSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_68ffa6950e0934b845b2b45140612997c8276a3ac7ed4303e43cd70417491913',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationMycobotSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationMycobotSetCoords', $bytes);
    }
}

/** @brief Own all 0 original mecharm_communication/GetAnglesRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationGetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationGetAnglesRequest',
        'type' => 'mecharm_communication/GetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/GetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6a8f60e71495c9944e1e97c308d5c992674bd46060b6f6abf2df3f9748c13123',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationGetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationGetAnglesRequest', $bytes);
    }
}

/** @brief Own all 6 original mecharm_communication/GetAnglesResponse fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationGetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationGetAnglesResponse',
        'type' => 'mecharm_communication/GetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/GetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e792a206903dc49fab725e3b3507af3cf4712f10740e9dcceeb90dedfe6ea6e8',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationGetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationGetAnglesResponse', $bytes);
    }
}

/** @brief Own all 0 original mecharm_communication/GetCoordsRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationGetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationGetCoordsRequest',
        'type' => 'mecharm_communication/GetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/GetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_55d4d1b8965ea12f9b15d4bd5a22c43793d04af452fefb84bd98bc3d7d8da8bf',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationGetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationGetCoordsRequest', $bytes);
    }
}

/** @brief Own all 6 original mecharm_communication/GetCoordsResponse fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationGetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationGetCoordsResponse',
        'type' => 'mecharm_communication/GetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/GetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2230e517685ea625507334067ccceb8424ecf782fcd4163c551d09048e900ca8',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationGetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationGetCoordsResponse', $bytes);
    }
}

/** @brief Own all 1 original mecharm_communication/GripperStatusRequest fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationGripperStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationGripperStatusRequest',
        'type' => 'mecharm_communication/GripperStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/GripperStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_98284fbac3bdb61857b9175b1f82adc7265d0ed418088123d79bf75cb04c9a2c',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationGripperStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationGripperStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mecharm_communication/GripperStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationGripperStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationGripperStatusResponse',
        'type' => 'mecharm_communication/GripperStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/GripperStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_29cfb0267fbe68d5dafcd3c9d16a8d4dab6b21477921a48ba35135bc0c22bb32',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationGripperStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationGripperStatusResponse', $bytes);
    }
}

/** @brief Own all 3 original mecharm_communication/PumpStatusRequest fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationPumpStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationPumpStatusRequest',
        'type' => 'mecharm_communication/PumpStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/PumpStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_aa138db91e46b41659dfc5901225aaaae1c1ae0461c35d3f7a90d0cf86c9920d',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationPumpStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationPumpStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mecharm_communication/PumpStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationPumpStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationPumpStatusResponse',
        'type' => 'mecharm_communication/PumpStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/PumpStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_876caa88c833bfa180b8747110683c789aa238c0cda162a8e262c66fddefdd8f',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationPumpStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationPumpStatusResponse', $bytes);
    }
}

/** @brief Own all 7 original mecharm_communication/SetAnglesRequest fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationSetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationSetAnglesRequest',
        'type' => 'mecharm_communication/SetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/SetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7ad54edf4730457f2b2124c925b87a99bdbeddd8bfcc1e0d806f7b9dad31507b',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationSetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationSetAnglesRequest', $bytes);
    }
}

/** @brief Own all 1 original mecharm_communication/SetAnglesResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationSetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationSetAnglesResponse',
        'type' => 'mecharm_communication/SetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/SetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_940a294ef91d04afeb65b88bbdd91df3a7db0a07435ced3993db3a9d0f574c6e',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationSetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationSetAnglesResponse', $bytes);
    }
}

/** @brief Own all 8 original mecharm_communication/SetCoordsRequest fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationSetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationSetCoordsRequest',
        'type' => 'mecharm_communication/SetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/SetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_68deaf663a1fe2d3d7434935f10161eb444e7ea2f79e4b746fee9bd0383fc929',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationSetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationSetCoordsRequest', $bytes);
    }
}

/** @brief Own all 1 original mecharm_communication/SetCoordsResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mecharm_communicationSetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mecharm_communicationSetCoordsResponse',
        'type' => 'mecharm_communication/SetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mecharm_communication/SetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c66a6e14c4c7eba1b52d7ef57802cb6122a120f692bcc1552c51078301b1b409',
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
        return Catalog::wire()->encode('Ros1Mecharm_communicationSetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mecharm_communicationSetCoordsResponse', $bytes);
    }
}

/** @brief Own all 7 original myarm_communication/MyArmAngles fields.
 * @details 28..28 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationMyArmAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationMyArmAngles',
        'type' => 'myarm_communication/MyArmAngles',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/MyArmAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eff11a03e974b4af030c2dc92d0111cf95e0fb3ce004235bada3fe358b63fd4c',
        'minimum' => 28,
        'maximum' => 28,
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
                'name' => 'joint_7',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
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
    /** @brief Original joint_7 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_7;
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
        if (array_key_exists('joint_7', $values))
            $this->joint_7 = $values['joint_7'];
        else
        {
            $this->joint_7 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Myarm_communicationMyArmAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationMyArmAngles', $bytes);
    }
}

/** @brief Own all 6 original myarm_communication/MyArmCoords fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationMyArmCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationMyArmCoords',
        'type' => 'myarm_communication/MyArmCoords',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/MyArmCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f0df1605988924f0263805fb2b27ab7ef9e2296691ed15e03a337606362c983c',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationMyArmCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationMyArmCoords', $bytes);
    }
}

/** @brief Own all 1 original myarm_communication/MyArmGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationMyArmGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationMyArmGripperStatus',
        'type' => 'myarm_communication/MyArmGripperStatus',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/MyArmGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7875df5b50417da1cef60d79c872aff0b40a08f9bbfe80c103729d3c4c892c6f',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationMyArmGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationMyArmGripperStatus', $bytes);
    }
}

/** @brief Own all 3 original myarm_communication/MyArmPumpStatus fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationMyArmPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationMyArmPumpStatus',
        'type' => 'myarm_communication/MyArmPumpStatus',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/MyArmPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_58765b94f1ecb3bb131f6480ea6830631cde9c96eeef94fd9b22598ccc9ea928',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationMyArmPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationMyArmPumpStatus', $bytes);
    }
}

/** @brief Own all 8 original myarm_communication/MyArmSetAngles fields.
 * @details 29..29 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationMyArmSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationMyArmSetAngles',
        'type' => 'myarm_communication/MyArmSetAngles',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/MyArmSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6acbfd19e3864b66e47b9da5c7c0e8890e7336e8d6c9a5657c4f5eaa5285fe42',
        'minimum' => 29,
        'maximum' => 29,
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
                'name' => 'joint_7',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original joint_7 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_7;
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
        if (array_key_exists('joint_7', $values))
            $this->joint_7 = $values['joint_7'];
        else
        {
            $this->joint_7 = 0.0;
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
        return Catalog::wire()->encode('Ros1Myarm_communicationMyArmSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationMyArmSetAngles', $bytes);
    }
}

/** @brief Own all 8 original myarm_communication/MyArmSetCoords fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationMyArmSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationMyArmSetCoords',
        'type' => 'myarm_communication/MyArmSetCoords',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/MyArmSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce10c29be4cfd832d5076fead55817a0ac7ccde002d5bbbd7a2befd95e9752fd',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationMyArmSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationMyArmSetCoords', $bytes);
    }
}

/** @brief Own all 0 original myarm_communication/GetAnglesRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationGetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationGetAnglesRequest',
        'type' => 'myarm_communication/GetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/GetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_18ea682d1c475321b67435e9f207a14627113ad237a38c759cfe4e1c92fded37',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationGetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationGetAnglesRequest', $bytes);
    }
}

/** @brief Own all 7 original myarm_communication/GetAnglesResponse fields.
 * @details 28..28 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationGetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationGetAnglesResponse',
        'type' => 'myarm_communication/GetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/GetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0c68b293384d21d06e23d4aba10b4a4c2eff4e1a0eaa81903e026fe28da410c7',
        'minimum' => 28,
        'maximum' => 28,
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
                'name' => 'joint_7',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
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
    /** @brief Original joint_7 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_7;
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
        if (array_key_exists('joint_7', $values))
            $this->joint_7 = $values['joint_7'];
        else
        {
            $this->joint_7 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Myarm_communicationGetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationGetAnglesResponse', $bytes);
    }
}

/** @brief Own all 0 original myarm_communication/GetCoordsRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationGetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationGetCoordsRequest',
        'type' => 'myarm_communication/GetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/GetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_04d9d79ad983cf4631cf65a48cae60d982cd0f234f0f4ed1afa0cc630bd63d95',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationGetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationGetCoordsRequest', $bytes);
    }
}

/** @brief Own all 6 original myarm_communication/GetCoordsResponse fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationGetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationGetCoordsResponse',
        'type' => 'myarm_communication/GetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/GetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_752564704c08fb2076df8eea4f6f5b89621041372472f0f99b6627fdfda831b7',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationGetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationGetCoordsResponse', $bytes);
    }
}

/** @brief Own all 1 original myarm_communication/GripperStatusRequest fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationGripperStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationGripperStatusRequest',
        'type' => 'myarm_communication/GripperStatusRequest',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/GripperStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_adec2e0fbf48862c2245aea4c31c59ea12abdec26b4727b14005b65006c58976',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationGripperStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationGripperStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original myarm_communication/GripperStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationGripperStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationGripperStatusResponse',
        'type' => 'myarm_communication/GripperStatusResponse',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/GripperStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d703a0ec6f562f1deb444313e36e6a728b4e521d1196d90a63725753d5fe9659',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationGripperStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationGripperStatusResponse', $bytes);
    }
}

/** @brief Own all 3 original myarm_communication/PumpStatusRequest fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationPumpStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationPumpStatusRequest',
        'type' => 'myarm_communication/PumpStatusRequest',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/PumpStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eac2f5c006a0fa86df638c52e9cfb7d2c17818ec10e32ad5277af216c6c944f4',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationPumpStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationPumpStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original myarm_communication/PumpStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationPumpStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationPumpStatusResponse',
        'type' => 'myarm_communication/PumpStatusResponse',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/PumpStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_28533ec27c01d85c9a4644959ea8e5c3f2480f5203a9545e96e4242158f08044',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationPumpStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationPumpStatusResponse', $bytes);
    }
}

/** @brief Own all 8 original myarm_communication/SetAnglesRequest fields.
 * @details 29..29 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationSetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationSetAnglesRequest',
        'type' => 'myarm_communication/SetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/SetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c15c81907fbace209686a98578019d893d86cecf4782427ac2c3858da8cd3e0a',
        'minimum' => 29,
        'maximum' => 29,
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
                'name' => 'joint_7',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original joint_7 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_7;
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
        if (array_key_exists('joint_7', $values))
            $this->joint_7 = $values['joint_7'];
        else
        {
            $this->joint_7 = 0.0;
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
        return Catalog::wire()->encode('Ros1Myarm_communicationSetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationSetAnglesRequest', $bytes);
    }
}

/** @brief Own all 1 original myarm_communication/SetAnglesResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationSetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationSetAnglesResponse',
        'type' => 'myarm_communication/SetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/SetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dbdbcb001f0478a4bba5ae9d7320d8dbfa4e36a5c1c130215ff5ab864c73af0f',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationSetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationSetAnglesResponse', $bytes);
    }
}

/** @brief Own all 8 original myarm_communication/SetCoordsRequest fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationSetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationSetCoordsRequest',
        'type' => 'myarm_communication/SetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/SetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_86cfc6edb6b86f90a21818e824aea50b697e314687472e1e96e9ce5399ef66c6',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationSetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationSetCoordsRequest', $bytes);
    }
}

/** @brief Own all 1 original myarm_communication/SetCoordsResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Myarm_communicationSetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Myarm_communicationSetCoordsResponse',
        'type' => 'myarm_communication/SetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'myarm_communication/SetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_52a54371663141d4384dae8969b729baf097a0aa6105f263e78593743e44272d',
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
        return Catalog::wire()->encode('Ros1Myarm_communicationSetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Myarm_communicationSetCoordsResponse', $bytes);
    }
}

/** @brief Own all 6 original mycobot_320_communication/MycobotAngles fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationMycobotAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationMycobotAngles',
        'type' => 'mycobot_320_communication/MycobotAngles',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/MycobotAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_67ec61da0c2bf7ee461c21abbfcab14d74b84cb6c9a12430e2a306abdc65690a',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationMycobotAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationMycobotAngles', $bytes);
    }
}

/** @brief Own all 6 original mycobot_320_communication/MycobotCoords fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationMycobotCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationMycobotCoords',
        'type' => 'mycobot_320_communication/MycobotCoords',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/MycobotCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1f2ada8331783764a52ed35c81c3ce9a2fdd260e2dffa2990751ce5156c3ad03',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationMycobotCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationMycobotCoords', $bytes);
    }
}

/** @brief Own all 1 original mycobot_320_communication/MycobotGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationMycobotGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationMycobotGripperStatus',
        'type' => 'mycobot_320_communication/MycobotGripperStatus',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/MycobotGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_efb4ccdb3ce35d67174700f3d3dd7332d0f7a834c5d76b6153e389e031907984',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationMycobotGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationMycobotGripperStatus', $bytes);
    }
}

/** @brief Own all 3 original mycobot_320_communication/MycobotPumpStatus fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationMycobotPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationMycobotPumpStatus',
        'type' => 'mycobot_320_communication/MycobotPumpStatus',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/MycobotPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bb1d48067f44b7022820a6175afe05d5ba8caed9f750874a4e703389cb0d83f4',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationMycobotPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationMycobotPumpStatus', $bytes);
    }
}

/** @brief Own all 7 original mycobot_320_communication/MycobotSetAngles fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationMycobotSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationMycobotSetAngles',
        'type' => 'mycobot_320_communication/MycobotSetAngles',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/MycobotSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bf04b1bd24ab2f56c1835d1abe44b73fe023407c3ebdd3d35341242116a5d259',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationMycobotSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationMycobotSetAngles', $bytes);
    }
}

/** @brief Own all 8 original mycobot_320_communication/MycobotSetCoords fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationMycobotSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationMycobotSetCoords',
        'type' => 'mycobot_320_communication/MycobotSetCoords',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/MycobotSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_761235ef96bcc1c687ad8dd3f6d39982d1b0a7a24eaab3bb54feb9780b9e0092',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationMycobotSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationMycobotSetCoords', $bytes);
    }
}

/** @brief Own all 0 original mycobot_320_communication/GetAnglesRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationGetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationGetAnglesRequest',
        'type' => 'mycobot_320_communication/GetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/GetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fe13e75d9def5e6f7f831297c771cd4d319e1e9862b5026382fed23747b721b8',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationGetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationGetAnglesRequest', $bytes);
    }
}

/** @brief Own all 6 original mycobot_320_communication/GetAnglesResponse fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationGetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationGetAnglesResponse',
        'type' => 'mycobot_320_communication/GetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/GetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c0cb03f21add6e566a30129ed7ce3174fa86786859c472a848c6768678adc80a',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationGetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationGetAnglesResponse', $bytes);
    }
}

/** @brief Own all 0 original mycobot_320_communication/GetCoordsRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationGetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationGetCoordsRequest',
        'type' => 'mycobot_320_communication/GetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/GetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_82b2ae7ba4bf2aff8cd6c88ae344b376604624612abdd633c930695c1d1650d6',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationGetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationGetCoordsRequest', $bytes);
    }
}

/** @brief Own all 6 original mycobot_320_communication/GetCoordsResponse fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationGetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationGetCoordsResponse',
        'type' => 'mycobot_320_communication/GetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/GetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_821bac75a42a37fa06f51e57c09839f3557487dc8e883310601cb2e00bb6b05d',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationGetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationGetCoordsResponse', $bytes);
    }
}

/** @brief Own all 1 original mycobot_320_communication/GripperStatusRequest fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationGripperStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationGripperStatusRequest',
        'type' => 'mycobot_320_communication/GripperStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/GripperStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_68d072c047f4f026459309282a40c78c5db51571126efb85b7ca9e9f121b5eb5',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationGripperStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationGripperStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mycobot_320_communication/GripperStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationGripperStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationGripperStatusResponse',
        'type' => 'mycobot_320_communication/GripperStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/GripperStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9c1387ec1a93d6674ac6dd735b2811957db57359e9e461dcedc70ae6fccc5544',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationGripperStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationGripperStatusResponse', $bytes);
    }
}

/** @brief Own all 3 original mycobot_320_communication/PumpStatusRequest fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationPumpStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationPumpStatusRequest',
        'type' => 'mycobot_320_communication/PumpStatusRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/PumpStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_23a6e68b36341b30ab13026cbddfd01b16d352105bb5faecd7c1ec6ad654ab60',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationPumpStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationPumpStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original mycobot_320_communication/PumpStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationPumpStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationPumpStatusResponse',
        'type' => 'mycobot_320_communication/PumpStatusResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/PumpStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_037f53ebd0750c76a798ff17507759fcf71aa8a55496e5b151b8d977dff2c1c8',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationPumpStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationPumpStatusResponse', $bytes);
    }
}

/** @brief Own all 7 original mycobot_320_communication/SetAnglesRequest fields.
 * @details 25..25 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationSetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationSetAnglesRequest',
        'type' => 'mycobot_320_communication/SetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/SetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_644a7c29bae881d5f29708b552dcd8fd4102289aa396614590bca33dbda9f7da',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationSetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationSetAnglesRequest', $bytes);
    }
}

/** @brief Own all 1 original mycobot_320_communication/SetAnglesResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationSetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationSetAnglesResponse',
        'type' => 'mycobot_320_communication/SetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/SetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_57578e8427fc6a3a89aa595259e03c3498153482afd716dd44c0d09ee9f59f20',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationSetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationSetAnglesResponse', $bytes);
    }
}

/** @brief Own all 8 original mycobot_320_communication/SetCoordsRequest fields.
 * @details 26..26 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationSetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationSetCoordsRequest',
        'type' => 'mycobot_320_communication/SetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/SetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f398444b45a64155c410a44da67043cee13993d75beabd6bc104b23ccd1d6656',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationSetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationSetCoordsRequest', $bytes);
    }
}

/** @brief Own all 1 original mycobot_320_communication/SetCoordsResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Mycobot_320_communicationSetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Mycobot_320_communicationSetCoordsResponse',
        'type' => 'mycobot_320_communication/SetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'mycobot_320_communication/SetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3fef1bfe9036381f8ad45bc1490e96b4917df5689ccf3a84d66e5ba5145e56c4',
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
        return Catalog::wire()->encode('Ros1Mycobot_320_communicationSetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Mycobot_320_communicationSetCoordsResponse', $bytes);
    }
}

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

/** @brief Own all 3 original ultraarm_communication/ultraArmAngles fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationUltraArmAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationUltraArmAngles',
        'type' => 'ultraarm_communication/ultraArmAngles',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/ultraArmAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8fa11b8169b634ea7c786bef6ee5d8f0d42488b9841f06104ca8fd378c0fa88d',
        'minimum' => 12,
        'maximum' => 12,
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Ultraarm_communicationUltraArmAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationUltraArmAngles', $bytes);
    }
}

/** @brief Own all 3 original ultraarm_communication/ultraArmCoords fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationUltraArmCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationUltraArmCoords',
        'type' => 'ultraarm_communication/ultraArmCoords',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/ultraArmCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4e540a1f7d66110adec19bcf3114c44bbc8574efbfd05e911de8d56cc64f24fa',
        'minimum' => 12,
        'maximum' => 12,
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Ultraarm_communicationUltraArmCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationUltraArmCoords', $bytes);
    }
}

/** @brief Own all 1 original ultraarm_communication/ultraArmGripperStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationUltraArmGripperStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationUltraArmGripperStatus',
        'type' => 'ultraarm_communication/ultraArmGripperStatus',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/ultraArmGripperStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_60d9ded61184b6f51986afe42b42c786ffb71a13ee6af004c3836c6708b41f9c',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationUltraArmGripperStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationUltraArmGripperStatus', $bytes);
    }
}

/** @brief Own all 1 original ultraarm_communication/ultraArmPumpStatus fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationUltraArmPumpStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationUltraArmPumpStatus',
        'type' => 'ultraarm_communication/ultraArmPumpStatus',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/ultraArmPumpStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f765502e0a7c0a4fe18049032fe9d314512de56bc2d52e4b1a8cbaf01fbc68e1',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationUltraArmPumpStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationUltraArmPumpStatus', $bytes);
    }
}

/** @brief Own all 4 original ultraarm_communication/ultraArmSetAngles fields.
 * @details 13..13 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationUltraArmSetAngles
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationUltraArmSetAngles',
        'type' => 'ultraarm_communication/ultraArmSetAngles',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/ultraArmSetAngles',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0536de7f7a45a8d0a19b16b78557ec77c4ce5f99e1141df3c617da847cbb079c',
        'minimum' => 13,
        'maximum' => 13,
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationUltraArmSetAngles', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationUltraArmSetAngles', $bytes);
    }
}

/** @brief Own all 4 original ultraarm_communication/ultraArmSetCoords fields.
 * @details 13..13 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationUltraArmSetCoords
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationUltraArmSetCoords',
        'type' => 'ultraarm_communication/ultraArmSetCoords',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/ultraArmSetCoords',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4e59dd853f51fe18f9401ec6d0fffaa50a00ba7c96a12b8d09c9bfd5ad68f818',
        'minimum' => 13,
        'maximum' => 13,
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationUltraArmSetCoords', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationUltraArmSetCoords', $bytes);
    }
}

/** @brief Own all 0 original ultraarm_communication/GetAnglesRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationGetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationGetAnglesRequest',
        'type' => 'ultraarm_communication/GetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/GetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fd6922aabe6ec7f82731d19efb0963753d86a8f412de96f8bc67ea2615a7c860',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationGetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationGetAnglesRequest', $bytes);
    }
}

/** @brief Own all 3 original ultraarm_communication/GetAnglesResponse fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationGetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationGetAnglesResponse',
        'type' => 'ultraarm_communication/GetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/GetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d7048c8ef416139a11a58bd7d5b865f4b6e0b5431c8e80cdd8c4c79de67cc128',
        'minimum' => 12,
        'maximum' => 12,
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Ultraarm_communicationGetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationGetAnglesResponse', $bytes);
    }
}

/** @brief Own all 0 original ultraarm_communication/GetCoordsRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationGetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationGetCoordsRequest',
        'type' => 'ultraarm_communication/GetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/GetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_40a6535b429baf0bbe0bc642ade7a8048e693633388ccd061bf12b6d795bbbd1',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationGetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationGetCoordsRequest', $bytes);
    }
}

/** @brief Own all 3 original ultraarm_communication/GetCoordsResponse fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationGetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationGetCoordsResponse',
        'type' => 'ultraarm_communication/GetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/GetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9f19d8d2eb7284c4cbe2587ca0438d4680287759553d908340f5053ae4f4f036',
        'minimum' => 12,
        'maximum' => 12,
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Ultraarm_communicationGetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationGetCoordsResponse', $bytes);
    }
}

/** @brief Own all 1 original ultraarm_communication/GripperStatusRequest fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationGripperStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationGripperStatusRequest',
        'type' => 'ultraarm_communication/GripperStatusRequest',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/GripperStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c435d39bef04bd7022e048c0cf364d100bf7a92855f04c816d2a22f0e672d586',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationGripperStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationGripperStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original ultraarm_communication/GripperStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationGripperStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationGripperStatusResponse',
        'type' => 'ultraarm_communication/GripperStatusResponse',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/GripperStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fa0c99ff37acea63c5d507174f9725a9341ffaa007e722e21a8e0b93097e56d4',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationGripperStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationGripperStatusResponse', $bytes);
    }
}

/** @brief Own all 1 original ultraarm_communication/PumpStatusRequest fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationPumpStatusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationPumpStatusRequest',
        'type' => 'ultraarm_communication/PumpStatusRequest',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/PumpStatusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_03df5de115870b7679c85e5dc64f996694578f1b7b41387e531a49ee6626e8b2',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationPumpStatusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationPumpStatusRequest', $bytes);
    }
}

/** @brief Own all 1 original ultraarm_communication/PumpStatusResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationPumpStatusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationPumpStatusResponse',
        'type' => 'ultraarm_communication/PumpStatusResponse',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/PumpStatusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_693fd1ad36c534188f959fdb72df4f970432946c5706472c0bf41b27d054a4ee',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationPumpStatusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationPumpStatusResponse', $bytes);
    }
}

/** @brief Own all 4 original ultraarm_communication/SetAnglesRequest fields.
 * @details 13..13 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationSetAnglesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationSetAnglesRequest',
        'type' => 'ultraarm_communication/SetAnglesRequest',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/SetAnglesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fe8cdfa565c8aa8b77db9743af57d7c1ba14aa9dd31c8d4ca92bb7aec107bb42',
        'minimum' => 13,
        'maximum' => 13,
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationSetAnglesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationSetAnglesRequest', $bytes);
    }
}

/** @brief Own all 1 original ultraarm_communication/SetAnglesResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationSetAnglesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationSetAnglesResponse',
        'type' => 'ultraarm_communication/SetAnglesResponse',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/SetAnglesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f1ecaff9a60a47ef978b0faf2b9b2b9166ae308b3df718b0536536004dc8a3b4',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationSetAnglesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationSetAnglesResponse', $bytes);
    }
}

/** @brief Own all 4 original ultraarm_communication/SetCoordsRequest fields.
 * @details 13..13 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationSetCoordsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationSetCoordsRequest',
        'type' => 'ultraarm_communication/SetCoordsRequest',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/SetCoordsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2a4670c426b6cf566795b0e874018769fb7e852bd104770dff3e735608c3e3d5',
        'minimum' => 13,
        'maximum' => 13,
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationSetCoordsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationSetCoordsRequest', $bytes);
    }
}

/** @brief Own all 1 original ultraarm_communication/SetCoordsResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Ultraarm_communicationSetCoordsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Ultraarm_communicationSetCoordsResponse',
        'type' => 'ultraarm_communication/SetCoordsResponse',
        'ros_version' => 1,
        'native_type' => 'ultraarm_communication/SetCoordsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_02aa6c82612c5ffd43e890bb173a59245e00cd91dbc38303dcbdc0fb30683431',
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
        return Catalog::wire()->encode('Ros1Ultraarm_communicationSetCoordsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Ultraarm_communicationSetCoordsResponse', $bytes);
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
            'Ros1Mybuddy_communicationMybuddyAngles' => Ros1Mybuddy_communicationMybuddyAngles::SCHEMA + ['class' => Ros1Mybuddy_communicationMybuddyAngles::class],
            'Ros1Mybuddy_communicationMybuddyCoords' => Ros1Mybuddy_communicationMybuddyCoords::SCHEMA + ['class' => Ros1Mybuddy_communicationMybuddyCoords::class],
            'Ros1Mybuddy_communicationMybuddyGripperStatus' => Ros1Mybuddy_communicationMybuddyGripperStatus::SCHEMA + ['class' => Ros1Mybuddy_communicationMybuddyGripperStatus::class],
            'Ros1Mybuddy_communicationMybuddyPumpStatus' => Ros1Mybuddy_communicationMybuddyPumpStatus::SCHEMA + ['class' => Ros1Mybuddy_communicationMybuddyPumpStatus::class],
            'Ros1Mybuddy_communicationMybuddySetAngles' => Ros1Mybuddy_communicationMybuddySetAngles::SCHEMA + ['class' => Ros1Mybuddy_communicationMybuddySetAngles::class],
            'Ros1Mybuddy_communicationMybuddySetCoords' => Ros1Mybuddy_communicationMybuddySetCoords::SCHEMA + ['class' => Ros1Mybuddy_communicationMybuddySetCoords::class],
            'Ros1Mybuddy_communicationGetAnglesRequest' => Ros1Mybuddy_communicationGetAnglesRequest::SCHEMA + ['class' => Ros1Mybuddy_communicationGetAnglesRequest::class],
            'Ros1Mybuddy_communicationGetAnglesResponse' => Ros1Mybuddy_communicationGetAnglesResponse::SCHEMA + ['class' => Ros1Mybuddy_communicationGetAnglesResponse::class],
            'Ros1Mybuddy_communicationGetCoordsRequest' => Ros1Mybuddy_communicationGetCoordsRequest::SCHEMA + ['class' => Ros1Mybuddy_communicationGetCoordsRequest::class],
            'Ros1Mybuddy_communicationGetCoordsResponse' => Ros1Mybuddy_communicationGetCoordsResponse::SCHEMA + ['class' => Ros1Mybuddy_communicationGetCoordsResponse::class],
            'Ros1Mybuddy_communicationGripperStatusRequest' => Ros1Mybuddy_communicationGripperStatusRequest::SCHEMA + ['class' => Ros1Mybuddy_communicationGripperStatusRequest::class],
            'Ros1Mybuddy_communicationGripperStatusResponse' => Ros1Mybuddy_communicationGripperStatusResponse::SCHEMA + ['class' => Ros1Mybuddy_communicationGripperStatusResponse::class],
            'Ros1Mybuddy_communicationPumpStatusRequest' => Ros1Mybuddy_communicationPumpStatusRequest::SCHEMA + ['class' => Ros1Mybuddy_communicationPumpStatusRequest::class],
            'Ros1Mybuddy_communicationPumpStatusResponse' => Ros1Mybuddy_communicationPumpStatusResponse::SCHEMA + ['class' => Ros1Mybuddy_communicationPumpStatusResponse::class],
            'Ros1Mybuddy_communicationSetAnglesRequest' => Ros1Mybuddy_communicationSetAnglesRequest::SCHEMA + ['class' => Ros1Mybuddy_communicationSetAnglesRequest::class],
            'Ros1Mybuddy_communicationSetAnglesResponse' => Ros1Mybuddy_communicationSetAnglesResponse::SCHEMA + ['class' => Ros1Mybuddy_communicationSetAnglesResponse::class],
            'Ros1Mybuddy_communicationSetCoordsRequest' => Ros1Mybuddy_communicationSetCoordsRequest::SCHEMA + ['class' => Ros1Mybuddy_communicationSetCoordsRequest::class],
            'Ros1Mybuddy_communicationSetCoordsResponse' => Ros1Mybuddy_communicationSetCoordsResponse::SCHEMA + ['class' => Ros1Mybuddy_communicationSetCoordsResponse::class],
            'Ros1Mecharm_communicationMycobotAngles' => Ros1Mecharm_communicationMycobotAngles::SCHEMA + ['class' => Ros1Mecharm_communicationMycobotAngles::class],
            'Ros1Mecharm_communicationMycobotCoords' => Ros1Mecharm_communicationMycobotCoords::SCHEMA + ['class' => Ros1Mecharm_communicationMycobotCoords::class],
            'Ros1Mecharm_communicationMycobotGripperStatus' => Ros1Mecharm_communicationMycobotGripperStatus::SCHEMA + ['class' => Ros1Mecharm_communicationMycobotGripperStatus::class],
            'Ros1Mecharm_communicationMycobotPumpStatus' => Ros1Mecharm_communicationMycobotPumpStatus::SCHEMA + ['class' => Ros1Mecharm_communicationMycobotPumpStatus::class],
            'Ros1Mecharm_communicationMycobotSetAngles' => Ros1Mecharm_communicationMycobotSetAngles::SCHEMA + ['class' => Ros1Mecharm_communicationMycobotSetAngles::class],
            'Ros1Mecharm_communicationMycobotSetCoords' => Ros1Mecharm_communicationMycobotSetCoords::SCHEMA + ['class' => Ros1Mecharm_communicationMycobotSetCoords::class],
            'Ros1Mecharm_communicationGetAnglesRequest' => Ros1Mecharm_communicationGetAnglesRequest::SCHEMA + ['class' => Ros1Mecharm_communicationGetAnglesRequest::class],
            'Ros1Mecharm_communicationGetAnglesResponse' => Ros1Mecharm_communicationGetAnglesResponse::SCHEMA + ['class' => Ros1Mecharm_communicationGetAnglesResponse::class],
            'Ros1Mecharm_communicationGetCoordsRequest' => Ros1Mecharm_communicationGetCoordsRequest::SCHEMA + ['class' => Ros1Mecharm_communicationGetCoordsRequest::class],
            'Ros1Mecharm_communicationGetCoordsResponse' => Ros1Mecharm_communicationGetCoordsResponse::SCHEMA + ['class' => Ros1Mecharm_communicationGetCoordsResponse::class],
            'Ros1Mecharm_communicationGripperStatusRequest' => Ros1Mecharm_communicationGripperStatusRequest::SCHEMA + ['class' => Ros1Mecharm_communicationGripperStatusRequest::class],
            'Ros1Mecharm_communicationGripperStatusResponse' => Ros1Mecharm_communicationGripperStatusResponse::SCHEMA + ['class' => Ros1Mecharm_communicationGripperStatusResponse::class],
            'Ros1Mecharm_communicationPumpStatusRequest' => Ros1Mecharm_communicationPumpStatusRequest::SCHEMA + ['class' => Ros1Mecharm_communicationPumpStatusRequest::class],
            'Ros1Mecharm_communicationPumpStatusResponse' => Ros1Mecharm_communicationPumpStatusResponse::SCHEMA + ['class' => Ros1Mecharm_communicationPumpStatusResponse::class],
            'Ros1Mecharm_communicationSetAnglesRequest' => Ros1Mecharm_communicationSetAnglesRequest::SCHEMA + ['class' => Ros1Mecharm_communicationSetAnglesRequest::class],
            'Ros1Mecharm_communicationSetAnglesResponse' => Ros1Mecharm_communicationSetAnglesResponse::SCHEMA + ['class' => Ros1Mecharm_communicationSetAnglesResponse::class],
            'Ros1Mecharm_communicationSetCoordsRequest' => Ros1Mecharm_communicationSetCoordsRequest::SCHEMA + ['class' => Ros1Mecharm_communicationSetCoordsRequest::class],
            'Ros1Mecharm_communicationSetCoordsResponse' => Ros1Mecharm_communicationSetCoordsResponse::SCHEMA + ['class' => Ros1Mecharm_communicationSetCoordsResponse::class],
            'Ros1Myarm_communicationMyArmAngles' => Ros1Myarm_communicationMyArmAngles::SCHEMA + ['class' => Ros1Myarm_communicationMyArmAngles::class],
            'Ros1Myarm_communicationMyArmCoords' => Ros1Myarm_communicationMyArmCoords::SCHEMA + ['class' => Ros1Myarm_communicationMyArmCoords::class],
            'Ros1Myarm_communicationMyArmGripperStatus' => Ros1Myarm_communicationMyArmGripperStatus::SCHEMA + ['class' => Ros1Myarm_communicationMyArmGripperStatus::class],
            'Ros1Myarm_communicationMyArmPumpStatus' => Ros1Myarm_communicationMyArmPumpStatus::SCHEMA + ['class' => Ros1Myarm_communicationMyArmPumpStatus::class],
            'Ros1Myarm_communicationMyArmSetAngles' => Ros1Myarm_communicationMyArmSetAngles::SCHEMA + ['class' => Ros1Myarm_communicationMyArmSetAngles::class],
            'Ros1Myarm_communicationMyArmSetCoords' => Ros1Myarm_communicationMyArmSetCoords::SCHEMA + ['class' => Ros1Myarm_communicationMyArmSetCoords::class],
            'Ros1Myarm_communicationGetAnglesRequest' => Ros1Myarm_communicationGetAnglesRequest::SCHEMA + ['class' => Ros1Myarm_communicationGetAnglesRequest::class],
            'Ros1Myarm_communicationGetAnglesResponse' => Ros1Myarm_communicationGetAnglesResponse::SCHEMA + ['class' => Ros1Myarm_communicationGetAnglesResponse::class],
            'Ros1Myarm_communicationGetCoordsRequest' => Ros1Myarm_communicationGetCoordsRequest::SCHEMA + ['class' => Ros1Myarm_communicationGetCoordsRequest::class],
            'Ros1Myarm_communicationGetCoordsResponse' => Ros1Myarm_communicationGetCoordsResponse::SCHEMA + ['class' => Ros1Myarm_communicationGetCoordsResponse::class],
            'Ros1Myarm_communicationGripperStatusRequest' => Ros1Myarm_communicationGripperStatusRequest::SCHEMA + ['class' => Ros1Myarm_communicationGripperStatusRequest::class],
            'Ros1Myarm_communicationGripperStatusResponse' => Ros1Myarm_communicationGripperStatusResponse::SCHEMA + ['class' => Ros1Myarm_communicationGripperStatusResponse::class],
            'Ros1Myarm_communicationPumpStatusRequest' => Ros1Myarm_communicationPumpStatusRequest::SCHEMA + ['class' => Ros1Myarm_communicationPumpStatusRequest::class],
            'Ros1Myarm_communicationPumpStatusResponse' => Ros1Myarm_communicationPumpStatusResponse::SCHEMA + ['class' => Ros1Myarm_communicationPumpStatusResponse::class],
            'Ros1Myarm_communicationSetAnglesRequest' => Ros1Myarm_communicationSetAnglesRequest::SCHEMA + ['class' => Ros1Myarm_communicationSetAnglesRequest::class],
            'Ros1Myarm_communicationSetAnglesResponse' => Ros1Myarm_communicationSetAnglesResponse::SCHEMA + ['class' => Ros1Myarm_communicationSetAnglesResponse::class],
            'Ros1Myarm_communicationSetCoordsRequest' => Ros1Myarm_communicationSetCoordsRequest::SCHEMA + ['class' => Ros1Myarm_communicationSetCoordsRequest::class],
            'Ros1Myarm_communicationSetCoordsResponse' => Ros1Myarm_communicationSetCoordsResponse::SCHEMA + ['class' => Ros1Myarm_communicationSetCoordsResponse::class],
            'Ros1Mycobot_320_communicationMycobotAngles' => Ros1Mycobot_320_communicationMycobotAngles::SCHEMA + ['class' => Ros1Mycobot_320_communicationMycobotAngles::class],
            'Ros1Mycobot_320_communicationMycobotCoords' => Ros1Mycobot_320_communicationMycobotCoords::SCHEMA + ['class' => Ros1Mycobot_320_communicationMycobotCoords::class],
            'Ros1Mycobot_320_communicationMycobotGripperStatus' => Ros1Mycobot_320_communicationMycobotGripperStatus::SCHEMA + ['class' => Ros1Mycobot_320_communicationMycobotGripperStatus::class],
            'Ros1Mycobot_320_communicationMycobotPumpStatus' => Ros1Mycobot_320_communicationMycobotPumpStatus::SCHEMA + ['class' => Ros1Mycobot_320_communicationMycobotPumpStatus::class],
            'Ros1Mycobot_320_communicationMycobotSetAngles' => Ros1Mycobot_320_communicationMycobotSetAngles::SCHEMA + ['class' => Ros1Mycobot_320_communicationMycobotSetAngles::class],
            'Ros1Mycobot_320_communicationMycobotSetCoords' => Ros1Mycobot_320_communicationMycobotSetCoords::SCHEMA + ['class' => Ros1Mycobot_320_communicationMycobotSetCoords::class],
            'Ros1Mycobot_320_communicationGetAnglesRequest' => Ros1Mycobot_320_communicationGetAnglesRequest::SCHEMA + ['class' => Ros1Mycobot_320_communicationGetAnglesRequest::class],
            'Ros1Mycobot_320_communicationGetAnglesResponse' => Ros1Mycobot_320_communicationGetAnglesResponse::SCHEMA + ['class' => Ros1Mycobot_320_communicationGetAnglesResponse::class],
            'Ros1Mycobot_320_communicationGetCoordsRequest' => Ros1Mycobot_320_communicationGetCoordsRequest::SCHEMA + ['class' => Ros1Mycobot_320_communicationGetCoordsRequest::class],
            'Ros1Mycobot_320_communicationGetCoordsResponse' => Ros1Mycobot_320_communicationGetCoordsResponse::SCHEMA + ['class' => Ros1Mycobot_320_communicationGetCoordsResponse::class],
            'Ros1Mycobot_320_communicationGripperStatusRequest' => Ros1Mycobot_320_communicationGripperStatusRequest::SCHEMA + ['class' => Ros1Mycobot_320_communicationGripperStatusRequest::class],
            'Ros1Mycobot_320_communicationGripperStatusResponse' => Ros1Mycobot_320_communicationGripperStatusResponse::SCHEMA + ['class' => Ros1Mycobot_320_communicationGripperStatusResponse::class],
            'Ros1Mycobot_320_communicationPumpStatusRequest' => Ros1Mycobot_320_communicationPumpStatusRequest::SCHEMA + ['class' => Ros1Mycobot_320_communicationPumpStatusRequest::class],
            'Ros1Mycobot_320_communicationPumpStatusResponse' => Ros1Mycobot_320_communicationPumpStatusResponse::SCHEMA + ['class' => Ros1Mycobot_320_communicationPumpStatusResponse::class],
            'Ros1Mycobot_320_communicationSetAnglesRequest' => Ros1Mycobot_320_communicationSetAnglesRequest::SCHEMA + ['class' => Ros1Mycobot_320_communicationSetAnglesRequest::class],
            'Ros1Mycobot_320_communicationSetAnglesResponse' => Ros1Mycobot_320_communicationSetAnglesResponse::SCHEMA + ['class' => Ros1Mycobot_320_communicationSetAnglesResponse::class],
            'Ros1Mycobot_320_communicationSetCoordsRequest' => Ros1Mycobot_320_communicationSetCoordsRequest::SCHEMA + ['class' => Ros1Mycobot_320_communicationSetCoordsRequest::class],
            'Ros1Mycobot_320_communicationSetCoordsResponse' => Ros1Mycobot_320_communicationSetCoordsResponse::SCHEMA + ['class' => Ros1Mycobot_320_communicationSetCoordsResponse::class],
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
            'Ros1Ultraarm_communicationUltraArmAngles' => Ros1Ultraarm_communicationUltraArmAngles::SCHEMA + ['class' => Ros1Ultraarm_communicationUltraArmAngles::class],
            'Ros1Ultraarm_communicationUltraArmCoords' => Ros1Ultraarm_communicationUltraArmCoords::SCHEMA + ['class' => Ros1Ultraarm_communicationUltraArmCoords::class],
            'Ros1Ultraarm_communicationUltraArmGripperStatus' => Ros1Ultraarm_communicationUltraArmGripperStatus::SCHEMA + ['class' => Ros1Ultraarm_communicationUltraArmGripperStatus::class],
            'Ros1Ultraarm_communicationUltraArmPumpStatus' => Ros1Ultraarm_communicationUltraArmPumpStatus::SCHEMA + ['class' => Ros1Ultraarm_communicationUltraArmPumpStatus::class],
            'Ros1Ultraarm_communicationUltraArmSetAngles' => Ros1Ultraarm_communicationUltraArmSetAngles::SCHEMA + ['class' => Ros1Ultraarm_communicationUltraArmSetAngles::class],
            'Ros1Ultraarm_communicationUltraArmSetCoords' => Ros1Ultraarm_communicationUltraArmSetCoords::SCHEMA + ['class' => Ros1Ultraarm_communicationUltraArmSetCoords::class],
            'Ros1Ultraarm_communicationGetAnglesRequest' => Ros1Ultraarm_communicationGetAnglesRequest::SCHEMA + ['class' => Ros1Ultraarm_communicationGetAnglesRequest::class],
            'Ros1Ultraarm_communicationGetAnglesResponse' => Ros1Ultraarm_communicationGetAnglesResponse::SCHEMA + ['class' => Ros1Ultraarm_communicationGetAnglesResponse::class],
            'Ros1Ultraarm_communicationGetCoordsRequest' => Ros1Ultraarm_communicationGetCoordsRequest::SCHEMA + ['class' => Ros1Ultraarm_communicationGetCoordsRequest::class],
            'Ros1Ultraarm_communicationGetCoordsResponse' => Ros1Ultraarm_communicationGetCoordsResponse::SCHEMA + ['class' => Ros1Ultraarm_communicationGetCoordsResponse::class],
            'Ros1Ultraarm_communicationGripperStatusRequest' => Ros1Ultraarm_communicationGripperStatusRequest::SCHEMA + ['class' => Ros1Ultraarm_communicationGripperStatusRequest::class],
            'Ros1Ultraarm_communicationGripperStatusResponse' => Ros1Ultraarm_communicationGripperStatusResponse::SCHEMA + ['class' => Ros1Ultraarm_communicationGripperStatusResponse::class],
            'Ros1Ultraarm_communicationPumpStatusRequest' => Ros1Ultraarm_communicationPumpStatusRequest::SCHEMA + ['class' => Ros1Ultraarm_communicationPumpStatusRequest::class],
            'Ros1Ultraarm_communicationPumpStatusResponse' => Ros1Ultraarm_communicationPumpStatusResponse::SCHEMA + ['class' => Ros1Ultraarm_communicationPumpStatusResponse::class],
            'Ros1Ultraarm_communicationSetAnglesRequest' => Ros1Ultraarm_communicationSetAnglesRequest::SCHEMA + ['class' => Ros1Ultraarm_communicationSetAnglesRequest::class],
            'Ros1Ultraarm_communicationSetAnglesResponse' => Ros1Ultraarm_communicationSetAnglesResponse::SCHEMA + ['class' => Ros1Ultraarm_communicationSetAnglesResponse::class],
            'Ros1Ultraarm_communicationSetCoordsRequest' => Ros1Ultraarm_communicationSetCoordsRequest::SCHEMA + ['class' => Ros1Ultraarm_communicationSetCoordsRequest::class],
            'Ros1Ultraarm_communicationSetCoordsResponse' => Ros1Ultraarm_communicationSetCoordsResponse::SCHEMA + ['class' => Ros1Ultraarm_communicationSetCoordsResponse::class],
        ]);
        return $wire;
    }
}
