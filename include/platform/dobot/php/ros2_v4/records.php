<?php
declare(strict_types=1);
namespace Uwvm\Dobot\ros2_v4;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own all 2 original dobot_msgs_v4/msg/RobotStatus fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4MsgRobotStatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4MsgRobotStatus',
        'type' => 'dobot_msgs_v4/msg/RobotStatus',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/msg/RobotStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eee706b4ec3949d677c44797c59b343856c3fee77526ffc53ed2d4b5f94f62de',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'is_enable',
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
                'name' => 'is_connected',
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
    /** @brief Original is_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $is_enable;
    /** @brief Original is_connected field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $is_connected;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('is_enable', $values))
            $this->is_enable = $values['is_enable'];
        else
        {
            $this->is_enable = false;
        }
        if (array_key_exists('is_connected', $values))
            $this->is_connected = $values['is_connected'];
        else
        {
            $this->is_connected = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4MsgRobotStatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4MsgRobotStatus', $bytes);
    }
}

/** @brief Own all 6 original dobot_msgs_v4/msg/ToolVectorActual fields.
 * @details 48..48 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4MsgToolVectorActual
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4MsgToolVectorActual',
        'type' => 'dobot_msgs_v4/msg/ToolVectorActual',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/msg/ToolVectorActual',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2d0771f8fdeb4e475f6e411b0193f8ecc4aaba32e344f16b641d3c5bbe682b4d',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float64 scalar.
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4MsgToolVectorActual', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4MsgToolVectorActual', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/AI_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAI_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAI_Request',
        'type' => 'dobot_msgs_v4/srv/AI_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AI_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bdbc80f3e76a6774e837d87435329a76b10e34cc5d9cb18b98050dc3359159bb',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAI_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAI_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/AI_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAI_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAI_Response',
        'type' => 'dobot_msgs_v4/srv/AI_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AI_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5fbdce37610593de2a03d2f49cc02766663a8622a20f8e2347454e778ea075b4',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAI_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAI_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/AO_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAO_Request',
        'type' => 'dobot_msgs_v4/srv/AO_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5078d8712b23ba062ad643216ba7e1affdf4bf590b183ad14b536081d45ab3e5',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAO_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/AO_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAO_Response',
        'type' => 'dobot_msgs_v4/srv/AO_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8011a322470545bc19910e6d56fb7254c3d82799a5080d751ea6ae042b658c9c',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAO_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/AOInstant_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAOInstant_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAOInstant_Request',
        'type' => 'dobot_msgs_v4/srv/AOInstant_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AOInstant_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_628b66109b5b38d9db98cdc855626f7213909027f511674c2653b72483ac3414',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAOInstant_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAOInstant_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/AOInstant_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAOInstant_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAOInstant_Response',
        'type' => 'dobot_msgs_v4/srv/AOInstant_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AOInstant_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f4647c9dfddea33b375f95ef624306bf28d127245a4576f8840973cc63dca5e8',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAOInstant_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAOInstant_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/AccJ_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAccJ_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAccJ_Request',
        'type' => 'dobot_msgs_v4/srv/AccJ_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AccJ_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_248a82af3c8962079ec85dd3f8ade486f0887d49e8a357df575f98f47ffef734',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'r',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original r field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $r;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('r', $values))
            $this->r = $values['r'];
        else
        {
            $this->r = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAccJ_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAccJ_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/AccJ_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAccJ_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAccJ_Response',
        'type' => 'dobot_msgs_v4/srv/AccJ_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AccJ_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9be895251d37fb27d4831f43cd8266e4d706de267d7c3940c1dd67a741daa588',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAccJ_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAccJ_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/AccL_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAccL_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAccL_Request',
        'type' => 'dobot_msgs_v4/srv/AccL_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AccL_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bcd179d618549545e1b376f277a5adcae950aa3175613f9d77a75faf4d625d79',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'r',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original r field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $r;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('r', $values))
            $this->r = $values['r'];
        else
        {
            $this->r = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAccL_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAccL_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/AccL_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvAccL_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvAccL_Response',
        'type' => 'dobot_msgs_v4/srv/AccL_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/AccL_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1303a7daae664e089cd34186755f63a48f351e378a42f13eb14b574b29739920',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvAccL_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvAccL_Response', $bytes);
    }
}

/** @brief Own all 14 original dobot_msgs_v4/srv/Arc_Request fields.
 * @details 101..4261 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvArc_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvArc_Request',
        'type' => 'dobot_msgs_v4/srv/Arc_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Arc_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3b6cd15f881546de8f56ceee68e65730452c66b5114cfbf6b769917adf1d7fb0',
        'minimum' => 101,
        'maximum' => 4261,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mode',
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
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'a2',
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
                'name' => 'b2',
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
                'name' => 'c2',
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
                'name' => 'd2',
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
                'name' => 'e2',
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
                'name' => 'f2',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original mode field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original a2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a2;
    /** @brief Original b2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b2;
    /** @brief Original c2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c2;
    /** @brief Original d2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d2;
    /** @brief Original e2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e2;
    /** @brief Original f2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f2;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = false;
        }
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('a2', $values))
            $this->a2 = $values['a2'];
        else
        {
            $this->a2 = 0.0;
        }
        if (array_key_exists('b2', $values))
            $this->b2 = $values['b2'];
        else
        {
            $this->b2 = 0.0;
        }
        if (array_key_exists('c2', $values))
            $this->c2 = $values['c2'];
        else
        {
            $this->c2 = 0.0;
        }
        if (array_key_exists('d2', $values))
            $this->d2 = $values['d2'];
        else
        {
            $this->d2 = 0.0;
        }
        if (array_key_exists('e2', $values))
            $this->e2 = $values['e2'];
        else
        {
            $this->e2 = 0.0;
        }
        if (array_key_exists('f2', $values))
            $this->f2 = $values['f2'];
        else
        {
            $this->f2 = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvArc_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvArc_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/Arc_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvArc_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvArc_Response',
        'type' => 'dobot_msgs_v4/srv/Arc_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Arc_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e018ed128ffdad09c6c99ce071b191d7fe55f806026249a8d3172e55a00bfc58',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvArc_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvArc_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/BrakeControl_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvBrakeControl_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvBrakeControl_Request',
        'type' => 'dobot_msgs_v4/srv/BrakeControl_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/BrakeControl_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e6a5156fbf4ad3e5934d8944aa1a2d2558a869e85484117ed7d7005cc7fe4aff',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'axis_id',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original axis_id field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $axis_id;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('axis_id', $values))
            $this->axis_id = $values['axis_id'];
        else
        {
            $this->axis_id = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvBrakeControl_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvBrakeControl_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/BrakeControl_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvBrakeControl_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvBrakeControl_Response',
        'type' => 'dobot_msgs_v4/srv/BrakeControl_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/BrakeControl_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e614c144b2ffa2db3c2bdd51ee91c8764dcbeba212b0a6fa84b115bcdd90066d',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvBrakeControl_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvBrakeControl_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/CP_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCP_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCP_Request',
        'type' => 'dobot_msgs_v4/srv/CP_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CP_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5b50f0e2818dcb92b710256b11f5dac64514ceda991b539d39e250fa7ebcaead',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'r',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original r field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $r;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('r', $values))
            $this->r = $values['r'];
        else
        {
            $this->r = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCP_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCP_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/CP_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCP_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCP_Response',
        'type' => 'dobot_msgs_v4/srv/CP_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CP_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0a5b672966243045235fa5fd51f9aaad2dd127baf8223dbd7fa4fe10dc9d0c62',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCP_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCP_Response', $bytes);
    }
}

/** @brief Own all 3 original dobot_msgs_v4/srv/CalcTool_Request fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCalcTool_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCalcTool_Request',
        'type' => 'dobot_msgs_v4/srv/CalcTool_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CalcTool_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4962e0dd8c306af10844fe93e0cad24f290bae794ed8730d38a3540b50e261b5',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'matrix',
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
                'name' => 'offset',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original matrix field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $matrix;
    /** @brief Original offset field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $offset;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('matrix', $values))
            $this->matrix = $values['matrix'];
        else
        {
            $this->matrix = 0;
        }
        if (array_key_exists('offset', $values))
            $this->offset = $values['offset'];
        else
        {
            $this->offset = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCalcTool_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCalcTool_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/CalcTool_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCalcTool_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCalcTool_Response',
        'type' => 'dobot_msgs_v4/srv/CalcTool_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CalcTool_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7809dd31ed483c5a1edaf7d5ccdc60741a9936739c2eef6608180580a91461de',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCalcTool_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCalcTool_Response', $bytes);
    }
}

/** @brief Own all 3 original dobot_msgs_v4/srv/CalcUser_Request fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCalcUser_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCalcUser_Request',
        'type' => 'dobot_msgs_v4/srv/CalcUser_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CalcUser_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4064b15154e37f79d354d6553feab616d162f0b2401dec4ebeebe85572e6b735',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'matrix',
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
                'name' => 'offset',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original matrix field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $matrix;
    /** @brief Original offset field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $offset;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('matrix', $values))
            $this->matrix = $values['matrix'];
        else
        {
            $this->matrix = 0;
        }
        if (array_key_exists('offset', $values))
            $this->offset = $values['offset'];
        else
        {
            $this->offset = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCalcUser_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCalcUser_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/CalcUser_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCalcUser_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCalcUser_Response',
        'type' => 'dobot_msgs_v4/srv/CalcUser_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CalcUser_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_082fa64dc008e07ace128e2681f18c3eec3ad0a3af15f07915868dd04a8f2196',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCalcUser_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCalcUser_Response', $bytes);
    }
}

/** @brief Own all 19 original dobot_msgs_v4/srv/CheckOddMovC_Request fields.
 * @details 148..4308 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCheckOddMovC_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCheckOddMovC_Request',
        'type' => 'dobot_msgs_v4/srv/CheckOddMovC_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CheckOddMovC_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8fe5accb27df28e70af66f59cec2d3366c0c5d7f17bef94ddd86446a69054312',
        'minimum' => 148,
        'maximum' => 4308,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'point1_j1',
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
                'name' => 'point1_j2',
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
                'name' => 'point1_j3',
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
                'name' => 'point1_j4',
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
                'name' => 'point1_j5',
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
                'name' => 'point1_j6',
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
                'name' => 'point2_j1',
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
                'name' => 'point2_j2',
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
                'name' => 'point2_j3',
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
                'name' => 'point2_j4',
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
                'name' => 'point2_j5',
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
                'name' => 'point2_j6',
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
                'name' => 'point3_j1',
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
                'name' => 'point3_j2',
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
                'name' => 'point3_j3',
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
                'name' => 'point3_j4',
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
                'name' => 'point3_j5',
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
                'name' => 'point3_j6',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original point1_j1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j1;
    /** @brief Original point1_j2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j2;
    /** @brief Original point1_j3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j3;
    /** @brief Original point1_j4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j4;
    /** @brief Original point1_j5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j5;
    /** @brief Original point1_j6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j6;
    /** @brief Original point2_j1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j1;
    /** @brief Original point2_j2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j2;
    /** @brief Original point2_j3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j3;
    /** @brief Original point2_j4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j4;
    /** @brief Original point2_j5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j5;
    /** @brief Original point2_j6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j6;
    /** @brief Original point3_j1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point3_j1;
    /** @brief Original point3_j2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point3_j2;
    /** @brief Original point3_j3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point3_j3;
    /** @brief Original point3_j4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point3_j4;
    /** @brief Original point3_j5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point3_j5;
    /** @brief Original point3_j6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point3_j6;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('point1_j1', $values))
            $this->point1_j1 = $values['point1_j1'];
        else
        {
            $this->point1_j1 = 0.0;
        }
        if (array_key_exists('point1_j2', $values))
            $this->point1_j2 = $values['point1_j2'];
        else
        {
            $this->point1_j2 = 0.0;
        }
        if (array_key_exists('point1_j3', $values))
            $this->point1_j3 = $values['point1_j3'];
        else
        {
            $this->point1_j3 = 0.0;
        }
        if (array_key_exists('point1_j4', $values))
            $this->point1_j4 = $values['point1_j4'];
        else
        {
            $this->point1_j4 = 0.0;
        }
        if (array_key_exists('point1_j5', $values))
            $this->point1_j5 = $values['point1_j5'];
        else
        {
            $this->point1_j5 = 0.0;
        }
        if (array_key_exists('point1_j6', $values))
            $this->point1_j6 = $values['point1_j6'];
        else
        {
            $this->point1_j6 = 0.0;
        }
        if (array_key_exists('point2_j1', $values))
            $this->point2_j1 = $values['point2_j1'];
        else
        {
            $this->point2_j1 = 0.0;
        }
        if (array_key_exists('point2_j2', $values))
            $this->point2_j2 = $values['point2_j2'];
        else
        {
            $this->point2_j2 = 0.0;
        }
        if (array_key_exists('point2_j3', $values))
            $this->point2_j3 = $values['point2_j3'];
        else
        {
            $this->point2_j3 = 0.0;
        }
        if (array_key_exists('point2_j4', $values))
            $this->point2_j4 = $values['point2_j4'];
        else
        {
            $this->point2_j4 = 0.0;
        }
        if (array_key_exists('point2_j5', $values))
            $this->point2_j5 = $values['point2_j5'];
        else
        {
            $this->point2_j5 = 0.0;
        }
        if (array_key_exists('point2_j6', $values))
            $this->point2_j6 = $values['point2_j6'];
        else
        {
            $this->point2_j6 = 0.0;
        }
        if (array_key_exists('point3_j1', $values))
            $this->point3_j1 = $values['point3_j1'];
        else
        {
            $this->point3_j1 = 0.0;
        }
        if (array_key_exists('point3_j2', $values))
            $this->point3_j2 = $values['point3_j2'];
        else
        {
            $this->point3_j2 = 0.0;
        }
        if (array_key_exists('point3_j3', $values))
            $this->point3_j3 = $values['point3_j3'];
        else
        {
            $this->point3_j3 = 0.0;
        }
        if (array_key_exists('point3_j4', $values))
            $this->point3_j4 = $values['point3_j4'];
        else
        {
            $this->point3_j4 = 0.0;
        }
        if (array_key_exists('point3_j5', $values))
            $this->point3_j5 = $values['point3_j5'];
        else
        {
            $this->point3_j5 = 0.0;
        }
        if (array_key_exists('point3_j6', $values))
            $this->point3_j6 = $values['point3_j6'];
        else
        {
            $this->point3_j6 = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCheckOddMovC_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCheckOddMovC_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/CheckOddMovC_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCheckOddMovC_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCheckOddMovC_Response',
        'type' => 'dobot_msgs_v4/srv/CheckOddMovC_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CheckOddMovC_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4ff22013962988c5d1a2660d90b0f0b5df9353f0352842567ab5355a6ce2c504',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCheckOddMovC_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCheckOddMovC_Response', $bytes);
    }
}

/** @brief Own all 13 original dobot_msgs_v4/srv/CheckOddMovJ_Request fields.
 * @details 100..4260 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request',
        'type' => 'dobot_msgs_v4/srv/CheckOddMovJ_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CheckOddMovJ_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4edc7c7b03747ade62995528fb8a0a54fd4ab166b427e8f2856117651d212e83',
        'minimum' => 100,
        'maximum' => 4260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'point1_j1',
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
                'name' => 'point1_j2',
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
                'name' => 'point1_j3',
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
                'name' => 'point1_j4',
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
                'name' => 'point1_j5',
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
                'name' => 'point1_j6',
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
                'name' => 'point2_j1',
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
                'name' => 'point2_j2',
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
                'name' => 'point2_j3',
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
                'name' => 'point2_j4',
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
                'name' => 'point2_j5',
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
                'name' => 'point2_j6',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original point1_j1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j1;
    /** @brief Original point1_j2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j2;
    /** @brief Original point1_j3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j3;
    /** @brief Original point1_j4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j4;
    /** @brief Original point1_j5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j5;
    /** @brief Original point1_j6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j6;
    /** @brief Original point2_j1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j1;
    /** @brief Original point2_j2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j2;
    /** @brief Original point2_j3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j3;
    /** @brief Original point2_j4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j4;
    /** @brief Original point2_j5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j5;
    /** @brief Original point2_j6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j6;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('point1_j1', $values))
            $this->point1_j1 = $values['point1_j1'];
        else
        {
            $this->point1_j1 = 0.0;
        }
        if (array_key_exists('point1_j2', $values))
            $this->point1_j2 = $values['point1_j2'];
        else
        {
            $this->point1_j2 = 0.0;
        }
        if (array_key_exists('point1_j3', $values))
            $this->point1_j3 = $values['point1_j3'];
        else
        {
            $this->point1_j3 = 0.0;
        }
        if (array_key_exists('point1_j4', $values))
            $this->point1_j4 = $values['point1_j4'];
        else
        {
            $this->point1_j4 = 0.0;
        }
        if (array_key_exists('point1_j5', $values))
            $this->point1_j5 = $values['point1_j5'];
        else
        {
            $this->point1_j5 = 0.0;
        }
        if (array_key_exists('point1_j6', $values))
            $this->point1_j6 = $values['point1_j6'];
        else
        {
            $this->point1_j6 = 0.0;
        }
        if (array_key_exists('point2_j1', $values))
            $this->point2_j1 = $values['point2_j1'];
        else
        {
            $this->point2_j1 = 0.0;
        }
        if (array_key_exists('point2_j2', $values))
            $this->point2_j2 = $values['point2_j2'];
        else
        {
            $this->point2_j2 = 0.0;
        }
        if (array_key_exists('point2_j3', $values))
            $this->point2_j3 = $values['point2_j3'];
        else
        {
            $this->point2_j3 = 0.0;
        }
        if (array_key_exists('point2_j4', $values))
            $this->point2_j4 = $values['point2_j4'];
        else
        {
            $this->point2_j4 = 0.0;
        }
        if (array_key_exists('point2_j5', $values))
            $this->point2_j5 = $values['point2_j5'];
        else
        {
            $this->point2_j5 = 0.0;
        }
        if (array_key_exists('point2_j6', $values))
            $this->point2_j6 = $values['point2_j6'];
        else
        {
            $this->point2_j6 = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/CheckOddMovJ_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response',
        'type' => 'dobot_msgs_v4/srv/CheckOddMovJ_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CheckOddMovJ_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_57242fb5b7c9947263615b398a413491c9c643a61f9f7ad0e385fa8edb23b842',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response', $bytes);
    }
}

/** @brief Own all 13 original dobot_msgs_v4/srv/CheckOddMovL_Request fields.
 * @details 100..4260 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCheckOddMovL_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCheckOddMovL_Request',
        'type' => 'dobot_msgs_v4/srv/CheckOddMovL_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CheckOddMovL_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cc1d518a7841cc1e6ae2dc6fe5af528957806e9ced225fc5ebec644b4775c022',
        'minimum' => 100,
        'maximum' => 4260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'point1_j1',
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
                'name' => 'point1_j2',
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
                'name' => 'point1_j3',
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
                'name' => 'point1_j4',
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
                'name' => 'point1_j5',
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
                'name' => 'point1_j6',
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
                'name' => 'point2_j1',
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
                'name' => 'point2_j2',
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
                'name' => 'point2_j3',
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
                'name' => 'point2_j4',
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
                'name' => 'point2_j5',
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
                'name' => 'point2_j6',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original point1_j1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j1;
    /** @brief Original point1_j2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j2;
    /** @brief Original point1_j3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j3;
    /** @brief Original point1_j4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j4;
    /** @brief Original point1_j5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j5;
    /** @brief Original point1_j6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point1_j6;
    /** @brief Original point2_j1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j1;
    /** @brief Original point2_j2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j2;
    /** @brief Original point2_j3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j3;
    /** @brief Original point2_j4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j4;
    /** @brief Original point2_j5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j5;
    /** @brief Original point2_j6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point2_j6;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('point1_j1', $values))
            $this->point1_j1 = $values['point1_j1'];
        else
        {
            $this->point1_j1 = 0.0;
        }
        if (array_key_exists('point1_j2', $values))
            $this->point1_j2 = $values['point1_j2'];
        else
        {
            $this->point1_j2 = 0.0;
        }
        if (array_key_exists('point1_j3', $values))
            $this->point1_j3 = $values['point1_j3'];
        else
        {
            $this->point1_j3 = 0.0;
        }
        if (array_key_exists('point1_j4', $values))
            $this->point1_j4 = $values['point1_j4'];
        else
        {
            $this->point1_j4 = 0.0;
        }
        if (array_key_exists('point1_j5', $values))
            $this->point1_j5 = $values['point1_j5'];
        else
        {
            $this->point1_j5 = 0.0;
        }
        if (array_key_exists('point1_j6', $values))
            $this->point1_j6 = $values['point1_j6'];
        else
        {
            $this->point1_j6 = 0.0;
        }
        if (array_key_exists('point2_j1', $values))
            $this->point2_j1 = $values['point2_j1'];
        else
        {
            $this->point2_j1 = 0.0;
        }
        if (array_key_exists('point2_j2', $values))
            $this->point2_j2 = $values['point2_j2'];
        else
        {
            $this->point2_j2 = 0.0;
        }
        if (array_key_exists('point2_j3', $values))
            $this->point2_j3 = $values['point2_j3'];
        else
        {
            $this->point2_j3 = 0.0;
        }
        if (array_key_exists('point2_j4', $values))
            $this->point2_j4 = $values['point2_j4'];
        else
        {
            $this->point2_j4 = 0.0;
        }
        if (array_key_exists('point2_j5', $values))
            $this->point2_j5 = $values['point2_j5'];
        else
        {
            $this->point2_j5 = 0.0;
        }
        if (array_key_exists('point2_j6', $values))
            $this->point2_j6 = $values['point2_j6'];
        else
        {
            $this->point2_j6 = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCheckOddMovL_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCheckOddMovL_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/CheckOddMovL_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCheckOddMovL_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCheckOddMovL_Response',
        'type' => 'dobot_msgs_v4/srv/CheckOddMovL_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/CheckOddMovL_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_13fc61c35c8f6a6a0cc56cc7aa5b72060d757a61c9c388992d1e3eee2db8f6da',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCheckOddMovL_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCheckOddMovL_Response', $bytes);
    }
}

/** @brief Own all 15 original dobot_msgs_v4/srv/Circle_Request fields.
 * @details 105..4265 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCircle_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCircle_Request',
        'type' => 'dobot_msgs_v4/srv/Circle_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Circle_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_43b8e7a31172e3b965dfc6ef6d1c8867c6151a2ffecce5416c56d4c15a95ca6e',
        'minimum' => 105,
        'maximum' => 4265,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mode',
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
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'a2',
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
                'name' => 'b2',
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
                'name' => 'c2',
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
                'name' => 'd2',
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
                'name' => 'e2',
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
                'name' => 'f2',
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
                'name' => 'count',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original mode field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original a2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a2;
    /** @brief Original b2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b2;
    /** @brief Original c2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c2;
    /** @brief Original d2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d2;
    /** @brief Original e2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e2;
    /** @brief Original f2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f2;
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = false;
        }
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('a2', $values))
            $this->a2 = $values['a2'];
        else
        {
            $this->a2 = 0.0;
        }
        if (array_key_exists('b2', $values))
            $this->b2 = $values['b2'];
        else
        {
            $this->b2 = 0.0;
        }
        if (array_key_exists('c2', $values))
            $this->c2 = $values['c2'];
        else
        {
            $this->c2 = 0.0;
        }
        if (array_key_exists('d2', $values))
            $this->d2 = $values['d2'];
        else
        {
            $this->d2 = 0.0;
        }
        if (array_key_exists('e2', $values))
            $this->e2 = $values['e2'];
        else
        {
            $this->e2 = 0.0;
        }
        if (array_key_exists('f2', $values))
            $this->f2 = $values['f2'];
        else
        {
            $this->f2 = 0.0;
        }
        if (array_key_exists('count', $values))
            $this->count = $values['count'];
        else
        {
            $this->count = 0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCircle_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCircle_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/Circle_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvCircle_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvCircle_Response',
        'type' => 'dobot_msgs_v4/srv/Circle_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Circle_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9f6bc32bc392e71c29f09360619c6157e2b5b06221ab124f4930cb3abce9ca31',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvCircle_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvCircle_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/ClearError_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvClearError_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvClearError_Request',
        'type' => 'dobot_msgs_v4/srv/ClearError_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ClearError_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b1688c12ed6b3a7d1dd48aa672424d279eeb28e19d63417e95daa991c8d0dbc6',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvClearError_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvClearError_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ClearError_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvClearError_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvClearError_Response',
        'type' => 'dobot_msgs_v4/srv/ClearError_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ClearError_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7e609ead650473c695d52a83ff28e19bebd3e04672c38eedd32077bc8f5f3b71',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvClearError_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvClearError_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/Continue_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvContinue_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvContinue_Request',
        'type' => 'dobot_msgs_v4/srv/Continue_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Continue_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c1dc157f99d5d6bbd3ac0c035b601f651c8daaf5d8a4f0d56d1cc338e588e20a',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvContinue_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvContinue_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/Continue_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvContinue_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvContinue_Response',
        'type' => 'dobot_msgs_v4/srv/Continue_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Continue_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_691cb70f5534d1a2786105456dd8a2fa1a587952b570b746f4ca2ff7f98fb897',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvContinue_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvContinue_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/DI_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDI_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDI_Request',
        'type' => 'dobot_msgs_v4/srv/DI_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DI_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eb44c535be237d52a065df43829612a2e5d95b29223580dc03f134c1e249bdfc',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDI_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDI_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/DI_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDI_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDI_Response',
        'type' => 'dobot_msgs_v4/srv/DI_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DI_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eaef4431d8260336925a2351d62a3257488b5984f509e445bf62c66fe1f46fa2',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDI_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDI_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/DIGroup_Request fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDIGroup_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDIGroup_Request',
        'type' => 'dobot_msgs_v4/srv/DIGroup_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DIGroup_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_45a371932213f97947cd5240b831d5713aa6288210ce7201d84a6c19ce5c082f',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'args',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original args field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $args;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('args', $values))
            $this->args = $values['args'];
        else
        {
            $this->args = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDIGroup_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDIGroup_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/DIGroup_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDIGroup_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDIGroup_Response',
        'type' => 'dobot_msgs_v4/srv/DIGroup_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DIGroup_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8353adc015354e736091c4350a030f44506659d2024f4a06d076b02b31e37650',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDIGroup_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDIGroup_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/DIGroupDEC_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDIGroupDEC_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDIGroupDEC_Request',
        'type' => 'dobot_msgs_v4/srv/DIGroupDEC_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DIGroupDEC_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_05aed569214589409cc5e8b99482cd7ddaf4fc7fecd761030b27f17f4c5e17a8',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'group',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original group field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $group;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('group', $values))
            $this->group = $values['group'];
        else
        {
            $this->group = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDIGroupDEC_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDIGroupDEC_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/DIGroupDEC_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDIGroupDEC_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDIGroupDEC_Response',
        'type' => 'dobot_msgs_v4/srv/DIGroupDEC_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DIGroupDEC_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_81cac737811c76967ba0d4c09654e7f9b2fc7131505b82c74594f0bfa76b4d40',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDIGroupDEC_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDIGroupDEC_Response', $bytes);
    }
}

/** @brief Own all 3 original dobot_msgs_v4/srv/DO_Request fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDO_Request',
        'type' => 'dobot_msgs_v4/srv/DO_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a881682fa874e49e7732ccc5a28dd07c48c3f7669aba865393eaa9912164c431',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'time',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original status field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $status;
    /** @brief Original time field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $time;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = 0;
        }
        if (array_key_exists('time', $values))
            $this->time = $values['time'];
        else
        {
            $this->time = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDO_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/DO_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDO_Response',
        'type' => 'dobot_msgs_v4/srv/DO_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_245660015aa11d9c53c31131157a3447b947963c8759a1137ecba9bfd05378d5',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDO_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/DOGroup_Request fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDOGroup_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDOGroup_Request',
        'type' => 'dobot_msgs_v4/srv/DOGroup_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DOGroup_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_98f0df1adff5f79f5dee48e9e6c3fb3fe1dc31f536c73e3c6eaaaf5f556a7823',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'args',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original args field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $args;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('args', $values))
            $this->args = $values['args'];
        else
        {
            $this->args = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDOGroup_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDOGroup_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/DOGroup_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDOGroup_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDOGroup_Response',
        'type' => 'dobot_msgs_v4/srv/DOGroup_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DOGroup_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4c34aafaa069fc5738e9d4d7c2625e387977110db900bba8151ebbafe42b20db',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDOGroup_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDOGroup_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/DOGroupDEC_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDOGroupDEC_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDOGroupDEC_Request',
        'type' => 'dobot_msgs_v4/srv/DOGroupDEC_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DOGroupDEC_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2402f7f4195746e5c3fa2993a0f9100d05dc4f24546866f65268898cb118c3d8',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'group',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original group field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $group;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('group', $values))
            $this->group = $values['group'];
        else
        {
            $this->group = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDOGroupDEC_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDOGroupDEC_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/DOGroupDEC_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDOGroupDEC_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDOGroupDEC_Response',
        'type' => 'dobot_msgs_v4/srv/DOGroupDEC_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DOGroupDEC_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_497c31bed5a6d9b634beb984ebc4ceb9ba1cf64be30d63844a33bd7f231b5c9f',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDOGroupDEC_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDOGroupDEC_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/DOInstant_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDOInstant_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDOInstant_Request',
        'type' => 'dobot_msgs_v4/srv/DOInstant_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DOInstant_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5052cd81fbe27ce716965aa008daec0c8c052cdcca5355dc3b71b16655b41cd7',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original status field; int32 scalar.
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
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDOInstant_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDOInstant_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/DOInstant_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDOInstant_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDOInstant_Response',
        'type' => 'dobot_msgs_v4/srv/DOInstant_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DOInstant_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c654a28a690ca9412e2967ab9ff1cd5c831ce42ab2f38cf813bbe44465daf998',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDOInstant_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDOInstant_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/DisableRobot_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDisableRobot_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDisableRobot_Request',
        'type' => 'dobot_msgs_v4/srv/DisableRobot_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DisableRobot_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7882b1f1429c23acbe145b8ce69596107d451a85a47e8215f5f27ee909d80c87',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDisableRobot_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDisableRobot_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/DisableRobot_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDisableRobot_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDisableRobot_Response',
        'type' => 'dobot_msgs_v4/srv/DisableRobot_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DisableRobot_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_785b8a705af89d59fbe4055cd50414024ddf8d95e01ae16d32f17cca5d10f878',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDisableRobot_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDisableRobot_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/DragSensivity_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDragSensivity_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDragSensivity_Request',
        'type' => 'dobot_msgs_v4/srv/DragSensivity_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DragSensivity_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bdd47b9cde315a72fbf0d4ce40d44bc6fdc6d0706f94cbba7c51454232e8652a',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDragSensivity_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDragSensivity_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/DragSensivity_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvDragSensivity_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvDragSensivity_Response',
        'type' => 'dobot_msgs_v4/srv/DragSensivity_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/DragSensivity_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_128b7bef7b3fddf68eba6aeeaeac41d450bedab6bf3d18be366f456970f7fecb',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvDragSensivity_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvDragSensivity_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/EmergencyStop_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEmergencyStop_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEmergencyStop_Request',
        'type' => 'dobot_msgs_v4/srv/EmergencyStop_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EmergencyStop_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c3613b55e06feb34dc533222386ac1f680e50218325331fe1a23d6d0f926a4a6',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEmergencyStop_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEmergencyStop_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/EmergencyStop_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEmergencyStop_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEmergencyStop_Response',
        'type' => 'dobot_msgs_v4/srv/EmergencyStop_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EmergencyStop_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_97e6abce2a240c971cc4281894dc339642aa6bd5e87099696f66ed20bbd265b9',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEmergencyStop_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEmergencyStop_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/EnableFTSensor_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEnableFTSensor_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEnableFTSensor_Request',
        'type' => 'dobot_msgs_v4/srv/EnableFTSensor_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EnableFTSensor_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eedf535c97390b7221afb06203a23b2e515fdc6d84d0458a2440270939c81896',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'status',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; int32 scalar.
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
            $this->status = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEnableFTSensor_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEnableFTSensor_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/EnableFTSensor_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEnableFTSensor_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEnableFTSensor_Response',
        'type' => 'dobot_msgs_v4/srv/EnableFTSensor_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EnableFTSensor_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a706bb66974028716f4c39597ad0d103f8e31264cf137cb9ab173955e892c68e',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEnableFTSensor_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEnableFTSensor_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/EnableRobot_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEnableRobot_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEnableRobot_Request',
        'type' => 'dobot_msgs_v4/srv/EnableRobot_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EnableRobot_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1b6c1b223ff41b41fe94b4279c7659913f8bb9bcbf2deca33db3560833c3395d',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEnableRobot_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEnableRobot_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/EnableRobot_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEnableRobot_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEnableRobot_Response',
        'type' => 'dobot_msgs_v4/srv/EnableRobot_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EnableRobot_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e12accb5c027987874ee96f644bb325770f7c4aab56b85ae4c1b318402299f3f',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEnableRobot_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEnableRobot_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/EnableSafeSkin_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request',
        'type' => 'dobot_msgs_v4/srv/EnableSafeSkin_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EnableSafeSkin_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2bb1a6b02d736fed3c8efd58a154bd1f5531f78e77ed97d41bc1a009021bd6bd',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'status',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; int32 scalar.
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
            $this->status = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/EnableSafeSkin_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response',
        'type' => 'dobot_msgs_v4/srv/EnableSafeSkin_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EnableSafeSkin_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_41602848b5137aea415e29ccfcaf413f098050f535f6b4030bd8e42efac7665c',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/EndRTOffset_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEndRTOffset_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEndRTOffset_Request',
        'type' => 'dobot_msgs_v4/srv/EndRTOffset_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EndRTOffset_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_33b058e6146ce66391d69a891b0c06fe86c92d6923a0db32845d1629c7f5ce45',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEndRTOffset_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEndRTOffset_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/EndRTOffset_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvEndRTOffset_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvEndRTOffset_Response',
        'type' => 'dobot_msgs_v4/srv/EndRTOffset_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/EndRTOffset_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4327bcad0a32d1c6d9f46b27f106f10d9264c0aaefe9ec657c23e0890c803659',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvEndRTOffset_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvEndRTOffset_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCCollisionSwitch_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request',
        'type' => 'dobot_msgs_v4/srv/FCCollisionSwitch_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCCollisionSwitch_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ae2cac85626fcfc41d0db663f11e16441be6aef482e44905ecf808b9e35c2aff',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'enable',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original enable field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $enable;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('enable', $values))
            $this->enable = $values['enable'];
        else
        {
            $this->enable = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCCollisionSwitch_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response',
        'type' => 'dobot_msgs_v4/srv/FCCollisionSwitch_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCCollisionSwitch_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1bf6878cb66870fd62fcd4f860aea8e2dcc9b49e1951227946395c4182118602',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response', $bytes);
    }
}

/** @brief Own all 15 original dobot_msgs_v4/srv/FCForceMode_Request fields.
 * @details 60..60 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCForceMode_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCForceMode_Request',
        'type' => 'dobot_msgs_v4/srv/FCForceMode_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCForceMode_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_347d80606d3f49539d04e22f4cb496f6500a3cb61f58984e8866a3ca87ae0f54',
        'minimum' => 60,
        'maximum' => 60,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
                'name' => 'fx',
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
                'name' => 'fy',
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
                'name' => 'fz',
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
                'name' => 'frx',
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
                'name' => 'fry',
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
                'name' => 'frz',
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
                'name' => 'reference',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'user',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'tool',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
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
    /** @brief Original x field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original fx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $fx;
    /** @brief Original fy field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $fy;
    /** @brief Original fz field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $fz;
    /** @brief Original frx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $frx;
    /** @brief Original fry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $fry;
    /** @brief Original frz field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $frz;
    /** @brief Original reference field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $reference;
    /** @brief Original user field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $user;
    /** @brief Original tool field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tool;
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
            $this->x = 0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0;
        }
        if (array_key_exists('fx', $values))
            $this->fx = $values['fx'];
        else
        {
            $this->fx = 0;
        }
        if (array_key_exists('fy', $values))
            $this->fy = $values['fy'];
        else
        {
            $this->fy = 0;
        }
        if (array_key_exists('fz', $values))
            $this->fz = $values['fz'];
        else
        {
            $this->fz = 0;
        }
        if (array_key_exists('frx', $values))
            $this->frx = $values['frx'];
        else
        {
            $this->frx = 0;
        }
        if (array_key_exists('fry', $values))
            $this->fry = $values['fry'];
        else
        {
            $this->fry = 0;
        }
        if (array_key_exists('frz', $values))
            $this->frz = $values['frz'];
        else
        {
            $this->frz = 0;
        }
        if (array_key_exists('reference', $values))
            $this->reference = $values['reference'];
        else
        {
            $this->reference = -1;
        }
        if (array_key_exists('user', $values))
            $this->user = $values['user'];
        else
        {
            $this->user = -1;
        }
        if (array_key_exists('tool', $values))
            $this->tool = $values['tool'];
        else
        {
            $this->tool = -1;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCForceMode_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCForceMode_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCForceMode_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCForceMode_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCForceMode_Response',
        'type' => 'dobot_msgs_v4/srv/FCForceMode_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCForceMode_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2531c8825fa91b29951a24f9d120fc6a3f7528dec2c342da49775b90e200c117',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCForceMode_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCForceMode_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/FCOff_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCOff_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCOff_Request',
        'type' => 'dobot_msgs_v4/srv/FCOff_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCOff_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d17a82f5baa60795c8acac38b00fde67a0f4d867033b3110011c2e6bc43deb3e',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCOff_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCOff_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCOff_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCOff_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCOff_Response',
        'type' => 'dobot_msgs_v4/srv/FCOff_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCOff_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_56192a7914a1838ca52a4638fc02254111dadc27e5a27d6d6e836a6f28a90497',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCOff_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCOff_Response', $bytes);
    }
}

/** @brief Own all 6 original dobot_msgs_v4/srv/FCSetDamping_Request fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetDamping_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetDamping_Request',
        'type' => 'dobot_msgs_v4/srv/FCSetDamping_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetDamping_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_31401b97a4ed6d45287aaaf6fdf4c71ec7b3480eb82ba2ef1def506c6627cc89',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; int32 scalar.
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
            $this->x = 0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetDamping_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetDamping_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCSetDamping_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetDamping_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetDamping_Response',
        'type' => 'dobot_msgs_v4/srv/FCSetDamping_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetDamping_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1c380e2b7f9afe2fbc307f9af41e9f4fd94e037cef4293e120852680f8809e15',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetDamping_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetDamping_Response', $bytes);
    }
}

/** @brief Own all 7 original dobot_msgs_v4/srv/FCSetDeviation_Request fields.
 * @details 28..28 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetDeviation_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetDeviation_Request',
        'type' => 'dobot_msgs_v4/srv/FCSetDeviation_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetDeviation_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eec644d0993c1018f004c88b542b93da026cfc08bb3ec1b8d95f46489a0e0b51',
        'minimum' => 28,
        'maximum' => 28,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
                'name' => 'controltype',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
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
    /** @brief Original x field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original controltype field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $controltype;
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
            $this->x = 0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0;
        }
        if (array_key_exists('controltype', $values))
            $this->controltype = $values['controltype'];
        else
        {
            $this->controltype = -1;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetDeviation_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetDeviation_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCSetDeviation_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetDeviation_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetDeviation_Response',
        'type' => 'dobot_msgs_v4/srv/FCSetDeviation_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetDeviation_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eaf9f396da64133c29f4ac19e7a5f9f656a1b133af71e32e7e9e9d66281c6d40',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetDeviation_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetDeviation_Response', $bytes);
    }
}

/** @brief Own all 6 original dobot_msgs_v4/srv/FCSetForce_Request fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetForce_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetForce_Request',
        'type' => 'dobot_msgs_v4/srv/FCSetForce_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetForce_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7493fc71d24b454ee591581b5e344f5c01fd5ff049ded7b4b0094fe79819c105',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; int32 scalar.
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
            $this->x = 0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetForce_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetForce_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCSetForce_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetForce_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetForce_Response',
        'type' => 'dobot_msgs_v4/srv/FCSetForce_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetForce_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_68bfe61ae9d274f3e61687b09d241c2552d9ec2bea02ad2352d108ed3f4019ba',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetForce_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetForce_Response', $bytes);
    }
}

/** @brief Own all 6 original dobot_msgs_v4/srv/FCSetForceLimit_Request fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request',
        'type' => 'dobot_msgs_v4/srv/FCSetForceLimit_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetForceLimit_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_402fd98a518905b5bbb101e808b0e8152a544dc8eadab38899350c1c64dbeee7',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; int32 scalar.
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
            $this->x = 0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCSetForceLimit_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response',
        'type' => 'dobot_msgs_v4/srv/FCSetForceLimit_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetForceLimit_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a4087b717706babf5c3a324a1db478642f2e036b33a7fe14754caa202c4ed817',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response', $bytes);
    }
}

/** @brief Own all 6 original dobot_msgs_v4/srv/FCSetForceSpeedLimit_Request fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request',
        'type' => 'dobot_msgs_v4/srv/FCSetForceSpeedLimit_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetForceSpeedLimit_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_10ecd33899ae99e0e6bc3768ebc9ab10daf2576ce247fc7ddf105745682bc940',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; int32 scalar.
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
            $this->x = 0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCSetForceSpeedLimit_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response',
        'type' => 'dobot_msgs_v4/srv/FCSetForceSpeedLimit_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetForceSpeedLimit_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a3ae8b80fd5c157d301c2fa33d26f9718a144f0db34bf02c3bfa8dc2239f5c85',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response', $bytes);
    }
}

/** @brief Own all 6 original dobot_msgs_v4/srv/FCSetMass_Request fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetMass_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetMass_Request',
        'type' => 'dobot_msgs_v4/srv/FCSetMass_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetMass_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_088044ba8a56b2a9d5f039bb63bc5d504b04f31c017495321c48b8f4722d8ca3',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; int32 scalar.
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
            $this->x = 0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetMass_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetMass_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCSetMass_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetMass_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetMass_Response',
        'type' => 'dobot_msgs_v4/srv/FCSetMass_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetMass_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a6ba05a607a916335ac87ed5b41891438c444cd2df7c3f6ce5272d57436be3b6',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetMass_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetMass_Response', $bytes);
    }
}

/** @brief Own all 6 original dobot_msgs_v4/srv/FCSetStiffness_Request fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetStiffness_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetStiffness_Request',
        'type' => 'dobot_msgs_v4/srv/FCSetStiffness_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetStiffness_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3bbb929308cafc25ac4c90ba32b20af933d45f3c7c61d9c49d7a64e92050fae9',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; int32 scalar.
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
            $this->x = 0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetStiffness_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetStiffness_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/FCSetStiffness_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvFCSetStiffness_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvFCSetStiffness_Response',
        'type' => 'dobot_msgs_v4/srv/FCSetStiffness_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/FCSetStiffness_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7565e01faff246688f0c89b94f291c5b4da04ca79700bcbe63345d37a265d1b8',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvFCSetStiffness_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvFCSetStiffness_Response', $bytes);
    }
}

/** @brief Own all 7 original dobot_msgs_v4/srv/ForceDriveMode_Request fields.
 * @details 28..28 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvForceDriveMode_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvForceDriveMode_Request',
        'type' => 'dobot_msgs_v4/srv/ForceDriveMode_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ForceDriveMode_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_aa09ac56979c790df88d8fb0afc7c327aa367baf60b472732e85efa2dfb66126',
        'minimum' => 28,
        'maximum' => 28,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
                'name' => 'user',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
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
    /** @brief Original x field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original user field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $user;
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
            $this->x = 0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0;
        }
        if (array_key_exists('rx', $values))
            $this->rx = $values['rx'];
        else
        {
            $this->rx = 0;
        }
        if (array_key_exists('ry', $values))
            $this->ry = $values['ry'];
        else
        {
            $this->ry = 0;
        }
        if (array_key_exists('rz', $values))
            $this->rz = $values['rz'];
        else
        {
            $this->rz = 0;
        }
        if (array_key_exists('user', $values))
            $this->user = $values['user'];
        else
        {
            $this->user = -1;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvForceDriveMode_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvForceDriveMode_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ForceDriveMode_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvForceDriveMode_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvForceDriveMode_Response',
        'type' => 'dobot_msgs_v4/srv/ForceDriveMode_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ForceDriveMode_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5eee21e54b22fe8fcdaed4fdaec7547e24223d6e37defe69222264a4b8dd3c6c',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvForceDriveMode_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvForceDriveMode_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ForceDriveSpeed_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request',
        'type' => 'dobot_msgs_v4/srv/ForceDriveSpeed_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ForceDriveSpeed_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_435dbee1e046067bfb927a0017648d9a0b8e515b0e289302fbbb46ef18ff4ee1',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'speed',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original speed field; int32 scalar.
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ForceDriveSpeed_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response',
        'type' => 'dobot_msgs_v4/srv/ForceDriveSpeed_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ForceDriveSpeed_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d080dd4734667b1a4ce220e35957da4e080eab446c2f3d94725aceea6fe2b918',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetAO_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetAO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetAO_Request',
        'type' => 'dobot_msgs_v4/srv/GetAO_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetAO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e80faf08e52a92738db8426c2df23c5360e5efc2f301eb1c233872cec5b03c02',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetAO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetAO_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetAO_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetAO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetAO_Response',
        'type' => 'dobot_msgs_v4/srv/GetAO_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetAO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e55d3bf20a4305ad6125818cdb2380340afa7cd5f2e5d6350d2c8049b2520665',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetAO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetAO_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/GetAngle_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetAngle_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetAngle_Request',
        'type' => 'dobot_msgs_v4/srv/GetAngle_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetAngle_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c5cef38ae26f22408200cbedc759065a50b98823d68752aee96ec5bb996d0791',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetAngle_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetAngle_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetAngle_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetAngle_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetAngle_Response',
        'type' => 'dobot_msgs_v4/srv/GetAngle_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetAngle_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a8aad09efa2936be21e855bf0e258430954e9cd56ec97ae0fddbcd60316a3fa',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetAngle_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetAngle_Response', $bytes);
    }
}

/** @brief Own all 3 original dobot_msgs_v4/srv/GetCoils_Request fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetCoils_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetCoils_Request',
        'type' => 'dobot_msgs_v4/srv/GetCoils_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetCoils_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3b0c5613397c1e25669dd730bca4bfab5c89c9184691145a68224ec8e816cafe',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'addr',
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
                'name' => 'count',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original addr field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $addr;
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('addr', $values))
            $this->addr = $values['addr'];
        else
        {
            $this->addr = 0;
        }
        if (array_key_exists('count', $values))
            $this->count = $values['count'];
        else
        {
            $this->count = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetCoils_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetCoils_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetCoils_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetCoils_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetCoils_Response',
        'type' => 'dobot_msgs_v4/srv/GetCoils_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetCoils_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e1e2d843e743d8b7c502fc1438aef0ecd143ea6a51259473c62ba8854d256423',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetCoils_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetCoils_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/GetCurrentCommandId_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request',
        'type' => 'dobot_msgs_v4/srv/GetCurrentCommandId_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetCurrentCommandId_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4702dc010e7dbf7b30975380598d466e2cdff81254748e7ff082a8a2b1ac75d6',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetCurrentCommandId_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response',
        'type' => 'dobot_msgs_v4/srv/GetCurrentCommandId_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetCurrentCommandId_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d6c974daf9cd8e932b2703eff8b1ef824250f1a46b02ea24896da2f28554651b',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetDO_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetDO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetDO_Request',
        'type' => 'dobot_msgs_v4/srv/GetDO_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetDO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8a86fc4c758f3fda42ab46f5dcee90a64367d3a72fc71f3114ee703977bd0845',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetDO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetDO_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetDO_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetDO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetDO_Response',
        'type' => 'dobot_msgs_v4/srv/GetDO_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetDO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f297f6291b049b2b494a482c2015d078bd5c8b8ab959ce0cdfe7d9197dd7b2ec',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetDO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetDO_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetDOGroup_Request fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetDOGroup_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetDOGroup_Request',
        'type' => 'dobot_msgs_v4/srv/GetDOGroup_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetDOGroup_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2f6687ad1635eac46215c0d31adc6ca141933ff8690443ffc665ca250dd53272',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index_group',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index_group field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $index_group;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index_group', $values))
            $this->index_group = $values['index_group'];
        else
        {
            $this->index_group = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetDOGroup_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetDOGroup_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetDOGroup_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetDOGroup_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetDOGroup_Response',
        'type' => 'dobot_msgs_v4/srv/GetDOGroup_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetDOGroup_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bd99607ad22d6b0a802b4a5bb986de95020acb10bde51c186fce9388e30f834b',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetDOGroup_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetDOGroup_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetDOGroupDEC_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request',
        'type' => 'dobot_msgs_v4/srv/GetDOGroupDEC_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetDOGroupDEC_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f0ab9c764d7c8e5a54a53192530d1cb68aa9fcee20c2784fe97fdd4d9c398aed',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'group',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original group field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $group;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('group', $values))
            $this->group = $values['group'];
        else
        {
            $this->group = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetDOGroupDEC_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response',
        'type' => 'dobot_msgs_v4/srv/GetDOGroupDEC_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetDOGroupDEC_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a77468074bad22900ccfc92a285ec968b065671dfdc56758ca5af319e5270967',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetError_Request fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetError_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetError_Request',
        'type' => 'dobot_msgs_v4/srv/GetError_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetError_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dcc1abdb063c9e9d54f1de870df5b3147b7d6ab3717f70336e18de43bd7beb68',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'language',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original language field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $language;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('language', $values))
            $this->language = $values['language'];
        else
        {
            $this->language = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetError_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetError_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetError_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetError_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetError_Response',
        'type' => 'dobot_msgs_v4/srv/GetError_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetError_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1c980b444e4e71c178e5dbf1156cd70f58177b7a2267546912e4f719e95584d8',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetError_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetError_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/GetErrorID_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetErrorID_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetErrorID_Request',
        'type' => 'dobot_msgs_v4/srv/GetErrorID_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetErrorID_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e07250dedd39c3d3ba3b50ea2a585dd38219449c7793f0cc304cb839c9c3a2eb',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetErrorID_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetErrorID_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetErrorID_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetErrorID_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetErrorID_Response',
        'type' => 'dobot_msgs_v4/srv/GetErrorID_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetErrorID_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_577dda014c2a5f5409b67bfb68c10812e2d5da1ea04d31545a7081b1b55ff0de',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetErrorID_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetErrorID_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetForce_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetForce_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetForce_Request',
        'type' => 'dobot_msgs_v4/srv/GetForce_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetForce_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c25b42bb0f38b0f611a04602a00da76f410abbfb524dd1790a658068dd57d490',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'tool',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
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
    /** @brief Original tool field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tool;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('tool', $values))
            $this->tool = $values['tool'];
        else
        {
            $this->tool = -1;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetForce_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetForce_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetForce_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetForce_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetForce_Response',
        'type' => 'dobot_msgs_v4/srv/GetForce_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetForce_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3d557e76b135fde34e7978948d9fd00ea402ec6aaef3e40ad4fa769f16a6e23a',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetForce_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetForce_Response', $bytes);
    }
}

/** @brief Own all 4 original dobot_msgs_v4/srv/GetHoldRegs_Request fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetHoldRegs_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetHoldRegs_Request',
        'type' => 'dobot_msgs_v4/srv/GetHoldRegs_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetHoldRegs_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_05cca038598bcf95c62c13920afd392d2e10cf320abec879d941b47fab2adaa1',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'addr',
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
                'name' => 'count',
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
                'name' => 'val_type',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original addr field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $addr;
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Original val_type field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $val_type;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('addr', $values))
            $this->addr = $values['addr'];
        else
        {
            $this->addr = 0;
        }
        if (array_key_exists('count', $values))
            $this->count = $values['count'];
        else
        {
            $this->count = 0;
        }
        if (array_key_exists('val_type', $values))
            $this->val_type = $values['val_type'];
        else
        {
            $this->val_type = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetHoldRegs_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetHoldRegs_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetHoldRegs_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetHoldRegs_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetHoldRegs_Response',
        'type' => 'dobot_msgs_v4/srv/GetHoldRegs_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetHoldRegs_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_400fb0dc428c94545bb348023209a5903f609cf43896885d540e054f5bc6870f',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetHoldRegs_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetHoldRegs_Response', $bytes);
    }
}

/** @brief Own all 3 original dobot_msgs_v4/srv/GetInBits_Request fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInBits_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInBits_Request',
        'type' => 'dobot_msgs_v4/srv/GetInBits_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInBits_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0ae044a88038228f76c9b2e6b8477797bbde2adf3453cf2b8d406fa11fdd676d',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'addr',
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
                'name' => 'count',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original addr field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $addr;
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('addr', $values))
            $this->addr = $values['addr'];
        else
        {
            $this->addr = 0;
        }
        if (array_key_exists('count', $values))
            $this->count = $values['count'];
        else
        {
            $this->count = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInBits_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInBits_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetInBits_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInBits_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInBits_Response',
        'type' => 'dobot_msgs_v4/srv/GetInBits_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInBits_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fe612d58b5215dd0528436df1b962460ab006a00a85ca51d0626eac8cba3442b',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInBits_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInBits_Response', $bytes);
    }
}

/** @brief Own all 4 original dobot_msgs_v4/srv/GetInRegs_Request fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInRegs_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInRegs_Request',
        'type' => 'dobot_msgs_v4/srv/GetInRegs_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInRegs_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_35ebc727edd3789dbb5c71ae403408c7d8998de0f150a183909274161c51a004',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'addr',
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
                'name' => 'count',
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
                'name' => 'val_type',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original addr field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $addr;
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Original val_type field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $val_type;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('addr', $values))
            $this->addr = $values['addr'];
        else
        {
            $this->addr = 0;
        }
        if (array_key_exists('count', $values))
            $this->count = $values['count'];
        else
        {
            $this->count = 0;
        }
        if (array_key_exists('val_type', $values))
            $this->val_type = $values['val_type'];
        else
        {
            $this->val_type = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInRegs_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInRegs_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetInRegs_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInRegs_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInRegs_Response',
        'type' => 'dobot_msgs_v4/srv/GetInRegs_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInRegs_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_12f6551ed525b636f176db49f2ef060a4467f8c3265c90ccfddbb3e2419dd4d7',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInRegs_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInRegs_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetInputBool_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInputBool_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInputBool_Request',
        'type' => 'dobot_msgs_v4/srv/GetInputBool_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInputBool_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8cb60d63252fee7d2640b39ab9273a591d3e95a9392197fd14cfb24e92fd0d78',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInputBool_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInputBool_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetInputBool_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInputBool_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInputBool_Response',
        'type' => 'dobot_msgs_v4/srv/GetInputBool_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInputBool_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6ad8535a417098495d7934dfc6c722aab76737448f024df3b1f9fa66b669d3e1',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInputBool_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInputBool_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetInputFloat_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInputFloat_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInputFloat_Request',
        'type' => 'dobot_msgs_v4/srv/GetInputFloat_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInputFloat_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_db95cdfbc919beb1cdd511e4041a6f8d51b1261a1d542bf5dc7c3299f7955b69',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInputFloat_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInputFloat_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetInputFloat_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInputFloat_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInputFloat_Response',
        'type' => 'dobot_msgs_v4/srv/GetInputFloat_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInputFloat_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e8c8c5db8f89fe88409abfa474e2825efd6daebf8c818b5cf2e5d3e06e169057',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInputFloat_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInputFloat_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetInputInt_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInputInt_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInputInt_Request',
        'type' => 'dobot_msgs_v4/srv/GetInputInt_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInputInt_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f5489590da6a7c9c66fa17439e4e163c45f668083c0e3506433f45edd912ac75',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInputInt_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInputInt_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetInputInt_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetInputInt_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetInputInt_Response',
        'type' => 'dobot_msgs_v4/srv/GetInputInt_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetInputInt_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1e0edd9be016e722b2421c32d50d739be0913cc648a7c9722c5319f6d87cd974',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetInputInt_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetInputInt_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetOutputBool_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetOutputBool_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetOutputBool_Request',
        'type' => 'dobot_msgs_v4/srv/GetOutputBool_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetOutputBool_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ae241253db833cc88fe41e76aedf59d5f04ecb6cb830bddf972e720496009cc7',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetOutputBool_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetOutputBool_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetOutputBool_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetOutputBool_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetOutputBool_Response',
        'type' => 'dobot_msgs_v4/srv/GetOutputBool_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetOutputBool_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a45ff2c772129c849356b9322a4638850c511ceaa4a9baba0eb021ae92b3b0e0',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetOutputBool_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetOutputBool_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetOutputFloat_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetOutputFloat_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetOutputFloat_Request',
        'type' => 'dobot_msgs_v4/srv/GetOutputFloat_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetOutputFloat_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2426d08e3ef1a54486ed97d82f8df204a86d44dc2b1e305027de16d53ff4407f',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetOutputFloat_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetOutputFloat_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetOutputFloat_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetOutputFloat_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetOutputFloat_Response',
        'type' => 'dobot_msgs_v4/srv/GetOutputFloat_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetOutputFloat_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_28d795b33927ebd6f3346e47f8e1439fd747c12bca2698a5ae2bb5c131992f1e',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetOutputFloat_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetOutputFloat_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetOutputInt_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetOutputInt_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetOutputInt_Request',
        'type' => 'dobot_msgs_v4/srv/GetOutputInt_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetOutputInt_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e6df285298a742802f892b40303bb5a7f86e34bc66804c84216daf5e2cb20aa1',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetOutputInt_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetOutputInt_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetOutputInt_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetOutputInt_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetOutputInt_Response',
        'type' => 'dobot_msgs_v4/srv/GetOutputInt_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetOutputInt_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_06affe317be333b3f4be657ce2260e04e92936965a1f2250bfdd8d19462b4474',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetOutputInt_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetOutputInt_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetPose_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetPose_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetPose_Request',
        'type' => 'dobot_msgs_v4/srv/GetPose_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetPose_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fff7c6517cef4df5570bbbb4bb5ce3feeb9d051bf7ba02d292836d3dd7bde76d',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'user',
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
                'name' => 'tool',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original user field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $user;
    /** @brief Original tool field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tool;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('user', $values))
            $this->user = $values['user'];
        else
        {
            $this->user = 0;
        }
        if (array_key_exists('tool', $values))
            $this->tool = $values['tool'];
        else
        {
            $this->tool = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetPose_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetPose_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetPose_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetPose_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetPose_Response',
        'type' => 'dobot_msgs_v4/srv/GetPose_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetPose_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bd64b61a545f7054e870f4abb48850ed4a668ac2435fd96d094c2888428c7c25',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetPose_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetPose_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetStartPose_Request fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetStartPose_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetStartPose_Request',
        'type' => 'dobot_msgs_v4/srv/GetStartPose_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetStartPose_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_943e44aedcb9f14338b3f5293aa7e2da2286429c0405724c1a510839aedbac33',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'trace_name',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original trace_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $trace_name;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('trace_name', $values))
            $this->trace_name = $values['trace_name'];
        else
        {
            $this->trace_name = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetStartPose_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetStartPose_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetStartPose_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetStartPose_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetStartPose_Response',
        'type' => 'dobot_msgs_v4/srv/GetStartPose_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetStartPose_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e751bf2c42b1f8883976e00998ef19de2ca852cdc655ec73d542700edccee658',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetStartPose_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetStartPose_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/GetToolDO_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetToolDO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetToolDO_Request',
        'type' => 'dobot_msgs_v4/srv/GetToolDO_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetToolDO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_28e04bd9937b355386ad49f0bccc5c4dea6315abe1aed86b2f7a19d5cf528d80',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetToolDO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetToolDO_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/GetToolDO_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvGetToolDO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvGetToolDO_Response',
        'type' => 'dobot_msgs_v4/srv/GetToolDO_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/GetToolDO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9dd61b31af67f1fd28eed26aaac5b5d514c63fcebeeb84f834aecbba687571da',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvGetToolDO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvGetToolDO_Response', $bytes);
    }
}

/** @brief Own all 10 original dobot_msgs_v4/srv/InverseKin_Request fields.
 * @details 64..1088 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvInverseKin_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvInverseKin_Request',
        'type' => 'dobot_msgs_v4/srv/InverseKin_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/InverseKin_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_453350aa14f30de7cfd0eba9ee114885ade509fec936fd60d9e69b8082e5d6ff',
        'minimum' => 64,
        'maximum' => 1088,
        'semantics' => '',
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
            ],
            [
                'name' => 'rx',
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
                'name' => 'ry',
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
                'name' => 'rz',
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
                'name' => 'use_joint_near',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'joint_near',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'user',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'tool',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original rx field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rx;
    /** @brief Original ry field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ry;
    /** @brief Original rz field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rz;
    /** @brief Original use_joint_near field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $use_joint_near;
    /** @brief Original joint_near field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $joint_near;
    /** @brief Original user field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $user;
    /** @brief Original tool field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $tool;
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
        if (array_key_exists('use_joint_near', $values))
            $this->use_joint_near = $values['use_joint_near'];
        else
        {
            $this->use_joint_near = '';
        }
        if (array_key_exists('joint_near', $values))
            $this->joint_near = $values['joint_near'];
        else
        {
            $this->joint_near = '';
        }
        if (array_key_exists('user', $values))
            $this->user = $values['user'];
        else
        {
            $this->user = '';
        }
        if (array_key_exists('tool', $values))
            $this->tool = $values['tool'];
        else
        {
            $this->tool = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvInverseKin_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvInverseKin_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/InverseKin_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvInverseKin_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvInverseKin_Response',
        'type' => 'dobot_msgs_v4/srv/InverseKin_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/InverseKin_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a699faaa2a3e0bfb4fa8cd6c8eddb56d5046f6216e40776b463612489a743fc6',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvInverseKin_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvInverseKin_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/InverseSolution_Request fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvInverseSolution_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvInverseSolution_Request',
        'type' => 'dobot_msgs_v4/srv/InverseSolution_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/InverseSolution_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_274887c4d2477282d5af7681f8f36506dc46a03daed353587b5f279e817c5643',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'parameter',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original parameter field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $parameter;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('parameter', $values))
            $this->parameter = $values['parameter'];
        else
        {
            $this->parameter = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvInverseSolution_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvInverseSolution_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/InverseSolution_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvInverseSolution_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvInverseSolution_Response',
        'type' => 'dobot_msgs_v4/srv/InverseSolution_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/InverseSolution_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_653b734654c75bcd4b6b46b03e5d0664d60dac4a4dd780cf52b423f60dcf7652',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvInverseSolution_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvInverseSolution_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ModbusClose_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvModbusClose_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvModbusClose_Request',
        'type' => 'dobot_msgs_v4/srv/ModbusClose_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ModbusClose_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eb5220db23dbc6775a4cf5584fb399daf7e9e10bc6e6270b6e13cfa0ef49a8c3',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvModbusClose_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvModbusClose_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ModbusClose_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvModbusClose_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvModbusClose_Response',
        'type' => 'dobot_msgs_v4/srv/ModbusClose_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ModbusClose_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9313e560d4b6e1166bf72567f104805d709e726df438356e40dc23660248bde3',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvModbusClose_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvModbusClose_Response', $bytes);
    }
}

/** @brief Own all 4 original dobot_msgs_v4/srv/ModbusCreate_Request fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvModbusCreate_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvModbusCreate_Request',
        'type' => 'dobot_msgs_v4/srv/ModbusCreate_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ModbusCreate_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3b541505ec07934c4512dbfcedba59ec1fe0d949e939092fadbe7383419ba56c',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ip',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'port',
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
                'name' => 'slave_id',
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
                'name' => 'is_rtu',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original port field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original slave_id field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $slave_id;
    /** @brief Original is_rtu field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $is_rtu;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ip', $values))
            $this->ip = $values['ip'];
        else
        {
            $this->ip = '';
        }
        if (array_key_exists('port', $values))
            $this->port = $values['port'];
        else
        {
            $this->port = 0;
        }
        if (array_key_exists('slave_id', $values))
            $this->slave_id = $values['slave_id'];
        else
        {
            $this->slave_id = 0;
        }
        if (array_key_exists('is_rtu', $values))
            $this->is_rtu = $values['is_rtu'];
        else
        {
            $this->is_rtu = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvModbusCreate_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvModbusCreate_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/ModbusCreate_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvModbusCreate_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvModbusCreate_Response',
        'type' => 'dobot_msgs_v4/srv/ModbusCreate_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ModbusCreate_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_36f9bbbc4f5b9f216e058be3ee8f9dddd15499e12fcd53beea4c8ddc989e9d5c',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvModbusCreate_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvModbusCreate_Response', $bytes);
    }
}

/** @brief Own all 5 original dobot_msgs_v4/srv/ModbusRTUCreate_Request fields.
 * @details 20..276 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request',
        'type' => 'dobot_msgs_v4/srv/ModbusRTUCreate_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ModbusRTUCreate_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_697e4ed564330dd90288c1c4e2e48d033de56f1fbe97767218e83702e2908bb2',
        'minimum' => 20,
        'maximum' => 276,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'slave_id',
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
                'name' => 'baud',
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
                'name' => 'parity',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'data_bit',
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
                'name' => 'stop_bit',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original slave_id field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $slave_id;
    /** @brief Original baud field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $baud;
    /** @brief Original parity field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $parity;
    /** @brief Original data_bit field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data_bit;
    /** @brief Original stop_bit field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $stop_bit;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('slave_id', $values))
            $this->slave_id = $values['slave_id'];
        else
        {
            $this->slave_id = 0;
        }
        if (array_key_exists('baud', $values))
            $this->baud = $values['baud'];
        else
        {
            $this->baud = 0;
        }
        if (array_key_exists('parity', $values))
            $this->parity = $values['parity'];
        else
        {
            $this->parity = '';
        }
        if (array_key_exists('data_bit', $values))
            $this->data_bit = $values['data_bit'];
        else
        {
            $this->data_bit = 0;
        }
        if (array_key_exists('stop_bit', $values))
            $this->stop_bit = $values['stop_bit'];
        else
        {
            $this->stop_bit = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/ModbusRTUCreate_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response',
        'type' => 'dobot_msgs_v4/srv/ModbusRTUCreate_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ModbusRTUCreate_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_98c64f86eadc06070f03a4c104dd21b978829f43879f55e6fcae2129bb248be1',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response', $bytes);
    }
}

/** @brief Own all 8 original dobot_msgs_v4/srv/MovJ_Request fields.
 * @details 53..4213 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMovJ_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMovJ_Request',
        'type' => 'dobot_msgs_v4/srv/MovJ_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MovJ_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d819c2c114cd2570f8d81cea0222424a7515476af96f0d11512c932750abccbe',
        'minimum' => 53,
        'maximum' => 4213,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mode',
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
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original mode field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = false;
        }
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMovJ_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMovJ_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/MovJ_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMovJ_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMovJ_Response',
        'type' => 'dobot_msgs_v4/srv/MovJ_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MovJ_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2ccfa44ef4f25f155e2099281467906b5de650b38f0d97ce416a96c835f85aab',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMovJ_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMovJ_Response', $bytes);
    }
}

/** @brief Own all 9 original dobot_msgs_v4/srv/MovJIO_Request fields.
 * @details 57..8377 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMovJIO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMovJIO_Request',
        'type' => 'dobot_msgs_v4/srv/MovJIO_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MovJIO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f0106d3117558821cf789297cafffc7a799cde05cae7bd5bde8f1c7f3f211fe2',
        'minimum' => 57,
        'maximum' => 8377,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mode',
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
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'mdis',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original mode field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original mdis field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $mdis;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = false;
        }
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('mdis', $values))
            $this->mdis = $values['mdis'];
        else
        {
            $this->mdis = [];
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMovJIO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMovJIO_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/MovJIO_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMovJIO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMovJIO_Response',
        'type' => 'dobot_msgs_v4/srv/MovJIO_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MovJIO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d6425e2d05a322f9bc270ba95d55cfba3515455addca126d4a4b8f4d5db23eac',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMovJIO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMovJIO_Response', $bytes);
    }
}

/** @brief Own all 8 original dobot_msgs_v4/srv/MovL_Request fields.
 * @details 53..4213 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMovL_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMovL_Request',
        'type' => 'dobot_msgs_v4/srv/MovL_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MovL_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2ec610142d58db65c4e47a3c031ffe323e1ca56b014c3c1223b855b080f7a091',
        'minimum' => 53,
        'maximum' => 4213,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mode',
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
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original mode field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = false;
        }
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMovL_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMovL_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/MovL_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMovL_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMovL_Response',
        'type' => 'dobot_msgs_v4/srv/MovL_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MovL_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7a1be520caacfbf7ecaeb4dcbf2f2ed332697166fe552e18585ea2d2b0480c9d',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMovL_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMovL_Response', $bytes);
    }
}

/** @brief Own all 9 original dobot_msgs_v4/srv/MovLIO_Request fields.
 * @details 57..8377 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMovLIO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMovLIO_Request',
        'type' => 'dobot_msgs_v4/srv/MovLIO_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MovLIO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3dcc51388c6641ba5d30a4aba80f860f7fff3b13c5792ea8702a3a3a7731bf74',
        'minimum' => 57,
        'maximum' => 8377,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mode',
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
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'mdis',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original mode field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original mdis field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $mdis;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = false;
        }
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('mdis', $values))
            $this->mdis = $values['mdis'];
        else
        {
            $this->mdis = [];
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMovLIO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMovLIO_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/MovLIO_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMovLIO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMovLIO_Response',
        'type' => 'dobot_msgs_v4/srv/MovLIO_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MovLIO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0910c4af671b5df85dca50e157e0989da74f4bc3f66f1186620d1ffe459a87c0',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMovLIO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMovLIO_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/MoveJog_Request fields.
 * @details 8..4424 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMoveJog_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMoveJog_Request',
        'type' => 'dobot_msgs_v4/srv/MoveJog_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MoveJog_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d57cb14991c382b3e1772a46203a675c7b79d84eb5fd9566a3ac935218d41c25',
        'minimum' => 8,
        'maximum' => 4424,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'axis_id',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original axis_id field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $axis_id;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('axis_id', $values))
            $this->axis_id = $values['axis_id'];
        else
        {
            $this->axis_id = '';
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMoveJog_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMoveJog_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/MoveJog_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvMoveJog_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvMoveJog_Response',
        'type' => 'dobot_msgs_v4/srv/MoveJog_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/MoveJog_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d93bc3f5fb6116a55272d5cf6849afc25582712a794265e83b9e0fe5a65ef35c',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvMoveJog_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvMoveJog_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/Pause_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvPause_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvPause_Request',
        'type' => 'dobot_msgs_v4/srv/Pause_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Pause_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c3745f783b956f2152565dedf056f115bf9acce50bb6b500ad7f8518a6aad54e',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvPause_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvPause_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/Pause_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvPause_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvPause_Response',
        'type' => 'dobot_msgs_v4/srv/Pause_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Pause_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3a7b398b7db5664aa6ec64b70a9431b7df090feed6590859f1201c90135a0561',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvPause_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvPause_Response', $bytes);
    }
}

/** @brief Own all 8 original dobot_msgs_v4/srv/PositiveKin_Request fields.
 * @details 56..568 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvPositiveKin_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvPositiveKin_Request',
        'type' => 'dobot_msgs_v4/srv/PositiveKin_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/PositiveKin_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6937bac982dd49d9ec8bd2dde09a8bbd70f3e0ba2a8e1a9f3a07b2fbc27e5ecc',
        'minimum' => 56,
        'maximum' => 568,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'j1',
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
                'name' => 'j2',
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
                'name' => 'j3',
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
                'name' => 'j4',
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
                'name' => 'j5',
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
                'name' => 'j6',
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
                'name' => 'user',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'tool',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original j1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $j1;
    /** @brief Original j2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $j2;
    /** @brief Original j3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $j3;
    /** @brief Original j4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $j4;
    /** @brief Original j5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $j5;
    /** @brief Original j6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $j6;
    /** @brief Original user field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $user;
    /** @brief Original tool field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $tool;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('j1', $values))
            $this->j1 = $values['j1'];
        else
        {
            $this->j1 = 0.0;
        }
        if (array_key_exists('j2', $values))
            $this->j2 = $values['j2'];
        else
        {
            $this->j2 = 0.0;
        }
        if (array_key_exists('j3', $values))
            $this->j3 = $values['j3'];
        else
        {
            $this->j3 = 0.0;
        }
        if (array_key_exists('j4', $values))
            $this->j4 = $values['j4'];
        else
        {
            $this->j4 = 0.0;
        }
        if (array_key_exists('j5', $values))
            $this->j5 = $values['j5'];
        else
        {
            $this->j5 = 0.0;
        }
        if (array_key_exists('j6', $values))
            $this->j6 = $values['j6'];
        else
        {
            $this->j6 = 0.0;
        }
        if (array_key_exists('user', $values))
            $this->user = $values['user'];
        else
        {
            $this->user = '';
        }
        if (array_key_exists('tool', $values))
            $this->tool = $values['tool'];
        else
        {
            $this->tool = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvPositiveKin_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvPositiveKin_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/PositiveKin_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvPositiveKin_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvPositiveKin_Response',
        'type' => 'dobot_msgs_v4/srv/PositiveKin_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/PositiveKin_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_171fd891727b9d6678bf8254f94694579bd8408a4b67ce35a5027e62819b4192',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvPositiveKin_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvPositiveKin_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/PowerOn_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvPowerOn_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvPowerOn_Request',
        'type' => 'dobot_msgs_v4/srv/PowerOn_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/PowerOn_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d77f237d6bb081c5ebec66cb7cdf36c3d3d6a192b9ee9c4941c61b06cfa32843',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvPowerOn_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvPowerOn_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/PowerOn_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvPowerOn_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvPowerOn_Response',
        'type' => 'dobot_msgs_v4/srv/PowerOn_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/PowerOn_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_07d11cce0fa126965ac2ef3f600199c444121dcf0251bc4f0555ed7efefe9e50',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvPowerOn_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvPowerOn_Response', $bytes);
    }
}

/** @brief Own all 7 original dobot_msgs_v4/srv/RelJointMovJ_Request fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelJointMovJ_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelJointMovJ_Request',
        'type' => 'dobot_msgs_v4/srv/RelJointMovJ_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelJointMovJ_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4b10f4dd4f4bde0e5979802416a3b78b7fa3ccf3bcbe94b532a230d4f754c4bd',
        'minimum' => 52,
        'maximum' => 4212,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelJointMovJ_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelJointMovJ_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/RelJointMovJ_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelJointMovJ_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelJointMovJ_Response',
        'type' => 'dobot_msgs_v4/srv/RelJointMovJ_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelJointMovJ_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2ee9287af0dc45374f44537bca294dcf04a8feab5b427a7b0961ab54c3577a30',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelJointMovJ_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelJointMovJ_Response', $bytes);
    }
}

/** @brief Own all 7 original dobot_msgs_v4/srv/RelMovJTool_Request fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelMovJTool_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelMovJTool_Request',
        'type' => 'dobot_msgs_v4/srv/RelMovJTool_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelMovJTool_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9f720103df63dd8e3686c4d2f6c829f0392d691d63fb929bc8a87677aba55410',
        'minimum' => 52,
        'maximum' => 4212,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelMovJTool_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelMovJTool_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/RelMovJTool_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelMovJTool_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelMovJTool_Response',
        'type' => 'dobot_msgs_v4/srv/RelMovJTool_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelMovJTool_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_414787fb60b733af9bb23b33ea873217d34e8d73ae90b58b015f6010971481fe',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelMovJTool_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelMovJTool_Response', $bytes);
    }
}

/** @brief Own all 7 original dobot_msgs_v4/srv/RelMovJUser_Request fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelMovJUser_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelMovJUser_Request',
        'type' => 'dobot_msgs_v4/srv/RelMovJUser_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelMovJUser_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_85424e710627d5ddf69f7d409ded4d71b7fea61f23413f76c3d6a3f2fb60e2e3',
        'minimum' => 52,
        'maximum' => 4212,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelMovJUser_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelMovJUser_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/RelMovJUser_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelMovJUser_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelMovJUser_Response',
        'type' => 'dobot_msgs_v4/srv/RelMovJUser_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelMovJUser_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7f99924765e3e229d7370e30b8bcb6c6bb0dd802725b42d2039e29e574ee7005',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelMovJUser_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelMovJUser_Response', $bytes);
    }
}

/** @brief Own all 7 original dobot_msgs_v4/srv/RelMovLTool_Request fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelMovLTool_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelMovLTool_Request',
        'type' => 'dobot_msgs_v4/srv/RelMovLTool_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelMovLTool_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_745dfec46b2b24e0bdad62d53517268df5ab840453a92a0db9d03fa192b3a45c',
        'minimum' => 52,
        'maximum' => 4212,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelMovLTool_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelMovLTool_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/RelMovLTool_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelMovLTool_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelMovLTool_Response',
        'type' => 'dobot_msgs_v4/srv/RelMovLTool_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelMovLTool_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_29ec56e4091c8ecdb438d1d9d64c3e51da96a5c08b3f42eddfb89d8e901439ee',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelMovLTool_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelMovLTool_Response', $bytes);
    }
}

/** @brief Own all 7 original dobot_msgs_v4/srv/RelMovLUser_Request fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelMovLUser_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelMovLUser_Request',
        'type' => 'dobot_msgs_v4/srv/RelMovLUser_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelMovLUser_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4e7ebfa61453ceac9bf84d4837880ec9bf2887028086513fbd2ad67c54cac000',
        'minimum' => 52,
        'maximum' => 4212,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelMovLUser_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelMovLUser_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/RelMovLUser_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRelMovLUser_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRelMovLUser_Response',
        'type' => 'dobot_msgs_v4/srv/RelMovLUser_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RelMovLUser_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b6cda3abba1421d8ba5d34d815e8a57ffce5395e9375d2a1e56ed57e6fa914b7',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRelMovLUser_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRelMovLUser_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/RequestControl_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRequestControl_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRequestControl_Request',
        'type' => 'dobot_msgs_v4/srv/RequestControl_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RequestControl_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_403c7651979ef6d74972fbd5ae126bcb322e01e119aee550a763050e45f19195',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRequestControl_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRequestControl_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/RequestControl_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRequestControl_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRequestControl_Response',
        'type' => 'dobot_msgs_v4/srv/RequestControl_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RequestControl_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_17a6369b96ae52c3af449d42334c88ae104c8cd330d4c9a814e4aaa2f1ddd068',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRequestControl_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRequestControl_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/ResetRobot_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvResetRobot_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvResetRobot_Request',
        'type' => 'dobot_msgs_v4/srv/ResetRobot_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ResetRobot_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_db70e9f338c97dc76c6edf6c8d72175da80d88231d92590079464ded5029314e',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvResetRobot_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvResetRobot_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ResetRobot_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvResetRobot_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvResetRobot_Response',
        'type' => 'dobot_msgs_v4/srv/ResetRobot_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ResetRobot_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d90445c37f315fe8bbdaac6b35bb063a3724d71488ab5149038e68fb00b4ca7d',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvResetRobot_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvResetRobot_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/RobotMode_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRobotMode_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRobotMode_Request',
        'type' => 'dobot_msgs_v4/srv/RobotMode_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RobotMode_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0474e68e529b30bb9b353ce9309f6d600b701aeab23767077108b958c957d670',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRobotMode_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRobotMode_Request', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/RobotMode_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRobotMode_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRobotMode_Response',
        'type' => 'dobot_msgs_v4/srv/RobotMode_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RobotMode_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5e81b9352938bb0114725cb4d2231da39e4bb9b5855d96cab96af404bb9cb2d0',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'robot_return',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original robot_return field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_return;
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('robot_return', $values))
            $this->robot_return = $values['robot_return'];
        else
        {
            $this->robot_return = '';
        }
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRobotMode_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRobotMode_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/RunScript_Request fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRunScript_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRunScript_Request',
        'type' => 'dobot_msgs_v4/srv/RunScript_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RunScript_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2db52f777b0fd0f6cb88c160e5e80ad5a44e9a4bfbd526589e769e5164647511',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'project_name',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original project_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $project_name;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('project_name', $values))
            $this->project_name = $values['project_name'];
        else
        {
            $this->project_name = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRunScript_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRunScript_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/RunScript_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRunScript_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRunScript_Response',
        'type' => 'dobot_msgs_v4/srv/RunScript_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RunScript_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9e67e2d3fdde32e4f4e63762ef6fea3347190af1147c6fc64663a8a6e40eac88',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRunScript_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRunScript_Response', $bytes);
    }
}

/** @brief Own all 11 original dobot_msgs_v4/srv/RunTo_Request fields.
 * @details 68..68 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRunTo_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRunTo_Request',
        'type' => 'dobot_msgs_v4/srv/RunTo_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RunTo_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bbf5b5160ec7012cb9055ce6ccfeb9a21e711b5619967a65adc1e83d2ad032da',
        'minimum' => 68,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'a1',
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
                'name' => 'b1',
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
                'name' => 'c1',
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
                'name' => 'd1',
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
                'name' => 'e1',
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
                'name' => 'f1',
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
                'name' => 'move_type',
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
                'name' => 'user',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'tool',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'a',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'v',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1',
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
    /** @brief Original a1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a1;
    /** @brief Original b1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b1;
    /** @brief Original c1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c1;
    /** @brief Original d1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d1;
    /** @brief Original e1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e1;
    /** @brief Original f1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f1;
    /** @brief Original move_type field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $move_type;
    /** @brief Original user field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $user;
    /** @brief Original tool field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tool;
    /** @brief Original a field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original v field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $v;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('a1', $values))
            $this->a1 = $values['a1'];
        else
        {
            $this->a1 = 0.0;
        }
        if (array_key_exists('b1', $values))
            $this->b1 = $values['b1'];
        else
        {
            $this->b1 = 0.0;
        }
        if (array_key_exists('c1', $values))
            $this->c1 = $values['c1'];
        else
        {
            $this->c1 = 0.0;
        }
        if (array_key_exists('d1', $values))
            $this->d1 = $values['d1'];
        else
        {
            $this->d1 = 0.0;
        }
        if (array_key_exists('e1', $values))
            $this->e1 = $values['e1'];
        else
        {
            $this->e1 = 0.0;
        }
        if (array_key_exists('f1', $values))
            $this->f1 = $values['f1'];
        else
        {
            $this->f1 = 0.0;
        }
        if (array_key_exists('move_type', $values))
            $this->move_type = $values['move_type'];
        else
        {
            $this->move_type = 0;
        }
        if (array_key_exists('user', $values))
            $this->user = $values['user'];
        else
        {
            $this->user = -1;
        }
        if (array_key_exists('tool', $values))
            $this->tool = $values['tool'];
        else
        {
            $this->tool = -1;
        }
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = -1;
        }
        if (array_key_exists('v', $values))
            $this->v = $values['v'];
        else
        {
            $this->v = -1;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRunTo_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRunTo_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/RunTo_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvRunTo_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvRunTo_Response',
        'type' => 'dobot_msgs_v4/srv/RunTo_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/RunTo_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5d2d3bf2585f26630606625f66197df0a4d702bb086ac70495f6042c76586350',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvRunTo_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvRunTo_Response', $bytes);
    }
}

/** @brief Own all 7 original dobot_msgs_v4/srv/ServoJ_Request fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvServoJ_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvServoJ_Request',
        'type' => 'dobot_msgs_v4/srv/ServoJ_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ServoJ_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d86fe36c8826af558c1c34a0e985d7c640f61bf1663a6ffa9e252a0be3abe5b9',
        'minimum' => 52,
        'maximum' => 4212,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvServoJ_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvServoJ_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ServoJ_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvServoJ_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvServoJ_Response',
        'type' => 'dobot_msgs_v4/srv/ServoJ_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ServoJ_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_52a4e48c6e53d3423cb39f66166ebd0060bd6f6bc6b18203968d5d92daf1ea0d',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvServoJ_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvServoJ_Response', $bytes);
    }
}

/** @brief Own all 7 original dobot_msgs_v4/srv/ServoP_Request fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvServoP_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvServoP_Request',
        'type' => 'dobot_msgs_v4/srv/ServoP_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ServoP_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_964dc8a3ed4efd8bbb8e0e1a0fccda883b781e775cf1e3e410509193b13a4ed0',
        'minimum' => 52,
        'maximum' => 4212,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'a',
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
                'name' => 'b',
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
                'name' => 'c',
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
                'name' => 'd',
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
                'name' => 'e',
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
                'name' => 'f',
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
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
    /** @brief Original d field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $d;
    /** @brief Original e field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $e;
    /** @brief Original f field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $f;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('a', $values))
            $this->a = $values['a'];
        else
        {
            $this->a = 0.0;
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = 0.0;
        }
        if (array_key_exists('c', $values))
            $this->c = $values['c'];
        else
        {
            $this->c = 0.0;
        }
        if (array_key_exists('d', $values))
            $this->d = $values['d'];
        else
        {
            $this->d = 0.0;
        }
        if (array_key_exists('e', $values))
            $this->e = $values['e'];
        else
        {
            $this->e = 0.0;
        }
        if (array_key_exists('f', $values))
            $this->f = $values['f'];
        else
        {
            $this->f = 0.0;
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvServoP_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvServoP_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ServoP_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvServoP_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvServoP_Response',
        'type' => 'dobot_msgs_v4/srv/ServoP_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ServoP_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a377ed474d9101145e72002dbdd8ae960042ff65c357ba7160cdc01a2cd2cfc7',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvServoP_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvServoP_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetBackDistance_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetBackDistance_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetBackDistance_Request',
        'type' => 'dobot_msgs_v4/srv/SetBackDistance_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetBackDistance_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_94cc7291ada95362bd71494ab65369ecb47092a84f50ccbf9de8887ef3170408',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'distance',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original distance field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $distance;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('distance', $values))
            $this->distance = $values['distance'];
        else
        {
            $this->distance = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetBackDistance_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetBackDistance_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetBackDistance_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetBackDistance_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetBackDistance_Response',
        'type' => 'dobot_msgs_v4/srv/SetBackDistance_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetBackDistance_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_afa51eaa955da18aadc262c2c99c19817a645d5e1fd17387cd69816947ccfac0',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetBackDistance_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetBackDistance_Response', $bytes);
    }
}

/** @brief Own all 4 original dobot_msgs_v4/srv/SetCoils_Request fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetCoils_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetCoils_Request',
        'type' => 'dobot_msgs_v4/srv/SetCoils_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetCoils_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_032304fb488fcee97eabea57c6b7cd4a14a9645be533627099ae9d7f3e19ed9d',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'addr',
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
                'name' => 'count',
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
                'name' => 'val_tab',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original addr field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $addr;
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Original val_tab field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $val_tab;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('addr', $values))
            $this->addr = $values['addr'];
        else
        {
            $this->addr = 0;
        }
        if (array_key_exists('count', $values))
            $this->count = $values['count'];
        else
        {
            $this->count = 0;
        }
        if (array_key_exists('val_tab', $values))
            $this->val_tab = $values['val_tab'];
        else
        {
            $this->val_tab = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetCoils_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetCoils_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetCoils_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetCoils_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetCoils_Response',
        'type' => 'dobot_msgs_v4/srv/SetCoils_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetCoils_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ee2ab263594c4c81c2f5372b96775fc1c4a3082682f16c2da5251ba8e783bbe1',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetCoils_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetCoils_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetCollisionLevel_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request',
        'type' => 'dobot_msgs_v4/srv/SetCollisionLevel_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetCollisionLevel_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_18bc765bcb570eac7b33751aef1a9b134c4bba12682d1bf584b36837a387a7a1',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'level',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original level field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $level;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('level', $values))
            $this->level = $values['level'];
        else
        {
            $this->level = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetCollisionLevel_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response',
        'type' => 'dobot_msgs_v4/srv/SetCollisionLevel_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetCollisionLevel_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4e31189b7ab4932b7d9fa202ce90e330715ebb8e57540ab3344365c1b70d1fc6',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetFCCollision_Request fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetFCCollision_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetFCCollision_Request',
        'type' => 'dobot_msgs_v4/srv/SetFCCollision_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetFCCollision_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_55445aace4d74de76605a84c1cb4ce370e46e47a6d7ca0aea459b09a87f1c42d',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'force',
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
                'name' => 'torque',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original force field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
    /** @brief Original torque field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $torque;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = 0.0;
        }
        if (array_key_exists('torque', $values))
            $this->torque = $values['torque'];
        else
        {
            $this->torque = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetFCCollision_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetFCCollision_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetFCCollision_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetFCCollision_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetFCCollision_Response',
        'type' => 'dobot_msgs_v4/srv/SetFCCollision_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetFCCollision_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dcc2fe7fbd1c4371e03a597bf53ef5bcc3c9c8b192fc9fa6c88c6a8cc3046943',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetFCCollision_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetFCCollision_Response', $bytes);
    }
}

/** @brief Own all 5 original dobot_msgs_v4/srv/SetHoldRegs_Request fields.
 * @details 20..532 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetHoldRegs_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetHoldRegs_Request',
        'type' => 'dobot_msgs_v4/srv/SetHoldRegs_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetHoldRegs_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7d4f8c9592ade8fa31c8c4decc0f96411138792c7b3a47b47bf0c6263589f3f0',
        'minimum' => 20,
        'maximum' => 532,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'addr',
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
                'name' => 'count',
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
                'name' => 'val_tab',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'val_type',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original addr field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $addr;
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Original val_tab field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $val_tab;
    /** @brief Original val_type field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $val_type;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('addr', $values))
            $this->addr = $values['addr'];
        else
        {
            $this->addr = 0;
        }
        if (array_key_exists('count', $values))
            $this->count = $values['count'];
        else
        {
            $this->count = 0;
        }
        if (array_key_exists('val_tab', $values))
            $this->val_tab = $values['val_tab'];
        else
        {
            $this->val_tab = '';
        }
        if (array_key_exists('val_type', $values))
            $this->val_type = $values['val_type'];
        else
        {
            $this->val_type = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetHoldRegs_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetHoldRegs_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetHoldRegs_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetHoldRegs_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetHoldRegs_Response',
        'type' => 'dobot_msgs_v4/srv/SetHoldRegs_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetHoldRegs_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1deb9fd0d39ee2654b710cd8b92299cc34517e975ac04863b08369e26c778661',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetHoldRegs_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetHoldRegs_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetOutputBool_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetOutputBool_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetOutputBool_Request',
        'type' => 'dobot_msgs_v4/srv/SetOutputBool_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetOutputBool_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_66c31c6e7c4fa9bd1659f4a5e59483924f784f61c39bd75934e9b6074ec95db1',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetOutputBool_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetOutputBool_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetOutputBool_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetOutputBool_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetOutputBool_Response',
        'type' => 'dobot_msgs_v4/srv/SetOutputBool_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetOutputBool_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bb046c3d40941fa7ee4ba8492b56a37d1eb39d1b276555a62b53cb53e78fde56',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetOutputBool_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetOutputBool_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetOutputFloat_Request fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetOutputFloat_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetOutputFloat_Request',
        'type' => 'dobot_msgs_v4/srv/SetOutputFloat_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetOutputFloat_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ea92680705f446d3a2a31d2e97094f26dc8477d951d93c91d9ccac0a8037ecaa',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
                'name' => 'value',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original value field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetOutputFloat_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetOutputFloat_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetOutputFloat_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetOutputFloat_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetOutputFloat_Response',
        'type' => 'dobot_msgs_v4/srv/SetOutputFloat_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetOutputFloat_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d61c5583b405a88ecf9ca3a504c78d6181747a021225ae1c0719b43f935139de',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetOutputFloat_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetOutputFloat_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetOutputInt_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetOutputInt_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetOutputInt_Request',
        'type' => 'dobot_msgs_v4/srv/SetOutputInt_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetOutputInt_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d41e5554649c7cad2a0368150ba6eb28007ca3c908b34e9806a38d119810ed34',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetOutputInt_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetOutputInt_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetOutputInt_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetOutputInt_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetOutputInt_Response',
        'type' => 'dobot_msgs_v4/srv/SetOutputInt_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetOutputInt_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ffd66e58346a61620a52891327592f71d8dbb881d7dd90e1b69c384f597a22a2',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetOutputInt_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetOutputInt_Response', $bytes);
    }
}

/** @brief Own all 4 original dobot_msgs_v4/srv/SetPayload_Request fields.
 * @details 32..32 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetPayload_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetPayload_Request',
        'type' => 'dobot_msgs_v4/srv/SetPayload_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetPayload_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6d620aef8f3c9875c5e382b2c8d14169933ab0dcfa15a179acadebf9498a88a8',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'load',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original load field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $load;
    /** @brief Original x field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float64 scalar.
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
        if (array_key_exists('load', $values))
            $this->load = $values['load'];
        else
        {
            $this->load = 0.0;
        }
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetPayload_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetPayload_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetPayload_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetPayload_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetPayload_Response',
        'type' => 'dobot_msgs_v4/srv/SetPayload_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetPayload_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b6d407c427b3e4b9a12c9d7f77671f4681191f016f0cb08bdefe761e8c922c07',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetPayload_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetPayload_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetPostCollisionMode_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request',
        'type' => 'dobot_msgs_v4/srv/SetPostCollisionMode_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetPostCollisionMode_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_68c64ece5716d174d772579438e9c1dcadb9507bfdc10875ca7debb4cba8e51c',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mode',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original mode field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetPostCollisionMode_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response',
        'type' => 'dobot_msgs_v4/srv/SetPostCollisionMode_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetPostCollisionMode_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_143938e2f852a1776f63c34f79ea19da387c6c18c92f02a4eb03e93f2e08b4fe',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetSafeSkin_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetSafeSkin_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetSafeSkin_Request',
        'type' => 'dobot_msgs_v4/srv/SetSafeSkin_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetSafeSkin_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_52adc5391c85a35c9bbb9cfd8903e92ced671a51e6442b58f2b8881eee798bff',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'part',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original part field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $part;
    /** @brief Original status field; int32 scalar.
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
        if (array_key_exists('part', $values))
            $this->part = $values['part'];
        else
        {
            $this->part = 0;
        }
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetSafeSkin_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetSafeSkin_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetSafeSkin_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetSafeSkin_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetSafeSkin_Response',
        'type' => 'dobot_msgs_v4/srv/SetSafeSkin_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetSafeSkin_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9e6ad533a05d04c8a98d4644cf3f467a90ada31cf160c7c8c1c87720c72ee4c7',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetSafeSkin_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetSafeSkin_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetSafeWallEnable_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request',
        'type' => 'dobot_msgs_v4/srv/SetSafeWallEnable_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetSafeWallEnable_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e3440d7de447cc75b6c6ff9bcb5b75012e0de9ff3a16d5414fae053d1c1a9a13',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetSafeWallEnable_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response',
        'type' => 'dobot_msgs_v4/srv/SetSafeWallEnable_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetSafeWallEnable_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_61b6404b9419fbc261cd24cc71dbd17be97bcba63f08d8e95388a7b305eb69ff',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetTool_Request fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetTool_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetTool_Request',
        'type' => 'dobot_msgs_v4/srv/SetTool_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetTool_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3a7dc50dae7ff5a0d79013b64b97bd59e942ebdd323680bc0f43c81560690934',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'value',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original value field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetTool_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetTool_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetTool_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetTool_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetTool_Response',
        'type' => 'dobot_msgs_v4/srv/SetTool_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetTool_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7b16d2371acf7e512fc872f805ad473276152495123b1f2c81cedcd2b379aae6',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetTool_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetTool_Response', $bytes);
    }
}

/** @brief Own all 4 original dobot_msgs_v4/srv/SetTool485_Request fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetTool485_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetTool485_Request',
        'type' => 'dobot_msgs_v4/srv/SetTool485_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetTool485_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2b39d6dfee6b75c0103780423d33bf2bc2edb52a6e17ebe2f8452b5b148d33e8',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'baudrate',
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
                'name' => 'parity',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'stop',
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
                'name' => 'identify',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original baudrate field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $baudrate;
    /** @brief Original parity field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $parity;
    /** @brief Original stop field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $stop;
    /** @brief Original identify field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $identify;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('baudrate', $values))
            $this->baudrate = $values['baudrate'];
        else
        {
            $this->baudrate = 0;
        }
        if (array_key_exists('parity', $values))
            $this->parity = $values['parity'];
        else
        {
            $this->parity = '';
        }
        if (array_key_exists('stop', $values))
            $this->stop = $values['stop'];
        else
        {
            $this->stop = 0;
        }
        if (array_key_exists('identify', $values))
            $this->identify = $values['identify'];
        else
        {
            $this->identify = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetTool485_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetTool485_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetTool485_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetTool485_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetTool485_Response',
        'type' => 'dobot_msgs_v4/srv/SetTool485_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetTool485_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0300651f89d97f729464b2b3908e6d14b42aa830ea78a4c3f086741cc93f7ef5',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetTool485_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetTool485_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetToolMode_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetToolMode_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetToolMode_Request',
        'type' => 'dobot_msgs_v4/srv/SetToolMode_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetToolMode_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a1b84fbba05c066efc33278ccd27c5dda5bf825203cb9e15637f8d5b48683484',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mode',
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
                'name' => 'type',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original mode field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original type field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $type;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetToolMode_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetToolMode_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetToolMode_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetToolMode_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetToolMode_Response',
        'type' => 'dobot_msgs_v4/srv/SetToolMode_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetToolMode_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b82f61b5ea8c3fe51f531c7c0f7972f91b85a3c712301e586cb4f766651aa5b7',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetToolMode_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetToolMode_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetToolPower_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetToolPower_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetToolPower_Request',
        'type' => 'dobot_msgs_v4/srv/SetToolPower_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetToolPower_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a89dd4dfc861b022448615ed2da1216b634bfddc1b2c15cef2ab230b6631ae12',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'status',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original status field; int32 scalar.
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
            $this->status = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetToolPower_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetToolPower_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetToolPower_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetToolPower_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetToolPower_Response',
        'type' => 'dobot_msgs_v4/srv/SetToolPower_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetToolPower_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_adc48762b33431e6c502e40f706aa75c2804d0f0293ad15a5c1cd3c3307c03b4',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetToolPower_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetToolPower_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetUser_Request fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetUser_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetUser_Request',
        'type' => 'dobot_msgs_v4/srv/SetUser_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetUser_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_81b7b804988c5a6ebbb76fb62c83b9114fb712313bceb1d2e4ab5ec8bb6b1fed',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
                'name' => 'value',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original value field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetUser_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetUser_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetUser_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetUser_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetUser_Response',
        'type' => 'dobot_msgs_v4/srv/SetUser_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetUser_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_accca9cc2c80031c5b0f7459cbb3d5c54465e4df093cbe6a0875163eb5a2fb9a',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetUser_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetUser_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/SetWorkZoneEnable_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request',
        'type' => 'dobot_msgs_v4/srv/SetWorkZoneEnable_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetWorkZoneEnable_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_09aba48aac42bf2b6e67910c0142960a051c31e9724464d517e040cdc9642613',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original value field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SetWorkZoneEnable_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response',
        'type' => 'dobot_msgs_v4/srv/SetWorkZoneEnable_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SetWorkZoneEnable_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a6e72b6a47cabf16bdb0216d7b137fa4880ea7817f5d40375fd7c498d4ad0e8',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/SixForceHome_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSixForceHome_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSixForceHome_Request',
        'type' => 'dobot_msgs_v4/srv/SixForceHome_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SixForceHome_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3dbcc24390d425f65574985885e52a8c3cbfa239a96bc21ede7c041486a067eb',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSixForceHome_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSixForceHome_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SixForceHome_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSixForceHome_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSixForceHome_Response',
        'type' => 'dobot_msgs_v4/srv/SixForceHome_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SixForceHome_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_04b317ddf28f184a148de74f22235cc6f41095c72269ee489a67d485887cc583',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSixForceHome_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSixForceHome_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SpeedFactor_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSpeedFactor_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSpeedFactor_Request',
        'type' => 'dobot_msgs_v4/srv/SpeedFactor_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SpeedFactor_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e17b9366d15184d84c64e520db9e3c35ee832a273e38bd6ee2c92b01e06c4e9d',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ratio',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ratio field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ratio;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ratio', $values))
            $this->ratio = $values['ratio'];
        else
        {
            $this->ratio = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSpeedFactor_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSpeedFactor_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/SpeedFactor_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvSpeedFactor_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvSpeedFactor_Response',
        'type' => 'dobot_msgs_v4/srv/SpeedFactor_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/SpeedFactor_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_353246afc9c000d5235bb9517a28e5fdf05fd224ac57411f7fc279b69fb97a4c',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvSpeedFactor_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvSpeedFactor_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/StartDrag_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStartDrag_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStartDrag_Request',
        'type' => 'dobot_msgs_v4/srv/StartDrag_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StartDrag_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a3d3c9e03f38988abb6d5a463421deedd787ed3d275d277968af51b0fdbd37c2',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStartDrag_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStartDrag_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/StartDrag_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStartDrag_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStartDrag_Response',
        'type' => 'dobot_msgs_v4/srv/StartDrag_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StartDrag_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7dec399bf542ceca9f7acf6213f863323751b869a8cda0698d0099c499082dca',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStartDrag_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStartDrag_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/StartPath_Request fields.
 * @details 8..4424 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStartPath_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStartPath_Request',
        'type' => 'dobot_msgs_v4/srv/StartPath_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StartPath_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fb37e04b563ed40f27ae8034b8dd9d2b5cf36e55b9089c2edaeb2f2b32f616f2',
        'minimum' => 8,
        'maximum' => 4424,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'trace_name',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'param_value',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 256,
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
    /** @brief Original trace_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $trace_name;
    /** @brief Original param_value field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $param_value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('trace_name', $values))
            $this->trace_name = $values['trace_name'];
        else
        {
            $this->trace_name = '';
        }
        if (array_key_exists('param_value', $values))
            $this->param_value = $values['param_value'];
        else
        {
            $this->param_value = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStartPath_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStartPath_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/StartPath_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStartPath_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStartPath_Response',
        'type' => 'dobot_msgs_v4/srv/StartPath_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StartPath_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_48b184f798f192b00130c900b8331bd8a98d6a7416753d4bc5f4c736507807eb',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStartPath_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStartPath_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/StartRTOffset_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStartRTOffset_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStartRTOffset_Request',
        'type' => 'dobot_msgs_v4/srv/StartRTOffset_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StartRTOffset_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c582b88c4aae68ee0474bf750249139d175dcf51c1abb8a3c6c1960cf5433745',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStartRTOffset_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStartRTOffset_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/StartRTOffset_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStartRTOffset_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStartRTOffset_Response',
        'type' => 'dobot_msgs_v4/srv/StartRTOffset_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StartRTOffset_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4aed9b63ca8e0043e9e2c9aef0cfc9d7f18b6b3c308ebfc7960c625319d2e4cc',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStartRTOffset_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStartRTOffset_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/Stop_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStop_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStop_Request',
        'type' => 'dobot_msgs_v4/srv/Stop_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Stop_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7c790dbc997558994e8fcc57044ffe0bd98bf4bc6c9ff18428bf8b4b701baff1',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStop_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStop_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/Stop_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStop_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStop_Response',
        'type' => 'dobot_msgs_v4/srv/Stop_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Stop_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_27f4d159bbb2155a344f0da8317513e99338bbab073cfe6def1362ca6c11503f',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStop_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStop_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/StopDrag_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStopDrag_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStopDrag_Request',
        'type' => 'dobot_msgs_v4/srv/StopDrag_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StopDrag_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5726ed170c8d8c30e57c91dc3cf4685feba2b761ddbb5d25e6327d51e680d6e7',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStopDrag_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStopDrag_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/StopDrag_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStopDrag_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStopDrag_Response',
        'type' => 'dobot_msgs_v4/srv/StopDrag_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StopDrag_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4610fb06a436e0dafc3a3118d23ee8c66ee79eee1b916b9a15d2d48f6be79ae1',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStopDrag_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStopDrag_Response', $bytes);
    }
}

/** @brief Own all 0 original dobot_msgs_v4/srv/StopMoveJog_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStopMoveJog_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStopMoveJog_Request',
        'type' => 'dobot_msgs_v4/srv/StopMoveJog_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StopMoveJog_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1186e51277670f5371641a689fbd004690afa0ba0c083e939e8a4ea707e7cc48',
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
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStopMoveJog_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStopMoveJog_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/StopMoveJog_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvStopMoveJog_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvStopMoveJog_Response',
        'type' => 'dobot_msgs_v4/srv/StopMoveJog_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/StopMoveJog_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a16d5185cfacf20366bc39096fd5f178372b49114f1b54934998b83598ab88ba',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvStopMoveJog_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvStopMoveJog_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/TcpDashboard_Request fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvTcpDashboard_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvTcpDashboard_Request',
        'type' => 'dobot_msgs_v4/srv/TcpDashboard_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/TcpDashboard_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_364e06ac6090aab0c80f08c0b65fc7d7dc9b01f97001ab2b8bef01cb6665238e',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'command',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original command field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $command;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('command', $values))
            $this->command = $values['command'];
        else
        {
            $this->command = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvTcpDashboard_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvTcpDashboard_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/TcpDashboard_Response fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvTcpDashboard_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvTcpDashboard_Response',
        'type' => 'dobot_msgs_v4/srv/TcpDashboard_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/TcpDashboard_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_af114666c84215cf57d7ebfab7cd19fd4f02d80ad5420b99199bfbd88d337ef4',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'result',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original result field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $result;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('result', $values))
            $this->result = $values['result'];
        else
        {
            $this->result = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvTcpDashboard_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvTcpDashboard_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/Tool_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvTool_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvTool_Request',
        'type' => 'dobot_msgs_v4/srv/Tool_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Tool_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_46a879d337500dd0363b55d3af8df7d5008ff677c961e4945bee19430a596356',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvTool_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvTool_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/Tool_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvTool_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvTool_Response',
        'type' => 'dobot_msgs_v4/srv/Tool_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/Tool_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b0356c8a66a835ca4357c0acb9448693c77729cfe36a04ef7bb04490f32e17c8',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvTool_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvTool_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ToolAI_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvToolAI_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvToolAI_Request',
        'type' => 'dobot_msgs_v4/srv/ToolAI_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ToolAI_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b4271be2ad590c256fd80b1ef3ed003bb8109725511a72a317563436759482db',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvToolAI_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvToolAI_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ToolAI_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvToolAI_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvToolAI_Response',
        'type' => 'dobot_msgs_v4/srv/ToolAI_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ToolAI_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_108dce96d777772e846b8b6f51b8e69c75a481c3a087124a2f3af01204cbb25f',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvToolAI_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvToolAI_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ToolDI_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvToolDI_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvToolDI_Request',
        'type' => 'dobot_msgs_v4/srv/ToolDI_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ToolDI_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bc04ef24949f55eed4f550c8e6894c6684ae4a9b72d13e4a0257b2919abe8c75',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvToolDI_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvToolDI_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ToolDI_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvToolDI_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvToolDI_Response',
        'type' => 'dobot_msgs_v4/srv/ToolDI_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ToolDI_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_44925063f0b55bd4f63177a5bb3d566e249699b74120805f1477e28085f0a598',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvToolDI_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvToolDI_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/ToolDO_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvToolDO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvToolDO_Request',
        'type' => 'dobot_msgs_v4/srv/ToolDO_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ToolDO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_013cac15434c4dbacec6ab5cd7912f2992ccb77c619db0b0f1b3837b6d89ffa3',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original status field; int32 scalar.
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
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvToolDO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvToolDO_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ToolDO_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvToolDO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvToolDO_Response',
        'type' => 'dobot_msgs_v4/srv/ToolDO_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ToolDO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0231b146fd731cd304cdd2147679481307d77b4fae9d7436e523458a2dbf81a7',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvToolDO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvToolDO_Response', $bytes);
    }
}

/** @brief Own all 2 original dobot_msgs_v4/srv/ToolDOInstant_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvToolDOInstant_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvToolDOInstant_Request',
        'type' => 'dobot_msgs_v4/srv/ToolDOInstant_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ToolDOInstant_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cfac2b284303fbaf26d1ed93e8737e879ae16ef03a44fd0aa6118dac4fce03b2',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original status field; int32 scalar.
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
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('status', $values))
            $this->status = $values['status'];
        else
        {
            $this->status = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvToolDOInstant_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvToolDOInstant_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/ToolDOInstant_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvToolDOInstant_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvToolDOInstant_Response',
        'type' => 'dobot_msgs_v4/srv/ToolDOInstant_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/ToolDOInstant_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0e4472558e66ca84105318afc706c6aaaeb790d49d62fcfaac45506762d99262',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvToolDOInstant_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvToolDOInstant_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/User_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvUser_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvUser_Request',
        'type' => 'dobot_msgs_v4/srv/User_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/User_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_afa82fa40468d485c2aedd845180f41746938a7e6bcd8187122aa0eef01864a3',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'index',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('index', $values))
            $this->index = $values['index'];
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvUser_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvUser_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/User_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvUser_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvUser_Response',
        'type' => 'dobot_msgs_v4/srv/User_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/User_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eeb9ac569c6db66730edf5a7c72bfc7cdddca2168e69f8b099595c8ba47242a8',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvUser_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvUser_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/VelJ_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvVelJ_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvVelJ_Request',
        'type' => 'dobot_msgs_v4/srv/VelJ_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/VelJ_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8c223b003b51ad228cae88eef51b31e7457797fa5ff90e2926d7e06215910d20',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'r',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original r field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $r;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('r', $values))
            $this->r = $values['r'];
        else
        {
            $this->r = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvVelJ_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvVelJ_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/VelJ_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvVelJ_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvVelJ_Response',
        'type' => 'dobot_msgs_v4/srv/VelJ_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/VelJ_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dcc12c83a5d42e331800f324ceaa6b735ee11afd77aa9640b0dbfa266115f307',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvVelJ_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvVelJ_Response', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/VelL_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvVelL_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvVelL_Request',
        'type' => 'dobot_msgs_v4/srv/VelL_Request',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/VelL_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d8df3c4f5e50fa98822b9312633ff6c6f6cb4350170c1f1660c46f11ed3bd2de',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'r',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original r field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $r;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('r', $values))
            $this->r = $values['r'];
        else
        {
            $this->r = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvVelL_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvVelL_Request', $bytes);
    }
}

/** @brief Own all 1 original dobot_msgs_v4/srv/VelL_Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Dobot_msgs_v4SrvVelL_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Dobot_msgs_v4SrvVelL_Response',
        'type' => 'dobot_msgs_v4/srv/VelL_Response',
        'ros_version' => 2,
        'native_type' => 'dobot_msgs_v4/srv/VelL_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_64b1dedfcc17f0f5c81ea98751eaf8fcc8670ec6d4d488c89e64043763802072',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'res',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Dobot_msgs_v4SrvVelL_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Dobot_msgs_v4SrvVelL_Response', $bytes);
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
            'Ros2Dobot_msgs_v4MsgRobotStatus' => Ros2Dobot_msgs_v4MsgRobotStatus::SCHEMA + ['class' => Ros2Dobot_msgs_v4MsgRobotStatus::class],
            'Ros2Dobot_msgs_v4MsgToolVectorActual' => Ros2Dobot_msgs_v4MsgToolVectorActual::SCHEMA + ['class' => Ros2Dobot_msgs_v4MsgToolVectorActual::class],
            'Ros2Dobot_msgs_v4SrvAI_Request' => Ros2Dobot_msgs_v4SrvAI_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAI_Request::class],
            'Ros2Dobot_msgs_v4SrvAI_Response' => Ros2Dobot_msgs_v4SrvAI_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAI_Response::class],
            'Ros2Dobot_msgs_v4SrvAO_Request' => Ros2Dobot_msgs_v4SrvAO_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAO_Request::class],
            'Ros2Dobot_msgs_v4SrvAO_Response' => Ros2Dobot_msgs_v4SrvAO_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAO_Response::class],
            'Ros2Dobot_msgs_v4SrvAOInstant_Request' => Ros2Dobot_msgs_v4SrvAOInstant_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAOInstant_Request::class],
            'Ros2Dobot_msgs_v4SrvAOInstant_Response' => Ros2Dobot_msgs_v4SrvAOInstant_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAOInstant_Response::class],
            'Ros2Dobot_msgs_v4SrvAccJ_Request' => Ros2Dobot_msgs_v4SrvAccJ_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAccJ_Request::class],
            'Ros2Dobot_msgs_v4SrvAccJ_Response' => Ros2Dobot_msgs_v4SrvAccJ_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAccJ_Response::class],
            'Ros2Dobot_msgs_v4SrvAccL_Request' => Ros2Dobot_msgs_v4SrvAccL_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAccL_Request::class],
            'Ros2Dobot_msgs_v4SrvAccL_Response' => Ros2Dobot_msgs_v4SrvAccL_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvAccL_Response::class],
            'Ros2Dobot_msgs_v4SrvArc_Request' => Ros2Dobot_msgs_v4SrvArc_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvArc_Request::class],
            'Ros2Dobot_msgs_v4SrvArc_Response' => Ros2Dobot_msgs_v4SrvArc_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvArc_Response::class],
            'Ros2Dobot_msgs_v4SrvBrakeControl_Request' => Ros2Dobot_msgs_v4SrvBrakeControl_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvBrakeControl_Request::class],
            'Ros2Dobot_msgs_v4SrvBrakeControl_Response' => Ros2Dobot_msgs_v4SrvBrakeControl_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvBrakeControl_Response::class],
            'Ros2Dobot_msgs_v4SrvCP_Request' => Ros2Dobot_msgs_v4SrvCP_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCP_Request::class],
            'Ros2Dobot_msgs_v4SrvCP_Response' => Ros2Dobot_msgs_v4SrvCP_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCP_Response::class],
            'Ros2Dobot_msgs_v4SrvCalcTool_Request' => Ros2Dobot_msgs_v4SrvCalcTool_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCalcTool_Request::class],
            'Ros2Dobot_msgs_v4SrvCalcTool_Response' => Ros2Dobot_msgs_v4SrvCalcTool_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCalcTool_Response::class],
            'Ros2Dobot_msgs_v4SrvCalcUser_Request' => Ros2Dobot_msgs_v4SrvCalcUser_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCalcUser_Request::class],
            'Ros2Dobot_msgs_v4SrvCalcUser_Response' => Ros2Dobot_msgs_v4SrvCalcUser_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCalcUser_Response::class],
            'Ros2Dobot_msgs_v4SrvCheckOddMovC_Request' => Ros2Dobot_msgs_v4SrvCheckOddMovC_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCheckOddMovC_Request::class],
            'Ros2Dobot_msgs_v4SrvCheckOddMovC_Response' => Ros2Dobot_msgs_v4SrvCheckOddMovC_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCheckOddMovC_Response::class],
            'Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request' => Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request::class],
            'Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response' => Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response::class],
            'Ros2Dobot_msgs_v4SrvCheckOddMovL_Request' => Ros2Dobot_msgs_v4SrvCheckOddMovL_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCheckOddMovL_Request::class],
            'Ros2Dobot_msgs_v4SrvCheckOddMovL_Response' => Ros2Dobot_msgs_v4SrvCheckOddMovL_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCheckOddMovL_Response::class],
            'Ros2Dobot_msgs_v4SrvCircle_Request' => Ros2Dobot_msgs_v4SrvCircle_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCircle_Request::class],
            'Ros2Dobot_msgs_v4SrvCircle_Response' => Ros2Dobot_msgs_v4SrvCircle_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvCircle_Response::class],
            'Ros2Dobot_msgs_v4SrvClearError_Request' => Ros2Dobot_msgs_v4SrvClearError_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvClearError_Request::class],
            'Ros2Dobot_msgs_v4SrvClearError_Response' => Ros2Dobot_msgs_v4SrvClearError_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvClearError_Response::class],
            'Ros2Dobot_msgs_v4SrvContinue_Request' => Ros2Dobot_msgs_v4SrvContinue_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvContinue_Request::class],
            'Ros2Dobot_msgs_v4SrvContinue_Response' => Ros2Dobot_msgs_v4SrvContinue_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvContinue_Response::class],
            'Ros2Dobot_msgs_v4SrvDI_Request' => Ros2Dobot_msgs_v4SrvDI_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDI_Request::class],
            'Ros2Dobot_msgs_v4SrvDI_Response' => Ros2Dobot_msgs_v4SrvDI_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDI_Response::class],
            'Ros2Dobot_msgs_v4SrvDIGroup_Request' => Ros2Dobot_msgs_v4SrvDIGroup_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDIGroup_Request::class],
            'Ros2Dobot_msgs_v4SrvDIGroup_Response' => Ros2Dobot_msgs_v4SrvDIGroup_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDIGroup_Response::class],
            'Ros2Dobot_msgs_v4SrvDIGroupDEC_Request' => Ros2Dobot_msgs_v4SrvDIGroupDEC_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDIGroupDEC_Request::class],
            'Ros2Dobot_msgs_v4SrvDIGroupDEC_Response' => Ros2Dobot_msgs_v4SrvDIGroupDEC_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDIGroupDEC_Response::class],
            'Ros2Dobot_msgs_v4SrvDO_Request' => Ros2Dobot_msgs_v4SrvDO_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDO_Request::class],
            'Ros2Dobot_msgs_v4SrvDO_Response' => Ros2Dobot_msgs_v4SrvDO_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDO_Response::class],
            'Ros2Dobot_msgs_v4SrvDOGroup_Request' => Ros2Dobot_msgs_v4SrvDOGroup_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDOGroup_Request::class],
            'Ros2Dobot_msgs_v4SrvDOGroup_Response' => Ros2Dobot_msgs_v4SrvDOGroup_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDOGroup_Response::class],
            'Ros2Dobot_msgs_v4SrvDOGroupDEC_Request' => Ros2Dobot_msgs_v4SrvDOGroupDEC_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDOGroupDEC_Request::class],
            'Ros2Dobot_msgs_v4SrvDOGroupDEC_Response' => Ros2Dobot_msgs_v4SrvDOGroupDEC_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDOGroupDEC_Response::class],
            'Ros2Dobot_msgs_v4SrvDOInstant_Request' => Ros2Dobot_msgs_v4SrvDOInstant_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDOInstant_Request::class],
            'Ros2Dobot_msgs_v4SrvDOInstant_Response' => Ros2Dobot_msgs_v4SrvDOInstant_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDOInstant_Response::class],
            'Ros2Dobot_msgs_v4SrvDisableRobot_Request' => Ros2Dobot_msgs_v4SrvDisableRobot_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDisableRobot_Request::class],
            'Ros2Dobot_msgs_v4SrvDisableRobot_Response' => Ros2Dobot_msgs_v4SrvDisableRobot_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDisableRobot_Response::class],
            'Ros2Dobot_msgs_v4SrvDragSensivity_Request' => Ros2Dobot_msgs_v4SrvDragSensivity_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDragSensivity_Request::class],
            'Ros2Dobot_msgs_v4SrvDragSensivity_Response' => Ros2Dobot_msgs_v4SrvDragSensivity_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvDragSensivity_Response::class],
            'Ros2Dobot_msgs_v4SrvEmergencyStop_Request' => Ros2Dobot_msgs_v4SrvEmergencyStop_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEmergencyStop_Request::class],
            'Ros2Dobot_msgs_v4SrvEmergencyStop_Response' => Ros2Dobot_msgs_v4SrvEmergencyStop_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEmergencyStop_Response::class],
            'Ros2Dobot_msgs_v4SrvEnableFTSensor_Request' => Ros2Dobot_msgs_v4SrvEnableFTSensor_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEnableFTSensor_Request::class],
            'Ros2Dobot_msgs_v4SrvEnableFTSensor_Response' => Ros2Dobot_msgs_v4SrvEnableFTSensor_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEnableFTSensor_Response::class],
            'Ros2Dobot_msgs_v4SrvEnableRobot_Request' => Ros2Dobot_msgs_v4SrvEnableRobot_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEnableRobot_Request::class],
            'Ros2Dobot_msgs_v4SrvEnableRobot_Response' => Ros2Dobot_msgs_v4SrvEnableRobot_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEnableRobot_Response::class],
            'Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request' => Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request::class],
            'Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response' => Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response::class],
            'Ros2Dobot_msgs_v4SrvEndRTOffset_Request' => Ros2Dobot_msgs_v4SrvEndRTOffset_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEndRTOffset_Request::class],
            'Ros2Dobot_msgs_v4SrvEndRTOffset_Response' => Ros2Dobot_msgs_v4SrvEndRTOffset_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvEndRTOffset_Response::class],
            'Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request' => Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request::class],
            'Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response' => Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response::class],
            'Ros2Dobot_msgs_v4SrvFCForceMode_Request' => Ros2Dobot_msgs_v4SrvFCForceMode_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCForceMode_Request::class],
            'Ros2Dobot_msgs_v4SrvFCForceMode_Response' => Ros2Dobot_msgs_v4SrvFCForceMode_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCForceMode_Response::class],
            'Ros2Dobot_msgs_v4SrvFCOff_Request' => Ros2Dobot_msgs_v4SrvFCOff_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCOff_Request::class],
            'Ros2Dobot_msgs_v4SrvFCOff_Response' => Ros2Dobot_msgs_v4SrvFCOff_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCOff_Response::class],
            'Ros2Dobot_msgs_v4SrvFCSetDamping_Request' => Ros2Dobot_msgs_v4SrvFCSetDamping_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetDamping_Request::class],
            'Ros2Dobot_msgs_v4SrvFCSetDamping_Response' => Ros2Dobot_msgs_v4SrvFCSetDamping_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetDamping_Response::class],
            'Ros2Dobot_msgs_v4SrvFCSetDeviation_Request' => Ros2Dobot_msgs_v4SrvFCSetDeviation_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetDeviation_Request::class],
            'Ros2Dobot_msgs_v4SrvFCSetDeviation_Response' => Ros2Dobot_msgs_v4SrvFCSetDeviation_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetDeviation_Response::class],
            'Ros2Dobot_msgs_v4SrvFCSetForce_Request' => Ros2Dobot_msgs_v4SrvFCSetForce_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetForce_Request::class],
            'Ros2Dobot_msgs_v4SrvFCSetForce_Response' => Ros2Dobot_msgs_v4SrvFCSetForce_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetForce_Response::class],
            'Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request' => Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request::class],
            'Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response' => Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response::class],
            'Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request' => Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request::class],
            'Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response' => Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response::class],
            'Ros2Dobot_msgs_v4SrvFCSetMass_Request' => Ros2Dobot_msgs_v4SrvFCSetMass_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetMass_Request::class],
            'Ros2Dobot_msgs_v4SrvFCSetMass_Response' => Ros2Dobot_msgs_v4SrvFCSetMass_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetMass_Response::class],
            'Ros2Dobot_msgs_v4SrvFCSetStiffness_Request' => Ros2Dobot_msgs_v4SrvFCSetStiffness_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetStiffness_Request::class],
            'Ros2Dobot_msgs_v4SrvFCSetStiffness_Response' => Ros2Dobot_msgs_v4SrvFCSetStiffness_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvFCSetStiffness_Response::class],
            'Ros2Dobot_msgs_v4SrvForceDriveMode_Request' => Ros2Dobot_msgs_v4SrvForceDriveMode_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvForceDriveMode_Request::class],
            'Ros2Dobot_msgs_v4SrvForceDriveMode_Response' => Ros2Dobot_msgs_v4SrvForceDriveMode_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvForceDriveMode_Response::class],
            'Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request' => Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request::class],
            'Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response' => Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response::class],
            'Ros2Dobot_msgs_v4SrvGetAO_Request' => Ros2Dobot_msgs_v4SrvGetAO_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetAO_Request::class],
            'Ros2Dobot_msgs_v4SrvGetAO_Response' => Ros2Dobot_msgs_v4SrvGetAO_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetAO_Response::class],
            'Ros2Dobot_msgs_v4SrvGetAngle_Request' => Ros2Dobot_msgs_v4SrvGetAngle_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetAngle_Request::class],
            'Ros2Dobot_msgs_v4SrvGetAngle_Response' => Ros2Dobot_msgs_v4SrvGetAngle_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetAngle_Response::class],
            'Ros2Dobot_msgs_v4SrvGetCoils_Request' => Ros2Dobot_msgs_v4SrvGetCoils_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetCoils_Request::class],
            'Ros2Dobot_msgs_v4SrvGetCoils_Response' => Ros2Dobot_msgs_v4SrvGetCoils_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetCoils_Response::class],
            'Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request' => Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request::class],
            'Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response' => Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response::class],
            'Ros2Dobot_msgs_v4SrvGetDO_Request' => Ros2Dobot_msgs_v4SrvGetDO_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetDO_Request::class],
            'Ros2Dobot_msgs_v4SrvGetDO_Response' => Ros2Dobot_msgs_v4SrvGetDO_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetDO_Response::class],
            'Ros2Dobot_msgs_v4SrvGetDOGroup_Request' => Ros2Dobot_msgs_v4SrvGetDOGroup_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetDOGroup_Request::class],
            'Ros2Dobot_msgs_v4SrvGetDOGroup_Response' => Ros2Dobot_msgs_v4SrvGetDOGroup_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetDOGroup_Response::class],
            'Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request' => Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request::class],
            'Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response' => Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response::class],
            'Ros2Dobot_msgs_v4SrvGetError_Request' => Ros2Dobot_msgs_v4SrvGetError_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetError_Request::class],
            'Ros2Dobot_msgs_v4SrvGetError_Response' => Ros2Dobot_msgs_v4SrvGetError_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetError_Response::class],
            'Ros2Dobot_msgs_v4SrvGetErrorID_Request' => Ros2Dobot_msgs_v4SrvGetErrorID_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetErrorID_Request::class],
            'Ros2Dobot_msgs_v4SrvGetErrorID_Response' => Ros2Dobot_msgs_v4SrvGetErrorID_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetErrorID_Response::class],
            'Ros2Dobot_msgs_v4SrvGetForce_Request' => Ros2Dobot_msgs_v4SrvGetForce_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetForce_Request::class],
            'Ros2Dobot_msgs_v4SrvGetForce_Response' => Ros2Dobot_msgs_v4SrvGetForce_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetForce_Response::class],
            'Ros2Dobot_msgs_v4SrvGetHoldRegs_Request' => Ros2Dobot_msgs_v4SrvGetHoldRegs_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetHoldRegs_Request::class],
            'Ros2Dobot_msgs_v4SrvGetHoldRegs_Response' => Ros2Dobot_msgs_v4SrvGetHoldRegs_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetHoldRegs_Response::class],
            'Ros2Dobot_msgs_v4SrvGetInBits_Request' => Ros2Dobot_msgs_v4SrvGetInBits_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInBits_Request::class],
            'Ros2Dobot_msgs_v4SrvGetInBits_Response' => Ros2Dobot_msgs_v4SrvGetInBits_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInBits_Response::class],
            'Ros2Dobot_msgs_v4SrvGetInRegs_Request' => Ros2Dobot_msgs_v4SrvGetInRegs_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInRegs_Request::class],
            'Ros2Dobot_msgs_v4SrvGetInRegs_Response' => Ros2Dobot_msgs_v4SrvGetInRegs_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInRegs_Response::class],
            'Ros2Dobot_msgs_v4SrvGetInputBool_Request' => Ros2Dobot_msgs_v4SrvGetInputBool_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInputBool_Request::class],
            'Ros2Dobot_msgs_v4SrvGetInputBool_Response' => Ros2Dobot_msgs_v4SrvGetInputBool_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInputBool_Response::class],
            'Ros2Dobot_msgs_v4SrvGetInputFloat_Request' => Ros2Dobot_msgs_v4SrvGetInputFloat_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInputFloat_Request::class],
            'Ros2Dobot_msgs_v4SrvGetInputFloat_Response' => Ros2Dobot_msgs_v4SrvGetInputFloat_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInputFloat_Response::class],
            'Ros2Dobot_msgs_v4SrvGetInputInt_Request' => Ros2Dobot_msgs_v4SrvGetInputInt_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInputInt_Request::class],
            'Ros2Dobot_msgs_v4SrvGetInputInt_Response' => Ros2Dobot_msgs_v4SrvGetInputInt_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetInputInt_Response::class],
            'Ros2Dobot_msgs_v4SrvGetOutputBool_Request' => Ros2Dobot_msgs_v4SrvGetOutputBool_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetOutputBool_Request::class],
            'Ros2Dobot_msgs_v4SrvGetOutputBool_Response' => Ros2Dobot_msgs_v4SrvGetOutputBool_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetOutputBool_Response::class],
            'Ros2Dobot_msgs_v4SrvGetOutputFloat_Request' => Ros2Dobot_msgs_v4SrvGetOutputFloat_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetOutputFloat_Request::class],
            'Ros2Dobot_msgs_v4SrvGetOutputFloat_Response' => Ros2Dobot_msgs_v4SrvGetOutputFloat_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetOutputFloat_Response::class],
            'Ros2Dobot_msgs_v4SrvGetOutputInt_Request' => Ros2Dobot_msgs_v4SrvGetOutputInt_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetOutputInt_Request::class],
            'Ros2Dobot_msgs_v4SrvGetOutputInt_Response' => Ros2Dobot_msgs_v4SrvGetOutputInt_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetOutputInt_Response::class],
            'Ros2Dobot_msgs_v4SrvGetPose_Request' => Ros2Dobot_msgs_v4SrvGetPose_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetPose_Request::class],
            'Ros2Dobot_msgs_v4SrvGetPose_Response' => Ros2Dobot_msgs_v4SrvGetPose_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetPose_Response::class],
            'Ros2Dobot_msgs_v4SrvGetStartPose_Request' => Ros2Dobot_msgs_v4SrvGetStartPose_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetStartPose_Request::class],
            'Ros2Dobot_msgs_v4SrvGetStartPose_Response' => Ros2Dobot_msgs_v4SrvGetStartPose_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetStartPose_Response::class],
            'Ros2Dobot_msgs_v4SrvGetToolDO_Request' => Ros2Dobot_msgs_v4SrvGetToolDO_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetToolDO_Request::class],
            'Ros2Dobot_msgs_v4SrvGetToolDO_Response' => Ros2Dobot_msgs_v4SrvGetToolDO_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvGetToolDO_Response::class],
            'Ros2Dobot_msgs_v4SrvInverseKin_Request' => Ros2Dobot_msgs_v4SrvInverseKin_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvInverseKin_Request::class],
            'Ros2Dobot_msgs_v4SrvInverseKin_Response' => Ros2Dobot_msgs_v4SrvInverseKin_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvInverseKin_Response::class],
            'Ros2Dobot_msgs_v4SrvInverseSolution_Request' => Ros2Dobot_msgs_v4SrvInverseSolution_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvInverseSolution_Request::class],
            'Ros2Dobot_msgs_v4SrvInverseSolution_Response' => Ros2Dobot_msgs_v4SrvInverseSolution_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvInverseSolution_Response::class],
            'Ros2Dobot_msgs_v4SrvModbusClose_Request' => Ros2Dobot_msgs_v4SrvModbusClose_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvModbusClose_Request::class],
            'Ros2Dobot_msgs_v4SrvModbusClose_Response' => Ros2Dobot_msgs_v4SrvModbusClose_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvModbusClose_Response::class],
            'Ros2Dobot_msgs_v4SrvModbusCreate_Request' => Ros2Dobot_msgs_v4SrvModbusCreate_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvModbusCreate_Request::class],
            'Ros2Dobot_msgs_v4SrvModbusCreate_Response' => Ros2Dobot_msgs_v4SrvModbusCreate_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvModbusCreate_Response::class],
            'Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request' => Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request::class],
            'Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response' => Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response::class],
            'Ros2Dobot_msgs_v4SrvMovJ_Request' => Ros2Dobot_msgs_v4SrvMovJ_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMovJ_Request::class],
            'Ros2Dobot_msgs_v4SrvMovJ_Response' => Ros2Dobot_msgs_v4SrvMovJ_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMovJ_Response::class],
            'Ros2Dobot_msgs_v4SrvMovJIO_Request' => Ros2Dobot_msgs_v4SrvMovJIO_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMovJIO_Request::class],
            'Ros2Dobot_msgs_v4SrvMovJIO_Response' => Ros2Dobot_msgs_v4SrvMovJIO_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMovJIO_Response::class],
            'Ros2Dobot_msgs_v4SrvMovL_Request' => Ros2Dobot_msgs_v4SrvMovL_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMovL_Request::class],
            'Ros2Dobot_msgs_v4SrvMovL_Response' => Ros2Dobot_msgs_v4SrvMovL_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMovL_Response::class],
            'Ros2Dobot_msgs_v4SrvMovLIO_Request' => Ros2Dobot_msgs_v4SrvMovLIO_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMovLIO_Request::class],
            'Ros2Dobot_msgs_v4SrvMovLIO_Response' => Ros2Dobot_msgs_v4SrvMovLIO_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMovLIO_Response::class],
            'Ros2Dobot_msgs_v4SrvMoveJog_Request' => Ros2Dobot_msgs_v4SrvMoveJog_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMoveJog_Request::class],
            'Ros2Dobot_msgs_v4SrvMoveJog_Response' => Ros2Dobot_msgs_v4SrvMoveJog_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvMoveJog_Response::class],
            'Ros2Dobot_msgs_v4SrvPause_Request' => Ros2Dobot_msgs_v4SrvPause_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvPause_Request::class],
            'Ros2Dobot_msgs_v4SrvPause_Response' => Ros2Dobot_msgs_v4SrvPause_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvPause_Response::class],
            'Ros2Dobot_msgs_v4SrvPositiveKin_Request' => Ros2Dobot_msgs_v4SrvPositiveKin_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvPositiveKin_Request::class],
            'Ros2Dobot_msgs_v4SrvPositiveKin_Response' => Ros2Dobot_msgs_v4SrvPositiveKin_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvPositiveKin_Response::class],
            'Ros2Dobot_msgs_v4SrvPowerOn_Request' => Ros2Dobot_msgs_v4SrvPowerOn_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvPowerOn_Request::class],
            'Ros2Dobot_msgs_v4SrvPowerOn_Response' => Ros2Dobot_msgs_v4SrvPowerOn_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvPowerOn_Response::class],
            'Ros2Dobot_msgs_v4SrvRelJointMovJ_Request' => Ros2Dobot_msgs_v4SrvRelJointMovJ_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelJointMovJ_Request::class],
            'Ros2Dobot_msgs_v4SrvRelJointMovJ_Response' => Ros2Dobot_msgs_v4SrvRelJointMovJ_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelJointMovJ_Response::class],
            'Ros2Dobot_msgs_v4SrvRelMovJTool_Request' => Ros2Dobot_msgs_v4SrvRelMovJTool_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelMovJTool_Request::class],
            'Ros2Dobot_msgs_v4SrvRelMovJTool_Response' => Ros2Dobot_msgs_v4SrvRelMovJTool_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelMovJTool_Response::class],
            'Ros2Dobot_msgs_v4SrvRelMovJUser_Request' => Ros2Dobot_msgs_v4SrvRelMovJUser_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelMovJUser_Request::class],
            'Ros2Dobot_msgs_v4SrvRelMovJUser_Response' => Ros2Dobot_msgs_v4SrvRelMovJUser_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelMovJUser_Response::class],
            'Ros2Dobot_msgs_v4SrvRelMovLTool_Request' => Ros2Dobot_msgs_v4SrvRelMovLTool_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelMovLTool_Request::class],
            'Ros2Dobot_msgs_v4SrvRelMovLTool_Response' => Ros2Dobot_msgs_v4SrvRelMovLTool_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelMovLTool_Response::class],
            'Ros2Dobot_msgs_v4SrvRelMovLUser_Request' => Ros2Dobot_msgs_v4SrvRelMovLUser_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelMovLUser_Request::class],
            'Ros2Dobot_msgs_v4SrvRelMovLUser_Response' => Ros2Dobot_msgs_v4SrvRelMovLUser_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRelMovLUser_Response::class],
            'Ros2Dobot_msgs_v4SrvRequestControl_Request' => Ros2Dobot_msgs_v4SrvRequestControl_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRequestControl_Request::class],
            'Ros2Dobot_msgs_v4SrvRequestControl_Response' => Ros2Dobot_msgs_v4SrvRequestControl_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRequestControl_Response::class],
            'Ros2Dobot_msgs_v4SrvResetRobot_Request' => Ros2Dobot_msgs_v4SrvResetRobot_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvResetRobot_Request::class],
            'Ros2Dobot_msgs_v4SrvResetRobot_Response' => Ros2Dobot_msgs_v4SrvResetRobot_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvResetRobot_Response::class],
            'Ros2Dobot_msgs_v4SrvRobotMode_Request' => Ros2Dobot_msgs_v4SrvRobotMode_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRobotMode_Request::class],
            'Ros2Dobot_msgs_v4SrvRobotMode_Response' => Ros2Dobot_msgs_v4SrvRobotMode_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRobotMode_Response::class],
            'Ros2Dobot_msgs_v4SrvRunScript_Request' => Ros2Dobot_msgs_v4SrvRunScript_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRunScript_Request::class],
            'Ros2Dobot_msgs_v4SrvRunScript_Response' => Ros2Dobot_msgs_v4SrvRunScript_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRunScript_Response::class],
            'Ros2Dobot_msgs_v4SrvRunTo_Request' => Ros2Dobot_msgs_v4SrvRunTo_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRunTo_Request::class],
            'Ros2Dobot_msgs_v4SrvRunTo_Response' => Ros2Dobot_msgs_v4SrvRunTo_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvRunTo_Response::class],
            'Ros2Dobot_msgs_v4SrvServoJ_Request' => Ros2Dobot_msgs_v4SrvServoJ_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvServoJ_Request::class],
            'Ros2Dobot_msgs_v4SrvServoJ_Response' => Ros2Dobot_msgs_v4SrvServoJ_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvServoJ_Response::class],
            'Ros2Dobot_msgs_v4SrvServoP_Request' => Ros2Dobot_msgs_v4SrvServoP_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvServoP_Request::class],
            'Ros2Dobot_msgs_v4SrvServoP_Response' => Ros2Dobot_msgs_v4SrvServoP_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvServoP_Response::class],
            'Ros2Dobot_msgs_v4SrvSetBackDistance_Request' => Ros2Dobot_msgs_v4SrvSetBackDistance_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetBackDistance_Request::class],
            'Ros2Dobot_msgs_v4SrvSetBackDistance_Response' => Ros2Dobot_msgs_v4SrvSetBackDistance_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetBackDistance_Response::class],
            'Ros2Dobot_msgs_v4SrvSetCoils_Request' => Ros2Dobot_msgs_v4SrvSetCoils_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetCoils_Request::class],
            'Ros2Dobot_msgs_v4SrvSetCoils_Response' => Ros2Dobot_msgs_v4SrvSetCoils_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetCoils_Response::class],
            'Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request' => Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request::class],
            'Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response' => Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response::class],
            'Ros2Dobot_msgs_v4SrvSetFCCollision_Request' => Ros2Dobot_msgs_v4SrvSetFCCollision_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetFCCollision_Request::class],
            'Ros2Dobot_msgs_v4SrvSetFCCollision_Response' => Ros2Dobot_msgs_v4SrvSetFCCollision_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetFCCollision_Response::class],
            'Ros2Dobot_msgs_v4SrvSetHoldRegs_Request' => Ros2Dobot_msgs_v4SrvSetHoldRegs_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetHoldRegs_Request::class],
            'Ros2Dobot_msgs_v4SrvSetHoldRegs_Response' => Ros2Dobot_msgs_v4SrvSetHoldRegs_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetHoldRegs_Response::class],
            'Ros2Dobot_msgs_v4SrvSetOutputBool_Request' => Ros2Dobot_msgs_v4SrvSetOutputBool_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetOutputBool_Request::class],
            'Ros2Dobot_msgs_v4SrvSetOutputBool_Response' => Ros2Dobot_msgs_v4SrvSetOutputBool_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetOutputBool_Response::class],
            'Ros2Dobot_msgs_v4SrvSetOutputFloat_Request' => Ros2Dobot_msgs_v4SrvSetOutputFloat_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetOutputFloat_Request::class],
            'Ros2Dobot_msgs_v4SrvSetOutputFloat_Response' => Ros2Dobot_msgs_v4SrvSetOutputFloat_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetOutputFloat_Response::class],
            'Ros2Dobot_msgs_v4SrvSetOutputInt_Request' => Ros2Dobot_msgs_v4SrvSetOutputInt_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetOutputInt_Request::class],
            'Ros2Dobot_msgs_v4SrvSetOutputInt_Response' => Ros2Dobot_msgs_v4SrvSetOutputInt_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetOutputInt_Response::class],
            'Ros2Dobot_msgs_v4SrvSetPayload_Request' => Ros2Dobot_msgs_v4SrvSetPayload_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetPayload_Request::class],
            'Ros2Dobot_msgs_v4SrvSetPayload_Response' => Ros2Dobot_msgs_v4SrvSetPayload_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetPayload_Response::class],
            'Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request' => Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request::class],
            'Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response' => Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response::class],
            'Ros2Dobot_msgs_v4SrvSetSafeSkin_Request' => Ros2Dobot_msgs_v4SrvSetSafeSkin_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetSafeSkin_Request::class],
            'Ros2Dobot_msgs_v4SrvSetSafeSkin_Response' => Ros2Dobot_msgs_v4SrvSetSafeSkin_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetSafeSkin_Response::class],
            'Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request' => Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request::class],
            'Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response' => Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response::class],
            'Ros2Dobot_msgs_v4SrvSetTool_Request' => Ros2Dobot_msgs_v4SrvSetTool_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetTool_Request::class],
            'Ros2Dobot_msgs_v4SrvSetTool_Response' => Ros2Dobot_msgs_v4SrvSetTool_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetTool_Response::class],
            'Ros2Dobot_msgs_v4SrvSetTool485_Request' => Ros2Dobot_msgs_v4SrvSetTool485_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetTool485_Request::class],
            'Ros2Dobot_msgs_v4SrvSetTool485_Response' => Ros2Dobot_msgs_v4SrvSetTool485_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetTool485_Response::class],
            'Ros2Dobot_msgs_v4SrvSetToolMode_Request' => Ros2Dobot_msgs_v4SrvSetToolMode_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetToolMode_Request::class],
            'Ros2Dobot_msgs_v4SrvSetToolMode_Response' => Ros2Dobot_msgs_v4SrvSetToolMode_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetToolMode_Response::class],
            'Ros2Dobot_msgs_v4SrvSetToolPower_Request' => Ros2Dobot_msgs_v4SrvSetToolPower_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetToolPower_Request::class],
            'Ros2Dobot_msgs_v4SrvSetToolPower_Response' => Ros2Dobot_msgs_v4SrvSetToolPower_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetToolPower_Response::class],
            'Ros2Dobot_msgs_v4SrvSetUser_Request' => Ros2Dobot_msgs_v4SrvSetUser_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetUser_Request::class],
            'Ros2Dobot_msgs_v4SrvSetUser_Response' => Ros2Dobot_msgs_v4SrvSetUser_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetUser_Response::class],
            'Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request' => Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request::class],
            'Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response' => Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response::class],
            'Ros2Dobot_msgs_v4SrvSixForceHome_Request' => Ros2Dobot_msgs_v4SrvSixForceHome_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSixForceHome_Request::class],
            'Ros2Dobot_msgs_v4SrvSixForceHome_Response' => Ros2Dobot_msgs_v4SrvSixForceHome_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSixForceHome_Response::class],
            'Ros2Dobot_msgs_v4SrvSpeedFactor_Request' => Ros2Dobot_msgs_v4SrvSpeedFactor_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSpeedFactor_Request::class],
            'Ros2Dobot_msgs_v4SrvSpeedFactor_Response' => Ros2Dobot_msgs_v4SrvSpeedFactor_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvSpeedFactor_Response::class],
            'Ros2Dobot_msgs_v4SrvStartDrag_Request' => Ros2Dobot_msgs_v4SrvStartDrag_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStartDrag_Request::class],
            'Ros2Dobot_msgs_v4SrvStartDrag_Response' => Ros2Dobot_msgs_v4SrvStartDrag_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStartDrag_Response::class],
            'Ros2Dobot_msgs_v4SrvStartPath_Request' => Ros2Dobot_msgs_v4SrvStartPath_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStartPath_Request::class],
            'Ros2Dobot_msgs_v4SrvStartPath_Response' => Ros2Dobot_msgs_v4SrvStartPath_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStartPath_Response::class],
            'Ros2Dobot_msgs_v4SrvStartRTOffset_Request' => Ros2Dobot_msgs_v4SrvStartRTOffset_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStartRTOffset_Request::class],
            'Ros2Dobot_msgs_v4SrvStartRTOffset_Response' => Ros2Dobot_msgs_v4SrvStartRTOffset_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStartRTOffset_Response::class],
            'Ros2Dobot_msgs_v4SrvStop_Request' => Ros2Dobot_msgs_v4SrvStop_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStop_Request::class],
            'Ros2Dobot_msgs_v4SrvStop_Response' => Ros2Dobot_msgs_v4SrvStop_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStop_Response::class],
            'Ros2Dobot_msgs_v4SrvStopDrag_Request' => Ros2Dobot_msgs_v4SrvStopDrag_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStopDrag_Request::class],
            'Ros2Dobot_msgs_v4SrvStopDrag_Response' => Ros2Dobot_msgs_v4SrvStopDrag_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStopDrag_Response::class],
            'Ros2Dobot_msgs_v4SrvStopMoveJog_Request' => Ros2Dobot_msgs_v4SrvStopMoveJog_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStopMoveJog_Request::class],
            'Ros2Dobot_msgs_v4SrvStopMoveJog_Response' => Ros2Dobot_msgs_v4SrvStopMoveJog_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvStopMoveJog_Response::class],
            'Ros2Dobot_msgs_v4SrvTcpDashboard_Request' => Ros2Dobot_msgs_v4SrvTcpDashboard_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvTcpDashboard_Request::class],
            'Ros2Dobot_msgs_v4SrvTcpDashboard_Response' => Ros2Dobot_msgs_v4SrvTcpDashboard_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvTcpDashboard_Response::class],
            'Ros2Dobot_msgs_v4SrvTool_Request' => Ros2Dobot_msgs_v4SrvTool_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvTool_Request::class],
            'Ros2Dobot_msgs_v4SrvTool_Response' => Ros2Dobot_msgs_v4SrvTool_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvTool_Response::class],
            'Ros2Dobot_msgs_v4SrvToolAI_Request' => Ros2Dobot_msgs_v4SrvToolAI_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvToolAI_Request::class],
            'Ros2Dobot_msgs_v4SrvToolAI_Response' => Ros2Dobot_msgs_v4SrvToolAI_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvToolAI_Response::class],
            'Ros2Dobot_msgs_v4SrvToolDI_Request' => Ros2Dobot_msgs_v4SrvToolDI_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvToolDI_Request::class],
            'Ros2Dobot_msgs_v4SrvToolDI_Response' => Ros2Dobot_msgs_v4SrvToolDI_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvToolDI_Response::class],
            'Ros2Dobot_msgs_v4SrvToolDO_Request' => Ros2Dobot_msgs_v4SrvToolDO_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvToolDO_Request::class],
            'Ros2Dobot_msgs_v4SrvToolDO_Response' => Ros2Dobot_msgs_v4SrvToolDO_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvToolDO_Response::class],
            'Ros2Dobot_msgs_v4SrvToolDOInstant_Request' => Ros2Dobot_msgs_v4SrvToolDOInstant_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvToolDOInstant_Request::class],
            'Ros2Dobot_msgs_v4SrvToolDOInstant_Response' => Ros2Dobot_msgs_v4SrvToolDOInstant_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvToolDOInstant_Response::class],
            'Ros2Dobot_msgs_v4SrvUser_Request' => Ros2Dobot_msgs_v4SrvUser_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvUser_Request::class],
            'Ros2Dobot_msgs_v4SrvUser_Response' => Ros2Dobot_msgs_v4SrvUser_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvUser_Response::class],
            'Ros2Dobot_msgs_v4SrvVelJ_Request' => Ros2Dobot_msgs_v4SrvVelJ_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvVelJ_Request::class],
            'Ros2Dobot_msgs_v4SrvVelJ_Response' => Ros2Dobot_msgs_v4SrvVelJ_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvVelJ_Response::class],
            'Ros2Dobot_msgs_v4SrvVelL_Request' => Ros2Dobot_msgs_v4SrvVelL_Request::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvVelL_Request::class],
            'Ros2Dobot_msgs_v4SrvVelL_Response' => Ros2Dobot_msgs_v4SrvVelL_Response::SCHEMA + ['class' => Ros2Dobot_msgs_v4SrvVelL_Response::class],
        ]);
        return $wire;
    }
}
