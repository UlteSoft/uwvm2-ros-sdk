<?php
declare(strict_types=1);
namespace Uwvm\Dobot\ros1_demo_v3;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own all 1 original rosdemo_v3/AIRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AIRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AIRequest',
        'type' => 'rosdemo_v3/AIRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AIRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b602a1e465dd6b75ba4a2e0217613655696ef285e83432e80defff56712d7684',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AIRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AIRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/AIResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AIResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AIResponse',
        'type' => 'rosdemo_v3/AIResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AIResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6b3106431d74363789930f01dffcae6ad1d1bc6ca7a7f1e9e018df51700e922f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AIResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AIResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/AORequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AORequest',
        'type' => 'rosdemo_v3/AORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ea8f0fd6d894e1a23e149adfc51b8c3a5b9c037df95290e63cb3e3e0bdd552b6',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/AOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AOResponse',
        'type' => 'rosdemo_v3/AOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d4031006ac8b81a933b1d80c47e218cbcba3cb3a50b8f0cad2aa52267fb97923',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AOResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/AOExecuteRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AOExecuteRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AOExecuteRequest',
        'type' => 'rosdemo_v3/AOExecuteRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AOExecuteRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2342287600070fe6036788d4e658dfb03a15a1f7e63bec0eb9c59604ba47c633',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AOExecuteRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AOExecuteRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/AOExecuteResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AOExecuteResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AOExecuteResponse',
        'type' => 'rosdemo_v3/AOExecuteResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AOExecuteResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ec6a75397d1e0bf9c66ff9bf7531960e8c92225c7b632a213e7912a80b106be8',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AOExecuteResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AOExecuteResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/AccJRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AccJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AccJRequest',
        'type' => 'rosdemo_v3/AccJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AccJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ee7fc2b23de9a24fefd510bc63d67aa38d66051ef6a00e714f512eaeb0d30b15',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AccJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AccJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/AccJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AccJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AccJResponse',
        'type' => 'rosdemo_v3/AccJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AccJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1bc2c42b4088dcf05aa9d517c86ee0d32aa29bbe0a0eaa4089a963657490f604',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AccJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AccJResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/AccLRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AccLRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AccLRequest',
        'type' => 'rosdemo_v3/AccLRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AccLRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bd2180c136263ccbcae8759c605671f612aafcbbc3d6e210d190358e77a3f1f8',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AccLRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AccLRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/AccLResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3AccLResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3AccLResponse',
        'type' => 'rosdemo_v3/AccLResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/AccLResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_44e3c490f73cef68983ad0778534665a2410a94c35d2ee4051a5e4806e1ec52d',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3AccLResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3AccLResponse', $bytes);
    }
}

