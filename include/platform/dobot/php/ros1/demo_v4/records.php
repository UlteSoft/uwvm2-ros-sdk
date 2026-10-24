<?php
declare(strict_types=1);
namespace Uwvm\Dobot\ros1_demo_v4;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own all 1 original rosdemo_v4/AIRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AIRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AIRequest',
        'type' => 'rosdemo_v4/AIRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AIRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9a9e9cb237b8b84e16ed75126eb9cc9bbefa432d79761b6354b4793bef909e75',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AIRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AIRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/AIResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AIResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AIResponse',
        'type' => 'rosdemo_v4/AIResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AIResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_272bd99c0de2e8a6a7147c6d23b4f87bb73a06f0d1cfc7e34ad746dceb14f24b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AIResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AIResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/AORequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AORequest',
        'type' => 'rosdemo_v4/AORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_319c8b9779bf77eebe820eede387578c3ceec1ae877847f3060d2b4e35b0f184',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/AOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AOResponse',
        'type' => 'rosdemo_v4/AOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ed70f14a69e472eacb757bc92edd7cf77a5f33b247f053e93aef41bc0c453e7c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AOResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/AOInstantRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AOInstantRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AOInstantRequest',
        'type' => 'rosdemo_v4/AOInstantRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AOInstantRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b1f33ddccebb7e459bbc61fc121b541fbf400713bec097869885f12fc6ec19f6',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AOInstantRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AOInstantRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/AOInstantResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AOInstantResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AOInstantResponse',
        'type' => 'rosdemo_v4/AOInstantResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AOInstantResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7f025819db1b8e50ef5efd72ce5eb0ae17f37e6f886b447dfa9be45597a35447',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AOInstantResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AOInstantResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/AccJRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AccJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AccJRequest',
        'type' => 'rosdemo_v4/AccJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AccJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_03980d6dad09b302198eed3e268f89cbdccb6262088e15d7aece03e55be7b149',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AccJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AccJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/AccJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AccJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AccJResponse',
        'type' => 'rosdemo_v4/AccJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AccJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6beeb4d555efe01650e515850d237a0975bd5e857212f6f96f06fede9ac0af1a',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AccJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AccJResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/AccLRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AccLRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AccLRequest',
        'type' => 'rosdemo_v4/AccLRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AccLRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_05217bf256897d7a7ce48b7118f778aa017365618ee91fccd4d6c7df688fc85b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AccLRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AccLRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/AccLResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4AccLResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4AccLResponse',
        'type' => 'rosdemo_v4/AccLResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/AccLResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_58bbf77d78566356a9daf130bd2e06845f78cd6760925d3304b79047e617eba1',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4AccLResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4AccLResponse', $bytes);
    }
}

/** @brief Own all 14 original rosdemo_v4/ArcRequest fields.
 * @details 101..4261 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ArcRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ArcRequest',
        'type' => 'rosdemo_v4/ArcRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ArcRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_951088f16f6ef708a44ed7b36f032af570830dae415d4c95a1657f2c0fe92d30',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4ArcRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ArcRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ArcResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ArcResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ArcResponse',
        'type' => 'rosdemo_v4/ArcResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ArcResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0559f4edf675e06a604831aafc73e0642730205670614c44ac043491db9621c9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ArcResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ArcResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/BrakeControlRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4BrakeControlRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4BrakeControlRequest',
        'type' => 'rosdemo_v4/BrakeControlRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/BrakeControlRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8a85af65d2b24e7c5ec3dc061dea6c36e984cc4583888d02df9047d209c572ca',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'axisID',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original axisID field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $axisID;
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
        if (array_key_exists('axisID', $values))
            $this->axisID = $values['axisID'];
        else
        {
            $this->axisID = 0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4BrakeControlRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4BrakeControlRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/BrakeControlResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4BrakeControlResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4BrakeControlResponse',
        'type' => 'rosdemo_v4/BrakeControlResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/BrakeControlResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cbb732b4d3b3abad69d3884f91e0044d4f3320eea779269871a262dcd2b66843',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4BrakeControlResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4BrakeControlResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/CPRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4CPRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4CPRequest',
        'type' => 'rosdemo_v4/CPRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/CPRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9cdde37097235a464151f45e43c20af287ffd607a1192601ddad6e30ba9c652e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4CPRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4CPRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/CPResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4CPResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4CPResponse',
        'type' => 'rosdemo_v4/CPResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/CPResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d16642a1f436105969397d24b57278e2e7f75af08af9ef7ec08dbc26abb631a9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4CPResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4CPResponse', $bytes);
    }
}

/** @brief Own all 3 original rosdemo_v4/CalcToolRequest fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4CalcToolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4CalcToolRequest',
        'type' => 'rosdemo_v4/CalcToolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/CalcToolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cee057e98be4aad3812ca9dbd2bfc346f00d8c2ae2c58bf5ca6ecc80563ee2eb',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4CalcToolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4CalcToolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/CalcToolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4CalcToolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4CalcToolResponse',
        'type' => 'rosdemo_v4/CalcToolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/CalcToolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fbe531e715f88a71f704013292ea6a48475b94634d28b04a9bbf65a023f76d0e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4CalcToolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4CalcToolResponse', $bytes);
    }
}

/** @brief Own all 3 original rosdemo_v4/CalcUserRequest fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4CalcUserRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4CalcUserRequest',
        'type' => 'rosdemo_v4/CalcUserRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/CalcUserRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_496ac7695efe9f049e8a2ddbed51f547cc1e2ccc268f630fcf52fd0081049392',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4CalcUserRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4CalcUserRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/CalcUserResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4CalcUserResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4CalcUserResponse',
        'type' => 'rosdemo_v4/CalcUserResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/CalcUserResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_47513b8698e1a9ef2b026200673cda50bc300c4946ddae7a6988a6c5faee78a9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4CalcUserResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4CalcUserResponse', $bytes);
    }
}

/** @brief Own all 15 original rosdemo_v4/CircleRequest fields.
 * @details 105..4265 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4CircleRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4CircleRequest',
        'type' => 'rosdemo_v4/CircleRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/CircleRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fdcfb4d2426629c4719a7362ac4fd4c54c025e06f44fdade1925791937ddb417',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4CircleRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4CircleRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/CircleResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4CircleResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4CircleResponse',
        'type' => 'rosdemo_v4/CircleResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/CircleResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_04e542491c8d2698099aa505719d90c46c4fb413aacf3fb34aa78d4c73548789',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4CircleResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4CircleResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/ClearErrorRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ClearErrorRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ClearErrorRequest',
        'type' => 'rosdemo_v4/ClearErrorRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ClearErrorRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5e7a728e3f4e78c12984902bd10fe1be54c380a6e7fb8c5f75afb27e36ac6120',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ClearErrorRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ClearErrorRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ClearErrorResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ClearErrorResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ClearErrorResponse',
        'type' => 'rosdemo_v4/ClearErrorResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ClearErrorResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_da3ce8d9a3ae2aa8ecf923831bef5424518e4c32c0fa38b38782806af2596d62',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ClearErrorResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ClearErrorResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/ContinueRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ContinueRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ContinueRequest',
        'type' => 'rosdemo_v4/ContinueRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ContinueRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_397f44d553c5c2fd64cc769a6c6143d3c13922f44fe84c4be809a91e65c47f72',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ContinueRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ContinueRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ContinueResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ContinueResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ContinueResponse',
        'type' => 'rosdemo_v4/ContinueResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ContinueResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0851e7d86a155b8a92c08c033bf0f3c99427aaaeec807012259587624fb1b804',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ContinueResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ContinueResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DIRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DIRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DIRequest',
        'type' => 'rosdemo_v4/DIRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DIRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c87cdf10373272a55ac886bf1b0e21d3e7f9c54f0b3a4100d4562ea4c853e4b0',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DIRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DIRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DIResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DIResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DIResponse',
        'type' => 'rosdemo_v4/DIResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DIResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b9d1df9f63e84d8f121925e064f96b42d573927b0002f41ca87607cf2f3db99f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DIResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DIResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DIGroupRequest fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DIGroupRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DIGroupRequest',
        'type' => 'rosdemo_v4/DIGroupRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DIGroupRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f5ff525bb19137564db6b5266d5b3465008dd4e3f823e0d8c7b03cce7741f0f9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DIGroupRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DIGroupRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DIGroupResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DIGroupResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DIGroupResponse',
        'type' => 'rosdemo_v4/DIGroupResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DIGroupResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1877d17f23719422e09490e6d1e42cbe19bd736296c42e56be43e4c095886dc0',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DIGroupResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DIGroupResponse', $bytes);
    }
}

/** @brief Own all 3 original rosdemo_v4/DORequest fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DORequest',
        'type' => 'rosdemo_v4/DORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_38f733bcf75506efdf78db21a9e021542b122315c16f6046cd1aca359a6270cd',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DOResponse',
        'type' => 'rosdemo_v4/DOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2f59e1fc82fb86b1fce1ba23107e26f88d04e040f846b0bcac7c2a3b4861c9c8',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DOResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DOGroupRequest fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DOGroupRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DOGroupRequest',
        'type' => 'rosdemo_v4/DOGroupRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DOGroupRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c291ef8a18c357312306bec37932f42de195523bfa594e2978a69db021074cd2',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DOGroupRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DOGroupRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DOGroupResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DOGroupResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DOGroupResponse',
        'type' => 'rosdemo_v4/DOGroupResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DOGroupResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dbca29796476fc2dacc1a8641bdc12643ff6202193cc5be6e1793ef18fb2394b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DOGroupResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DOGroupResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/DOInstantRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DOInstantRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DOInstantRequest',
        'type' => 'rosdemo_v4/DOInstantRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DOInstantRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e7bb078201c77bdd326c2e1c92199dddefab78d4f3253b2a910ff2875bd2b878',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DOInstantRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DOInstantRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DOInstantResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DOInstantResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DOInstantResponse',
        'type' => 'rosdemo_v4/DOInstantResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DOInstantResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_83ace895a553d20bd1b6e6e5731dc68fc7089543b0ebe103eb16f55554fa0dc5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DOInstantResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DOInstantResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/DisableRobotRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DisableRobotRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DisableRobotRequest',
        'type' => 'rosdemo_v4/DisableRobotRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DisableRobotRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ef74ada028c3cc15b11da2ac3f3d583f3667f953bfe75d3cbeda2790a4c15bcc',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DisableRobotRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DisableRobotRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DisableRobotResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DisableRobotResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DisableRobotResponse',
        'type' => 'rosdemo_v4/DisableRobotResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DisableRobotResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_311d984435af0017644139b36f80deb046000d1bb6270bda9c746f05600a5521',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DisableRobotResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DisableRobotResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/DragSensivityRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DragSensivityRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DragSensivityRequest',
        'type' => 'rosdemo_v4/DragSensivityRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DragSensivityRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6fea90c5de6e58f95d2b2a173c0ff4d06dcd68fc564a9b9e4c2fc57576e5ef38',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DragSensivityRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DragSensivityRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/DragSensivityResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4DragSensivityResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4DragSensivityResponse',
        'type' => 'rosdemo_v4/DragSensivityResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/DragSensivityResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f3e5b64cd5dd322783d86fcc4c7520a9817a6931b8b789139695cbc72be88003',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4DragSensivityResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4DragSensivityResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/EmergencyStopRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4EmergencyStopRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4EmergencyStopRequest',
        'type' => 'rosdemo_v4/EmergencyStopRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/EmergencyStopRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_29e3801ce5fd22b8b46d56855146fb277fd7a70d0bd839a976bd2b1cc8e6ef0c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4EmergencyStopRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4EmergencyStopRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/EmergencyStopResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4EmergencyStopResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4EmergencyStopResponse',
        'type' => 'rosdemo_v4/EmergencyStopResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/EmergencyStopResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6ad7f402c9044401904b708335f56fc566965a1eba1e438257fdedf2a0ef79d0',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4EmergencyStopResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4EmergencyStopResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/EnableRobotRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4EnableRobotRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4EnableRobotRequest',
        'type' => 'rosdemo_v4/EnableRobotRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/EnableRobotRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_50fa5b29527f53d986f0fdfe5ac40cccccea2723aa28a1bda183ea85437ab1d9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4EnableRobotRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4EnableRobotRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/EnableRobotResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4EnableRobotResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4EnableRobotResponse',
        'type' => 'rosdemo_v4/EnableRobotResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/EnableRobotResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_58f12f2a31c801ccf5e3b292645b72e979524c26a70d71c628ad73802a1369d5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4EnableRobotResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4EnableRobotResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/EnableSafeSkinRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4EnableSafeSkinRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4EnableSafeSkinRequest',
        'type' => 'rosdemo_v4/EnableSafeSkinRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/EnableSafeSkinRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cd375695f4654cbd46d759a017a5f298f1e168e5f3d0df6df8ab5c3c7afb5a7c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4EnableSafeSkinRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4EnableSafeSkinRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/EnableSafeSkinResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4EnableSafeSkinResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4EnableSafeSkinResponse',
        'type' => 'rosdemo_v4/EnableSafeSkinResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/EnableSafeSkinResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2d45e73631c4070c003de548b4e333eef29e64011d9ab6d92089f2dec8ca0ae9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4EnableSafeSkinResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4EnableSafeSkinResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetAORequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetAORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetAORequest',
        'type' => 'rosdemo_v4/GetAORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetAORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_926de338371ec01a402be7c060b5847a12f29a986f7d79547214709be7a8b60b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetAORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetAORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetAOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetAOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetAOResponse',
        'type' => 'rosdemo_v4/GetAOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetAOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e00e5c6759d8f828d17a7ed4adbaec5196bf1176460267a555bc877946220ae3',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetAOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetAOResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/GetAngleRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetAngleRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetAngleRequest',
        'type' => 'rosdemo_v4/GetAngleRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetAngleRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0e6595e26df9c6a6c1b11d1b0d0be17eb12ce5811ea3b58415618703e63e4bf1',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetAngleRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetAngleRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetAngleResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetAngleResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetAngleResponse',
        'type' => 'rosdemo_v4/GetAngleResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetAngleResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_510fe33c83f2eb89bc3d181661431b5da8a99a9b51760596e2858fd1542327a5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetAngleResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetAngleResponse', $bytes);
    }
}

/** @brief Own all 3 original rosdemo_v4/GetCoilsRequest fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetCoilsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetCoilsRequest',
        'type' => 'rosdemo_v4/GetCoilsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetCoilsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_97eeaeae27ad4a42c2fd3286e6a7d87fe31409d8ca1f4e893221be3494c809ba',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetCoilsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetCoilsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetCoilsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetCoilsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetCoilsResponse',
        'type' => 'rosdemo_v4/GetCoilsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetCoilsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c10ce78d0c2c94a78ba606699c5adc2177b8207249f80c9c793955aae21184fd',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetCoilsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetCoilsResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/GetCurrentCommandIdRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetCurrentCommandIdRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetCurrentCommandIdRequest',
        'type' => 'rosdemo_v4/GetCurrentCommandIdRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetCurrentCommandIdRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c54881bb35c2390e1927166762f690a2c89938216a61f27a69cc710e5b10a6fc',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetCurrentCommandIdRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetCurrentCommandIdRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetCurrentCommandIdResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetCurrentCommandIdResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetCurrentCommandIdResponse',
        'type' => 'rosdemo_v4/GetCurrentCommandIdResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetCurrentCommandIdResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8bc582ffa6eb0003de3b76adbc9f08e538214d6b216b19b7ac817ca946f3cee9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetCurrentCommandIdResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetCurrentCommandIdResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetDORequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetDORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetDORequest',
        'type' => 'rosdemo_v4/GetDORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetDORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_529aab0c8d5268a6e4ac526eee3156061db0dfc197d79750f0937477c235ef13',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetDORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetDORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetDOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetDOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetDOResponse',
        'type' => 'rosdemo_v4/GetDOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetDOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_40d66623d9a4ee294c3be28fc27fdec008f35f2d74dd96ee08b37fd7f7f0f53c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetDOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetDOResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetDOGroupRequest fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetDOGroupRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetDOGroupRequest',
        'type' => 'rosdemo_v4/GetDOGroupRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetDOGroupRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4a04a61c965ec8d64f74772c2572b1e80314ce484955e0cf2f874d33fa8d0fab',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetDOGroupRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetDOGroupRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetDOGroupResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetDOGroupResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetDOGroupResponse',
        'type' => 'rosdemo_v4/GetDOGroupResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetDOGroupResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_025adf89234f29f92487e3383ac840a91ce7365af469eca51ffb4a02757ad08c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetDOGroupResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetDOGroupResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/GetErrorIDRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetErrorIDRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetErrorIDRequest',
        'type' => 'rosdemo_v4/GetErrorIDRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetErrorIDRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7384e3f38489c046e1da3bd095fb0f9f1d7ab3ecff0c9f0a6f902afeb42a6afa',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetErrorIDRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetErrorIDRequest', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/GetErrorIDResponse fields.
 * @details 8..72 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetErrorIDResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetErrorIDResponse',
        'type' => 'rosdemo_v4/GetErrorIDResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetErrorIDResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_04905126039b83561b99944a9f8fa997df0d33dc34a5c7fe5b5c9904bd801f8c',
        'minimum' => 8,
        'maximum' => 72,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'error_id',
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
    /** @brief Original error_id field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $error_id;
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
        if (array_key_exists('error_id', $values))
            $this->error_id = $values['error_id'];
        else
        {
            $this->error_id = [];
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetErrorIDResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetErrorIDResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v4/GetHoldRegsRequest fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetHoldRegsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetHoldRegsRequest',
        'type' => 'rosdemo_v4/GetHoldRegsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetHoldRegsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_25c39e4774f962695d516aa5f727c1fc75c1999b05dad0e466d0e8f559768f4b',
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
                'name' => 'valType',
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
    /** @brief Original valType field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $valType;
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
        if (array_key_exists('valType', $values))
            $this->valType = $values['valType'];
        else
        {
            $this->valType = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetHoldRegsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetHoldRegsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetHoldRegsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetHoldRegsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetHoldRegsResponse',
        'type' => 'rosdemo_v4/GetHoldRegsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetHoldRegsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dd4564730e4960e4cd81b0315db69c80d188937af6ac664788568e4e94613086',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetHoldRegsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetHoldRegsResponse', $bytes);
    }
}

/** @brief Own all 3 original rosdemo_v4/GetInBitsRequest fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInBitsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInBitsRequest',
        'type' => 'rosdemo_v4/GetInBitsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInBitsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_87a10aba986f262775300a8bccf1e08bf6aa04391ce43e434f354e01600a5f41',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInBitsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInBitsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetInBitsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInBitsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInBitsResponse',
        'type' => 'rosdemo_v4/GetInBitsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInBitsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f8c3dece574e815b8d1ec567c75e426419af10629b7b46df120df6f330688acd',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInBitsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInBitsResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v4/GetInRegsRequest fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInRegsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInRegsRequest',
        'type' => 'rosdemo_v4/GetInRegsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInRegsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b889d32021c7662e1c334b4985ee1892846e7ec9c22af12e10f8451954a1ebce',
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
                'name' => 'valType',
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
    /** @brief Original valType field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $valType;
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
        if (array_key_exists('valType', $values))
            $this->valType = $values['valType'];
        else
        {
            $this->valType = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInRegsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInRegsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetInRegsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInRegsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInRegsResponse',
        'type' => 'rosdemo_v4/GetInRegsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInRegsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8122e0be478fb07f064a8ad263bf2498f586d772ec94c1dae540e84c651a55da',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInRegsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInRegsResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetInputBoolRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInputBoolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInputBoolRequest',
        'type' => 'rosdemo_v4/GetInputBoolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInputBoolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8c7ed79ac1c9d6eb3b8288ccf2ecf833cb01d9e28a1aad4c3298a301d37fc6e3',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInputBoolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInputBoolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetInputBoolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInputBoolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInputBoolResponse',
        'type' => 'rosdemo_v4/GetInputBoolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInputBoolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4dd8f83b77312a6b67a0b7846a8a065ce38f1e44f86aafabda8178a3d215969c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInputBoolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInputBoolResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetInputFloatRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInputFloatRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInputFloatRequest',
        'type' => 'rosdemo_v4/GetInputFloatRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInputFloatRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eb66f87e172e9a42fd3afafa4b33615c31d29ad800c1ffd40381e3b5e783e923',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInputFloatRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInputFloatRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetInputFloatResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInputFloatResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInputFloatResponse',
        'type' => 'rosdemo_v4/GetInputFloatResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInputFloatResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4a6e9db2cb925b1d929a798b4a5c36fdf8557edee7eb585e0e38c95f23172d42',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInputFloatResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInputFloatResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetInputIntRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInputIntRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInputIntRequest',
        'type' => 'rosdemo_v4/GetInputIntRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInputIntRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_297a110a4a935e442f5b00c1fa84645e97ff954a529b7f4ed7db09be797e6d37',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInputIntRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInputIntRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetInputIntResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetInputIntResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetInputIntResponse',
        'type' => 'rosdemo_v4/GetInputIntResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetInputIntResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f1d7ccef84e5ce8eaf3d8daf2dd23afce098a845edaa3b23925e9d46c4c40abd',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetInputIntResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetInputIntResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetOutputBoolRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetOutputBoolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetOutputBoolRequest',
        'type' => 'rosdemo_v4/GetOutputBoolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetOutputBoolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8434f5aea4bbdf565d050a3d09c845318982e2d2977339a58009be26b9154f5e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetOutputBoolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetOutputBoolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetOutputBoolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetOutputBoolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetOutputBoolResponse',
        'type' => 'rosdemo_v4/GetOutputBoolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetOutputBoolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ceb74ba9fd10ad74dc9e04ec87687bc13246b4af9d376ea5a6de8c16fa1e54e4',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetOutputBoolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetOutputBoolResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetOutputFloatRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetOutputFloatRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetOutputFloatRequest',
        'type' => 'rosdemo_v4/GetOutputFloatRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetOutputFloatRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_19f4a8c41b2e49b3c9da25da2de011c84257b420b89f6e15741de2589585f259',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetOutputFloatRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetOutputFloatRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetOutputFloatResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetOutputFloatResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetOutputFloatResponse',
        'type' => 'rosdemo_v4/GetOutputFloatResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetOutputFloatResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d52fb64b6fc6a6cef5c396912b6d22184845cfc32e51990dde429eb3f86f59ca',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetOutputFloatResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetOutputFloatResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetOutputIntRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetOutputIntRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetOutputIntRequest',
        'type' => 'rosdemo_v4/GetOutputIntRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetOutputIntRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_26a2d8df9463e82cb4752a0465c46fafaff8edef76e9545d7c21c1a2d81a62a4',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetOutputIntRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetOutputIntRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetOutputIntResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetOutputIntResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetOutputIntResponse',
        'type' => 'rosdemo_v4/GetOutputIntResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetOutputIntResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_db07169d30b15991b02c8552ab0823241442ae1dd15d60d8f7d66173ae88ec56',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetOutputIntResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetOutputIntResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/GetPoseRequest fields.
 * @details 8..520 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetPoseRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetPoseRequest',
        'type' => 'rosdemo_v4/GetPoseRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetPoseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_614f133e44f952b81c348c0d81268009734f12661ee60a3762f445c1f9763eeb',
        'minimum' => 8,
        'maximum' => 520,
        'semantics' => '',
        'fields' => [
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetPoseRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetPoseRequest', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/GetPoseResponse fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetPoseResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetPoseResponse',
        'type' => 'rosdemo_v4/GetPoseResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetPoseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bb2309ea57bccca61b67960dabc71bb80f4d5e0bb9dbad2034912bcc33aa47db',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pose',
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
    /** @brief Original pose field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $pose;
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
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = '';
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetPoseResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetPoseResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetStartPoseRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetStartPoseRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetStartPoseRequest',
        'type' => 'rosdemo_v4/GetStartPoseRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetStartPoseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8a7bb705fc5fad2f0919ea2be9eeef2056765b6fab4ab6e1dd5e4bf335af0e90',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'traceName',
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
    /** @brief Original traceName field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $traceName;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('traceName', $values))
            $this->traceName = $values['traceName'];
        else
        {
            $this->traceName = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetStartPoseRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetStartPoseRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/GetStartPoseResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4GetStartPoseResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4GetStartPoseResponse',
        'type' => 'rosdemo_v4/GetStartPoseResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/GetStartPoseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_58928db4de4917d89cc26f1caeb08d8c63f275e430923ddd69822a7b0969d062',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4GetStartPoseResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4GetStartPoseResponse', $bytes);
    }
}

/** @brief Own all 10 original rosdemo_v4/InverseKinRequest fields.
 * @details 64..1088 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4InverseKinRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4InverseKinRequest',
        'type' => 'rosdemo_v4/InverseKinRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/InverseKinRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a36b2d397660e001f97f40e937f057cb0c9cbbf3019f119c48a217846e258b36',
        'minimum' => 64,
        'maximum' => 1088,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'X',
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
                'name' => 'Y',
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
                'name' => 'Z',
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
                'name' => 'Rx',
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
                'name' => 'Ry',
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
                'name' => 'Rz',
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
                'name' => 'useJointNear',
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
                'name' => 'jointNear',
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
    /** @brief Original X field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $X;
    /** @brief Original Y field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Y;
    /** @brief Original Z field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Z;
    /** @brief Original Rx field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Rx;
    /** @brief Original Ry field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Ry;
    /** @brief Original Rz field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Rz;
    /** @brief Original useJointNear field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $useJointNear;
    /** @brief Original jointNear field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $jointNear;
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
        if (array_key_exists('X', $values))
            $this->X = $values['X'];
        else
        {
            $this->X = 0.0;
        }
        if (array_key_exists('Y', $values))
            $this->Y = $values['Y'];
        else
        {
            $this->Y = 0.0;
        }
        if (array_key_exists('Z', $values))
            $this->Z = $values['Z'];
        else
        {
            $this->Z = 0.0;
        }
        if (array_key_exists('Rx', $values))
            $this->Rx = $values['Rx'];
        else
        {
            $this->Rx = 0.0;
        }
        if (array_key_exists('Ry', $values))
            $this->Ry = $values['Ry'];
        else
        {
            $this->Ry = 0.0;
        }
        if (array_key_exists('Rz', $values))
            $this->Rz = $values['Rz'];
        else
        {
            $this->Rz = 0.0;
        }
        if (array_key_exists('useJointNear', $values))
            $this->useJointNear = $values['useJointNear'];
        else
        {
            $this->useJointNear = '';
        }
        if (array_key_exists('jointNear', $values))
            $this->jointNear = $values['jointNear'];
        else
        {
            $this->jointNear = '';
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4InverseKinRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4InverseKinRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/InverseKinResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4InverseKinResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4InverseKinResponse',
        'type' => 'rosdemo_v4/InverseKinResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/InverseKinResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3e1f483d7c0e1fab5574dbdedbde27321f0961b00f5a7d8ec60facaa660dce5d',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4InverseKinResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4InverseKinResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/InverseSolutionRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4InverseSolutionRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4InverseSolutionRequest',
        'type' => 'rosdemo_v4/InverseSolutionRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/InverseSolutionRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_386aeead1b103c31d0803e46e5cf40444203576a01929a58655a9dbdad97e337',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4InverseSolutionRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4InverseSolutionRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/InverseSolutionResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4InverseSolutionResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4InverseSolutionResponse',
        'type' => 'rosdemo_v4/InverseSolutionResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/InverseSolutionResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_af164102f43d7ec09b29194756e137521be58cf7557e2e6cc1aa8984ad60edeb',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4InverseSolutionResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4InverseSolutionResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ModbusCloseRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ModbusCloseRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ModbusCloseRequest',
        'type' => 'rosdemo_v4/ModbusCloseRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ModbusCloseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_312c47a996b26c9cceb2cd2cacd8f224d6503c095f8b05cb47d61cd0a86044a2',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ModbusCloseRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ModbusCloseRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ModbusCloseResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ModbusCloseResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ModbusCloseResponse',
        'type' => 'rosdemo_v4/ModbusCloseResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ModbusCloseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_023195c6b839ef052e27c0208dd80a3a65d519c75ae01a97fcc6ed0ba42792c7',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ModbusCloseResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ModbusCloseResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v4/ModbusCreateRequest fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ModbusCreateRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ModbusCreateRequest',
        'type' => 'rosdemo_v4/ModbusCreateRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ModbusCreateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_89723aed3faa9b167f6c7140983191a0c8cc3e5ae65983199fac27f2cbd4fe3a',
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
                'name' => 'isRTU',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
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
    /** @brief Original isRTU field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $isRTU;
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
        if (array_key_exists('isRTU', $values))
            $this->isRTU = $values['isRTU'];
        else
        {
            $this->isRTU = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4ModbusCreateRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ModbusCreateRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ModbusCreateResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ModbusCreateResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ModbusCreateResponse',
        'type' => 'rosdemo_v4/ModbusCreateResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ModbusCreateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fd842047956f95a53be2a1d12ceba2f7874276768ee972cc73e0857005f752eb',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ModbusCreateResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ModbusCreateResponse', $bytes);
    }
}

/** @brief Own all 5 original rosdemo_v4/ModbusRTUCreateRequest fields.
 * @details 20..276 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ModbusRTUCreateRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ModbusRTUCreateRequest',
        'type' => 'rosdemo_v4/ModbusRTUCreateRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ModbusRTUCreateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2c24e7f5a9e996c62094b5f286daf6d70e5ea488084458e76387cc87bbf54829',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ModbusRTUCreateRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ModbusRTUCreateRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ModbusRTUCreateResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ModbusRTUCreateResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ModbusRTUCreateResponse',
        'type' => 'rosdemo_v4/ModbusRTUCreateResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ModbusRTUCreateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7789f6d13a84128d683d1e0298da922c019d2ad730776602baea355d3bb7af9b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ModbusRTUCreateResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ModbusRTUCreateResponse', $bytes);
    }
}

/** @brief Own all 8 original rosdemo_v4/MovJRequest fields.
 * @details 53..4213 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MovJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MovJRequest',
        'type' => 'rosdemo_v4/MovJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MovJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_09e87fec00b64906ce52c1fd8fc258c5defcc95f0ff4f5c867fbb210677eb342',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4MovJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MovJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/MovJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MovJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MovJResponse',
        'type' => 'rosdemo_v4/MovJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MovJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3a9b252271d5b325f608151171315767648c8d8edce2fac57446b40883e08b8c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4MovJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MovJResponse', $bytes);
    }
}

/** @brief Own all 9 original rosdemo_v4/MovJIORequest fields.
 * @details 57..8377 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MovJIORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MovJIORequest',
        'type' => 'rosdemo_v4/MovJIORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MovJIORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_09f78d0f6d9a87a17934a977fd150a42dd5ff2038b31ac99446753b82cf15766',
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
                'name' => 'MDIS',
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
                'name' => 'paramValue',
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
    /** @brief Original MDIS field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $MDIS;
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('MDIS', $values))
            $this->MDIS = $values['MDIS'];
        else
        {
            $this->MDIS = [];
        }
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4MovJIORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MovJIORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/MovJIOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MovJIOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MovJIOResponse',
        'type' => 'rosdemo_v4/MovJIOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MovJIOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6bdb6a02634e5eeca7efddd37d27f3eb4624f4f05abdf6bd96b107781d9fb077',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4MovJIOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MovJIOResponse', $bytes);
    }
}

/** @brief Own all 8 original rosdemo_v4/MovLRequest fields.
 * @details 53..4213 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MovLRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MovLRequest',
        'type' => 'rosdemo_v4/MovLRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MovLRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_20cae327861ce263914777f3d78df62724214b7bdbc3e21d7164b7679e55a6dc',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4MovLRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MovLRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/MovLResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MovLResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MovLResponse',
        'type' => 'rosdemo_v4/MovLResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MovLResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b638be013e579798f8394727df2a7f2520f458e8c9feb1be56518dc038dd7d04',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4MovLResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MovLResponse', $bytes);
    }
}

/** @brief Own all 9 original rosdemo_v4/MovLIORequest fields.
 * @details 57..8377 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MovLIORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MovLIORequest',
        'type' => 'rosdemo_v4/MovLIORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MovLIORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ad460406816839da9bac13749cec3da5ec06cd4d814e9c13b61ade5a57959ddd',
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
                'name' => 'MDIS',
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
                'name' => 'paramValue',
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
    /** @brief Original MDIS field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $MDIS;
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('MDIS', $values))
            $this->MDIS = $values['MDIS'];
        else
        {
            $this->MDIS = [];
        }
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4MovLIORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MovLIORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/MovLIOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MovLIOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MovLIOResponse',
        'type' => 'rosdemo_v4/MovLIOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MovLIOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_65153e2d930140d23fff126a8dedcb91eae040b36bd22ff54116067c75dec54c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4MovLIOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MovLIOResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/MoveJogRequest fields.
 * @details 8..4424 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MoveJogRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MoveJogRequest',
        'type' => 'rosdemo_v4/MoveJogRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MoveJogRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4405c2a5d68345e826adfa1517fde93d180c9526adfaa15c1eab72817bd400d4',
        'minimum' => 8,
        'maximum' => 4424,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'axisID',
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
                'name' => 'paramValue',
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
    /** @brief Original axisID field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $axisID;
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('axisID', $values))
            $this->axisID = $values['axisID'];
        else
        {
            $this->axisID = '';
        }
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4MoveJogRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MoveJogRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/MoveJogResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4MoveJogResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4MoveJogResponse',
        'type' => 'rosdemo_v4/MoveJogResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/MoveJogResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bfb8a659db448d7a32e409dccf3cf5678b093e7679a9463519951b8b572c5dad',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4MoveJogResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4MoveJogResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/PauseRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4PauseRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4PauseRequest',
        'type' => 'rosdemo_v4/PauseRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/PauseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0724bc4dd3f14cc33b595fd5eddcc4169ae428f577cf17274d37031861491458',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4PauseRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4PauseRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/PauseResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4PauseResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4PauseResponse',
        'type' => 'rosdemo_v4/PauseResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/PauseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_74ce1cb9c50a42453f3217187291957c2c27d23dfc0f03117b5c1f3f24924179',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4PauseResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4PauseResponse', $bytes);
    }
}

/** @brief Own all 8 original rosdemo_v4/PositiveKinRequest fields.
 * @details 56..568 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4PositiveKinRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4PositiveKinRequest',
        'type' => 'rosdemo_v4/PositiveKinRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/PositiveKinRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8e5050dce84fba33aa575ce20b32bab4591c35f40736136cae5b3c6e1faef21c',
        'minimum' => 56,
        'maximum' => 568,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'J1',
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
                'name' => 'J2',
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
                'name' => 'J3',
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
                'name' => 'J4',
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
                'name' => 'J5',
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
                'name' => 'J6',
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
    /** @brief Original J1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $J1;
    /** @brief Original J2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $J2;
    /** @brief Original J3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $J3;
    /** @brief Original J4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $J4;
    /** @brief Original J5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $J5;
    /** @brief Original J6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $J6;
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
        if (array_key_exists('J1', $values))
            $this->J1 = $values['J1'];
        else
        {
            $this->J1 = 0.0;
        }
        if (array_key_exists('J2', $values))
            $this->J2 = $values['J2'];
        else
        {
            $this->J2 = 0.0;
        }
        if (array_key_exists('J3', $values))
            $this->J3 = $values['J3'];
        else
        {
            $this->J3 = 0.0;
        }
        if (array_key_exists('J4', $values))
            $this->J4 = $values['J4'];
        else
        {
            $this->J4 = 0.0;
        }
        if (array_key_exists('J5', $values))
            $this->J5 = $values['J5'];
        else
        {
            $this->J5 = 0.0;
        }
        if (array_key_exists('J6', $values))
            $this->J6 = $values['J6'];
        else
        {
            $this->J6 = 0.0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4PositiveKinRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4PositiveKinRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/PositiveKinResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4PositiveKinResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4PositiveKinResponse',
        'type' => 'rosdemo_v4/PositiveKinResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/PositiveKinResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a9ce6bea86295b52e94b959dd08e6b6d22d9673e3e07bbc34311d16757230d59',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4PositiveKinResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4PositiveKinResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/PowerOnRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4PowerOnRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4PowerOnRequest',
        'type' => 'rosdemo_v4/PowerOnRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/PowerOnRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_37a79bfbb6f1ce4b67d1f9d9a29102e62a63d94c7812c3f43432ede1eaa9e59f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4PowerOnRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4PowerOnRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/PowerOnResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4PowerOnResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4PowerOnResponse',
        'type' => 'rosdemo_v4/PowerOnResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/PowerOnResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dfc6bbc39e3c8e01192aa19ba8329286f314095381e8b6dedf0041b3d7336b88',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4PowerOnResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4PowerOnResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v4/RelJointMovJRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelJointMovJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelJointMovJRequest',
        'type' => 'rosdemo_v4/RelJointMovJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelJointMovJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cd720cd9f632d655b6c3c8e7258d45ca8b533ab646296e741d849955ddb7df5d',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelJointMovJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelJointMovJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/RelJointMovJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelJointMovJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelJointMovJResponse',
        'type' => 'rosdemo_v4/RelJointMovJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelJointMovJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ef932bafd6a1fc19ae65cc284cf8073e11198a6295ea1b76b8fca30ae553c095',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelJointMovJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelJointMovJResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v4/RelMovJToolRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelMovJToolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelMovJToolRequest',
        'type' => 'rosdemo_v4/RelMovJToolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelMovJToolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_447c2017041960c5a7908f9ed79b4031107299dc19a0706a58b63665f27722f2',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelMovJToolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelMovJToolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/RelMovJToolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelMovJToolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelMovJToolResponse',
        'type' => 'rosdemo_v4/RelMovJToolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelMovJToolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e257550023b466fd6a2b0f039548c73ab379feccb57f55a2cb7a56da5f89221e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelMovJToolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelMovJToolResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v4/RelMovJUserRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelMovJUserRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelMovJUserRequest',
        'type' => 'rosdemo_v4/RelMovJUserRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelMovJUserRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f575ab3530f4cdc9853504e65f3bcd190ad473513b334778eeae53f121550b42',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelMovJUserRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelMovJUserRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/RelMovJUserResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelMovJUserResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelMovJUserResponse',
        'type' => 'rosdemo_v4/RelMovJUserResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelMovJUserResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7ec2020d09d1497e44bd1e5dc4c7d3f94fc9b40b525ad0abe0646c4c49830069',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelMovJUserResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelMovJUserResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v4/RelMovLToolRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelMovLToolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelMovLToolRequest',
        'type' => 'rosdemo_v4/RelMovLToolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelMovLToolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4a38969222fc6b0dd15123e0752060b7d3818af030098e0f93f24702cb663bf6',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelMovLToolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelMovLToolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/RelMovLToolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelMovLToolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelMovLToolResponse',
        'type' => 'rosdemo_v4/RelMovLToolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelMovLToolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ba7d0e0a7f27aedcdb0ba1f8cf6d89eb0ac5bcd86da29e8683e3e19c290b01c8',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelMovLToolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelMovLToolResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v4/RelMovLUserRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelMovLUserRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelMovLUserRequest',
        'type' => 'rosdemo_v4/RelMovLUserRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelMovLUserRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1c505d53cbfea745ed7f941c4658252d52f50c91e3a8d4d548ab1f90d3f63567',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelMovLUserRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelMovLUserRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/RelMovLUserResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RelMovLUserResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RelMovLUserResponse',
        'type' => 'rosdemo_v4/RelMovLUserResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RelMovLUserResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dae3d0f42de8bbed4988150bc1d838ba033e0f675cf3089419fc548070e06846',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4RelMovLUserResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RelMovLUserResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/RobotModeRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RobotModeRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RobotModeRequest',
        'type' => 'rosdemo_v4/RobotModeRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RobotModeRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_29ad7f5a2d2e1cdfc34e84f7c86d644d24892bb82fa4e764eb4889b3c2989630',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4RobotModeRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RobotModeRequest', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/RobotModeResponse fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RobotModeResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RobotModeResponse',
        'type' => 'rosdemo_v4/RobotModeResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RobotModeResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bda53abb273c252b346eefb4b4fec7b511e643e480326cc4c27c83a2898ee199',
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
    /** @brief Original mode field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
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
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4RobotModeResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RobotModeResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/RunScriptRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RunScriptRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RunScriptRequest',
        'type' => 'rosdemo_v4/RunScriptRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RunScriptRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_91716b4cf7cb8978c45ade479780d8d59e6358589320945dfc12491f4db08a40',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'projectName',
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
    /** @brief Original projectName field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $projectName;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('projectName', $values))
            $this->projectName = $values['projectName'];
        else
        {
            $this->projectName = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4RunScriptRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RunScriptRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/RunScriptResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4RunScriptResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4RunScriptResponse',
        'type' => 'rosdemo_v4/RunScriptResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/RunScriptResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4dfe238cfd2fa4a1c858cab4101964ad855109e680ffbe00fc0d0739a3e581e8',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4RunScriptResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4RunScriptResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v4/ServoJRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ServoJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ServoJRequest',
        'type' => 'rosdemo_v4/ServoJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ServoJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4291d3eaf7d1ef4fce2df5fef5d2ca1ef845dacb91f5321d11f5823140709071',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4ServoJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ServoJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ServoJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ServoJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ServoJResponse',
        'type' => 'rosdemo_v4/ServoJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ServoJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_abafb6be9c5fb35f94d3e5731fe939dfbab4ef602609f041f7b415a5e26b4ad8',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ServoJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ServoJResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v4/ServoPRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ServoPRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ServoPRequest',
        'type' => 'rosdemo_v4/ServoPRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ServoPRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6650fcc171dd0b172c19629e60f086f9b67e5930238aab6d16862f8549859bbe',
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
                'name' => 'paramValue',
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
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
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
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4ServoPRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ServoPRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ServoPResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ServoPResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ServoPResponse',
        'type' => 'rosdemo_v4/ServoPResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ServoPResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_606204f4bcaaefd1a1b6cc7d7d0cbe60efcf8ddc9e0a7df29eceb7d2d353622f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ServoPResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ServoPResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetBackDistanceRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetBackDistanceRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetBackDistanceRequest',
        'type' => 'rosdemo_v4/SetBackDistanceRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetBackDistanceRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8b826d716076ee8d336ca859433bb7a8eae3970d3958f239494cc61c91603877',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetBackDistanceRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetBackDistanceRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetBackDistanceResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetBackDistanceResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetBackDistanceResponse',
        'type' => 'rosdemo_v4/SetBackDistanceResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetBackDistanceResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d6276f328a689115bd05011b9ed443d9cb6587f3b92fa77e6b808cc625adbffa',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetBackDistanceResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetBackDistanceResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v4/SetCoilsRequest fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetCoilsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetCoilsRequest',
        'type' => 'rosdemo_v4/SetCoilsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetCoilsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_668510a449bcf69f157ce9f973598434585e0effca009b4a2d105335546ef699',
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
                'name' => 'valTab',
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
    /** @brief Original valTab field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $valTab;
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
        if (array_key_exists('valTab', $values))
            $this->valTab = $values['valTab'];
        else
        {
            $this->valTab = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetCoilsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetCoilsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetCoilsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetCoilsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetCoilsResponse',
        'type' => 'rosdemo_v4/SetCoilsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetCoilsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e3dc557bd4b773d6b1c95fd2c77d38995e9fd0d5b8cf1f9da3786012b31ab3c4',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetCoilsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetCoilsResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetCollisionLevelRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetCollisionLevelRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetCollisionLevelRequest',
        'type' => 'rosdemo_v4/SetCollisionLevelRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetCollisionLevelRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_41ccc645b15211a05f0e385cf94ce8943f52f0db8d11b3ca6e96b2fd6eed6ede',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetCollisionLevelRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetCollisionLevelRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetCollisionLevelResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetCollisionLevelResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetCollisionLevelResponse',
        'type' => 'rosdemo_v4/SetCollisionLevelResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetCollisionLevelResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fe8beab960e6d28dd27ba1fec6fc3228692f1c3b09b7bd27460a218aba36e166',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetCollisionLevelResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetCollisionLevelResponse', $bytes);
    }
}

/** @brief Own all 5 original rosdemo_v4/SetHoldRegsRequest fields.
 * @details 20..532 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetHoldRegsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetHoldRegsRequest',
        'type' => 'rosdemo_v4/SetHoldRegsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetHoldRegsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a30f714acb56987827196d8522a5411c2b94948a59427c7cfe3a3aacd31dd71',
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
                'name' => 'valTab',
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
                'name' => 'valType',
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
    /** @brief Original valTab field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $valTab;
    /** @brief Original valType field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $valType;
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
        if (array_key_exists('valTab', $values))
            $this->valTab = $values['valTab'];
        else
        {
            $this->valTab = '';
        }
        if (array_key_exists('valType', $values))
            $this->valType = $values['valType'];
        else
        {
            $this->valType = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetHoldRegsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetHoldRegsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetHoldRegsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetHoldRegsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetHoldRegsResponse',
        'type' => 'rosdemo_v4/SetHoldRegsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetHoldRegsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_15808e5f2cf1f577a6b0c60284b9a506ac006cf5e9dce48c77a85fb921c9c934',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetHoldRegsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetHoldRegsResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/SetOutputBoolRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetOutputBoolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetOutputBoolRequest',
        'type' => 'rosdemo_v4/SetOutputBoolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetOutputBoolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c4524f5cb7e1cf9a16ab3444663cb7097dd16036b074602c0f94d6a729dfffd3',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetOutputBoolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetOutputBoolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetOutputBoolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetOutputBoolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetOutputBoolResponse',
        'type' => 'rosdemo_v4/SetOutputBoolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetOutputBoolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_49734ad4fb75dac84b329889d76b274fb95cd0116b22ff95b91d45bbf3901445',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetOutputBoolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetOutputBoolResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/SetOutputFloatRequest fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetOutputFloatRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetOutputFloatRequest',
        'type' => 'rosdemo_v4/SetOutputFloatRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetOutputFloatRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ca0404916a941f92cddc866b575652a4ed4550d30bd1b0e92140a81ff3e16de0',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetOutputFloatRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetOutputFloatRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetOutputFloatResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetOutputFloatResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetOutputFloatResponse',
        'type' => 'rosdemo_v4/SetOutputFloatResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetOutputFloatResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_533fdaf7fb6fcdf7a7d9fb0e764b5efe4f2f82957a63b1f85131de3687957173',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetOutputFloatResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetOutputFloatResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/SetOutputIntRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetOutputIntRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetOutputIntRequest',
        'type' => 'rosdemo_v4/SetOutputIntRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetOutputIntRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3abab70756725846970f1065edd99f39b5cb1be00f13588aad95b567d14aa0de',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetOutputIntRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetOutputIntRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetOutputIntResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetOutputIntResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetOutputIntResponse',
        'type' => 'rosdemo_v4/SetOutputIntResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetOutputIntResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a7c706a60b351b6596c352dbf955a88a2c2d532abe24f2ec208b755afe975525',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetOutputIntResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetOutputIntResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v4/SetPayloadRequest fields.
 * @details 32..32 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetPayloadRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetPayloadRequest',
        'type' => 'rosdemo_v4/SetPayloadRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetPayloadRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_99feda7d525eb9836bd9bb5123915816639d25657b7dcbc3353676234dd83087',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetPayloadRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetPayloadRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetPayloadResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetPayloadResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetPayloadResponse',
        'type' => 'rosdemo_v4/SetPayloadResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetPayloadResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7decd187d884825cb1ebcfd6a30e8d52956fdf3635f77f573df005737dde1814',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetPayloadResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetPayloadResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetPostCollisionModeRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetPostCollisionModeRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetPostCollisionModeRequest',
        'type' => 'rosdemo_v4/SetPostCollisionModeRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetPostCollisionModeRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5c3f53e0d872083bb0fe033564505113dd4cf447653d78e31ed07cec3f327557',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetPostCollisionModeRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetPostCollisionModeRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetPostCollisionModeResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetPostCollisionModeResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetPostCollisionModeResponse',
        'type' => 'rosdemo_v4/SetPostCollisionModeResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetPostCollisionModeResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3515493683a99cc17beed55155f8a539dc46963961c469e564123cdb0718e896',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetPostCollisionModeResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetPostCollisionModeResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/SetSafeSkinRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetSafeSkinRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetSafeSkinRequest',
        'type' => 'rosdemo_v4/SetSafeSkinRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetSafeSkinRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_546964bab46e715348a7a9198b62fb8854045e65dec5abe9c4f17f65037278e6',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetSafeSkinRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetSafeSkinRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetSafeSkinResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetSafeSkinResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetSafeSkinResponse',
        'type' => 'rosdemo_v4/SetSafeSkinResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetSafeSkinResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4554a225a629cc97b596f5c498906d1f3bfc840cb3c243285a9dddbe6abee576',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetSafeSkinResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetSafeSkinResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/SetSafeWallEnableRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetSafeWallEnableRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetSafeWallEnableRequest',
        'type' => 'rosdemo_v4/SetSafeWallEnableRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetSafeWallEnableRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_16b0daf7af42d7f14752f854a996aabb61c328999ccd13b0cb59c9f48fc645b4',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetSafeWallEnableRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetSafeWallEnableRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetSafeWallEnableResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetSafeWallEnableResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetSafeWallEnableResponse',
        'type' => 'rosdemo_v4/SetSafeWallEnableResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetSafeWallEnableResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_28c807143ad6f567c7c7f1c16a37b5a9c65bf72b094994ea5ae23a72bfc13c38',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetSafeWallEnableResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetSafeWallEnableResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/SetToolRequest fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetToolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetToolRequest',
        'type' => 'rosdemo_v4/SetToolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetToolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_95979e2c7d69ea6d4e60db52f1a6b2c83ff96c8913fa7149b9006c72377933da',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetToolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetToolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetToolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetToolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetToolResponse',
        'type' => 'rosdemo_v4/SetToolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetToolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_43022c007cc4c8345eac14b991870e5d7d451c0346ee6f870e6398fadf15333f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetToolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetToolResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v4/SetTool485Request fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetTool485Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetTool485Request',
        'type' => 'rosdemo_v4/SetTool485Request',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetTool485Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_297e32de0960af99e4aff4a33b616c51b4087a6223665ce4993ab5f9c3dcced2',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetTool485Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetTool485Request', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetTool485Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetTool485Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetTool485Response',
        'type' => 'rosdemo_v4/SetTool485Response',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetTool485Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f558d54d6caec7abf82558798a1254ce4ad782a6b3236c28786288674fdee6d7',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetTool485Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetTool485Response', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/SetToolModeRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetToolModeRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetToolModeRequest',
        'type' => 'rosdemo_v4/SetToolModeRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetToolModeRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2d9e8ef921cc8e1eb10048869bc6b2cdbd3b43bde60329c4c5936ae78dae1e9b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetToolModeRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetToolModeRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetToolModeResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetToolModeResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetToolModeResponse',
        'type' => 'rosdemo_v4/SetToolModeResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetToolModeResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1f4d3423a7057457bc7eeb44565ecb2c3c4da2ea67b9f8f5833f893320ec4f13',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetToolModeResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetToolModeResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetToolPowerRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetToolPowerRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetToolPowerRequest',
        'type' => 'rosdemo_v4/SetToolPowerRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetToolPowerRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b50da7a7513c57b7d7068835275af7245e904a21a7416bdea83c83b07dc2b985',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetToolPowerRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetToolPowerRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetToolPowerResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetToolPowerResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetToolPowerResponse',
        'type' => 'rosdemo_v4/SetToolPowerResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetToolPowerResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_da8afa2a4b60234acd7b36aab53e15be6567b8aca3c45a1fa2af64a07f5a2227',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetToolPowerResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetToolPowerResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/SetUserRequest fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetUserRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetUserRequest',
        'type' => 'rosdemo_v4/SetUserRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetUserRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ace2739af37656402842a9825cb98dcb0eeb80a9899330f5aa457305d74669aa',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetUserRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetUserRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SetUserResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SetUserResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SetUserResponse',
        'type' => 'rosdemo_v4/SetUserResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SetUserResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_878da3404c6d0a82f1a567bb69a1280a0fea90aa54c12460fdd24810e9dfe919',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SetUserResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SetUserResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SpeedFactorRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SpeedFactorRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SpeedFactorRequest',
        'type' => 'rosdemo_v4/SpeedFactorRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SpeedFactorRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3d627fa6ccc17b96d3d957c17e96f9e5338538159dfa85959610a9f901803a9a',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SpeedFactorRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SpeedFactorRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/SpeedFactorResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4SpeedFactorResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4SpeedFactorResponse',
        'type' => 'rosdemo_v4/SpeedFactorResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/SpeedFactorResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5f425013611e572961c782e71d24c4d3b37a26445b145896fab7c49d83e899d3',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4SpeedFactorResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4SpeedFactorResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/StartDragRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StartDragRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StartDragRequest',
        'type' => 'rosdemo_v4/StartDragRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StartDragRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_77b94a2182924aca83a63839ea536bb260a82938e4777d131965d6df4e296f3f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4StartDragRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StartDragRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/StartDragResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StartDragResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StartDragResponse',
        'type' => 'rosdemo_v4/StartDragResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StartDragResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f46b30ea4abf0eab654b8643dd8ec07ab1069615aa17cd77fba9a9e9b55be042',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4StartDragResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StartDragResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/StartPathRequest fields.
 * @details 8..4424 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StartPathRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StartPathRequest',
        'type' => 'rosdemo_v4/StartPathRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StartPathRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bb496e5aa8efd5167f627af32c004204daefcc490e9402077cff3a5bde850bd8',
        'minimum' => 8,
        'maximum' => 4424,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'traceName',
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
                'name' => 'paramValue',
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
    /** @brief Original traceName field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $traceName;
    /** @brief Original paramValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $paramValue;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('traceName', $values))
            $this->traceName = $values['traceName'];
        else
        {
            $this->traceName = '';
        }
        if (array_key_exists('paramValue', $values))
            $this->paramValue = $values['paramValue'];
        else
        {
            $this->paramValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v4StartPathRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StartPathRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/StartPathResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StartPathResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StartPathResponse',
        'type' => 'rosdemo_v4/StartPathResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StartPathResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2748c135187deaf6c46c8b764be8cd8b526aeb5f2725c9e39df6fbdc37db2296',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4StartPathResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StartPathResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/StopRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StopRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StopRequest',
        'type' => 'rosdemo_v4/StopRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StopRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e290dd226267a51ec721800de05786d5e8855a5aa66f445d71bc66cdaefcac3a',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4StopRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StopRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/StopResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StopResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StopResponse',
        'type' => 'rosdemo_v4/StopResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StopResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_433970515842257c1a95945bf5cb81459028497c081bb506168940124e01a4a6',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4StopResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StopResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/StopDragRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StopDragRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StopDragRequest',
        'type' => 'rosdemo_v4/StopDragRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StopDragRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d6b0bd3ad7c38923dddb34e9dacb10957f8039ea8de975ed244e6f055f4382c7',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4StopDragRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StopDragRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/StopDragResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StopDragResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StopDragResponse',
        'type' => 'rosdemo_v4/StopDragResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StopDragResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_983e05b8edb970adbca14ff844e9bb547fd1bbf5d73149672f0e3c64d62c3c49',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4StopDragResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StopDragResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v4/StopMoveJogRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StopMoveJogRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StopMoveJogRequest',
        'type' => 'rosdemo_v4/StopMoveJogRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StopMoveJogRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ae0e9ee98e7383bbc1d4cfdd8f52c66f466533c9eeef583c6b3d815f5098e45c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4StopMoveJogRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StopMoveJogRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/StopMoveJogResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4StopMoveJogResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4StopMoveJogResponse',
        'type' => 'rosdemo_v4/StopMoveJogResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/StopMoveJogResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f1fc654fc70290eaa16187d80ad84b69ae2ba9adb1bb1e3ea6e7565247721955',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4StopMoveJogResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4StopMoveJogResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/TcpDashboardRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4TcpDashboardRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4TcpDashboardRequest',
        'type' => 'rosdemo_v4/TcpDashboardRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/TcpDashboardRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_47cf7cf3c864691b6c60c2657b1491c56013ccffc389a850f72bacd89e101669',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4TcpDashboardRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4TcpDashboardRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/TcpDashboardResponse fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4TcpDashboardResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4TcpDashboardResponse',
        'type' => 'rosdemo_v4/TcpDashboardResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/TcpDashboardResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7caec2f6f4bcb9e6bbb4a3adb1e20ad6935cfb77d72bc6d8772ccddfa9d57725',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4TcpDashboardResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4TcpDashboardResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ToolRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolRequest',
        'type' => 'rosdemo_v4/ToolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a8ab3c5f3ba17c1da69c9b96c6c5b3351a9b814c4c564203fce628e1b06ca633',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ToolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolResponse',
        'type' => 'rosdemo_v4/ToolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a9027450905cbd15ab300924c74e2990df138d19bac12b7d1f5033fded01ea8e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ToolAIRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolAIRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolAIRequest',
        'type' => 'rosdemo_v4/ToolAIRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolAIRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c141fb5f247d29ef1f6af584320382779cfc3febf3f8e57722d4c49cad478c94',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolAIRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolAIRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ToolAIResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolAIResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolAIResponse',
        'type' => 'rosdemo_v4/ToolAIResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolAIResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2b36d315526555b9c2890193d72da3bc11f28d96bd0666d1138e8d52ca2e96bd',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolAIResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolAIResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ToolDIRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolDIRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolDIRequest',
        'type' => 'rosdemo_v4/ToolDIRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolDIRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8180502a73118db535342bee15363e88e24249bfbffb486e986f9b8481267a0f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolDIRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolDIRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ToolDIResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolDIResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolDIResponse',
        'type' => 'rosdemo_v4/ToolDIResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolDIResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e062173a11ff92dbdf6608de99da922ec66fdc55252a53f059b4fe7b4e73aedd',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolDIResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolDIResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/ToolDORequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolDORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolDORequest',
        'type' => 'rosdemo_v4/ToolDORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolDORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fcd7e9d3287bcc24acb0dd5300d4804dbb716275e6d582b50ec6ff7c6670baa0',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolDORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolDORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ToolDOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolDOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolDOResponse',
        'type' => 'rosdemo_v4/ToolDOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolDOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_06f053e9ad52998b7947587d9982a20f9e72bc0be403f419ea4a096b0d539852',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolDOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolDOResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v4/ToolDOInstantRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolDOInstantRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolDOInstantRequest',
        'type' => 'rosdemo_v4/ToolDOInstantRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolDOInstantRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c68c24ef0ec153f71f5c6805aa8e9ae3ff12b5dfe64415da75af18df97b4784b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolDOInstantRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolDOInstantRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/ToolDOInstantResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4ToolDOInstantResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4ToolDOInstantResponse',
        'type' => 'rosdemo_v4/ToolDOInstantResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/ToolDOInstantResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c880a6b3852d4dad8365a6334075096ed221040fb9e86b8e9a545c11f9a48981',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4ToolDOInstantResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4ToolDOInstantResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/UserRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4UserRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4UserRequest',
        'type' => 'rosdemo_v4/UserRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/UserRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1d043f84db26368dd7207cf5585380d24f89c9d990922652dd76720c7f6ff3dd',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4UserRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4UserRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/UserResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4UserResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4UserResponse',
        'type' => 'rosdemo_v4/UserResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/UserResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_84129d499ec84200cb970b87870fa4aaa2398bf8e55b3db49260da40b6521abb',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4UserResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4UserResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/VelJRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4VelJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4VelJRequest',
        'type' => 'rosdemo_v4/VelJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/VelJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_979d0b0dc39a507d47ce758757b6abc933e2887ea56e713ef60c27a72b1ff864',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4VelJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4VelJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/VelJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4VelJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4VelJResponse',
        'type' => 'rosdemo_v4/VelJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/VelJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_37148bdc9a4c8d9dfb0249ffa5e87fe917ea88c4b212a793fafdcb92ec3a1749',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4VelJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4VelJResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/VelLRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4VelLRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4VelLRequest',
        'type' => 'rosdemo_v4/VelLRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/VelLRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ed647102e30f45418ff04cb3717694ba1c2256497773ccd24f6336e45877d05e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4VelLRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4VelLRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v4/VelLResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v4VelLResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v4VelLResponse',
        'type' => 'rosdemo_v4/VelLResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v4/VelLResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_013b1c007d34ccc7d9f12c272ac0720eeb347727d6861995dd1a7290c8eace85',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v4VelLResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v4VelLResponse', $bytes);
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
            'Ros1Rosdemo_v4AIRequest' => Ros1Rosdemo_v4AIRequest::SCHEMA + ['class' => Ros1Rosdemo_v4AIRequest::class],
            'Ros1Rosdemo_v4AIResponse' => Ros1Rosdemo_v4AIResponse::SCHEMA + ['class' => Ros1Rosdemo_v4AIResponse::class],
            'Ros1Rosdemo_v4AORequest' => Ros1Rosdemo_v4AORequest::SCHEMA + ['class' => Ros1Rosdemo_v4AORequest::class],
            'Ros1Rosdemo_v4AOResponse' => Ros1Rosdemo_v4AOResponse::SCHEMA + ['class' => Ros1Rosdemo_v4AOResponse::class],
            'Ros1Rosdemo_v4AOInstantRequest' => Ros1Rosdemo_v4AOInstantRequest::SCHEMA + ['class' => Ros1Rosdemo_v4AOInstantRequest::class],
            'Ros1Rosdemo_v4AOInstantResponse' => Ros1Rosdemo_v4AOInstantResponse::SCHEMA + ['class' => Ros1Rosdemo_v4AOInstantResponse::class],
            'Ros1Rosdemo_v4AccJRequest' => Ros1Rosdemo_v4AccJRequest::SCHEMA + ['class' => Ros1Rosdemo_v4AccJRequest::class],
            'Ros1Rosdemo_v4AccJResponse' => Ros1Rosdemo_v4AccJResponse::SCHEMA + ['class' => Ros1Rosdemo_v4AccJResponse::class],
            'Ros1Rosdemo_v4AccLRequest' => Ros1Rosdemo_v4AccLRequest::SCHEMA + ['class' => Ros1Rosdemo_v4AccLRequest::class],
            'Ros1Rosdemo_v4AccLResponse' => Ros1Rosdemo_v4AccLResponse::SCHEMA + ['class' => Ros1Rosdemo_v4AccLResponse::class],
            'Ros1Rosdemo_v4ArcRequest' => Ros1Rosdemo_v4ArcRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ArcRequest::class],
            'Ros1Rosdemo_v4ArcResponse' => Ros1Rosdemo_v4ArcResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ArcResponse::class],
            'Ros1Rosdemo_v4BrakeControlRequest' => Ros1Rosdemo_v4BrakeControlRequest::SCHEMA + ['class' => Ros1Rosdemo_v4BrakeControlRequest::class],
            'Ros1Rosdemo_v4BrakeControlResponse' => Ros1Rosdemo_v4BrakeControlResponse::SCHEMA + ['class' => Ros1Rosdemo_v4BrakeControlResponse::class],
            'Ros1Rosdemo_v4CPRequest' => Ros1Rosdemo_v4CPRequest::SCHEMA + ['class' => Ros1Rosdemo_v4CPRequest::class],
            'Ros1Rosdemo_v4CPResponse' => Ros1Rosdemo_v4CPResponse::SCHEMA + ['class' => Ros1Rosdemo_v4CPResponse::class],
            'Ros1Rosdemo_v4CalcToolRequest' => Ros1Rosdemo_v4CalcToolRequest::SCHEMA + ['class' => Ros1Rosdemo_v4CalcToolRequest::class],
            'Ros1Rosdemo_v4CalcToolResponse' => Ros1Rosdemo_v4CalcToolResponse::SCHEMA + ['class' => Ros1Rosdemo_v4CalcToolResponse::class],
            'Ros1Rosdemo_v4CalcUserRequest' => Ros1Rosdemo_v4CalcUserRequest::SCHEMA + ['class' => Ros1Rosdemo_v4CalcUserRequest::class],
            'Ros1Rosdemo_v4CalcUserResponse' => Ros1Rosdemo_v4CalcUserResponse::SCHEMA + ['class' => Ros1Rosdemo_v4CalcUserResponse::class],
            'Ros1Rosdemo_v4CircleRequest' => Ros1Rosdemo_v4CircleRequest::SCHEMA + ['class' => Ros1Rosdemo_v4CircleRequest::class],
            'Ros1Rosdemo_v4CircleResponse' => Ros1Rosdemo_v4CircleResponse::SCHEMA + ['class' => Ros1Rosdemo_v4CircleResponse::class],
            'Ros1Rosdemo_v4ClearErrorRequest' => Ros1Rosdemo_v4ClearErrorRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ClearErrorRequest::class],
            'Ros1Rosdemo_v4ClearErrorResponse' => Ros1Rosdemo_v4ClearErrorResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ClearErrorResponse::class],
            'Ros1Rosdemo_v4ContinueRequest' => Ros1Rosdemo_v4ContinueRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ContinueRequest::class],
            'Ros1Rosdemo_v4ContinueResponse' => Ros1Rosdemo_v4ContinueResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ContinueResponse::class],
            'Ros1Rosdemo_v4DIRequest' => Ros1Rosdemo_v4DIRequest::SCHEMA + ['class' => Ros1Rosdemo_v4DIRequest::class],
            'Ros1Rosdemo_v4DIResponse' => Ros1Rosdemo_v4DIResponse::SCHEMA + ['class' => Ros1Rosdemo_v4DIResponse::class],
            'Ros1Rosdemo_v4DIGroupRequest' => Ros1Rosdemo_v4DIGroupRequest::SCHEMA + ['class' => Ros1Rosdemo_v4DIGroupRequest::class],
            'Ros1Rosdemo_v4DIGroupResponse' => Ros1Rosdemo_v4DIGroupResponse::SCHEMA + ['class' => Ros1Rosdemo_v4DIGroupResponse::class],
            'Ros1Rosdemo_v4DORequest' => Ros1Rosdemo_v4DORequest::SCHEMA + ['class' => Ros1Rosdemo_v4DORequest::class],
            'Ros1Rosdemo_v4DOResponse' => Ros1Rosdemo_v4DOResponse::SCHEMA + ['class' => Ros1Rosdemo_v4DOResponse::class],
            'Ros1Rosdemo_v4DOGroupRequest' => Ros1Rosdemo_v4DOGroupRequest::SCHEMA + ['class' => Ros1Rosdemo_v4DOGroupRequest::class],
            'Ros1Rosdemo_v4DOGroupResponse' => Ros1Rosdemo_v4DOGroupResponse::SCHEMA + ['class' => Ros1Rosdemo_v4DOGroupResponse::class],
            'Ros1Rosdemo_v4DOInstantRequest' => Ros1Rosdemo_v4DOInstantRequest::SCHEMA + ['class' => Ros1Rosdemo_v4DOInstantRequest::class],
            'Ros1Rosdemo_v4DOInstantResponse' => Ros1Rosdemo_v4DOInstantResponse::SCHEMA + ['class' => Ros1Rosdemo_v4DOInstantResponse::class],
            'Ros1Rosdemo_v4DisableRobotRequest' => Ros1Rosdemo_v4DisableRobotRequest::SCHEMA + ['class' => Ros1Rosdemo_v4DisableRobotRequest::class],
            'Ros1Rosdemo_v4DisableRobotResponse' => Ros1Rosdemo_v4DisableRobotResponse::SCHEMA + ['class' => Ros1Rosdemo_v4DisableRobotResponse::class],
            'Ros1Rosdemo_v4DragSensivityRequest' => Ros1Rosdemo_v4DragSensivityRequest::SCHEMA + ['class' => Ros1Rosdemo_v4DragSensivityRequest::class],
            'Ros1Rosdemo_v4DragSensivityResponse' => Ros1Rosdemo_v4DragSensivityResponse::SCHEMA + ['class' => Ros1Rosdemo_v4DragSensivityResponse::class],
            'Ros1Rosdemo_v4EmergencyStopRequest' => Ros1Rosdemo_v4EmergencyStopRequest::SCHEMA + ['class' => Ros1Rosdemo_v4EmergencyStopRequest::class],
            'Ros1Rosdemo_v4EmergencyStopResponse' => Ros1Rosdemo_v4EmergencyStopResponse::SCHEMA + ['class' => Ros1Rosdemo_v4EmergencyStopResponse::class],
            'Ros1Rosdemo_v4EnableRobotRequest' => Ros1Rosdemo_v4EnableRobotRequest::SCHEMA + ['class' => Ros1Rosdemo_v4EnableRobotRequest::class],
            'Ros1Rosdemo_v4EnableRobotResponse' => Ros1Rosdemo_v4EnableRobotResponse::SCHEMA + ['class' => Ros1Rosdemo_v4EnableRobotResponse::class],
            'Ros1Rosdemo_v4EnableSafeSkinRequest' => Ros1Rosdemo_v4EnableSafeSkinRequest::SCHEMA + ['class' => Ros1Rosdemo_v4EnableSafeSkinRequest::class],
            'Ros1Rosdemo_v4EnableSafeSkinResponse' => Ros1Rosdemo_v4EnableSafeSkinResponse::SCHEMA + ['class' => Ros1Rosdemo_v4EnableSafeSkinResponse::class],
            'Ros1Rosdemo_v4GetAORequest' => Ros1Rosdemo_v4GetAORequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetAORequest::class],
            'Ros1Rosdemo_v4GetAOResponse' => Ros1Rosdemo_v4GetAOResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetAOResponse::class],
            'Ros1Rosdemo_v4GetAngleRequest' => Ros1Rosdemo_v4GetAngleRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetAngleRequest::class],
            'Ros1Rosdemo_v4GetAngleResponse' => Ros1Rosdemo_v4GetAngleResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetAngleResponse::class],
            'Ros1Rosdemo_v4GetCoilsRequest' => Ros1Rosdemo_v4GetCoilsRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetCoilsRequest::class],
            'Ros1Rosdemo_v4GetCoilsResponse' => Ros1Rosdemo_v4GetCoilsResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetCoilsResponse::class],
            'Ros1Rosdemo_v4GetCurrentCommandIdRequest' => Ros1Rosdemo_v4GetCurrentCommandIdRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetCurrentCommandIdRequest::class],
            'Ros1Rosdemo_v4GetCurrentCommandIdResponse' => Ros1Rosdemo_v4GetCurrentCommandIdResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetCurrentCommandIdResponse::class],
            'Ros1Rosdemo_v4GetDORequest' => Ros1Rosdemo_v4GetDORequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetDORequest::class],
            'Ros1Rosdemo_v4GetDOResponse' => Ros1Rosdemo_v4GetDOResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetDOResponse::class],
            'Ros1Rosdemo_v4GetDOGroupRequest' => Ros1Rosdemo_v4GetDOGroupRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetDOGroupRequest::class],
            'Ros1Rosdemo_v4GetDOGroupResponse' => Ros1Rosdemo_v4GetDOGroupResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetDOGroupResponse::class],
            'Ros1Rosdemo_v4GetErrorIDRequest' => Ros1Rosdemo_v4GetErrorIDRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetErrorIDRequest::class],
            'Ros1Rosdemo_v4GetErrorIDResponse' => Ros1Rosdemo_v4GetErrorIDResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetErrorIDResponse::class],
            'Ros1Rosdemo_v4GetHoldRegsRequest' => Ros1Rosdemo_v4GetHoldRegsRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetHoldRegsRequest::class],
            'Ros1Rosdemo_v4GetHoldRegsResponse' => Ros1Rosdemo_v4GetHoldRegsResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetHoldRegsResponse::class],
            'Ros1Rosdemo_v4GetInBitsRequest' => Ros1Rosdemo_v4GetInBitsRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetInBitsRequest::class],
            'Ros1Rosdemo_v4GetInBitsResponse' => Ros1Rosdemo_v4GetInBitsResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetInBitsResponse::class],
            'Ros1Rosdemo_v4GetInRegsRequest' => Ros1Rosdemo_v4GetInRegsRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetInRegsRequest::class],
            'Ros1Rosdemo_v4GetInRegsResponse' => Ros1Rosdemo_v4GetInRegsResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetInRegsResponse::class],
            'Ros1Rosdemo_v4GetInputBoolRequest' => Ros1Rosdemo_v4GetInputBoolRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetInputBoolRequest::class],
            'Ros1Rosdemo_v4GetInputBoolResponse' => Ros1Rosdemo_v4GetInputBoolResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetInputBoolResponse::class],
            'Ros1Rosdemo_v4GetInputFloatRequest' => Ros1Rosdemo_v4GetInputFloatRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetInputFloatRequest::class],
            'Ros1Rosdemo_v4GetInputFloatResponse' => Ros1Rosdemo_v4GetInputFloatResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetInputFloatResponse::class],
            'Ros1Rosdemo_v4GetInputIntRequest' => Ros1Rosdemo_v4GetInputIntRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetInputIntRequest::class],
            'Ros1Rosdemo_v4GetInputIntResponse' => Ros1Rosdemo_v4GetInputIntResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetInputIntResponse::class],
            'Ros1Rosdemo_v4GetOutputBoolRequest' => Ros1Rosdemo_v4GetOutputBoolRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetOutputBoolRequest::class],
            'Ros1Rosdemo_v4GetOutputBoolResponse' => Ros1Rosdemo_v4GetOutputBoolResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetOutputBoolResponse::class],
            'Ros1Rosdemo_v4GetOutputFloatRequest' => Ros1Rosdemo_v4GetOutputFloatRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetOutputFloatRequest::class],
            'Ros1Rosdemo_v4GetOutputFloatResponse' => Ros1Rosdemo_v4GetOutputFloatResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetOutputFloatResponse::class],
            'Ros1Rosdemo_v4GetOutputIntRequest' => Ros1Rosdemo_v4GetOutputIntRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetOutputIntRequest::class],
            'Ros1Rosdemo_v4GetOutputIntResponse' => Ros1Rosdemo_v4GetOutputIntResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetOutputIntResponse::class],
            'Ros1Rosdemo_v4GetPoseRequest' => Ros1Rosdemo_v4GetPoseRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetPoseRequest::class],
            'Ros1Rosdemo_v4GetPoseResponse' => Ros1Rosdemo_v4GetPoseResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetPoseResponse::class],
            'Ros1Rosdemo_v4GetStartPoseRequest' => Ros1Rosdemo_v4GetStartPoseRequest::SCHEMA + ['class' => Ros1Rosdemo_v4GetStartPoseRequest::class],
            'Ros1Rosdemo_v4GetStartPoseResponse' => Ros1Rosdemo_v4GetStartPoseResponse::SCHEMA + ['class' => Ros1Rosdemo_v4GetStartPoseResponse::class],
            'Ros1Rosdemo_v4InverseKinRequest' => Ros1Rosdemo_v4InverseKinRequest::SCHEMA + ['class' => Ros1Rosdemo_v4InverseKinRequest::class],
            'Ros1Rosdemo_v4InverseKinResponse' => Ros1Rosdemo_v4InverseKinResponse::SCHEMA + ['class' => Ros1Rosdemo_v4InverseKinResponse::class],
            'Ros1Rosdemo_v4InverseSolutionRequest' => Ros1Rosdemo_v4InverseSolutionRequest::SCHEMA + ['class' => Ros1Rosdemo_v4InverseSolutionRequest::class],
            'Ros1Rosdemo_v4InverseSolutionResponse' => Ros1Rosdemo_v4InverseSolutionResponse::SCHEMA + ['class' => Ros1Rosdemo_v4InverseSolutionResponse::class],
            'Ros1Rosdemo_v4ModbusCloseRequest' => Ros1Rosdemo_v4ModbusCloseRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ModbusCloseRequest::class],
            'Ros1Rosdemo_v4ModbusCloseResponse' => Ros1Rosdemo_v4ModbusCloseResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ModbusCloseResponse::class],
            'Ros1Rosdemo_v4ModbusCreateRequest' => Ros1Rosdemo_v4ModbusCreateRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ModbusCreateRequest::class],
            'Ros1Rosdemo_v4ModbusCreateResponse' => Ros1Rosdemo_v4ModbusCreateResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ModbusCreateResponse::class],
            'Ros1Rosdemo_v4ModbusRTUCreateRequest' => Ros1Rosdemo_v4ModbusRTUCreateRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ModbusRTUCreateRequest::class],
            'Ros1Rosdemo_v4ModbusRTUCreateResponse' => Ros1Rosdemo_v4ModbusRTUCreateResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ModbusRTUCreateResponse::class],
            'Ros1Rosdemo_v4MovJRequest' => Ros1Rosdemo_v4MovJRequest::SCHEMA + ['class' => Ros1Rosdemo_v4MovJRequest::class],
            'Ros1Rosdemo_v4MovJResponse' => Ros1Rosdemo_v4MovJResponse::SCHEMA + ['class' => Ros1Rosdemo_v4MovJResponse::class],
            'Ros1Rosdemo_v4MovJIORequest' => Ros1Rosdemo_v4MovJIORequest::SCHEMA + ['class' => Ros1Rosdemo_v4MovJIORequest::class],
            'Ros1Rosdemo_v4MovJIOResponse' => Ros1Rosdemo_v4MovJIOResponse::SCHEMA + ['class' => Ros1Rosdemo_v4MovJIOResponse::class],
            'Ros1Rosdemo_v4MovLRequest' => Ros1Rosdemo_v4MovLRequest::SCHEMA + ['class' => Ros1Rosdemo_v4MovLRequest::class],
            'Ros1Rosdemo_v4MovLResponse' => Ros1Rosdemo_v4MovLResponse::SCHEMA + ['class' => Ros1Rosdemo_v4MovLResponse::class],
            'Ros1Rosdemo_v4MovLIORequest' => Ros1Rosdemo_v4MovLIORequest::SCHEMA + ['class' => Ros1Rosdemo_v4MovLIORequest::class],
            'Ros1Rosdemo_v4MovLIOResponse' => Ros1Rosdemo_v4MovLIOResponse::SCHEMA + ['class' => Ros1Rosdemo_v4MovLIOResponse::class],
            'Ros1Rosdemo_v4MoveJogRequest' => Ros1Rosdemo_v4MoveJogRequest::SCHEMA + ['class' => Ros1Rosdemo_v4MoveJogRequest::class],
            'Ros1Rosdemo_v4MoveJogResponse' => Ros1Rosdemo_v4MoveJogResponse::SCHEMA + ['class' => Ros1Rosdemo_v4MoveJogResponse::class],
            'Ros1Rosdemo_v4PauseRequest' => Ros1Rosdemo_v4PauseRequest::SCHEMA + ['class' => Ros1Rosdemo_v4PauseRequest::class],
            'Ros1Rosdemo_v4PauseResponse' => Ros1Rosdemo_v4PauseResponse::SCHEMA + ['class' => Ros1Rosdemo_v4PauseResponse::class],
            'Ros1Rosdemo_v4PositiveKinRequest' => Ros1Rosdemo_v4PositiveKinRequest::SCHEMA + ['class' => Ros1Rosdemo_v4PositiveKinRequest::class],
            'Ros1Rosdemo_v4PositiveKinResponse' => Ros1Rosdemo_v4PositiveKinResponse::SCHEMA + ['class' => Ros1Rosdemo_v4PositiveKinResponse::class],
            'Ros1Rosdemo_v4PowerOnRequest' => Ros1Rosdemo_v4PowerOnRequest::SCHEMA + ['class' => Ros1Rosdemo_v4PowerOnRequest::class],
            'Ros1Rosdemo_v4PowerOnResponse' => Ros1Rosdemo_v4PowerOnResponse::SCHEMA + ['class' => Ros1Rosdemo_v4PowerOnResponse::class],
            'Ros1Rosdemo_v4RelJointMovJRequest' => Ros1Rosdemo_v4RelJointMovJRequest::SCHEMA + ['class' => Ros1Rosdemo_v4RelJointMovJRequest::class],
            'Ros1Rosdemo_v4RelJointMovJResponse' => Ros1Rosdemo_v4RelJointMovJResponse::SCHEMA + ['class' => Ros1Rosdemo_v4RelJointMovJResponse::class],
            'Ros1Rosdemo_v4RelMovJToolRequest' => Ros1Rosdemo_v4RelMovJToolRequest::SCHEMA + ['class' => Ros1Rosdemo_v4RelMovJToolRequest::class],
            'Ros1Rosdemo_v4RelMovJToolResponse' => Ros1Rosdemo_v4RelMovJToolResponse::SCHEMA + ['class' => Ros1Rosdemo_v4RelMovJToolResponse::class],
            'Ros1Rosdemo_v4RelMovJUserRequest' => Ros1Rosdemo_v4RelMovJUserRequest::SCHEMA + ['class' => Ros1Rosdemo_v4RelMovJUserRequest::class],
            'Ros1Rosdemo_v4RelMovJUserResponse' => Ros1Rosdemo_v4RelMovJUserResponse::SCHEMA + ['class' => Ros1Rosdemo_v4RelMovJUserResponse::class],
            'Ros1Rosdemo_v4RelMovLToolRequest' => Ros1Rosdemo_v4RelMovLToolRequest::SCHEMA + ['class' => Ros1Rosdemo_v4RelMovLToolRequest::class],
            'Ros1Rosdemo_v4RelMovLToolResponse' => Ros1Rosdemo_v4RelMovLToolResponse::SCHEMA + ['class' => Ros1Rosdemo_v4RelMovLToolResponse::class],
            'Ros1Rosdemo_v4RelMovLUserRequest' => Ros1Rosdemo_v4RelMovLUserRequest::SCHEMA + ['class' => Ros1Rosdemo_v4RelMovLUserRequest::class],
            'Ros1Rosdemo_v4RelMovLUserResponse' => Ros1Rosdemo_v4RelMovLUserResponse::SCHEMA + ['class' => Ros1Rosdemo_v4RelMovLUserResponse::class],
            'Ros1Rosdemo_v4RobotModeRequest' => Ros1Rosdemo_v4RobotModeRequest::SCHEMA + ['class' => Ros1Rosdemo_v4RobotModeRequest::class],
            'Ros1Rosdemo_v4RobotModeResponse' => Ros1Rosdemo_v4RobotModeResponse::SCHEMA + ['class' => Ros1Rosdemo_v4RobotModeResponse::class],
            'Ros1Rosdemo_v4RunScriptRequest' => Ros1Rosdemo_v4RunScriptRequest::SCHEMA + ['class' => Ros1Rosdemo_v4RunScriptRequest::class],
            'Ros1Rosdemo_v4RunScriptResponse' => Ros1Rosdemo_v4RunScriptResponse::SCHEMA + ['class' => Ros1Rosdemo_v4RunScriptResponse::class],
            'Ros1Rosdemo_v4ServoJRequest' => Ros1Rosdemo_v4ServoJRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ServoJRequest::class],
            'Ros1Rosdemo_v4ServoJResponse' => Ros1Rosdemo_v4ServoJResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ServoJResponse::class],
            'Ros1Rosdemo_v4ServoPRequest' => Ros1Rosdemo_v4ServoPRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ServoPRequest::class],
            'Ros1Rosdemo_v4ServoPResponse' => Ros1Rosdemo_v4ServoPResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ServoPResponse::class],
            'Ros1Rosdemo_v4SetBackDistanceRequest' => Ros1Rosdemo_v4SetBackDistanceRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetBackDistanceRequest::class],
            'Ros1Rosdemo_v4SetBackDistanceResponse' => Ros1Rosdemo_v4SetBackDistanceResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetBackDistanceResponse::class],
            'Ros1Rosdemo_v4SetCoilsRequest' => Ros1Rosdemo_v4SetCoilsRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetCoilsRequest::class],
            'Ros1Rosdemo_v4SetCoilsResponse' => Ros1Rosdemo_v4SetCoilsResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetCoilsResponse::class],
            'Ros1Rosdemo_v4SetCollisionLevelRequest' => Ros1Rosdemo_v4SetCollisionLevelRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetCollisionLevelRequest::class],
            'Ros1Rosdemo_v4SetCollisionLevelResponse' => Ros1Rosdemo_v4SetCollisionLevelResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetCollisionLevelResponse::class],
            'Ros1Rosdemo_v4SetHoldRegsRequest' => Ros1Rosdemo_v4SetHoldRegsRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetHoldRegsRequest::class],
            'Ros1Rosdemo_v4SetHoldRegsResponse' => Ros1Rosdemo_v4SetHoldRegsResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetHoldRegsResponse::class],
            'Ros1Rosdemo_v4SetOutputBoolRequest' => Ros1Rosdemo_v4SetOutputBoolRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetOutputBoolRequest::class],
            'Ros1Rosdemo_v4SetOutputBoolResponse' => Ros1Rosdemo_v4SetOutputBoolResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetOutputBoolResponse::class],
            'Ros1Rosdemo_v4SetOutputFloatRequest' => Ros1Rosdemo_v4SetOutputFloatRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetOutputFloatRequest::class],
            'Ros1Rosdemo_v4SetOutputFloatResponse' => Ros1Rosdemo_v4SetOutputFloatResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetOutputFloatResponse::class],
            'Ros1Rosdemo_v4SetOutputIntRequest' => Ros1Rosdemo_v4SetOutputIntRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetOutputIntRequest::class],
            'Ros1Rosdemo_v4SetOutputIntResponse' => Ros1Rosdemo_v4SetOutputIntResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetOutputIntResponse::class],
            'Ros1Rosdemo_v4SetPayloadRequest' => Ros1Rosdemo_v4SetPayloadRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetPayloadRequest::class],
            'Ros1Rosdemo_v4SetPayloadResponse' => Ros1Rosdemo_v4SetPayloadResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetPayloadResponse::class],
            'Ros1Rosdemo_v4SetPostCollisionModeRequest' => Ros1Rosdemo_v4SetPostCollisionModeRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetPostCollisionModeRequest::class],
            'Ros1Rosdemo_v4SetPostCollisionModeResponse' => Ros1Rosdemo_v4SetPostCollisionModeResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetPostCollisionModeResponse::class],
            'Ros1Rosdemo_v4SetSafeSkinRequest' => Ros1Rosdemo_v4SetSafeSkinRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetSafeSkinRequest::class],
            'Ros1Rosdemo_v4SetSafeSkinResponse' => Ros1Rosdemo_v4SetSafeSkinResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetSafeSkinResponse::class],
            'Ros1Rosdemo_v4SetSafeWallEnableRequest' => Ros1Rosdemo_v4SetSafeWallEnableRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetSafeWallEnableRequest::class],
            'Ros1Rosdemo_v4SetSafeWallEnableResponse' => Ros1Rosdemo_v4SetSafeWallEnableResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetSafeWallEnableResponse::class],
            'Ros1Rosdemo_v4SetToolRequest' => Ros1Rosdemo_v4SetToolRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetToolRequest::class],
            'Ros1Rosdemo_v4SetToolResponse' => Ros1Rosdemo_v4SetToolResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetToolResponse::class],
            'Ros1Rosdemo_v4SetTool485Request' => Ros1Rosdemo_v4SetTool485Request::SCHEMA + ['class' => Ros1Rosdemo_v4SetTool485Request::class],
            'Ros1Rosdemo_v4SetTool485Response' => Ros1Rosdemo_v4SetTool485Response::SCHEMA + ['class' => Ros1Rosdemo_v4SetTool485Response::class],
            'Ros1Rosdemo_v4SetToolModeRequest' => Ros1Rosdemo_v4SetToolModeRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetToolModeRequest::class],
            'Ros1Rosdemo_v4SetToolModeResponse' => Ros1Rosdemo_v4SetToolModeResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetToolModeResponse::class],
            'Ros1Rosdemo_v4SetToolPowerRequest' => Ros1Rosdemo_v4SetToolPowerRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetToolPowerRequest::class],
            'Ros1Rosdemo_v4SetToolPowerResponse' => Ros1Rosdemo_v4SetToolPowerResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetToolPowerResponse::class],
            'Ros1Rosdemo_v4SetUserRequest' => Ros1Rosdemo_v4SetUserRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SetUserRequest::class],
            'Ros1Rosdemo_v4SetUserResponse' => Ros1Rosdemo_v4SetUserResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SetUserResponse::class],
            'Ros1Rosdemo_v4SpeedFactorRequest' => Ros1Rosdemo_v4SpeedFactorRequest::SCHEMA + ['class' => Ros1Rosdemo_v4SpeedFactorRequest::class],
            'Ros1Rosdemo_v4SpeedFactorResponse' => Ros1Rosdemo_v4SpeedFactorResponse::SCHEMA + ['class' => Ros1Rosdemo_v4SpeedFactorResponse::class],
            'Ros1Rosdemo_v4StartDragRequest' => Ros1Rosdemo_v4StartDragRequest::SCHEMA + ['class' => Ros1Rosdemo_v4StartDragRequest::class],
            'Ros1Rosdemo_v4StartDragResponse' => Ros1Rosdemo_v4StartDragResponse::SCHEMA + ['class' => Ros1Rosdemo_v4StartDragResponse::class],
            'Ros1Rosdemo_v4StartPathRequest' => Ros1Rosdemo_v4StartPathRequest::SCHEMA + ['class' => Ros1Rosdemo_v4StartPathRequest::class],
            'Ros1Rosdemo_v4StartPathResponse' => Ros1Rosdemo_v4StartPathResponse::SCHEMA + ['class' => Ros1Rosdemo_v4StartPathResponse::class],
            'Ros1Rosdemo_v4StopRequest' => Ros1Rosdemo_v4StopRequest::SCHEMA + ['class' => Ros1Rosdemo_v4StopRequest::class],
            'Ros1Rosdemo_v4StopResponse' => Ros1Rosdemo_v4StopResponse::SCHEMA + ['class' => Ros1Rosdemo_v4StopResponse::class],
            'Ros1Rosdemo_v4StopDragRequest' => Ros1Rosdemo_v4StopDragRequest::SCHEMA + ['class' => Ros1Rosdemo_v4StopDragRequest::class],
            'Ros1Rosdemo_v4StopDragResponse' => Ros1Rosdemo_v4StopDragResponse::SCHEMA + ['class' => Ros1Rosdemo_v4StopDragResponse::class],
            'Ros1Rosdemo_v4StopMoveJogRequest' => Ros1Rosdemo_v4StopMoveJogRequest::SCHEMA + ['class' => Ros1Rosdemo_v4StopMoveJogRequest::class],
            'Ros1Rosdemo_v4StopMoveJogResponse' => Ros1Rosdemo_v4StopMoveJogResponse::SCHEMA + ['class' => Ros1Rosdemo_v4StopMoveJogResponse::class],
            'Ros1Rosdemo_v4TcpDashboardRequest' => Ros1Rosdemo_v4TcpDashboardRequest::SCHEMA + ['class' => Ros1Rosdemo_v4TcpDashboardRequest::class],
            'Ros1Rosdemo_v4TcpDashboardResponse' => Ros1Rosdemo_v4TcpDashboardResponse::SCHEMA + ['class' => Ros1Rosdemo_v4TcpDashboardResponse::class],
            'Ros1Rosdemo_v4ToolRequest' => Ros1Rosdemo_v4ToolRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ToolRequest::class],
            'Ros1Rosdemo_v4ToolResponse' => Ros1Rosdemo_v4ToolResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ToolResponse::class],
            'Ros1Rosdemo_v4ToolAIRequest' => Ros1Rosdemo_v4ToolAIRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ToolAIRequest::class],
            'Ros1Rosdemo_v4ToolAIResponse' => Ros1Rosdemo_v4ToolAIResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ToolAIResponse::class],
            'Ros1Rosdemo_v4ToolDIRequest' => Ros1Rosdemo_v4ToolDIRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ToolDIRequest::class],
            'Ros1Rosdemo_v4ToolDIResponse' => Ros1Rosdemo_v4ToolDIResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ToolDIResponse::class],
            'Ros1Rosdemo_v4ToolDORequest' => Ros1Rosdemo_v4ToolDORequest::SCHEMA + ['class' => Ros1Rosdemo_v4ToolDORequest::class],
            'Ros1Rosdemo_v4ToolDOResponse' => Ros1Rosdemo_v4ToolDOResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ToolDOResponse::class],
            'Ros1Rosdemo_v4ToolDOInstantRequest' => Ros1Rosdemo_v4ToolDOInstantRequest::SCHEMA + ['class' => Ros1Rosdemo_v4ToolDOInstantRequest::class],
            'Ros1Rosdemo_v4ToolDOInstantResponse' => Ros1Rosdemo_v4ToolDOInstantResponse::SCHEMA + ['class' => Ros1Rosdemo_v4ToolDOInstantResponse::class],
            'Ros1Rosdemo_v4UserRequest' => Ros1Rosdemo_v4UserRequest::SCHEMA + ['class' => Ros1Rosdemo_v4UserRequest::class],
            'Ros1Rosdemo_v4UserResponse' => Ros1Rosdemo_v4UserResponse::SCHEMA + ['class' => Ros1Rosdemo_v4UserResponse::class],
            'Ros1Rosdemo_v4VelJRequest' => Ros1Rosdemo_v4VelJRequest::SCHEMA + ['class' => Ros1Rosdemo_v4VelJRequest::class],
            'Ros1Rosdemo_v4VelJResponse' => Ros1Rosdemo_v4VelJResponse::SCHEMA + ['class' => Ros1Rosdemo_v4VelJResponse::class],
            'Ros1Rosdemo_v4VelLRequest' => Ros1Rosdemo_v4VelLRequest::SCHEMA + ['class' => Ros1Rosdemo_v4VelLRequest::class],
            'Ros1Rosdemo_v4VelLResponse' => Ros1Rosdemo_v4VelLResponse::SCHEMA + ['class' => Ros1Rosdemo_v4VelLResponse::class],
        ]);
        return $wire;
    }
}