/** @brief Own all 13 original rosdemo_v3/ArcRequest fields.
 * @details 100..4260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ArcRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ArcRequest',
        'type' => 'rosdemo_v3/ArcRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ArcRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0a58fd6305724f29468dfe7c962552e0a3ccacc8acc3dc35a0a425540ce7b827',
        'minimum' => 100,
        'maximum' => 4260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'y1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'z1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
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
                'name' => 'x2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'y2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'z2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original x1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x1;
    /** @brief Original y1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y1;
    /** @brief Original z1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z1;
    /** @brief Original a1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a1;
    /** @brief Original b1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b1;
    /** @brief Original c1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c1;
    /** @brief Original x2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x2;
    /** @brief Original y2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y2;
    /** @brief Original z2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z2;
    /** @brief Original a2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a2;
    /** @brief Original b2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b2;
    /** @brief Original c2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c2;
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
        if (array_key_exists('x1', $values))
            $this->x1 = $values['x1'];
        else
        {
            $this->x1 = 0.0;
        }
        if (array_key_exists('y1', $values))
            $this->y1 = $values['y1'];
        else
        {
            $this->y1 = 0.0;
        }
        if (array_key_exists('z1', $values))
            $this->z1 = $values['z1'];
        else
        {
            $this->z1 = 0.0;
        }
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
        if (array_key_exists('x2', $values))
            $this->x2 = $values['x2'];
        else
        {
            $this->x2 = 0.0;
        }
        if (array_key_exists('y2', $values))
            $this->y2 = $values['y2'];
        else
        {
            $this->y2 = 0.0;
        }
        if (array_key_exists('z2', $values))
            $this->z2 = $values['z2'];
        else
        {
            $this->z2 = 0.0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ArcRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ArcRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ArcResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ArcResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ArcResponse',
        'type' => 'rosdemo_v3/ArcResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ArcResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_654b0ad2eab7c5246beb6e9214fd7aad5c48ea87c7d7ff723742a1adef0157e7',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ArcResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ArcResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/ArchRequest fields.
 * @details 8..4168 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ArchRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ArchRequest',
        'type' => 'rosdemo_v3/ArchRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ArchRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7b963ad26c84e7d97cdde31b5433e9e047c2e6bf308ba8b84f2be45c4edf84b5',
        'minimum' => 8,
        'maximum' => 4168,
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
                'name' => 'cpValue',
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
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original cpValue field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $cpValue;
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
        if (array_key_exists('cpValue', $values))
            $this->cpValue = $values['cpValue'];
        else
        {
            $this->cpValue = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3ArchRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ArchRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ArchResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ArchResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ArchResponse',
        'type' => 'rosdemo_v3/ArchResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ArchResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8f2ce9205a4747044bd72d6fcd196abcfd05c26091e73a05aeeceedce5492db8',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ArchResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ArchResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/BrakeControlRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3BrakeControlRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3BrakeControlRequest',
        'type' => 'rosdemo_v3/BrakeControlRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/BrakeControlRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9512b030827f41d17e39c78ff60c18d91023f3dbbf4156e456a2d2009c2ff1f9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3BrakeControlRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3BrakeControlRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/BrakeControlResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3BrakeControlResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3BrakeControlResponse',
        'type' => 'rosdemo_v3/BrakeControlResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/BrakeControlResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2bd6142faf934f639bdb6bb58f962091e1e7ac31987a3e5f1f66e807fdab7ed9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3BrakeControlResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3BrakeControlResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/CPRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3CPRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3CPRequest',
        'type' => 'rosdemo_v3/CPRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/CPRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f7e35d289326ac400d9b9480874de4c64cf6fac6b00c7cb1e174f0885289c8b1',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3CPRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3CPRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/CPResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3CPResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3CPResponse',
        'type' => 'rosdemo_v3/CPResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/CPResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b1dcc779238507d4226b4532e54677fdc1b5d8df00944b3b9490affe5c90694f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3CPResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3CPResponse', $bytes);
    }
}

/** @brief Own all 14 original rosdemo_v3/CircleRequest fields.
 * @details 104..4264 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3CircleRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3CircleRequest',
        'type' => 'rosdemo_v3/CircleRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/CircleRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_56fcfc6f974a83502fd82f10d9188e6be62cdbbefc367df7ac42e7870a38d819',
        'minimum' => 104,
        'maximum' => 4264,
        'semantics' => '',
        'fields' => [
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
                'name' => 'x1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'y1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'z1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
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
                'name' => 'x2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'y2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'z2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Original x1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x1;
    /** @brief Original y1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y1;
    /** @brief Original z1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z1;
    /** @brief Original a1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a1;
    /** @brief Original b1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b1;
    /** @brief Original c1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c1;
    /** @brief Original x2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x2;
    /** @brief Original y2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y2;
    /** @brief Original z2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z2;
    /** @brief Original a2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a2;
    /** @brief Original b2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b2;
    /** @brief Original c2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c2;
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
        if (array_key_exists('count', $values))
            $this->count = $values['count'];
        else
        {
            $this->count = 0;
        }
        if (array_key_exists('x1', $values))
            $this->x1 = $values['x1'];
        else
        {
            $this->x1 = 0.0;
        }
        if (array_key_exists('y1', $values))
            $this->y1 = $values['y1'];
        else
        {
            $this->y1 = 0.0;
        }
        if (array_key_exists('z1', $values))
            $this->z1 = $values['z1'];
        else
        {
            $this->z1 = 0.0;
        }
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
        if (array_key_exists('x2', $values))
            $this->x2 = $values['x2'];
        else
        {
            $this->x2 = 0.0;
        }
        if (array_key_exists('y2', $values))
            $this->y2 = $values['y2'];
        else
        {
            $this->y2 = 0.0;
        }
        if (array_key_exists('z2', $values))
            $this->z2 = $values['z2'];
        else
        {
            $this->z2 = 0.0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3CircleRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3CircleRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/CircleResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3CircleResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3CircleResponse',
        'type' => 'rosdemo_v3/CircleResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/CircleResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_77b6bd5164520bd43a51d52db0775c36101c832410ea253c3e8affe28613d465',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3CircleResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3CircleResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/ClearErrorRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ClearErrorRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ClearErrorRequest',
        'type' => 'rosdemo_v3/ClearErrorRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ClearErrorRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_10a58a18f55822228afad043c190b2108b736ac3bc846bad306f878e72970b45',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ClearErrorRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ClearErrorRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ClearErrorResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ClearErrorResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ClearErrorResponse',
        'type' => 'rosdemo_v3/ClearErrorResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ClearErrorResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bd4b09f1dd37b4e8bf7c26147e4e956e3b768a09a7fa062b9d0791326cfc443f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ClearErrorResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ClearErrorResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/ContinueScriptRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ContinueScriptRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ContinueScriptRequest',
        'type' => 'rosdemo_v3/ContinueScriptRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ContinueScriptRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4a9a03292712f96433cd8ffa390bb6a9b8d2c240ba3ccad086834e065618c0ae',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ContinueScriptRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ContinueScriptRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ContinueScriptResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ContinueScriptResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ContinueScriptResponse',
        'type' => 'rosdemo_v3/ContinueScriptResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ContinueScriptResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5bcedbffe96126d06ecfd342b8e09ed27d17ee4c696b6bf2cba9110eb22812a6',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ContinueScriptResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ContinueScriptResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/ContinuesRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ContinuesRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ContinuesRequest',
        'type' => 'rosdemo_v3/ContinuesRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ContinuesRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_69ffe640251ba368c4276f9b3051b68fa7fa21f6cc5fd79d77369b8ec76721ce',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ContinuesRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ContinuesRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ContinuesResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ContinuesResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ContinuesResponse',
        'type' => 'rosdemo_v3/ContinuesResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ContinuesResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f2136b7af34df7644815eacb207211915ab103e9ddfd701e2db74acef0886cdd',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ContinuesResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ContinuesResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DIRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DIRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DIRequest',
        'type' => 'rosdemo_v3/DIRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DIRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a056a7e904b0e24c7d94573364baa09f564d73f7abfe731624b6415012cf5211',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DIRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DIRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DIResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DIResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DIResponse',
        'type' => 'rosdemo_v3/DIResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DIResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8c764acc5c7170755a41db12875eeb4376b63419ba2165920fce6e930a413333',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DIResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DIResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DIGroupRequest fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DIGroupRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DIGroupRequest',
        'type' => 'rosdemo_v3/DIGroupRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DIGroupRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6cdd5c2c3f926c92b0e44917cc57ece31ba92fc680b4aad7a756180f92251e4d',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DIGroupRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DIGroupRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DIGroupResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DIGroupResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DIGroupResponse',
        'type' => 'rosdemo_v3/DIGroupResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DIGroupResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2e50223024312a513bbea9f92c05fc3238e277ebeaed639de866da419917f7b8',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DIGroupResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DIGroupResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/DORequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DORequest',
        'type' => 'rosdemo_v3/DORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e94e2138062ab0a7034e2dcdd7ef239a7d88939fad1fcd670019cb5eadbab929',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DOResponse',
        'type' => 'rosdemo_v3/DOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6e5bccf43f36bcefb4a4f4546dc85298f1dd23a383db5db7e5a0959efdb90d48',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DOResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/DOExecuteRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DOExecuteRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DOExecuteRequest',
        'type' => 'rosdemo_v3/DOExecuteRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DOExecuteRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce6129f7a0acf19faa0e6b3dc9e6ceb88a049cf6e1f8d8bce39287bca09282a5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DOExecuteRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DOExecuteRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DOExecuteResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DOExecuteResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DOExecuteResponse',
        'type' => 'rosdemo_v3/DOExecuteResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DOExecuteResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_048260cfdda06abf9129494dcdb273ce906a0e360d8d57de67c5288f6b04cfab',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DOExecuteResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DOExecuteResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DOGroupRequest fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DOGroupRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DOGroupRequest',
        'type' => 'rosdemo_v3/DOGroupRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DOGroupRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6d518336c4a90e6cd094cb4dd7c00a305a623f8bc7a5c7cd2a4361ac3434115e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DOGroupRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DOGroupRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DOGroupResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DOGroupResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DOGroupResponse',
        'type' => 'rosdemo_v3/DOGroupResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DOGroupResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_232face7e889eef783b5d78ac61468563dcccf638ac2afd4d76c59e1deca3a58',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DOGroupResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DOGroupResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/DigitalOutputsRequest fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DigitalOutputsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DigitalOutputsRequest',
        'type' => 'rosdemo_v3/DigitalOutputsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DigitalOutputsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d6f5d01c8735191a0917ca61a1f86fada2ff87fb7bafeeae61f360005ae22f4b',
        'minimum' => 5,
        'maximum' => 5,
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
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
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
            $this->status = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3DigitalOutputsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DigitalOutputsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DigitalOutputsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DigitalOutputsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DigitalOutputsResponse',
        'type' => 'rosdemo_v3/DigitalOutputsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DigitalOutputsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_77f11a8dcca8f519569757ae3959a3b4f5cd048eb8430a7982be2859d32024fa',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DigitalOutputsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DigitalOutputsResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/DisableRobotRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DisableRobotRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DisableRobotRequest',
        'type' => 'rosdemo_v3/DisableRobotRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DisableRobotRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cc359148b9f8b8e5191ffde7d3c67bd4cf7706e188fd7f90ee4e28ac19517f10',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DisableRobotRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DisableRobotRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/DisableRobotResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3DisableRobotResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3DisableRobotResponse',
        'type' => 'rosdemo_v3/DisableRobotResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/DisableRobotResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_180186300237bfc48937494a4ddc72e9b6519d37b16980f3f6cd94df10ec9fbd',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3DisableRobotResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3DisableRobotResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/EmergencyStopRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3EmergencyStopRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3EmergencyStopRequest',
        'type' => 'rosdemo_v3/EmergencyStopRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/EmergencyStopRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c76b900e2c1af4b53e667851a3cee4c61f8e01f17bef03518c1c5cc905d73042',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3EmergencyStopRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3EmergencyStopRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/EmergencyStopResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3EmergencyStopResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3EmergencyStopResponse',
        'type' => 'rosdemo_v3/EmergencyStopResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/EmergencyStopResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_68b18beb9782c54f72fc689498e6b814d379bb13f45ec4126a46a1cb4a0ca842',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3EmergencyStopResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3EmergencyStopResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/EnableRobotRequest fields.
 * @details 4..132 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3EnableRobotRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3EnableRobotRequest',
        'type' => 'rosdemo_v3/EnableRobotRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/EnableRobotRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ccbdde2b629cecdbab93a2d6fa374e7037079f8eace470b2390b76e373aca67d',
        'minimum' => 4,
        'maximum' => 132,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'args',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original args field; float64 sequence.
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3EnableRobotRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3EnableRobotRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/EnableRobotResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3EnableRobotResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3EnableRobotResponse',
        'type' => 'rosdemo_v3/EnableRobotResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/EnableRobotResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_06cc454eb7c17dbeec3e6b65613cffb6c8f01d1ea6553059419182b301ff1f1d',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3EnableRobotResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3EnableRobotResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/GetAngleRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetAngleRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetAngleRequest',
        'type' => 'rosdemo_v3/GetAngleRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetAngleRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c911203946a7243ce65eeb56ed7d0173201695e2f35e36f3dd8b34c90e629326',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetAngleRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetAngleRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetAngleResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetAngleResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetAngleResponse',
        'type' => 'rosdemo_v3/GetAngleResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetAngleResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e282207443c5e087238aef0db3f261fe7d634ec947798e96e579c150b7282850',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetAngleResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetAngleResponse', $bytes);
    }
}

/** @brief Own all 3 original rosdemo_v3/GetCoilsRequest fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetCoilsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetCoilsRequest',
        'type' => 'rosdemo_v3/GetCoilsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetCoilsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_49ec91ec3a1f3e35b80f5791cad20187acf42972167e3c0452f2d41c40b94b8b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetCoilsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetCoilsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetCoilsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetCoilsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetCoilsResponse',
        'type' => 'rosdemo_v3/GetCoilsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetCoilsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_93d27292ab877e94f7d917bb7b5aee79e2f43cd6e824a00bc671502f6e6d2a6f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetCoilsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetCoilsResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/GetErrorIDRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetErrorIDRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetErrorIDRequest',
        'type' => 'rosdemo_v3/GetErrorIDRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetErrorIDRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_48580c69404b4714464101180638a24138945f254bc5ca49d10204ed45ffc4b5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetErrorIDRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetErrorIDRequest', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/GetErrorIDResponse fields.
 * @details 8..72 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetErrorIDResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetErrorIDResponse',
        'type' => 'rosdemo_v3/GetErrorIDResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetErrorIDResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ffbc8bd3d575db372c48159424450fd4e40abe94c640d7c0f6cfe7aa207a9c58',
        'minimum' => 8,
        'maximum' => 72,
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
            ],
            [
                'name' => 'errorID',
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
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
    /** @brief Original errorID field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $errorID;
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
        if (array_key_exists('errorID', $values))
            $this->errorID = $values['errorID'];
        else
        {
            $this->errorID = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetErrorIDResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetErrorIDResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v3/GetHoldRegsRequest fields.
 * @details 16..4176 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetHoldRegsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetHoldRegsRequest',
        'type' => 'rosdemo_v3/GetHoldRegsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetHoldRegsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_442a8b8cc035aa85941b272888f6386166b8adffed06faa932d1adc3bd09071a',
        'minimum' => 16,
        'maximum' => 4176,
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
                'name' => 'valtype',
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
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original addr field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $addr;
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Original valtype field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $valtype;
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
        if (array_key_exists('valtype', $values))
            $this->valtype = $values['valtype'];
        else
        {
            $this->valtype = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetHoldRegsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetHoldRegsRequest', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/GetHoldRegsResponse fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetHoldRegsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetHoldRegsResponse',
        'type' => 'rosdemo_v3/GetHoldRegsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetHoldRegsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a7ae19ad05cb63a9e1abf60e1eeead85d20f0ed051f98d8592537a1b68091a68',
        'minimum' => 8,
        'maximum' => 8,
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
            ],
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
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
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
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetHoldRegsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetHoldRegsResponse', $bytes);
    }
}

/** @brief Own all 3 original rosdemo_v3/GetInBitsRequest fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetInBitsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetInBitsRequest',
        'type' => 'rosdemo_v3/GetInBitsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetInBitsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e584699a619da41a1adc99cb6330016810b0cedb7f6e7a53e4a90e7e29b92b90',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetInBitsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetInBitsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetInBitsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetInBitsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetInBitsResponse',
        'type' => 'rosdemo_v3/GetInBitsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetInBitsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6282410fe1c5c76f9ab5ee4937c1400e30731a3562011b79119786edb7856709',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetInBitsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetInBitsResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v3/GetInRegsRequest fields.
 * @details 16..4176 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetInRegsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetInRegsRequest',
        'type' => 'rosdemo_v3/GetInRegsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetInRegsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_478634f60e4acc3c40fd1baa41b09d5186b920e3f3a0f57e8d60e150789447eb',
        'minimum' => 16,
        'maximum' => 4176,
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
    /** @brief Original index field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $index;
    /** @brief Original addr field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $addr;
    /** @brief Original count field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $count;
    /** @brief Original valType field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
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
            $this->valType = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetInRegsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetInRegsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetInRegsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetInRegsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetInRegsResponse',
        'type' => 'rosdemo_v3/GetInRegsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetInRegsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_56a7fe78e00f7560809c68ca363e06bfdb8f2317f821f802e4879f4c65b754fc',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetInRegsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetInRegsResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetPathStartPoseRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetPathStartPoseRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetPathStartPoseRequest',
        'type' => 'rosdemo_v3/GetPathStartPoseRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetPathStartPoseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_331dcc72642af66b9050d0d931d0bce3f184506634030162bd734157e2b74f9d',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetPathStartPoseRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetPathStartPoseRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetPathStartPoseResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetPathStartPoseResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetPathStartPoseResponse',
        'type' => 'rosdemo_v3/GetPathStartPoseResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetPathStartPoseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ac09b3653ef09231f1255b7823e76160d638826cb54cd7a5036377d9e6cfa8e4',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetPathStartPoseResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetPathStartPoseResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/GetPoseRequest fields.
 * @details 8..136 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetPoseRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetPoseRequest',
        'type' => 'rosdemo_v3/GetPoseRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetPoseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_896c131a221c827fd65edacc327abd669c6a4e781e87f5320482d96af44daa43',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'user',
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
                'name' => 'tool',
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
    /** @brief Original user field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $user;
    /** @brief Original tool field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
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
            $this->user = [];
        }
        if (array_key_exists('tool', $values))
            $this->tool = $values['tool'];
        else
        {
            $this->tool = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetPoseRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetPoseRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetPoseResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetPoseResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetPoseResponse',
        'type' => 'rosdemo_v3/GetPoseResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetPoseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f9e71c9e4764010aafa79a277e6e92f59556fcd3d4732e9a8f6f0ae53f937cb5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetPoseResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetPoseResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/GetSixForceDataRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetSixForceDataRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetSixForceDataRequest',
        'type' => 'rosdemo_v3/GetSixForceDataRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetSixForceDataRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_39a2e96ac8e519373f779446a91ccbf8415446a018e3864f6c15d79ac58538c2',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetSixForceDataRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetSixForceDataRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetSixForceDataResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetSixForceDataResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetSixForceDataResponse',
        'type' => 'rosdemo_v3/GetSixForceDataResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetSixForceDataResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f3432a7cbc328bea276d4d18d55511e1ec8bd8bd6b3d63cae88e3be023f0ff84',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetSixForceDataResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetSixForceDataResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/GetTerminal485Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetTerminal485Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetTerminal485Request',
        'type' => 'rosdemo_v3/GetTerminal485Request',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetTerminal485Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_08e15ecbdc640b0898bab0105ac64e93138e91d5c535b3044522bb9cb43e717f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetTerminal485Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetTerminal485Request', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetTerminal485Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetTerminal485Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetTerminal485Response',
        'type' => 'rosdemo_v3/GetTerminal485Response',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetTerminal485Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8ed4380b139d4bd132cc1662e2f695360ef4ade63b49cf4a874b3f8429c7ca80',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetTerminal485Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetTerminal485Response', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetTraceStartPoseRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetTraceStartPoseRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetTraceStartPoseRequest',
        'type' => 'rosdemo_v3/GetTraceStartPoseRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetTraceStartPoseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e07c64f2ba6bfaf0f1dbd05f4e61636832a50f6af6ad571e8ce01e85ecc90568',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetTraceStartPoseRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetTraceStartPoseRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/GetTraceStartPoseResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3GetTraceStartPoseResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3GetTraceStartPoseResponse',
        'type' => 'rosdemo_v3/GetTraceStartPoseResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/GetTraceStartPoseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8176884452822c703744a5ce3d0b13fa77956b878779fbe017f6155397687dd7',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3GetTraceStartPoseResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3GetTraceStartPoseResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/HandleTrajPointsRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3HandleTrajPointsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3HandleTrajPointsRequest',
        'type' => 'rosdemo_v3/HandleTrajPointsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/HandleTrajPointsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_29884d4e93ab372204478ebd497fce85779515ad65369b36ee0af78d160ee664',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3HandleTrajPointsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3HandleTrajPointsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/HandleTrajPointsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3HandleTrajPointsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3HandleTrajPointsResponse',
        'type' => 'rosdemo_v3/HandleTrajPointsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/HandleTrajPointsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d47096773589fe6cffdfd7a780cf25163726622d4a793df7db8c9b4b9d0e95d5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3HandleTrajPointsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3HandleTrajPointsResponse', $bytes);
    }
}

/** @brief Own all 10 original rosdemo_v3/InverseSolutionRequest fields.
 * @details 64..320 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3InverseSolutionRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3InverseSolutionRequest',
        'type' => 'rosdemo_v3/InverseSolutionRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/InverseSolutionRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_decba94e28aa387148f50f0ab90558a54c35856ab0ae8daa24fac9f1e3595e49',
        'minimum' => 64,
        'maximum' => 320,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'offset1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset3',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset4',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset5',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset6',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
            ],
            [
                'name' => 'isJointNear',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'JointNear',
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
    /** @brief Original offset1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset1;
    /** @brief Original offset2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset2;
    /** @brief Original offset3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset3;
    /** @brief Original offset4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset4;
    /** @brief Original offset5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset5;
    /** @brief Original offset6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset6;
    /** @brief Original user field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $user;
    /** @brief Original tool field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tool;
    /** @brief Original isJointNear field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $isJointNear;
    /** @brief Original JointNear field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $JointNear;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('offset1', $values))
            $this->offset1 = $values['offset1'];
        else
        {
            $this->offset1 = 0.0;
        }
        if (array_key_exists('offset2', $values))
            $this->offset2 = $values['offset2'];
        else
        {
            $this->offset2 = 0.0;
        }
        if (array_key_exists('offset3', $values))
            $this->offset3 = $values['offset3'];
        else
        {
            $this->offset3 = 0.0;
        }
        if (array_key_exists('offset4', $values))
            $this->offset4 = $values['offset4'];
        else
        {
            $this->offset4 = 0.0;
        }
        if (array_key_exists('offset5', $values))
            $this->offset5 = $values['offset5'];
        else
        {
            $this->offset5 = 0.0;
        }
        if (array_key_exists('offset6', $values))
            $this->offset6 = $values['offset6'];
        else
        {
            $this->offset6 = 0.0;
        }
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
        if (array_key_exists('isJointNear', $values))
            $this->isJointNear = $values['isJointNear'];
        else
        {
            $this->isJointNear = 0;
        }
        if (array_key_exists('JointNear', $values))
            $this->JointNear = $values['JointNear'];
        else
        {
            $this->JointNear = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3InverseSolutionRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3InverseSolutionRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/InverseSolutionResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3InverseSolutionResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3InverseSolutionResponse',
        'type' => 'rosdemo_v3/InverseSolutionResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/InverseSolutionResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_19a3a772ac22dd37514907ca5329a3907fd13421193f8c8854a06a9466f7488b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3InverseSolutionResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3InverseSolutionResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v3/JointMovJRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3JointMovJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3JointMovJRequest',
        'type' => 'rosdemo_v3/JointMovJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/JointMovJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1b018efcb95b7685413731002be666531223150e2d13e33a2e4f43ce73dbb4bb',
        'minimum' => 52,
        'maximum' => 4212,
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3JointMovJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3JointMovJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/JointMovJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3JointMovJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3JointMovJResponse',
        'type' => 'rosdemo_v3/JointMovJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/JointMovJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5996d59a93c7f5a263481652ac32db771dac4174fdf8b54ac906b258b60d3f3b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3JointMovJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3JointMovJResponse', $bytes);
    }
}

/** @brief Own all 6 original rosdemo_v3/JumpRequest fields.
 * @details 48..48 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3JumpRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3JumpRequest',
        'type' => 'rosdemo_v3/JumpRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/JumpRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c2fb51d18a84a52328a8d07aa1e052176519b2c6f45c7f51b8dd784491012750',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'offset1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset3',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset4',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset5',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset6',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
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
    /** @brief Original offset1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset1;
    /** @brief Original offset2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset2;
    /** @brief Original offset3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset3;
    /** @brief Original offset4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset4;
    /** @brief Original offset5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset5;
    /** @brief Original offset6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset6;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('offset1', $values))
            $this->offset1 = $values['offset1'];
        else
        {
            $this->offset1 = 0.0;
        }
        if (array_key_exists('offset2', $values))
            $this->offset2 = $values['offset2'];
        else
        {
            $this->offset2 = 0.0;
        }
        if (array_key_exists('offset3', $values))
            $this->offset3 = $values['offset3'];
        else
        {
            $this->offset3 = 0.0;
        }
        if (array_key_exists('offset4', $values))
            $this->offset4 = $values['offset4'];
        else
        {
            $this->offset4 = 0.0;
        }
        if (array_key_exists('offset5', $values))
            $this->offset5 = $values['offset5'];
        else
        {
            $this->offset5 = 0.0;
        }
        if (array_key_exists('offset6', $values))
            $this->offset6 = $values['offset6'];
        else
        {
            $this->offset6 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3JumpRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3JumpRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/JumpResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3JumpResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3JumpResponse',
        'type' => 'rosdemo_v3/JumpResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/JumpResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_21893b7688b8a4ffbc9d1be6465cf78974412d31a9dea1f18b95af77099eef2c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3JumpResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3JumpResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/LimZRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3LimZRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3LimZRequest',
        'type' => 'rosdemo_v3/LimZRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/LimZRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_23003bbb2cbfa14be2b7231332055b219b90bb9633c5339a041164b46f8197a6',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3LimZRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3LimZRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/LimZResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3LimZResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3LimZResponse',
        'type' => 'rosdemo_v3/LimZResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/LimZResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e833074fbb70e137eda6c4ffac0556442f18fb957a4e25b720f8a106d83f56d5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3LimZResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3LimZResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/LoadSwitchRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3LoadSwitchRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3LoadSwitchRequest',
        'type' => 'rosdemo_v3/LoadSwitchRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/LoadSwitchRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_aa093213c23854df4b464bf3cc29e8d2d37275753a768636c72b3464d8edd865',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3LoadSwitchRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3LoadSwitchRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/LoadSwitchResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3LoadSwitchResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3LoadSwitchResponse',
        'type' => 'rosdemo_v3/LoadSwitchResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/LoadSwitchResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7094d6951089c63108119d3a9738f7f8d1c1eb693412ac3134bcbaf96857004c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3LoadSwitchResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3LoadSwitchResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ModbusCloseRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ModbusCloseRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ModbusCloseRequest',
        'type' => 'rosdemo_v3/ModbusCloseRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ModbusCloseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8e0745e9e3af32de6fc10dd2dd6d04d7e287ae9079b788b45a2b4a927f20c977',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ModbusCloseRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ModbusCloseRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ModbusCloseResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ModbusCloseResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ModbusCloseResponse',
        'type' => 'rosdemo_v3/ModbusCloseResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ModbusCloseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a583752c25f6aaa3fdd2e98c9f37b3fb72a824fd1488c11afc73bc579f608f57',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ModbusCloseResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ModbusCloseResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v3/ModbusCreateRequest fields.
 * @details 16..336 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ModbusCreateRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ModbusCreateRequest',
        'type' => 'rosdemo_v3/ModbusCreateRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ModbusCreateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2e9b4748374005ce9e03475e25ec415f8845f1c8857d91499d90abc34cff0726',
        'minimum' => 16,
        'maximum' => 336,
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
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original port field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original slave_id field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $slave_id;
    /** @brief Original is_rtu field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
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
            $this->is_rtu = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3ModbusCreateRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ModbusCreateRequest', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/ModbusCreateResponse fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ModbusCreateResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ModbusCreateResponse',
        'type' => 'rosdemo_v3/ModbusCreateResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ModbusCreateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d17e98dab4089b5ba7707be37bbce0d4885c34b303aa5e041cfb5e36de6a8f12',
        'minimum' => 8,
        'maximum' => 8,
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
            ],
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
    /** @brief Original res field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $res;
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
        if (array_key_exists('res', $values))
            $this->res = $values['res'];
        else
        {
            $this->res = 0;
        }
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ModbusCreateResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ModbusCreateResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v3/MovJRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovJRequest',
        'type' => 'rosdemo_v3/MovJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b8d2d2e55470b783eb429af073db3d6de195617244237e1b44c9a75d2705bf6f',
        'minimum' => 52,
        'maximum' => 4212,
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
    /** @brief Original x field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/MovJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovJResponse',
        'type' => 'rosdemo_v3/MovJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_333d13e27b2f53aff1d0596e26f89a8ac4f43a3e62906889eeb9bb502832ffd0',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovJResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/MovJExtRequest fields.
 * @details 12..4172 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovJExtRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovJExtRequest',
        'type' => 'rosdemo_v3/MovJExtRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovJExtRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b74b6d4fb73681f633bdd3c6e34ca4bb0fe6d0a663f0bcd89a1b8046170b2c7c',
        'minimum' => 12,
        'maximum' => 4172,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'offset',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original offset field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset;
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
        if (array_key_exists('offset', $values))
            $this->offset = $values['offset'];
        else
        {
            $this->offset = 0.0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovJExtRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovJExtRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/MovJExtResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovJExtResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovJExtResponse',
        'type' => 'rosdemo_v3/MovJExtResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovJExtResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f616e8948086e695cb50db53ff21ade119b9f174b6036c8d5c2d5c22ab3e0e2b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovJExtResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovJExtResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v3/MovJIORequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovJIORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovJIORequest',
        'type' => 'rosdemo_v3/MovJIORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovJIORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d082f8679ddc163eaa58c427147b523feabe6a3a6fe12c9b10af8a07766734e1',
        'minimum' => 52,
        'maximum' => 4212,
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovJIORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovJIORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/MovJIOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovJIOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovJIOResponse',
        'type' => 'rosdemo_v3/MovJIOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovJIOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2bbdaa014c5fbb6ea1b82771568b02b325589edec4057c0d275280a6333005df',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovJIOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovJIOResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v3/MovLRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovLRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovLRequest',
        'type' => 'rosdemo_v3/MovLRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovLRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cedf553a7f6bd05c4529a64115165290540a1cd651f434f084829414e7fc61c3',
        'minimum' => 52,
        'maximum' => 4212,
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
    /** @brief Original x field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovLRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovLRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/MovLResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovLResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovLResponse',
        'type' => 'rosdemo_v3/MovLResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovLResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b2dfdf236fc265d978a41bad53a30b11cef5b5093bfbd92b81944c6e4cfa2736',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovLResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovLResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v3/MovLIORequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovLIORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovLIORequest',
        'type' => 'rosdemo_v3/MovLIORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovLIORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_14331d07956217f647760051d2cb24613152741c8c31c0cc511458711fa8beb8',
        'minimum' => 52,
        'maximum' => 4212,
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovLIORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovLIORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/MovLIOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MovLIOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MovLIOResponse',
        'type' => 'rosdemo_v3/MovLIOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MovLIOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_488d5646de4855aef24a1627d9d5345d60c669336012f6ea92d989e782e0909f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MovLIOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MovLIOResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/MoveJogRequest fields.
 * @details 8..4424 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MoveJogRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MoveJogRequest',
        'type' => 'rosdemo_v3/MoveJogRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MoveJogRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d3f0802abbb5dda85a34cb66408d80859f3f4f71baa1ada8ad1d65ef1739d6d7',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MoveJogRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MoveJogRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/MoveJogResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3MoveJogResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3MoveJogResponse',
        'type' => 'rosdemo_v3/MoveJogResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/MoveJogResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c90dbe74867276b593807f1c6e1a653abe209e9c8847e2e46f8deb9fc98b4094',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3MoveJogResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3MoveJogResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/PauseScriptRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PauseScriptRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PauseScriptRequest',
        'type' => 'rosdemo_v3/PauseScriptRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/PauseScriptRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5fcd670ac91cb4a0524ff8d1a6c9f53388c0fc74d020915b45ccb26912c9d5e0',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3PauseScriptRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PauseScriptRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/PauseScriptResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PauseScriptResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PauseScriptResponse',
        'type' => 'rosdemo_v3/PauseScriptResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/PauseScriptResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_45c93ca5c04e256517d48ac97dd3cf12350c0c66db4f92e94bd248bc741a2766',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3PauseScriptResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PauseScriptResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/PayLoadRequest fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PayLoadRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PayLoadRequest',
        'type' => 'rosdemo_v3/PayLoadRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/PayLoadRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5e6b0b852425c735fcedc7335cc6b3cf75c9361840a3efa132b14476d943f85a',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'weight',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'inertia',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
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
    /** @brief Original weight field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $weight;
    /** @brief Original inertia field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $inertia;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('weight', $values))
            $this->weight = $values['weight'];
        else
        {
            $this->weight = 0.0;
        }
        if (array_key_exists('inertia', $values))
            $this->inertia = $values['inertia'];
        else
        {
            $this->inertia = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3PayLoadRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PayLoadRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/PayLoadResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PayLoadResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PayLoadResponse',
        'type' => 'rosdemo_v3/PayLoadResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/PayLoadResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cbeb06c1de730199ac6fd931401e3d476332efc5b9784f3eb3ed35b6115afdd4',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3PayLoadResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PayLoadResponse', $bytes);
    }
}

/** @brief Own all 8 original rosdemo_v3/PositiveSolutionRequest fields.
 * @details 56..56 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PositiveSolutionRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PositiveSolutionRequest',
        'type' => 'rosdemo_v3/PositiveSolutionRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/PositiveSolutionRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d0ae6b1e7839714afe87033f06c984aeb257fdc2884ca4f64711f67bced621b6',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'offset1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset3',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset4',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset5',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset6',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original offset1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset1;
    /** @brief Original offset2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset2;
    /** @brief Original offset3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset3;
    /** @brief Original offset4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset4;
    /** @brief Original offset5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset5;
    /** @brief Original offset6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset6;
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
        if (array_key_exists('offset1', $values))
            $this->offset1 = $values['offset1'];
        else
        {
            $this->offset1 = 0.0;
        }
        if (array_key_exists('offset2', $values))
            $this->offset2 = $values['offset2'];
        else
        {
            $this->offset2 = 0.0;
        }
        if (array_key_exists('offset3', $values))
            $this->offset3 = $values['offset3'];
        else
        {
            $this->offset3 = 0.0;
        }
        if (array_key_exists('offset4', $values))
            $this->offset4 = $values['offset4'];
        else
        {
            $this->offset4 = 0.0;
        }
        if (array_key_exists('offset5', $values))
            $this->offset5 = $values['offset5'];
        else
        {
            $this->offset5 = 0.0;
        }
        if (array_key_exists('offset6', $values))
            $this->offset6 = $values['offset6'];
        else
        {
            $this->offset6 = 0.0;
        }
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3PositiveSolutionRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PositiveSolutionRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/PositiveSolutionResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PositiveSolutionResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PositiveSolutionResponse',
        'type' => 'rosdemo_v3/PositiveSolutionResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/PositiveSolutionResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a6f7526303d8bf7dc30f89c055af0767cc64a4add7ab7327ca8d8f3f6f04c2ac',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3PositiveSolutionResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PositiveSolutionResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/PowerOnRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PowerOnRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PowerOnRequest',
        'type' => 'rosdemo_v3/PowerOnRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/PowerOnRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ed3377f0557381cfee7a8fd299b5eb43c53fa4757968d5f304a4bb0a7012fbf9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3PowerOnRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PowerOnRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/PowerOnResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PowerOnResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PowerOnResponse',
        'type' => 'rosdemo_v3/PowerOnResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/PowerOnResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0860e43dd3f61a65723cc3e0f238ac6049436afdd693134a0987af626ac4e90e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3PowerOnResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PowerOnResponse', $bytes);
    }
}

/** @brief Own all 7 original rosdemo_v3/RelJointMovJRequest fields.
 * @details 52..4212 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelJointMovJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelJointMovJRequest',
        'type' => 'rosdemo_v3/RelJointMovJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelJointMovJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a465c4da9859f55052b46a6137186f699378b8781b4102deb8cfbbc8fe5b8e7e',
        'minimum' => 52,
        'maximum' => 4212,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'offset1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset3',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset4',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset5',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset6',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
    /** @brief Original offset1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset1;
    /** @brief Original offset2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset2;
    /** @brief Original offset3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset3;
    /** @brief Original offset4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset4;
    /** @brief Original offset5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset5;
    /** @brief Original offset6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset6;
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
        if (array_key_exists('offset1', $values))
            $this->offset1 = $values['offset1'];
        else
        {
            $this->offset1 = 0.0;
        }
        if (array_key_exists('offset2', $values))
            $this->offset2 = $values['offset2'];
        else
        {
            $this->offset2 = 0.0;
        }
        if (array_key_exists('offset3', $values))
            $this->offset3 = $values['offset3'];
        else
        {
            $this->offset3 = 0.0;
        }
        if (array_key_exists('offset4', $values))
            $this->offset4 = $values['offset4'];
        else
        {
            $this->offset4 = 0.0;
        }
        if (array_key_exists('offset5', $values))
            $this->offset5 = $values['offset5'];
        else
        {
            $this->offset5 = 0.0;
        }
        if (array_key_exists('offset6', $values))
            $this->offset6 = $values['offset6'];
        else
        {
            $this->offset6 = 0.0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelJointMovJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelJointMovJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/RelJointMovJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelJointMovJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelJointMovJResponse',
        'type' => 'rosdemo_v3/RelJointMovJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelJointMovJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1c1daf15c200adb8a186d3ee568e2f79cb1336e9ce593f7147768904a7377770',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelJointMovJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelJointMovJResponse', $bytes);
    }
}

/** @brief Own all 6 original rosdemo_v3/RelMovJRequest fields.
 * @details 48..48 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovJRequest',
        'type' => 'rosdemo_v3/RelMovJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f940a25fce9ac5574bca35728f1467e1671d218e3ff444bb18f94c8236d0dbbe',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'offset1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset3',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset4',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset5',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset6',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
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
    /** @brief Original offset1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset1;
    /** @brief Original offset2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset2;
    /** @brief Original offset3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset3;
    /** @brief Original offset4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset4;
    /** @brief Original offset5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset5;
    /** @brief Original offset6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset6;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('offset1', $values))
            $this->offset1 = $values['offset1'];
        else
        {
            $this->offset1 = 0.0;
        }
        if (array_key_exists('offset2', $values))
            $this->offset2 = $values['offset2'];
        else
        {
            $this->offset2 = 0.0;
        }
        if (array_key_exists('offset3', $values))
            $this->offset3 = $values['offset3'];
        else
        {
            $this->offset3 = 0.0;
        }
        if (array_key_exists('offset4', $values))
            $this->offset4 = $values['offset4'];
        else
        {
            $this->offset4 = 0.0;
        }
        if (array_key_exists('offset5', $values))
            $this->offset5 = $values['offset5'];
        else
        {
            $this->offset5 = 0.0;
        }
        if (array_key_exists('offset6', $values))
            $this->offset6 = $values['offset6'];
        else
        {
            $this->offset6 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/RelMovJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovJResponse',
        'type' => 'rosdemo_v3/RelMovJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3bfae65655a52453c353e99c8a4c6f9fdae043f8d1a59550f5165a5add978150',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovJResponse', $bytes);
    }
}

/** @brief Own all 8 original rosdemo_v3/RelMovJToolRequest fields.
 * @details 56..4216 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovJToolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovJToolRequest',
        'type' => 'rosdemo_v3/RelMovJToolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovJToolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dc136e7feb88329e8a2d329a049990d4740bd4ebd97b08c0296f40280615065e',
        'minimum' => 56,
        'maximum' => 4216,
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
    /** @brief Original tool field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tool;
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
        if (array_key_exists('tool', $values))
            $this->tool = $values['tool'];
        else
        {
            $this->tool = 0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovJToolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovJToolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/RelMovJToolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovJToolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovJToolResponse',
        'type' => 'rosdemo_v3/RelMovJToolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovJToolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dcaaf76c3faeb793a2c1d66b337fdd5da6ee7d246cb8b2b7b58b5d4515f2ba17',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovJToolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovJToolResponse', $bytes);
    }
}

/** @brief Own all 8 original rosdemo_v3/RelMovJUserRequest fields.
 * @details 56..4216 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovJUserRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovJUserRequest',
        'type' => 'rosdemo_v3/RelMovJUserRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovJUserRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_275bd83ace00c2af373c40cd2a741fe42b1d39a0e32d440835fe2e8b4cbb0f44',
        'minimum' => 56,
        'maximum' => 4216,
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
    /** @brief Original user field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $user;
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
        if (array_key_exists('user', $values))
            $this->user = $values['user'];
        else
        {
            $this->user = 0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovJUserRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovJUserRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/RelMovJUserResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovJUserResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovJUserResponse',
        'type' => 'rosdemo_v3/RelMovJUserResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovJUserResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_81472eba2978e502b1f44e90e47766f72019dab8c5fff6f5a9305c4de4614e80',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovJUserResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovJUserResponse', $bytes);
    }
}

/** @brief Own all 3 original rosdemo_v3/RelMovLRequest fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovLRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovLRequest',
        'type' => 'rosdemo_v3/RelMovLRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovLRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fa377e81bf3af0b548ab2ff132eaab7d39318fe2e9e536355074e020130c149f',
        'minimum' => 24,
        'maximum' => 24,
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovLRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovLRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/RelMovLResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovLResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovLResponse',
        'type' => 'rosdemo_v3/RelMovLResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovLResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d4badf88de28860873f1fa3955d24ba637717c4f36036b92f2e67ba3f11a57b5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovLResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovLResponse', $bytes);
    }
}

/** @brief Own all 8 original rosdemo_v3/RelMovLToolRequest fields.
 * @details 56..4216 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovLToolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovLToolRequest',
        'type' => 'rosdemo_v3/RelMovLToolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovLToolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c68f019a7009ae26e9df05565c851eea8aa84c4382af372bac8a20083e99f37d',
        'minimum' => 56,
        'maximum' => 4216,
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
    /** @brief Original tool field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tool;
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
        if (array_key_exists('tool', $values))
            $this->tool = $values['tool'];
        else
        {
            $this->tool = 0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovLToolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovLToolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/RelMovLToolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovLToolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovLToolResponse',
        'type' => 'rosdemo_v3/RelMovLToolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovLToolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cd234d9d5d6e898fc8cb907aff0420c8bd7dc9f0ff176df249f25c54dd9211b5',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovLToolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovLToolResponse', $bytes);
    }
}

/** @brief Own all 8 original rosdemo_v3/RelMovLUserRequest fields.
 * @details 56..4216 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovLUserRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovLUserRequest',
        'type' => 'rosdemo_v3/RelMovLUserRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovLUserRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_866bfdaeee41bde4a92a0d3331ad11d541b955a1d6efc6f4a770d28d006a5a0d',
        'minimum' => 56,
        'maximum' => 4216,
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
    /** @brief Original user field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $user;
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
        if (array_key_exists('user', $values))
            $this->user = $values['user'];
        else
        {
            $this->user = 0;
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovLUserRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovLUserRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/RelMovLUserResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RelMovLUserResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RelMovLUserResponse',
        'type' => 'rosdemo_v3/RelMovLUserResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RelMovLUserResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_53d0a319b09b0965fe87bf4a1f3d92af6190cb855fb07461fbe9ee816590ab39',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RelMovLUserResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RelMovLUserResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/ResetRobotRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ResetRobotRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ResetRobotRequest',
        'type' => 'rosdemo_v3/ResetRobotRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ResetRobotRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fce0ae6f0abe6282250a175a484b119af4b67e21488365e4fc3dd0466c77baf6',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ResetRobotRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ResetRobotRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ResetRobotResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ResetRobotResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ResetRobotResponse',
        'type' => 'rosdemo_v3/ResetRobotResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ResetRobotResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ef692ba1ec5c8fbf0bd55b912d1451d3b0405326dc7610f406a609c92ddbb983',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ResetRobotResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ResetRobotResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/RobotModeRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RobotModeRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RobotModeRequest',
        'type' => 'rosdemo_v3/RobotModeRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RobotModeRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b7f5ab0c1430e11c2159757d7e63947be0562364cdf77b815494a3668cd0bd39',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RobotModeRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RobotModeRequest', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/RobotModeResponse fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RobotModeResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RobotModeResponse',
        'type' => 'rosdemo_v3/RobotModeResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RobotModeResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4e7646026c2b8e6d9fd8c8e7ed30d7c97324b08be17123343773b6aaa5fdf6df',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RobotModeResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RobotModeResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/RunScriptRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RunScriptRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RunScriptRequest',
        'type' => 'rosdemo_v3/RunScriptRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RunScriptRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4c09ebd3354368a8a51fa269c263cd5d236ef99fe667ab2d54da2ff1ecd51df2',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RunScriptRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RunScriptRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/RunScriptResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3RunScriptResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3RunScriptResponse',
        'type' => 'rosdemo_v3/RunScriptResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/RunScriptResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_032bff023c12c89777f1680aba9bf322fa8a2eb931647ad43c520f74b2f5ba76',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3RunScriptResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3RunScriptResponse', $bytes);
    }
}

/** @brief Own all 9 original rosdemo_v3/ServoJRequest fields.
 * @details 60..444 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ServoJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ServoJRequest',
        'type' => 'rosdemo_v3/ServoJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ServoJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fe11b680dccbfe85d53005f73357b91ada5e7c097e435f86bd09a1e07155b32e',
        'minimum' => 60,
        'maximum' => 444,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'offset1',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset2',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset3',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset4',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset5',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'offset6',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 't',
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
                'name' => 'lookahead_time',
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
                'name' => 'gain',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original offset1 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset1;
    /** @brief Original offset2 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset2;
    /** @brief Original offset3 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset3;
    /** @brief Original offset4 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset4;
    /** @brief Original offset5 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset5;
    /** @brief Original offset6 field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset6;
    /** @brief Original t field; float64 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $t;
    /** @brief Original lookahead_time field; float64 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $lookahead_time;
    /** @brief Original gain field; float64 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $gain;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('offset1', $values))
            $this->offset1 = $values['offset1'];
        else
        {
            $this->offset1 = 0.0;
        }
        if (array_key_exists('offset2', $values))
            $this->offset2 = $values['offset2'];
        else
        {
            $this->offset2 = 0.0;
        }
        if (array_key_exists('offset3', $values))
            $this->offset3 = $values['offset3'];
        else
        {
            $this->offset3 = 0.0;
        }
        if (array_key_exists('offset4', $values))
            $this->offset4 = $values['offset4'];
        else
        {
            $this->offset4 = 0.0;
        }
        if (array_key_exists('offset5', $values))
            $this->offset5 = $values['offset5'];
        else
        {
            $this->offset5 = 0.0;
        }
        if (array_key_exists('offset6', $values))
            $this->offset6 = $values['offset6'];
        else
        {
            $this->offset6 = 0.0;
        }
        if (array_key_exists('t', $values))
            $this->t = $values['t'];
        else
        {
            $this->t = [];
        }
        if (array_key_exists('lookahead_time', $values))
            $this->lookahead_time = $values['lookahead_time'];
        else
        {
            $this->lookahead_time = [];
        }
        if (array_key_exists('gain', $values))
            $this->gain = $values['gain'];
        else
        {
            $this->gain = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3ServoJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ServoJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ServoJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ServoJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ServoJResponse',
        'type' => 'rosdemo_v3/ServoJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ServoJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c969ba286c7a721a554f2892ecb1f9124b9d7499f112c5df498709e1baa3f924',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ServoJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ServoJResponse', $bytes);
    }
}

/** @brief Own all 6 original rosdemo_v3/ServoPRequest fields.
 * @details 48..48 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ServoPRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ServoPRequest',
        'type' => 'rosdemo_v3/ServoPRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ServoPRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cc4dc31ad6f496881f462eff953d3be36aff07de0964fda97ea008c022af30ae',
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
    /** @brief Original a field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $a;
    /** @brief Original b field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $b;
    /** @brief Original c field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $c;
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3ServoPRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ServoPRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ServoPResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ServoPResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ServoPResponse',
        'type' => 'rosdemo_v3/ServoPResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ServoPResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eafc00c243fcf6de83823d72d726b0713152d8832681bdb7ff5f1f87d2b3cbd7',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ServoPResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ServoPResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v3/SetArmOrientationRequest fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetArmOrientationRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetArmOrientationRequest',
        'type' => 'rosdemo_v3/SetArmOrientationRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetArmOrientationRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fb8ff0fff5a3493469b950b7d5a85d583cd1097f8e5032b7ecb06a0b4526c128',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'LorR',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'UorD',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'ForN',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'Config6',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original LorR field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $LorR;
    /** @brief Original UorD field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $UorD;
    /** @brief Original ForN field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ForN;
    /** @brief Original Config6 field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Config6;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('LorR', $values))
            $this->LorR = $values['LorR'];
        else
        {
            $this->LorR = 0;
        }
        if (array_key_exists('UorD', $values))
            $this->UorD = $values['UorD'];
        else
        {
            $this->UorD = 0;
        }
        if (array_key_exists('ForN', $values))
            $this->ForN = $values['ForN'];
        else
        {
            $this->ForN = 0;
        }
        if (array_key_exists('Config6', $values))
            $this->Config6 = $values['Config6'];
        else
        {
            $this->Config6 = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetArmOrientationRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetArmOrientationRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetArmOrientationResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetArmOrientationResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetArmOrientationResponse',
        'type' => 'rosdemo_v3/SetArmOrientationResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetArmOrientationResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1533dbaec769feda21a1f2995c57e6633ba36392290b245321d1eba345104c0a',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetArmOrientationResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetArmOrientationResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v3/SetCoilsRequest fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetCoilsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetCoilsRequest',
        'type' => 'rosdemo_v3/SetCoilsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetCoilsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_15853054579c8b2a28634d6ef82bec746f0ec64de52eb61abd9f31a08b46f374',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetCoilsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetCoilsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetCoilsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetCoilsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetCoilsResponse',
        'type' => 'rosdemo_v3/SetCoilsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetCoilsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6a6fe5110c5873f87d5d74fb28b931154070627da48ef745c9ac33e0df1d8703',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetCoilsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetCoilsResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetCollideDragRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetCollideDragRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetCollideDragRequest',
        'type' => 'rosdemo_v3/SetCollideDragRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetCollideDragRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e5ae701dc2a0b22d6fcc4c332cbb4b2305a81db865b79340d23ddaac61abbff7',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetCollideDragRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetCollideDragRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetCollideDragResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetCollideDragResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetCollideDragResponse',
        'type' => 'rosdemo_v3/SetCollideDragResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetCollideDragResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bf19795adc3e41241e60562dead6032e8e8167032070424e4f9169194bfb8fb6',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetCollideDragResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetCollideDragResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetCollisionLevelRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetCollisionLevelRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetCollisionLevelRequest',
        'type' => 'rosdemo_v3/SetCollisionLevelRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetCollisionLevelRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7226e3995d906b08ddf99ea8f9d4693c0b2c580a723b83ec5a097579b2bf5e80',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetCollisionLevelRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetCollisionLevelRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetCollisionLevelResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetCollisionLevelResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetCollisionLevelResponse',
        'type' => 'rosdemo_v3/SetCollisionLevelResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetCollisionLevelResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8e96ec3b9cd603cea701b91bbf3d42f016783daf4f7425fbb3093ce36fbbd347',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetCollisionLevelResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetCollisionLevelResponse', $bytes);
    }
}

/** @brief Own all 5 original rosdemo_v3/SetHoldRegsRequest fields.
 * @details 20..4436 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetHoldRegsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetHoldRegsRequest',
        'type' => 'rosdemo_v3/SetHoldRegsRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetHoldRegsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b3105cf18db264d41f40e7810a65439da54eb899e2feee1eceebbb83b995cc04',
        'minimum' => 20,
        'maximum' => 4436,
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
                'name' => 'valtype',
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
    /** @brief Original valtype field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $valtype;
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
        if (array_key_exists('valtype', $values))
            $this->valtype = $values['valtype'];
        else
        {
            $this->valtype = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetHoldRegsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetHoldRegsRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetHoldRegsResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetHoldRegsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetHoldRegsResponse',
        'type' => 'rosdemo_v3/SetHoldRegsResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetHoldRegsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5388c7956e9a01c7dff7d8d8a500ea9455477da73b24c01dbe89faedad921652',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetHoldRegsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetHoldRegsResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetObstacleAvoidRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetObstacleAvoidRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetObstacleAvoidRequest',
        'type' => 'rosdemo_v3/SetObstacleAvoidRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetObstacleAvoidRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_58e82fcba3a381f180f783a086b9c49d3db8620c6d78fbc3a58cc63dd2647df9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetObstacleAvoidRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetObstacleAvoidRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetObstacleAvoidResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetObstacleAvoidResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetObstacleAvoidResponse',
        'type' => 'rosdemo_v3/SetObstacleAvoidResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetObstacleAvoidResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ea1fd0275a79f2a4b057f021560e6f3a507e1fe6dbc2f0d63a419ab4c8e2f206',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetObstacleAvoidResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetObstacleAvoidResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetPayloadRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetPayloadRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetPayloadRequest',
        'type' => 'rosdemo_v3/SetPayloadRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetPayloadRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5945ea62369d23d567a7045cfbfa0a3f12f59d8de64e674d407c0769a81bb90d',
        'minimum' => 8,
        'maximum' => 8,
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original load field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $load;
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetPayloadRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetPayloadRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetPayloadResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetPayloadResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetPayloadResponse',
        'type' => 'rosdemo_v3/SetPayloadResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetPayloadResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c665f5bfac577202780caa2f5b674d7e9fdeacacb2c9e752a08465c43a72b5ec',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetPayloadResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetPayloadResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetSafeSkinRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetSafeSkinRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetSafeSkinRequest',
        'type' => 'rosdemo_v3/SetSafeSkinRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetSafeSkinRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c5b2b68b66c0bfaa63714d319ecb69ee3593def3189c807f3d9936c17a08c458',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetSafeSkinRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetSafeSkinRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetSafeSkinResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetSafeSkinResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetSafeSkinResponse',
        'type' => 'rosdemo_v3/SetSafeSkinResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetSafeSkinResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_729b417c58f25d814a25992ffc2a352ca29b92047ce17a6a4cf189f043c46e7a',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetSafeSkinResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetSafeSkinResponse', $bytes);
    }
}

/** @brief Own all 4 original rosdemo_v3/SetTerminal485Request fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetTerminal485Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetTerminal485Request',
        'type' => 'rosdemo_v3/SetTerminal485Request',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetTerminal485Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_03bf89ffb1f9cd37df930234dafc1d8e7506b81bd00de1da9178e366dee3b040',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'baudRate',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'dataLen',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'parityBit',
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
                'name' => 'stopBit',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original baudRate field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $baudRate;
    /** @brief Original dataLen field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dataLen;
    /** @brief Original parityBit field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $parityBit;
    /** @brief Original stopBit field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $stopBit;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('baudRate', $values))
            $this->baudRate = $values['baudRate'];
        else
        {
            $this->baudRate = 0;
        }
        if (array_key_exists('dataLen', $values))
            $this->dataLen = $values['dataLen'];
        else
        {
            $this->dataLen = 0;
        }
        if (array_key_exists('parityBit', $values))
            $this->parityBit = $values['parityBit'];
        else
        {
            $this->parityBit = '';
        }
        if (array_key_exists('stopBit', $values))
            $this->stopBit = $values['stopBit'];
        else
        {
            $this->stopBit = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetTerminal485Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetTerminal485Request', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetTerminal485Response fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetTerminal485Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetTerminal485Response',
        'type' => 'rosdemo_v3/SetTerminal485Response',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetTerminal485Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_79a17f908406ad319523cf118c71b4e8b1835d32f650d4987bd75b7420f19958',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetTerminal485Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetTerminal485Response', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetTerminalKeysRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetTerminalKeysRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetTerminalKeysRequest',
        'type' => 'rosdemo_v3/SetTerminalKeysRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetTerminalKeysRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_23ef708280f922fcd28bc3e511bbc136d1ff67fbfbe735c1aa7b35507259b87e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetTerminalKeysRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetTerminalKeysRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SetTerminalKeysResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SetTerminalKeysResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SetTerminalKeysResponse',
        'type' => 'rosdemo_v3/SetTerminalKeysResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SetTerminalKeysResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a7e50d5d3268bf6d3136f64ecbbbbc2d48a697c6e177641b682b66baf26a2c6e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SetTerminalKeysResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SetTerminalKeysResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SpeedFactorRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SpeedFactorRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SpeedFactorRequest',
        'type' => 'rosdemo_v3/SpeedFactorRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SpeedFactorRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_27eace5a4955aa126cd355813f6f99c059d132460b68c6da24e6d4de994ce989',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SpeedFactorRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SpeedFactorRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SpeedFactorResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SpeedFactorResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SpeedFactorResponse',
        'type' => 'rosdemo_v3/SpeedFactorResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SpeedFactorResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0293d4c59bb3b19f907394b27a9b2b761a295a36a0b74ede3962061ac57817f3',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SpeedFactorResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SpeedFactorResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SpeedJRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SpeedJRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SpeedJRequest',
        'type' => 'rosdemo_v3/SpeedJRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SpeedJRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b61df947b4762894c7e37b7c3fb0e31f3fb97da9947883ffa0d3762e3bb49566',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SpeedJRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SpeedJRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SpeedJResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SpeedJResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SpeedJResponse',
        'type' => 'rosdemo_v3/SpeedJResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SpeedJResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_79d8b89b3e2b4d4b665595fac6007ab4d19a1317417868b5d09ad2e08cc016e2',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SpeedJResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SpeedJResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SpeedLRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SpeedLRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SpeedLRequest',
        'type' => 'rosdemo_v3/SpeedLRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SpeedLRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8bd0d035775bb612455d4a38f439c2c6169e02d9ad27351cea15ae3ae6630f7b',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SpeedLRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SpeedLRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SpeedLResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SpeedLResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SpeedLResponse',
        'type' => 'rosdemo_v3/SpeedLResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SpeedLResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e4f7fcaea26d662b7c780e5ab026c42da86d3530d95148cd99a0f9a2ef08771c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SpeedLResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SpeedLResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/StartDragRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StartDragRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StartDragRequest',
        'type' => 'rosdemo_v3/StartDragRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StartDragRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3f183ba57a0470c73eb18b2e333984f0d8dee22818a29fa33c69637f06716893',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StartDragRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StartDragRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/StartDragResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StartDragResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StartDragResponse',
        'type' => 'rosdemo_v3/StartDragResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StartDragResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4d23bf7baccfc02083e579bbeb144de5d1ad21a141fc7742fd95392f099d6d14',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StartDragResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StartDragResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/StartFCTraceRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StartFCTraceRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StartFCTraceRequest',
        'type' => 'rosdemo_v3/StartFCTraceRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StartFCTraceRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_92a1b2ab02c07a31d4b33f68a29ca2777d7ec65d9a5fadf5510654d065277c50',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StartFCTraceRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StartFCTraceRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/StartFCTraceResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StartFCTraceResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StartFCTraceResponse',
        'type' => 'rosdemo_v3/StartFCTraceResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StartFCTraceResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cb79d45087294083f17158d16ac9a65583ddb7d810e7bf2ec34a2e5527a8b941',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StartFCTraceResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StartFCTraceResponse', $bytes);
    }
}

/** @brief Own all 3 original rosdemo_v3/StartPathRequest fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StartPathRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StartPathRequest',
        'type' => 'rosdemo_v3/StartPathRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StartPathRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a5da2451fa2092225ba5eba2c1ff512f18ce310d4c8ac5a97f5a89d36c2da8ec',
        'minimum' => 12,
        'maximum' => 268,
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
                'name' => 'const_val',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'cart',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
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
    /** @brief Original const_val field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $const_val;
    /** @brief Original cart field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $cart;
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
        if (array_key_exists('const_val', $values))
            $this->const_val = $values['const_val'];
        else
        {
            $this->const_val = 0;
        }
        if (array_key_exists('cart', $values))
            $this->cart = $values['cart'];
        else
        {
            $this->cart = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3StartPathRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StartPathRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/StartPathResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StartPathResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StartPathResponse',
        'type' => 'rosdemo_v3/StartPathResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StartPathResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_78460c5e24ed0e5666b463a79ebc31246ce2c116cf88c54019ac60bc5f95b4b9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StartPathResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StartPathResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/StartTraceRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StartTraceRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StartTraceRequest',
        'type' => 'rosdemo_v3/StartTraceRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StartTraceRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_81be6f644de5a9566d43ec3d31f7684e9128a95a93dc7dce2a06e740b6845102',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StartTraceRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StartTraceRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/StartTraceResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StartTraceResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StartTraceResponse',
        'type' => 'rosdemo_v3/StartTraceResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StartTraceResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bea1ee17889d0bb19ca137f2cde296a4be092af12357877698bdd936ade33097',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StartTraceResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StartTraceResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/StopDragRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StopDragRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StopDragRequest',
        'type' => 'rosdemo_v3/StopDragRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StopDragRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c3d69f0a11792173d11812d4e44f789f098005e7685ec460e6a841e219a8730d',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StopDragRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StopDragRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/StopDragResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StopDragResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StopDragResponse',
        'type' => 'rosdemo_v3/StopDragResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StopDragResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7361eaaf076a2616fc3b2dc7e1e9cefc7f0c3c5a5307cc4e191b008048e30932',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StopDragResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StopDragResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/StopScriptRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StopScriptRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StopScriptRequest',
        'type' => 'rosdemo_v3/StopScriptRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StopScriptRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bc02e00e36fd3835572d2afb763887e832032c874b6585eec0df9a4b1148c0b9',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StopScriptRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StopScriptRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/StopScriptResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StopScriptResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StopScriptResponse',
        'type' => 'rosdemo_v3/StopScriptResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StopScriptResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_533dfab0a4ad0cfb2d6b2612e68e8e1ccda08f2a393f7407880cbbedf1f5ca0a',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StopScriptResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StopScriptResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/StopmoveJogRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StopmoveJogRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StopmoveJogRequest',
        'type' => 'rosdemo_v3/StopmoveJogRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StopmoveJogRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a37f2a4e4dce6d365ee4f7f1ee67dbd4b882519e9d20ffad22120c7d551d375c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StopmoveJogRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StopmoveJogRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/StopmoveJogResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3StopmoveJogResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3StopmoveJogResponse',
        'type' => 'rosdemo_v3/StopmoveJogResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/StopmoveJogResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_78c6636434ca7719187f75b6d0fff281deaa3f2de5719b37d1593487d500063a',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3StopmoveJogResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3StopmoveJogResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/SyncRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SyncRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SyncRequest',
        'type' => 'rosdemo_v3/SyncRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SyncRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1648adc20cf279d423a2d1d1c7aacf35c18097c5a0b258228e6540b8bcfe4a53',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SyncRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SyncRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SyncResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SyncResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SyncResponse',
        'type' => 'rosdemo_v3/SyncResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SyncResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_82cd8666f9adf6f9b701497d9a3f7d93a041061d04505c103f209c7434fd929e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SyncResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SyncResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/SyncAllRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SyncAllRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SyncAllRequest',
        'type' => 'rosdemo_v3/SyncAllRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SyncAllRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4e6c510a2496eadd59783159fee09add28ae0542bbd4a1b63163aba97cd7de6f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SyncAllRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SyncAllRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/SyncAllResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3SyncAllResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3SyncAllResponse',
        'type' => 'rosdemo_v3/SyncAllResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/SyncAllResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c5810875e2b156152e57707f98a670b88fa4d1c3feac99d0f4f165f139084a48',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3SyncAllResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3SyncAllResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/TCPSpeedRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3TCPSpeedRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3TCPSpeedRequest',
        'type' => 'rosdemo_v3/TCPSpeedRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/TCPSpeedRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ec0c0a283dcb234f8f8d30a5b8442bcc85fdcefac6e8193372a8c05fd0292178',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'vt',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original vt field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $vt;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('vt', $values))
            $this->vt = $values['vt'];
        else
        {
            $this->vt = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rosdemo_v3TCPSpeedRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3TCPSpeedRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/TCPSpeedResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3TCPSpeedResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3TCPSpeedResponse',
        'type' => 'rosdemo_v3/TCPSpeedResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/TCPSpeedResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3527911df41aee85117021d0eeefad35efa4d813401975ae09c0ca4e0abc95b8',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3TCPSpeedResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3TCPSpeedResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/TCPSpeedEndRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3TCPSpeedEndRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3TCPSpeedEndRequest',
        'type' => 'rosdemo_v3/TCPSpeedEndRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/TCPSpeedEndRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_04af23558c725c993e785590ffc34676aa7a37c6b74d7f650749436fbfa4898c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3TCPSpeedEndRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3TCPSpeedEndRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/TCPSpeedEndResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3TCPSpeedEndResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3TCPSpeedEndResponse',
        'type' => 'rosdemo_v3/TCPSpeedEndResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/TCPSpeedEndResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_44d6723fc85750a34de4780298ee1853e2a44761aa11432fdeb9c0282dc68d26',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3TCPSpeedEndResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3TCPSpeedEndResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ToolRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolRequest',
        'type' => 'rosdemo_v3/ToolRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a0f881c47df89cadf7f6bf9ea389e27a7dbc0f77706c31624c358a3d441897ae',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ToolResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolResponse',
        'type' => 'rosdemo_v3/ToolResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3deaf8f72c671ad7a240ec42434b3f0636aec78d065ecce8b5ebdc5ebf4afe48',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ToolAIRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolAIRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolAIRequest',
        'type' => 'rosdemo_v3/ToolAIRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolAIRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1dca438edde8f793175366f3e1f65e25edaec63b1a6039f76ff28071ef05260e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolAIRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolAIRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ToolAIResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolAIResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolAIResponse',
        'type' => 'rosdemo_v3/ToolAIResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolAIResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b9b1d3c257a11bc6fedcd10126a406db344dcae6a3515402b23635b47e44a30c',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolAIResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolAIResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ToolDIRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolDIRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolDIRequest',
        'type' => 'rosdemo_v3/ToolDIRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolDIRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5f37fc3221ae0d5fe0434838e806bb17bc8c328efde222bc6d6fb0f8ffc4accb',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolDIRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolDIRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ToolDIResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolDIResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolDIResponse',
        'type' => 'rosdemo_v3/ToolDIResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolDIResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ec2baddf4aed850d538d2f9ca9fbe9a7a6636919e7f23ac5ef7f270acc4336fa',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolDIResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolDIResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/ToolDORequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolDORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolDORequest',
        'type' => 'rosdemo_v3/ToolDORequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolDORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7bebf547b4cecce30f37d3b8594de9d5955cacf74509a21e4fc5902925e1de5e',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolDORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolDORequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ToolDOResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolDOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolDOResponse',
        'type' => 'rosdemo_v3/ToolDOResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolDOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4c803e6af978915a6bb34ce68d5ee822fba221ffa1fee5de7301da91b45a2e8f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolDOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolDOResponse', $bytes);
    }
}

/** @brief Own all 2 original rosdemo_v3/ToolDOExecuteRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolDOExecuteRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolDOExecuteRequest',
        'type' => 'rosdemo_v3/ToolDOExecuteRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolDOExecuteRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5014af5cd86d2d24210895f0fd18df1caa0f9f4b11dc06c3dcc4e0b0a88abe3f',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolDOExecuteRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolDOExecuteRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/ToolDOExecuteResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3ToolDOExecuteResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3ToolDOExecuteResponse',
        'type' => 'rosdemo_v3/ToolDOExecuteResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/ToolDOExecuteResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bc295dbf3890fc96fedcc4b04df9e3e0f90a9efa18a024345fd19d2de62123ee',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3ToolDOExecuteResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3ToolDOExecuteResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/UserRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3UserRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3UserRequest',
        'type' => 'rosdemo_v3/UserRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/UserRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2895dad54ee215055795cb93356fe5a552ca3e5e76dfc8669ead033de0481556',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3UserRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3UserRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/UserResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3UserResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3UserResponse',
        'type' => 'rosdemo_v3/UserResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/UserResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2238f34627525b09f9791bc70ed62a25934128041232f2ac8f047f4315491b12',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3UserResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3UserResponse', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/WaitRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3WaitRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3WaitRequest',
        'type' => 'rosdemo_v3/WaitRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/WaitRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_44ab4cbc8f4eda00a8a516105d1e8cd9a70601c5abcaf825e722a8abce9d8e85',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3WaitRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3WaitRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/WaitResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3WaitResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3WaitResponse',
        'type' => 'rosdemo_v3/WaitResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/WaitResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0d770361fd97c0828105b70cfaa161d949d4a8f6f3b8bd8ab00ab1a3bf8ab1ae',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3WaitResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3WaitResponse', $bytes);
    }
}

/** @brief Own all 0 original rosdemo_v3/pauseRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PauseRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PauseRequest',
        'type' => 'rosdemo_v3/pauseRequest',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/pauseRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a32393020c581655886f934dc95dd62ec2cf039d69dc420354f901a7ae0ba6ca',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3PauseRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PauseRequest', $bytes);
    }
}

/** @brief Own all 1 original rosdemo_v3/pauseResponse fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rosdemo_v3PauseResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rosdemo_v3PauseResponse',
        'type' => 'rosdemo_v3/pauseResponse',
        'ros_version' => 1,
        'native_type' => 'rosdemo_v3/pauseResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f4b189021f9e721ee09ed5593e77541c1759c118f73cbededfc406c04547f094',
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
        return Catalog::wire()->encode('Ros1Rosdemo_v3PauseResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rosdemo_v3PauseResponse', $bytes);
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
            'Ros1Rosdemo_v3AIRequest' => Ros1Rosdemo_v3AIRequest::SCHEMA + ['class' => Ros1Rosdemo_v3AIRequest::class],
            'Ros1Rosdemo_v3AIResponse' => Ros1Rosdemo_v3AIResponse::SCHEMA + ['class' => Ros1Rosdemo_v3AIResponse::class],
            'Ros1Rosdemo_v3AORequest' => Ros1Rosdemo_v3AORequest::SCHEMA + ['class' => Ros1Rosdemo_v3AORequest::class],
            'Ros1Rosdemo_v3AOResponse' => Ros1Rosdemo_v3AOResponse::SCHEMA + ['class' => Ros1Rosdemo_v3AOResponse::class],
            'Ros1Rosdemo_v3AOExecuteRequest' => Ros1Rosdemo_v3AOExecuteRequest::SCHEMA + ['class' => Ros1Rosdemo_v3AOExecuteRequest::class],
            'Ros1Rosdemo_v3AOExecuteResponse' => Ros1Rosdemo_v3AOExecuteResponse::SCHEMA + ['class' => Ros1Rosdemo_v3AOExecuteResponse::class],
            'Ros1Rosdemo_v3AccJRequest' => Ros1Rosdemo_v3AccJRequest::SCHEMA + ['class' => Ros1Rosdemo_v3AccJRequest::class],
            'Ros1Rosdemo_v3AccJResponse' => Ros1Rosdemo_v3AccJResponse::SCHEMA + ['class' => Ros1Rosdemo_v3AccJResponse::class],
            'Ros1Rosdemo_v3AccLRequest' => Ros1Rosdemo_v3AccLRequest::SCHEMA + ['class' => Ros1Rosdemo_v3AccLRequest::class],
            'Ros1Rosdemo_v3AccLResponse' => Ros1Rosdemo_v3AccLResponse::SCHEMA + ['class' => Ros1Rosdemo_v3AccLResponse::class],
            'Ros1Rosdemo_v3ArcRequest' => Ros1Rosdemo_v3ArcRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ArcRequest::class],
            'Ros1Rosdemo_v3ArcResponse' => Ros1Rosdemo_v3ArcResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ArcResponse::class],
            'Ros1Rosdemo_v3ArchRequest' => Ros1Rosdemo_v3ArchRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ArchRequest::class],
            'Ros1Rosdemo_v3ArchResponse' => Ros1Rosdemo_v3ArchResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ArchResponse::class],
            'Ros1Rosdemo_v3BrakeControlRequest' => Ros1Rosdemo_v3BrakeControlRequest::SCHEMA + ['class' => Ros1Rosdemo_v3BrakeControlRequest::class],
            'Ros1Rosdemo_v3BrakeControlResponse' => Ros1Rosdemo_v3BrakeControlResponse::SCHEMA + ['class' => Ros1Rosdemo_v3BrakeControlResponse::class],
            'Ros1Rosdemo_v3CPRequest' => Ros1Rosdemo_v3CPRequest::SCHEMA + ['class' => Ros1Rosdemo_v3CPRequest::class],
            'Ros1Rosdemo_v3CPResponse' => Ros1Rosdemo_v3CPResponse::SCHEMA + ['class' => Ros1Rosdemo_v3CPResponse::class],
            'Ros1Rosdemo_v3CircleRequest' => Ros1Rosdemo_v3CircleRequest::SCHEMA + ['class' => Ros1Rosdemo_v3CircleRequest::class],
            'Ros1Rosdemo_v3CircleResponse' => Ros1Rosdemo_v3CircleResponse::SCHEMA + ['class' => Ros1Rosdemo_v3CircleResponse::class],
            'Ros1Rosdemo_v3ClearErrorRequest' => Ros1Rosdemo_v3ClearErrorRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ClearErrorRequest::class],
            'Ros1Rosdemo_v3ClearErrorResponse' => Ros1Rosdemo_v3ClearErrorResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ClearErrorResponse::class],
            'Ros1Rosdemo_v3ContinueScriptRequest' => Ros1Rosdemo_v3ContinueScriptRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ContinueScriptRequest::class],
            'Ros1Rosdemo_v3ContinueScriptResponse' => Ros1Rosdemo_v3ContinueScriptResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ContinueScriptResponse::class],
            'Ros1Rosdemo_v3ContinuesRequest' => Ros1Rosdemo_v3ContinuesRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ContinuesRequest::class],
            'Ros1Rosdemo_v3ContinuesResponse' => Ros1Rosdemo_v3ContinuesResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ContinuesResponse::class],
            'Ros1Rosdemo_v3DIRequest' => Ros1Rosdemo_v3DIRequest::SCHEMA + ['class' => Ros1Rosdemo_v3DIRequest::class],
            'Ros1Rosdemo_v3DIResponse' => Ros1Rosdemo_v3DIResponse::SCHEMA + ['class' => Ros1Rosdemo_v3DIResponse::class],
            'Ros1Rosdemo_v3DIGroupRequest' => Ros1Rosdemo_v3DIGroupRequest::SCHEMA + ['class' => Ros1Rosdemo_v3DIGroupRequest::class],
            'Ros1Rosdemo_v3DIGroupResponse' => Ros1Rosdemo_v3DIGroupResponse::SCHEMA + ['class' => Ros1Rosdemo_v3DIGroupResponse::class],
            'Ros1Rosdemo_v3DORequest' => Ros1Rosdemo_v3DORequest::SCHEMA + ['class' => Ros1Rosdemo_v3DORequest::class],
            'Ros1Rosdemo_v3DOResponse' => Ros1Rosdemo_v3DOResponse::SCHEMA + ['class' => Ros1Rosdemo_v3DOResponse::class],
            'Ros1Rosdemo_v3DOExecuteRequest' => Ros1Rosdemo_v3DOExecuteRequest::SCHEMA + ['class' => Ros1Rosdemo_v3DOExecuteRequest::class],
            'Ros1Rosdemo_v3DOExecuteResponse' => Ros1Rosdemo_v3DOExecuteResponse::SCHEMA + ['class' => Ros1Rosdemo_v3DOExecuteResponse::class],
            'Ros1Rosdemo_v3DOGroupRequest' => Ros1Rosdemo_v3DOGroupRequest::SCHEMA + ['class' => Ros1Rosdemo_v3DOGroupRequest::class],
            'Ros1Rosdemo_v3DOGroupResponse' => Ros1Rosdemo_v3DOGroupResponse::SCHEMA + ['class' => Ros1Rosdemo_v3DOGroupResponse::class],
            'Ros1Rosdemo_v3DigitalOutputsRequest' => Ros1Rosdemo_v3DigitalOutputsRequest::SCHEMA + ['class' => Ros1Rosdemo_v3DigitalOutputsRequest::class],
            'Ros1Rosdemo_v3DigitalOutputsResponse' => Ros1Rosdemo_v3DigitalOutputsResponse::SCHEMA + ['class' => Ros1Rosdemo_v3DigitalOutputsResponse::class],
            'Ros1Rosdemo_v3DisableRobotRequest' => Ros1Rosdemo_v3DisableRobotRequest::SCHEMA + ['class' => Ros1Rosdemo_v3DisableRobotRequest::class],
            'Ros1Rosdemo_v3DisableRobotResponse' => Ros1Rosdemo_v3DisableRobotResponse::SCHEMA + ['class' => Ros1Rosdemo_v3DisableRobotResponse::class],
            'Ros1Rosdemo_v3EmergencyStopRequest' => Ros1Rosdemo_v3EmergencyStopRequest::SCHEMA + ['class' => Ros1Rosdemo_v3EmergencyStopRequest::class],
            'Ros1Rosdemo_v3EmergencyStopResponse' => Ros1Rosdemo_v3EmergencyStopResponse::SCHEMA + ['class' => Ros1Rosdemo_v3EmergencyStopResponse::class],
            'Ros1Rosdemo_v3EnableRobotRequest' => Ros1Rosdemo_v3EnableRobotRequest::SCHEMA + ['class' => Ros1Rosdemo_v3EnableRobotRequest::class],
            'Ros1Rosdemo_v3EnableRobotResponse' => Ros1Rosdemo_v3EnableRobotResponse::SCHEMA + ['class' => Ros1Rosdemo_v3EnableRobotResponse::class],
            'Ros1Rosdemo_v3GetAngleRequest' => Ros1Rosdemo_v3GetAngleRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetAngleRequest::class],
            'Ros1Rosdemo_v3GetAngleResponse' => Ros1Rosdemo_v3GetAngleResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetAngleResponse::class],
            'Ros1Rosdemo_v3GetCoilsRequest' => Ros1Rosdemo_v3GetCoilsRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetCoilsRequest::class],
            'Ros1Rosdemo_v3GetCoilsResponse' => Ros1Rosdemo_v3GetCoilsResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetCoilsResponse::class],
            'Ros1Rosdemo_v3GetErrorIDRequest' => Ros1Rosdemo_v3GetErrorIDRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetErrorIDRequest::class],
            'Ros1Rosdemo_v3GetErrorIDResponse' => Ros1Rosdemo_v3GetErrorIDResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetErrorIDResponse::class],
            'Ros1Rosdemo_v3GetHoldRegsRequest' => Ros1Rosdemo_v3GetHoldRegsRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetHoldRegsRequest::class],
            'Ros1Rosdemo_v3GetHoldRegsResponse' => Ros1Rosdemo_v3GetHoldRegsResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetHoldRegsResponse::class],
            'Ros1Rosdemo_v3GetInBitsRequest' => Ros1Rosdemo_v3GetInBitsRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetInBitsRequest::class],
            'Ros1Rosdemo_v3GetInBitsResponse' => Ros1Rosdemo_v3GetInBitsResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetInBitsResponse::class],
            'Ros1Rosdemo_v3GetInRegsRequest' => Ros1Rosdemo_v3GetInRegsRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetInRegsRequest::class],
            'Ros1Rosdemo_v3GetInRegsResponse' => Ros1Rosdemo_v3GetInRegsResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetInRegsResponse::class],
            'Ros1Rosdemo_v3GetPathStartPoseRequest' => Ros1Rosdemo_v3GetPathStartPoseRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetPathStartPoseRequest::class],
            'Ros1Rosdemo_v3GetPathStartPoseResponse' => Ros1Rosdemo_v3GetPathStartPoseResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetPathStartPoseResponse::class],
            'Ros1Rosdemo_v3GetPoseRequest' => Ros1Rosdemo_v3GetPoseRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetPoseRequest::class],
            'Ros1Rosdemo_v3GetPoseResponse' => Ros1Rosdemo_v3GetPoseResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetPoseResponse::class],
            'Ros1Rosdemo_v3GetSixForceDataRequest' => Ros1Rosdemo_v3GetSixForceDataRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetSixForceDataRequest::class],
            'Ros1Rosdemo_v3GetSixForceDataResponse' => Ros1Rosdemo_v3GetSixForceDataResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetSixForceDataResponse::class],
            'Ros1Rosdemo_v3GetTerminal485Request' => Ros1Rosdemo_v3GetTerminal485Request::SCHEMA + ['class' => Ros1Rosdemo_v3GetTerminal485Request::class],
            'Ros1Rosdemo_v3GetTerminal485Response' => Ros1Rosdemo_v3GetTerminal485Response::SCHEMA + ['class' => Ros1Rosdemo_v3GetTerminal485Response::class],
            'Ros1Rosdemo_v3GetTraceStartPoseRequest' => Ros1Rosdemo_v3GetTraceStartPoseRequest::SCHEMA + ['class' => Ros1Rosdemo_v3GetTraceStartPoseRequest::class],
            'Ros1Rosdemo_v3GetTraceStartPoseResponse' => Ros1Rosdemo_v3GetTraceStartPoseResponse::SCHEMA + ['class' => Ros1Rosdemo_v3GetTraceStartPoseResponse::class],
            'Ros1Rosdemo_v3HandleTrajPointsRequest' => Ros1Rosdemo_v3HandleTrajPointsRequest::SCHEMA + ['class' => Ros1Rosdemo_v3HandleTrajPointsRequest::class],
            'Ros1Rosdemo_v3HandleTrajPointsResponse' => Ros1Rosdemo_v3HandleTrajPointsResponse::SCHEMA + ['class' => Ros1Rosdemo_v3HandleTrajPointsResponse::class],
            'Ros1Rosdemo_v3InverseSolutionRequest' => Ros1Rosdemo_v3InverseSolutionRequest::SCHEMA + ['class' => Ros1Rosdemo_v3InverseSolutionRequest::class],
            'Ros1Rosdemo_v3InverseSolutionResponse' => Ros1Rosdemo_v3InverseSolutionResponse::SCHEMA + ['class' => Ros1Rosdemo_v3InverseSolutionResponse::class],
            'Ros1Rosdemo_v3JointMovJRequest' => Ros1Rosdemo_v3JointMovJRequest::SCHEMA + ['class' => Ros1Rosdemo_v3JointMovJRequest::class],
            'Ros1Rosdemo_v3JointMovJResponse' => Ros1Rosdemo_v3JointMovJResponse::SCHEMA + ['class' => Ros1Rosdemo_v3JointMovJResponse::class],
            'Ros1Rosdemo_v3JumpRequest' => Ros1Rosdemo_v3JumpRequest::SCHEMA + ['class' => Ros1Rosdemo_v3JumpRequest::class],
            'Ros1Rosdemo_v3JumpResponse' => Ros1Rosdemo_v3JumpResponse::SCHEMA + ['class' => Ros1Rosdemo_v3JumpResponse::class],
            'Ros1Rosdemo_v3LimZRequest' => Ros1Rosdemo_v3LimZRequest::SCHEMA + ['class' => Ros1Rosdemo_v3LimZRequest::class],
            'Ros1Rosdemo_v3LimZResponse' => Ros1Rosdemo_v3LimZResponse::SCHEMA + ['class' => Ros1Rosdemo_v3LimZResponse::class],
            'Ros1Rosdemo_v3LoadSwitchRequest' => Ros1Rosdemo_v3LoadSwitchRequest::SCHEMA + ['class' => Ros1Rosdemo_v3LoadSwitchRequest::class],
            'Ros1Rosdemo_v3LoadSwitchResponse' => Ros1Rosdemo_v3LoadSwitchResponse::SCHEMA + ['class' => Ros1Rosdemo_v3LoadSwitchResponse::class],
            'Ros1Rosdemo_v3ModbusCloseRequest' => Ros1Rosdemo_v3ModbusCloseRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ModbusCloseRequest::class],
            'Ros1Rosdemo_v3ModbusCloseResponse' => Ros1Rosdemo_v3ModbusCloseResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ModbusCloseResponse::class],
            'Ros1Rosdemo_v3ModbusCreateRequest' => Ros1Rosdemo_v3ModbusCreateRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ModbusCreateRequest::class],
            'Ros1Rosdemo_v3ModbusCreateResponse' => Ros1Rosdemo_v3ModbusCreateResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ModbusCreateResponse::class],
            'Ros1Rosdemo_v3MovJRequest' => Ros1Rosdemo_v3MovJRequest::SCHEMA + ['class' => Ros1Rosdemo_v3MovJRequest::class],
            'Ros1Rosdemo_v3MovJResponse' => Ros1Rosdemo_v3MovJResponse::SCHEMA + ['class' => Ros1Rosdemo_v3MovJResponse::class],
            'Ros1Rosdemo_v3MovJExtRequest' => Ros1Rosdemo_v3MovJExtRequest::SCHEMA + ['class' => Ros1Rosdemo_v3MovJExtRequest::class],
            'Ros1Rosdemo_v3MovJExtResponse' => Ros1Rosdemo_v3MovJExtResponse::SCHEMA + ['class' => Ros1Rosdemo_v3MovJExtResponse::class],
            'Ros1Rosdemo_v3MovJIORequest' => Ros1Rosdemo_v3MovJIORequest::SCHEMA + ['class' => Ros1Rosdemo_v3MovJIORequest::class],
            'Ros1Rosdemo_v3MovJIOResponse' => Ros1Rosdemo_v3MovJIOResponse::SCHEMA + ['class' => Ros1Rosdemo_v3MovJIOResponse::class],
            'Ros1Rosdemo_v3MovLRequest' => Ros1Rosdemo_v3MovLRequest::SCHEMA + ['class' => Ros1Rosdemo_v3MovLRequest::class],
            'Ros1Rosdemo_v3MovLResponse' => Ros1Rosdemo_v3MovLResponse::SCHEMA + ['class' => Ros1Rosdemo_v3MovLResponse::class],
            'Ros1Rosdemo_v3MovLIORequest' => Ros1Rosdemo_v3MovLIORequest::SCHEMA + ['class' => Ros1Rosdemo_v3MovLIORequest::class],
            'Ros1Rosdemo_v3MovLIOResponse' => Ros1Rosdemo_v3MovLIOResponse::SCHEMA + ['class' => Ros1Rosdemo_v3MovLIOResponse::class],
            'Ros1Rosdemo_v3MoveJogRequest' => Ros1Rosdemo_v3MoveJogRequest::SCHEMA + ['class' => Ros1Rosdemo_v3MoveJogRequest::class],
            'Ros1Rosdemo_v3MoveJogResponse' => Ros1Rosdemo_v3MoveJogResponse::SCHEMA + ['class' => Ros1Rosdemo_v3MoveJogResponse::class],
            'Ros1Rosdemo_v3PauseScriptRequest' => Ros1Rosdemo_v3PauseScriptRequest::SCHEMA + ['class' => Ros1Rosdemo_v3PauseScriptRequest::class],
            'Ros1Rosdemo_v3PauseScriptResponse' => Ros1Rosdemo_v3PauseScriptResponse::SCHEMA + ['class' => Ros1Rosdemo_v3PauseScriptResponse::class],
            'Ros1Rosdemo_v3PayLoadRequest' => Ros1Rosdemo_v3PayLoadRequest::SCHEMA + ['class' => Ros1Rosdemo_v3PayLoadRequest::class],
            'Ros1Rosdemo_v3PayLoadResponse' => Ros1Rosdemo_v3PayLoadResponse::SCHEMA + ['class' => Ros1Rosdemo_v3PayLoadResponse::class],
            'Ros1Rosdemo_v3PositiveSolutionRequest' => Ros1Rosdemo_v3PositiveSolutionRequest::SCHEMA + ['class' => Ros1Rosdemo_v3PositiveSolutionRequest::class],
            'Ros1Rosdemo_v3PositiveSolutionResponse' => Ros1Rosdemo_v3PositiveSolutionResponse::SCHEMA + ['class' => Ros1Rosdemo_v3PositiveSolutionResponse::class],
            'Ros1Rosdemo_v3PowerOnRequest' => Ros1Rosdemo_v3PowerOnRequest::SCHEMA + ['class' => Ros1Rosdemo_v3PowerOnRequest::class],
            'Ros1Rosdemo_v3PowerOnResponse' => Ros1Rosdemo_v3PowerOnResponse::SCHEMA + ['class' => Ros1Rosdemo_v3PowerOnResponse::class],
            'Ros1Rosdemo_v3RelJointMovJRequest' => Ros1Rosdemo_v3RelJointMovJRequest::SCHEMA + ['class' => Ros1Rosdemo_v3RelJointMovJRequest::class],
            'Ros1Rosdemo_v3RelJointMovJResponse' => Ros1Rosdemo_v3RelJointMovJResponse::SCHEMA + ['class' => Ros1Rosdemo_v3RelJointMovJResponse::class],
            'Ros1Rosdemo_v3RelMovJRequest' => Ros1Rosdemo_v3RelMovJRequest::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovJRequest::class],
            'Ros1Rosdemo_v3RelMovJResponse' => Ros1Rosdemo_v3RelMovJResponse::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovJResponse::class],
            'Ros1Rosdemo_v3RelMovJToolRequest' => Ros1Rosdemo_v3RelMovJToolRequest::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovJToolRequest::class],
            'Ros1Rosdemo_v3RelMovJToolResponse' => Ros1Rosdemo_v3RelMovJToolResponse::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovJToolResponse::class],
            'Ros1Rosdemo_v3RelMovJUserRequest' => Ros1Rosdemo_v3RelMovJUserRequest::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovJUserRequest::class],
            'Ros1Rosdemo_v3RelMovJUserResponse' => Ros1Rosdemo_v3RelMovJUserResponse::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovJUserResponse::class],
            'Ros1Rosdemo_v3RelMovLRequest' => Ros1Rosdemo_v3RelMovLRequest::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovLRequest::class],
            'Ros1Rosdemo_v3RelMovLResponse' => Ros1Rosdemo_v3RelMovLResponse::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovLResponse::class],
            'Ros1Rosdemo_v3RelMovLToolRequest' => Ros1Rosdemo_v3RelMovLToolRequest::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovLToolRequest::class],
            'Ros1Rosdemo_v3RelMovLToolResponse' => Ros1Rosdemo_v3RelMovLToolResponse::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovLToolResponse::class],
            'Ros1Rosdemo_v3RelMovLUserRequest' => Ros1Rosdemo_v3RelMovLUserRequest::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovLUserRequest::class],
            'Ros1Rosdemo_v3RelMovLUserResponse' => Ros1Rosdemo_v3RelMovLUserResponse::SCHEMA + ['class' => Ros1Rosdemo_v3RelMovLUserResponse::class],
            'Ros1Rosdemo_v3ResetRobotRequest' => Ros1Rosdemo_v3ResetRobotRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ResetRobotRequest::class],
            'Ros1Rosdemo_v3ResetRobotResponse' => Ros1Rosdemo_v3ResetRobotResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ResetRobotResponse::class],
            'Ros1Rosdemo_v3RobotModeRequest' => Ros1Rosdemo_v3RobotModeRequest::SCHEMA + ['class' => Ros1Rosdemo_v3RobotModeRequest::class],
            'Ros1Rosdemo_v3RobotModeResponse' => Ros1Rosdemo_v3RobotModeResponse::SCHEMA + ['class' => Ros1Rosdemo_v3RobotModeResponse::class],
            'Ros1Rosdemo_v3RunScriptRequest' => Ros1Rosdemo_v3RunScriptRequest::SCHEMA + ['class' => Ros1Rosdemo_v3RunScriptRequest::class],
            'Ros1Rosdemo_v3RunScriptResponse' => Ros1Rosdemo_v3RunScriptResponse::SCHEMA + ['class' => Ros1Rosdemo_v3RunScriptResponse::class],
            'Ros1Rosdemo_v3ServoJRequest' => Ros1Rosdemo_v3ServoJRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ServoJRequest::class],
            'Ros1Rosdemo_v3ServoJResponse' => Ros1Rosdemo_v3ServoJResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ServoJResponse::class],
            'Ros1Rosdemo_v3ServoPRequest' => Ros1Rosdemo_v3ServoPRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ServoPRequest::class],
            'Ros1Rosdemo_v3ServoPResponse' => Ros1Rosdemo_v3ServoPResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ServoPResponse::class],
            'Ros1Rosdemo_v3SetArmOrientationRequest' => Ros1Rosdemo_v3SetArmOrientationRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SetArmOrientationRequest::class],
            'Ros1Rosdemo_v3SetArmOrientationResponse' => Ros1Rosdemo_v3SetArmOrientationResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SetArmOrientationResponse::class],
            'Ros1Rosdemo_v3SetCoilsRequest' => Ros1Rosdemo_v3SetCoilsRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SetCoilsRequest::class],
            'Ros1Rosdemo_v3SetCoilsResponse' => Ros1Rosdemo_v3SetCoilsResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SetCoilsResponse::class],
            'Ros1Rosdemo_v3SetCollideDragRequest' => Ros1Rosdemo_v3SetCollideDragRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SetCollideDragRequest::class],
            'Ros1Rosdemo_v3SetCollideDragResponse' => Ros1Rosdemo_v3SetCollideDragResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SetCollideDragResponse::class],
            'Ros1Rosdemo_v3SetCollisionLevelRequest' => Ros1Rosdemo_v3SetCollisionLevelRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SetCollisionLevelRequest::class],
            'Ros1Rosdemo_v3SetCollisionLevelResponse' => Ros1Rosdemo_v3SetCollisionLevelResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SetCollisionLevelResponse::class],
            'Ros1Rosdemo_v3SetHoldRegsRequest' => Ros1Rosdemo_v3SetHoldRegsRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SetHoldRegsRequest::class],
            'Ros1Rosdemo_v3SetHoldRegsResponse' => Ros1Rosdemo_v3SetHoldRegsResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SetHoldRegsResponse::class],
            'Ros1Rosdemo_v3SetObstacleAvoidRequest' => Ros1Rosdemo_v3SetObstacleAvoidRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SetObstacleAvoidRequest::class],
            'Ros1Rosdemo_v3SetObstacleAvoidResponse' => Ros1Rosdemo_v3SetObstacleAvoidResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SetObstacleAvoidResponse::class],
            'Ros1Rosdemo_v3SetPayloadRequest' => Ros1Rosdemo_v3SetPayloadRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SetPayloadRequest::class],
            'Ros1Rosdemo_v3SetPayloadResponse' => Ros1Rosdemo_v3SetPayloadResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SetPayloadResponse::class],
            'Ros1Rosdemo_v3SetSafeSkinRequest' => Ros1Rosdemo_v3SetSafeSkinRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SetSafeSkinRequest::class],
            'Ros1Rosdemo_v3SetSafeSkinResponse' => Ros1Rosdemo_v3SetSafeSkinResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SetSafeSkinResponse::class],
            'Ros1Rosdemo_v3SetTerminal485Request' => Ros1Rosdemo_v3SetTerminal485Request::SCHEMA + ['class' => Ros1Rosdemo_v3SetTerminal485Request::class],
            'Ros1Rosdemo_v3SetTerminal485Response' => Ros1Rosdemo_v3SetTerminal485Response::SCHEMA + ['class' => Ros1Rosdemo_v3SetTerminal485Response::class],
            'Ros1Rosdemo_v3SetTerminalKeysRequest' => Ros1Rosdemo_v3SetTerminalKeysRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SetTerminalKeysRequest::class],
            'Ros1Rosdemo_v3SetTerminalKeysResponse' => Ros1Rosdemo_v3SetTerminalKeysResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SetTerminalKeysResponse::class],
            'Ros1Rosdemo_v3SpeedFactorRequest' => Ros1Rosdemo_v3SpeedFactorRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SpeedFactorRequest::class],
            'Ros1Rosdemo_v3SpeedFactorResponse' => Ros1Rosdemo_v3SpeedFactorResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SpeedFactorResponse::class],
            'Ros1Rosdemo_v3SpeedJRequest' => Ros1Rosdemo_v3SpeedJRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SpeedJRequest::class],
            'Ros1Rosdemo_v3SpeedJResponse' => Ros1Rosdemo_v3SpeedJResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SpeedJResponse::class],
            'Ros1Rosdemo_v3SpeedLRequest' => Ros1Rosdemo_v3SpeedLRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SpeedLRequest::class],
            'Ros1Rosdemo_v3SpeedLResponse' => Ros1Rosdemo_v3SpeedLResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SpeedLResponse::class],
            'Ros1Rosdemo_v3StartDragRequest' => Ros1Rosdemo_v3StartDragRequest::SCHEMA + ['class' => Ros1Rosdemo_v3StartDragRequest::class],
            'Ros1Rosdemo_v3StartDragResponse' => Ros1Rosdemo_v3StartDragResponse::SCHEMA + ['class' => Ros1Rosdemo_v3StartDragResponse::class],
            'Ros1Rosdemo_v3StartFCTraceRequest' => Ros1Rosdemo_v3StartFCTraceRequest::SCHEMA + ['class' => Ros1Rosdemo_v3StartFCTraceRequest::class],
            'Ros1Rosdemo_v3StartFCTraceResponse' => Ros1Rosdemo_v3StartFCTraceResponse::SCHEMA + ['class' => Ros1Rosdemo_v3StartFCTraceResponse::class],
            'Ros1Rosdemo_v3StartPathRequest' => Ros1Rosdemo_v3StartPathRequest::SCHEMA + ['class' => Ros1Rosdemo_v3StartPathRequest::class],
            'Ros1Rosdemo_v3StartPathResponse' => Ros1Rosdemo_v3StartPathResponse::SCHEMA + ['class' => Ros1Rosdemo_v3StartPathResponse::class],
            'Ros1Rosdemo_v3StartTraceRequest' => Ros1Rosdemo_v3StartTraceRequest::SCHEMA + ['class' => Ros1Rosdemo_v3StartTraceRequest::class],
            'Ros1Rosdemo_v3StartTraceResponse' => Ros1Rosdemo_v3StartTraceResponse::SCHEMA + ['class' => Ros1Rosdemo_v3StartTraceResponse::class],
            'Ros1Rosdemo_v3StopDragRequest' => Ros1Rosdemo_v3StopDragRequest::SCHEMA + ['class' => Ros1Rosdemo_v3StopDragRequest::class],
            'Ros1Rosdemo_v3StopDragResponse' => Ros1Rosdemo_v3StopDragResponse::SCHEMA + ['class' => Ros1Rosdemo_v3StopDragResponse::class],
            'Ros1Rosdemo_v3StopScriptRequest' => Ros1Rosdemo_v3StopScriptRequest::SCHEMA + ['class' => Ros1Rosdemo_v3StopScriptRequest::class],
            'Ros1Rosdemo_v3StopScriptResponse' => Ros1Rosdemo_v3StopScriptResponse::SCHEMA + ['class' => Ros1Rosdemo_v3StopScriptResponse::class],
            'Ros1Rosdemo_v3StopmoveJogRequest' => Ros1Rosdemo_v3StopmoveJogRequest::SCHEMA + ['class' => Ros1Rosdemo_v3StopmoveJogRequest::class],
            'Ros1Rosdemo_v3StopmoveJogResponse' => Ros1Rosdemo_v3StopmoveJogResponse::SCHEMA + ['class' => Ros1Rosdemo_v3StopmoveJogResponse::class],
            'Ros1Rosdemo_v3SyncRequest' => Ros1Rosdemo_v3SyncRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SyncRequest::class],
            'Ros1Rosdemo_v3SyncResponse' => Ros1Rosdemo_v3SyncResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SyncResponse::class],
            'Ros1Rosdemo_v3SyncAllRequest' => Ros1Rosdemo_v3SyncAllRequest::SCHEMA + ['class' => Ros1Rosdemo_v3SyncAllRequest::class],
            'Ros1Rosdemo_v3SyncAllResponse' => Ros1Rosdemo_v3SyncAllResponse::SCHEMA + ['class' => Ros1Rosdemo_v3SyncAllResponse::class],
            'Ros1Rosdemo_v3TCPSpeedRequest' => Ros1Rosdemo_v3TCPSpeedRequest::SCHEMA + ['class' => Ros1Rosdemo_v3TCPSpeedRequest::class],
            'Ros1Rosdemo_v3TCPSpeedResponse' => Ros1Rosdemo_v3TCPSpeedResponse::SCHEMA + ['class' => Ros1Rosdemo_v3TCPSpeedResponse::class],
            'Ros1Rosdemo_v3TCPSpeedEndRequest' => Ros1Rosdemo_v3TCPSpeedEndRequest::SCHEMA + ['class' => Ros1Rosdemo_v3TCPSpeedEndRequest::class],
            'Ros1Rosdemo_v3TCPSpeedEndResponse' => Ros1Rosdemo_v3TCPSpeedEndResponse::SCHEMA + ['class' => Ros1Rosdemo_v3TCPSpeedEndResponse::class],
            'Ros1Rosdemo_v3ToolRequest' => Ros1Rosdemo_v3ToolRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ToolRequest::class],
            'Ros1Rosdemo_v3ToolResponse' => Ros1Rosdemo_v3ToolResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ToolResponse::class],
            'Ros1Rosdemo_v3ToolAIRequest' => Ros1Rosdemo_v3ToolAIRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ToolAIRequest::class],
            'Ros1Rosdemo_v3ToolAIResponse' => Ros1Rosdemo_v3ToolAIResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ToolAIResponse::class],
            'Ros1Rosdemo_v3ToolDIRequest' => Ros1Rosdemo_v3ToolDIRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ToolDIRequest::class],
            'Ros1Rosdemo_v3ToolDIResponse' => Ros1Rosdemo_v3ToolDIResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ToolDIResponse::class],
            'Ros1Rosdemo_v3ToolDORequest' => Ros1Rosdemo_v3ToolDORequest::SCHEMA + ['class' => Ros1Rosdemo_v3ToolDORequest::class],
            'Ros1Rosdemo_v3ToolDOResponse' => Ros1Rosdemo_v3ToolDOResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ToolDOResponse::class],
            'Ros1Rosdemo_v3ToolDOExecuteRequest' => Ros1Rosdemo_v3ToolDOExecuteRequest::SCHEMA + ['class' => Ros1Rosdemo_v3ToolDOExecuteRequest::class],
            'Ros1Rosdemo_v3ToolDOExecuteResponse' => Ros1Rosdemo_v3ToolDOExecuteResponse::SCHEMA + ['class' => Ros1Rosdemo_v3ToolDOExecuteResponse::class],
            'Ros1Rosdemo_v3UserRequest' => Ros1Rosdemo_v3UserRequest::SCHEMA + ['class' => Ros1Rosdemo_v3UserRequest::class],
            'Ros1Rosdemo_v3UserResponse' => Ros1Rosdemo_v3UserResponse::SCHEMA + ['class' => Ros1Rosdemo_v3UserResponse::class],
            'Ros1Rosdemo_v3WaitRequest' => Ros1Rosdemo_v3WaitRequest::SCHEMA + ['class' => Ros1Rosdemo_v3WaitRequest::class],
            'Ros1Rosdemo_v3WaitResponse' => Ros1Rosdemo_v3WaitResponse::SCHEMA + ['class' => Ros1Rosdemo_v3WaitResponse::class],
            'Ros1Rosdemo_v3PauseRequest' => Ros1Rosdemo_v3PauseRequest::SCHEMA + ['class' => Ros1Rosdemo_v3PauseRequest::class],
            'Ros1Rosdemo_v3PauseResponse' => Ros1Rosdemo_v3PauseResponse::SCHEMA + ['class' => Ros1Rosdemo_v3PauseResponse::class],
        ]);
        return $wire;
    }
}
