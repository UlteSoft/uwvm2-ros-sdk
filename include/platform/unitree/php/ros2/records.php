<?php
declare(strict_types=1);
namespace Uwvm\Unitree\Ros2;

/** @file records.php
 * @brief Complete original Unitree ROS 2 owning classes.
 * @details Every original field and canonical identity is retained. */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own every original unitree_api/msg/RequestIdentity field. */
final class Ros2Unitree_apiMsgRequestIdentity
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_apiMsgRequestIdentity',
        'native_identity' => 'RIHS01_912fcf308a7cd6e27ea3aeea02515f587fa666b76af1963660429995f0e381c6',
        'codec_identity' => 'UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_api/msg/RequestIdentity',
        'constants' => [],
        'fields' => [
            [
                'name' => 'id',
                'type' => 'int64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'api_id',
                'type' => 'int64',
                'array' => '',
                'count' => 0,
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

    /** @brief Original id: int64; scalar. */
    public mixed $id;

    /** @brief Original api_id: int64; scalar. */
    public mixed $api_id;

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
        if (array_key_exists('id', $values))
        {
            $this->id = $values['id'];
        }
        else
        {
            $this->id = Word::fromDecimal('0', 8, true);
        }
        if (array_key_exists('api_id', $values))
        {
            $this->api_id = $values['api_id'];
        }
        else
        {
            $this->api_id = Word::fromDecimal('0', 8, true);
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
        return Catalog::wire()->encode('Ros2Unitree_apiMsgRequestIdentity', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_apiMsgRequestIdentity', $bytes);
    }
}

/** @brief Own every original unitree_api/msg/RequestLease field. */
final class Ros2Unitree_apiMsgRequestLease
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_apiMsgRequestLease',
        'native_identity' => 'RIHS01_16b5c2257d5280a095e3e4fe26a48e782e294fa3d68760ce38599260a344bf4e',
        'codec_identity' => 'UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_api/msg/RequestLease',
        'constants' => [],
        'fields' => [
            [
                'name' => 'id',
                'type' => 'int64',
                'array' => '',
                'count' => 0,
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

    /** @brief Original id: int64; scalar. */
    public mixed $id;

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
        if (array_key_exists('id', $values))
        {
            $this->id = $values['id'];
        }
        else
        {
            $this->id = Word::fromDecimal('0', 8, true);
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
        return Catalog::wire()->encode('Ros2Unitree_apiMsgRequestLease', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_apiMsgRequestLease', $bytes);
    }
}

/** @brief Own every original unitree_api/msg/RequestPolicy field. */
final class Ros2Unitree_apiMsgRequestPolicy
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_apiMsgRequestPolicy',
        'native_identity' => 'RIHS01_742c3612b991be55430d1847af4afb2f119069f2e16e3a2143c6352a94ef35e4',
        'codec_identity' => 'UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_api/msg/RequestPolicy',
        'constants' => [],
        'fields' => [
            [
                'name' => 'priority',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'noreply',
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

    /** @brief Original priority: int32; scalar. */
    public mixed $priority;

    /** @brief Original noreply: bool; scalar. */
    public mixed $noreply;

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
        if (array_key_exists('priority', $values))
        {
            $this->priority = $values['priority'];
        }
        else
        {
            $this->priority = 0;
        }
        if (array_key_exists('noreply', $values))
        {
            $this->noreply = $values['noreply'];
        }
        else
        {
            $this->noreply = false;
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
        return Catalog::wire()->encode('Ros2Unitree_apiMsgRequestPolicy', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_apiMsgRequestPolicy', $bytes);
    }
}

/** @brief Own every original unitree_api/msg/RequestHeader field. */
final class Ros2Unitree_apiMsgRequestHeader
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_apiMsgRequestHeader',
        'native_identity' => 'RIHS01_4273d5fbe6bee52502f55a6a73427e4ae2f12329f175d7c07b95341fd527acff',
        'codec_identity' => 'UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0',
        'minimum' => 29,
        'maximum' => 29,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_api/msg/RequestHeader',
        'constants' => [],
        'fields' => [
            [
                'name' => 'identity',
                'type' => 'Ros2Unitree_apiMsgRequestIdentity',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 16
            ],
            [
                'name' => 'lease',
                'type' => 'Ros2Unitree_apiMsgRequestLease',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'policy',
                'type' => 'Ros2Unitree_apiMsgRequestPolicy',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 5
            ]
        ]
    ];

    /** @brief Original identity: Ros2Unitree_apiMsgRequestIdentity; scalar. */
    public mixed $identity;

    /** @brief Original lease: Ros2Unitree_apiMsgRequestLease; scalar. */
    public mixed $lease;

    /** @brief Original policy: Ros2Unitree_apiMsgRequestPolicy; scalar. */
    public mixed $policy;

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
        if (array_key_exists('identity', $values))
        {
            $this->identity = $values['identity'];
        }
        else
        {
            $this->identity = new Ros2Unitree_apiMsgRequestIdentity();
        }
        if (array_key_exists('lease', $values))
        {
            $this->lease = $values['lease'];
        }
        else
        {
            $this->lease = new Ros2Unitree_apiMsgRequestLease();
        }
        if (array_key_exists('policy', $values))
        {
            $this->policy = $values['policy'];
        }
        else
        {
            $this->policy = new Ros2Unitree_apiMsgRequestPolicy();
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
        return Catalog::wire()->encode('Ros2Unitree_apiMsgRequestHeader', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_apiMsgRequestHeader', $bytes);
    }
}

/** @brief Own every original unitree_api/msg/Request field. */
final class Ros2Unitree_apiMsgRequest
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_apiMsgRequest',
        'native_identity' => 'RIHS01_60dda80d19538b06c8f79b77222b1b7642dd753b8439a6bd535ff0cba08c5378',
        'codec_identity' => 'UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192',
        'minimum' => 37,
        'maximum' => 4133,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_api/msg/Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Unitree_apiMsgRequestHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 29
            ],
            [
                'name' => 'parameter',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'binary',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 2048,
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

    /** @brief Original header: Ros2Unitree_apiMsgRequestHeader; scalar. */
    public mixed $header;

    /** @brief Original parameter: string; scalar. */
    public mixed $parameter;

    /** @brief Original binary: uint8; sequence. */
    public mixed $binary;

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
        if (array_key_exists('header', $values))
        {
            $this->header = $values['header'];
        }
        else
        {
            $this->header = new Ros2Unitree_apiMsgRequestHeader();
        }
        if (array_key_exists('parameter', $values))
        {
            $this->parameter = $values['parameter'];
        }
        else
        {
            $this->parameter = '';
        }
        if (array_key_exists('binary', $values))
        {
            $this->binary = $values['binary'];
        }
        else
        {
            $this->binary = [];
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
        return Catalog::wire()->encode('Ros2Unitree_apiMsgRequest', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_apiMsgRequest', $bytes);
    }
}

/** @brief Own every original unitree_api/msg/ResponseStatus field. */
final class Ros2Unitree_apiMsgResponseStatus
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_apiMsgResponseStatus',
        'native_identity' => 'RIHS01_282afd2a97771014abb1f5aead0fd244d648d475f55a82b0c3c41232a8c527f7',
        'codec_identity' => 'UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_api/msg/ResponseStatus',
        'constants' => [],
        'fields' => [
            [
                'name' => 'code',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
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

    /** @brief Original code: int32; scalar. */
    public mixed $code;

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
        if (array_key_exists('code', $values))
        {
            $this->code = $values['code'];
        }
        else
        {
            $this->code = 0;
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
        return Catalog::wire()->encode('Ros2Unitree_apiMsgResponseStatus', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_apiMsgResponseStatus', $bytes);
    }
}

/** @brief Own every original unitree_api/msg/ResponseHeader field. */
final class Ros2Unitree_apiMsgResponseHeader
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_apiMsgResponseHeader',
        'native_identity' => 'RIHS01_eba136c930271eec2fc582cfccc5948f8af3fe4431492842a03a3dacb1b0d765',
        'codec_identity' => 'UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0',
        'minimum' => 20,
        'maximum' => 20,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_api/msg/ResponseHeader',
        'constants' => [],
        'fields' => [
            [
                'name' => 'identity',
                'type' => 'Ros2Unitree_apiMsgRequestIdentity',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 16
            ],
            [
                'name' => 'status',
                'type' => 'Ros2Unitree_apiMsgResponseStatus',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
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

    /** @brief Original identity: Ros2Unitree_apiMsgRequestIdentity; scalar. */
    public mixed $identity;

    /** @brief Original status: Ros2Unitree_apiMsgResponseStatus; scalar. */
    public mixed $status;

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
        if (array_key_exists('identity', $values))
        {
            $this->identity = $values['identity'];
        }
        else
        {
            $this->identity = new Ros2Unitree_apiMsgRequestIdentity();
        }
        if (array_key_exists('status', $values))
        {
            $this->status = $values['status'];
        }
        else
        {
            $this->status = new Ros2Unitree_apiMsgResponseStatus();
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
        return Catalog::wire()->encode('Ros2Unitree_apiMsgResponseHeader', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_apiMsgResponseHeader', $bytes);
    }
}

/** @brief Own every original unitree_api/msg/Response field. */
final class Ros2Unitree_apiMsgResponse
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_apiMsgResponse',
        'native_identity' => 'RIHS01_5300d019bb652073e7248995c878765c68ab519bcbdbad2e2a17c81abd8888b9',
        'codec_identity' => 'UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f',
        'minimum' => 28,
        'maximum' => 2108,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_api/msg/Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Unitree_apiMsgResponseHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 20
            ],
            [
                'name' => 'data',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'binary',
                'type' => 'int8',
                'array' => 'sequence',
                'count' => 32,
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

    /** @brief Original header: Ros2Unitree_apiMsgResponseHeader; scalar. */
    public mixed $header;

    /** @brief Original data: string; scalar. */
    public mixed $data;

    /** @brief Original binary: int8; sequence. */
    public mixed $binary;

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
        if (array_key_exists('header', $values))
        {
            $this->header = $values['header'];
        }
        else
        {
            $this->header = new Ros2Unitree_apiMsgResponseHeader();
        }
        if (array_key_exists('data', $values))
        {
            $this->data = $values['data'];
        }
        else
        {
            $this->data = '';
        }
        if (array_key_exists('binary', $values))
        {
            $this->binary = $values['binary'];
        }
        else
        {
            $this->binary = [];
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
        return Catalog::wire()->encode('Ros2Unitree_apiMsgResponse', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_apiMsgResponse', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/AudioData field. */
final class Ros2Unitree_goMsgAudioData
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgAudioData',
        'native_identity' => 'RIHS01_55973ff982f53f02855ff34a184f00ee63b68a3f65b19152448f9fd7558e7dc5',
        'codec_identity' => 'UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe',
        'minimum' => 12,
        'maximum' => 2060,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/AudioData',
        'constants' => [],
        'fields' => [
            [
                'name' => 'time_frame',
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
                'name' => 'data',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 2048,
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

    /** @brief Original time_frame: uint64; scalar. */
    public mixed $time_frame;

    /** @brief Original data: uint8; sequence. */
    public mixed $data;

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
        if (array_key_exists('time_frame', $values))
        {
            $this->time_frame = $values['time_frame'];
        }
        else
        {
            $this->time_frame = Word::fromDecimal('0', 8, false);
        }
        if (array_key_exists('data', $values))
        {
            $this->data = $values['data'];
        }
        else
        {
            $this->data = [];
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgAudioData', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgAudioData', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/BmsCmd field. */
final class Ros2Unitree_goMsgBmsCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgBmsCmd',
        'native_identity' => 'RIHS01_815310dff4ebba1e0d37802dfdc56d4b5a849761f613954172bdb4476aed5aa2',
        'codec_identity' => 'UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/BmsCmd',
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgBmsCmd', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgBmsCmd', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/BmsState field. */
final class Ros2Unitree_goMsgBmsState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgBmsState',
        'native_identity' => 'RIHS01_a7fe45fbbb6a908bdee78baa3b93e962ed924c143481a696f95b6911ce30b871',
        'codec_identity' => 'UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0',
        'minimum' => 44,
        'maximum' => 44,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/BmsState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'version_high',
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
                'name' => 'version_low',
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
                'name' => 'status',
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
                'name' => 'soc',
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
                'name' => 'bq_ntc',
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
                'name' => 'mcu_ntc',
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
                'count' => 15,
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

    /** @brief Original version_high: uint8; scalar. */
    public mixed $version_high;

    /** @brief Original version_low: uint8; scalar. */
    public mixed $version_low;

    /** @brief Original status: uint8; scalar. */
    public mixed $status;

    /** @brief Original soc: uint8; scalar. */
    public mixed $soc;

    /** @brief Original current: int32; scalar. */
    public mixed $current;

    /** @brief Original cycle: uint16; scalar. */
    public mixed $cycle;

    /** @brief Original bq_ntc: int8; array. */
    public mixed $bq_ntc;

    /** @brief Original mcu_ntc: int8; array. */
    public mixed $mcu_ntc;

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
        if (array_key_exists('version_high', $values))
        {
            $this->version_high = $values['version_high'];
        }
        else
        {
            $this->version_high = 0;
        }
        if (array_key_exists('version_low', $values))
        {
            $this->version_low = $values['version_low'];
        }
        else
        {
            $this->version_low = 0;
        }
        if (array_key_exists('status', $values))
        {
            $this->status = $values['status'];
        }
        else
        {
            $this->status = 0;
        }
        if (array_key_exists('soc', $values))
        {
            $this->soc = $values['soc'];
        }
        else
        {
            $this->soc = 0;
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
        if (array_key_exists('bq_ntc', $values))
        {
            $this->bq_ntc = $values['bq_ntc'];
        }
        else
        {
            $this->bq_ntc = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('mcu_ntc', $values))
        {
            $this->mcu_ntc = $values['mcu_ntc'];
        }
        else
        {
            $this->mcu_ntc = array_map(
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
                range(1, 15)
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgBmsState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgBmsState', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/Error field. */
final class Ros2Unitree_goMsgError
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgError',
        'native_identity' => 'RIHS01_7b40e63303d9092153a3914bb136ecee44ba37d8b827b11b142444eda9bc9450',
        'codec_identity' => 'UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/Error',
        'constants' => [],
        'fields' => [
            [
                'name' => 'source',
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
                'name' => 'state',
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

    /** @brief Original source: uint32; scalar. */
    public mixed $source;

    /** @brief Original state: uint32; scalar. */
    public mixed $state;

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
        if (array_key_exists('source', $values))
        {
            $this->source = $values['source'];
        }
        else
        {
            $this->source = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('state', $values))
        {
            $this->state = $values['state'];
        }
        else
        {
            $this->state = Word::fromDecimal('0', 4, false);
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgError', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgError', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/Go2FrontVideoData field. */
final class Ros2Unitree_goMsgGo2FrontVideoData
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgGo2FrontVideoData',
        'native_identity' => 'RIHS01_f548f7ccf101bb0255b0541484ab42aaac31305ccba06db976a8a19a3dbb1a33',
        'codec_identity' => 'UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad',
        'minimum' => 20,
        'maximum' => 6164,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/Go2FrontVideoData',
        'constants' => [],
        'fields' => [
            [
                'name' => 'time_frame',
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
                'name' => 'video720p',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 2048,
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
                'name' => 'video360p',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 2048,
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
                'name' => 'video180p',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 2048,
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

    /** @brief Original time_frame: uint64; scalar. */
    public mixed $time_frame;

    /** @brief Original video720p: uint8; sequence. */
    public mixed $video720p;

    /** @brief Original video360p: uint8; sequence. */
    public mixed $video360p;

    /** @brief Original video180p: uint8; sequence. */
    public mixed $video180p;

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
        if (array_key_exists('time_frame', $values))
        {
            $this->time_frame = $values['time_frame'];
        }
        else
        {
            $this->time_frame = Word::fromDecimal('0', 8, false);
        }
        if (array_key_exists('video720p', $values))
        {
            $this->video720p = $values['video720p'];
        }
        else
        {
            $this->video720p = [];
        }
        if (array_key_exists('video360p', $values))
        {
            $this->video360p = $values['video360p'];
        }
        else
        {
            $this->video360p = [];
        }
        if (array_key_exists('video180p', $values))
        {
            $this->video180p = $values['video180p'];
        }
        else
        {
            $this->video180p = [];
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgGo2FrontVideoData', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgGo2FrontVideoData', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/HeightMap field. */
final class Ros2Unitree_goMsgHeightMap
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgHeightMap',
        'native_identity' => 'RIHS01_68275718093f292da4fa0cb893b0e77660de92eb950691e1fe9f499d6cf5bff3',
        'codec_identity' => 'UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d',
        'minimum' => 36,
        'maximum' => 2212,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/HeightMap',
        'constants' => [],
        'fields' => [
            [
                'name' => 'stamp',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'frame_id',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'resolution',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'width',
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
                'name' => 'height',
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
                'name' => 'origin',
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
                'name' => 'data',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 32,
                'string_bound' => 0,
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

    /** @brief Original stamp: float64; scalar. */
    public mixed $stamp;

    /** @brief Original frame_id: string; scalar. */
    public mixed $frame_id;

    /** @brief Original resolution: float32; scalar. */
    public mixed $resolution;

    /** @brief Original width: uint32; scalar. */
    public mixed $width;

    /** @brief Original height: uint32; scalar. */
    public mixed $height;

    /** @brief Original origin: float32; array. */
    public mixed $origin;

    /** @brief Original data: float32; sequence. */
    public mixed $data;

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
        if (array_key_exists('stamp', $values))
        {
            $this->stamp = $values['stamp'];
        }
        else
        {
            $this->stamp = 0.0;
        }
        if (array_key_exists('frame_id', $values))
        {
            $this->frame_id = $values['frame_id'];
        }
        else
        {
            $this->frame_id = '';
        }
        if (array_key_exists('resolution', $values))
        {
            $this->resolution = $values['resolution'];
        }
        else
        {
            $this->resolution = 0.0;
        }
        if (array_key_exists('width', $values))
        {
            $this->width = $values['width'];
        }
        else
        {
            $this->width = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('height', $values))
        {
            $this->height = $values['height'];
        }
        else
        {
            $this->height = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('origin', $values))
        {
            $this->origin = $values['origin'];
        }
        else
        {
            $this->origin = array_map(
                static fn($index) => 0.0,
                range(1, 2)
            );
        }
        if (array_key_exists('data', $values))
        {
            $this->data = $values['data'];
        }
        else
        {
            $this->data = [];
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgHeightMap', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgHeightMap', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/IMUState field. */
final class Ros2Unitree_goMsgIMUState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgIMUState',
        'native_identity' => 'RIHS01_226772531e06ca5768dad7ae264221622e92ba1dbc7fcd7f8074351a23fe1c11',
        'codec_identity' => 'UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc',
        'minimum' => 53,
        'maximum' => 53,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/IMUState',
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgIMUState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgIMUState', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/InterfaceConfig field. */
final class Ros2Unitree_goMsgInterfaceConfig
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgInterfaceConfig',
        'native_identity' => 'RIHS01_78cdda3cfbbfeb9b32fca9a056727419ed88f908ed99c64e7b810f35281be61b',
        'codec_identity' => 'UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/InterfaceConfig',
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
                'name' => 'value',
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
            ]
        ]
    ];

    /** @brief Original mode: uint8; scalar. */
    public mixed $mode;

    /** @brief Original value: uint8; scalar. */
    public mixed $value;

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
        if (array_key_exists('mode', $values))
        {
            $this->mode = $values['mode'];
        }
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('value', $values))
        {
            $this->value = $values['value'];
        }
        else
        {
            $this->value = 0;
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = array_map(
                static fn($index) => 0,
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgInterfaceConfig', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgInterfaceConfig', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/LidarState field. */
final class Ros2Unitree_goMsgLidarState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgLidarState',
        'native_identity' => 'RIHS01_3a1405d747c51d6b5cf548ee67bc7b63d54b71673a54365fd67d6d09b7599d18',
        'codec_identity' => 'UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb',
        'minimum' => 81,
        'maximum' => 6225,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/LidarState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'stamp',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'firmware_version',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'software_version',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'sdk_version',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'sys_rotation_speed',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'com_rotation_speed',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'error_state',
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
                'name' => 'cloud_frequency',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'cloud_packet_loss_rate',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'cloud_size',
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
                'name' => 'cloud_scan_num',
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
                'name' => 'imu_frequency',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'imu_packet_loss_rate',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'imu_rpy',
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
                'name' => 'serial_recv_stamp',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'serial_buffer_size',
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
                'name' => 'serial_buffer_read',
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

    /** @brief Original stamp: float64; scalar. */
    public mixed $stamp;

    /** @brief Original firmware_version: string; scalar. */
    public mixed $firmware_version;

    /** @brief Original software_version: string; scalar. */
    public mixed $software_version;

    /** @brief Original sdk_version: string; scalar. */
    public mixed $sdk_version;

    /** @brief Original sys_rotation_speed: float32; scalar. */
    public mixed $sys_rotation_speed;

    /** @brief Original com_rotation_speed: float32; scalar. */
    public mixed $com_rotation_speed;

    /** @brief Original error_state: uint8; scalar. */
    public mixed $error_state;

    /** @brief Original cloud_frequency: float32; scalar. */
    public mixed $cloud_frequency;

    /** @brief Original cloud_packet_loss_rate: float32; scalar. */
    public mixed $cloud_packet_loss_rate;

    /** @brief Original cloud_size: uint32; scalar. */
    public mixed $cloud_size;

    /** @brief Original cloud_scan_num: uint32; scalar. */
    public mixed $cloud_scan_num;

    /** @brief Original imu_frequency: float32; scalar. */
    public mixed $imu_frequency;

    /** @brief Original imu_packet_loss_rate: float32; scalar. */
    public mixed $imu_packet_loss_rate;

    /** @brief Original imu_rpy: float32; array. */
    public mixed $imu_rpy;

    /** @brief Original serial_recv_stamp: float64; scalar. */
    public mixed $serial_recv_stamp;

    /** @brief Original serial_buffer_size: uint32; scalar. */
    public mixed $serial_buffer_size;

    /** @brief Original serial_buffer_read: uint32; scalar. */
    public mixed $serial_buffer_read;

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
        if (array_key_exists('stamp', $values))
        {
            $this->stamp = $values['stamp'];
        }
        else
        {
            $this->stamp = 0.0;
        }
        if (array_key_exists('firmware_version', $values))
        {
            $this->firmware_version = $values['firmware_version'];
        }
        else
        {
            $this->firmware_version = '';
        }
        if (array_key_exists('software_version', $values))
        {
            $this->software_version = $values['software_version'];
        }
        else
        {
            $this->software_version = '';
        }
        if (array_key_exists('sdk_version', $values))
        {
            $this->sdk_version = $values['sdk_version'];
        }
        else
        {
            $this->sdk_version = '';
        }
        if (array_key_exists('sys_rotation_speed', $values))
        {
            $this->sys_rotation_speed = $values['sys_rotation_speed'];
        }
        else
        {
            $this->sys_rotation_speed = 0.0;
        }
        if (array_key_exists('com_rotation_speed', $values))
        {
            $this->com_rotation_speed = $values['com_rotation_speed'];
        }
        else
        {
            $this->com_rotation_speed = 0.0;
        }
        if (array_key_exists('error_state', $values))
        {
            $this->error_state = $values['error_state'];
        }
        else
        {
            $this->error_state = 0;
        }
        if (array_key_exists('cloud_frequency', $values))
        {
            $this->cloud_frequency = $values['cloud_frequency'];
        }
        else
        {
            $this->cloud_frequency = 0.0;
        }
        if (array_key_exists('cloud_packet_loss_rate', $values))
        {
            $this->cloud_packet_loss_rate = $values['cloud_packet_loss_rate'];
        }
        else
        {
            $this->cloud_packet_loss_rate = 0.0;
        }
        if (array_key_exists('cloud_size', $values))
        {
            $this->cloud_size = $values['cloud_size'];
        }
        else
        {
            $this->cloud_size = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('cloud_scan_num', $values))
        {
            $this->cloud_scan_num = $values['cloud_scan_num'];
        }
        else
        {
            $this->cloud_scan_num = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('imu_frequency', $values))
        {
            $this->imu_frequency = $values['imu_frequency'];
        }
        else
        {
            $this->imu_frequency = 0.0;
        }
        if (array_key_exists('imu_packet_loss_rate', $values))
        {
            $this->imu_packet_loss_rate = $values['imu_packet_loss_rate'];
        }
        else
        {
            $this->imu_packet_loss_rate = 0.0;
        }
        if (array_key_exists('imu_rpy', $values))
        {
            $this->imu_rpy = $values['imu_rpy'];
        }
        else
        {
            $this->imu_rpy = array_map(
                static fn($index) => 0.0,
                range(1, 3)
            );
        }
        if (array_key_exists('serial_recv_stamp', $values))
        {
            $this->serial_recv_stamp = $values['serial_recv_stamp'];
        }
        else
        {
            $this->serial_recv_stamp = 0.0;
        }
        if (array_key_exists('serial_buffer_size', $values))
        {
            $this->serial_buffer_size = $values['serial_buffer_size'];
        }
        else
        {
            $this->serial_buffer_size = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('serial_buffer_read', $values))
        {
            $this->serial_buffer_read = $values['serial_buffer_read'];
        }
        else
        {
            $this->serial_buffer_read = Word::fromDecimal('0', 4, false);
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgLidarState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgLidarState', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/MotorCmd field. */
final class Ros2Unitree_goMsgMotorCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgMotorCmd',
        'native_identity' => 'RIHS01_4581f18a3bf58baad04f12f51747f2dd388f64aa2ac997d1d64777563c627fbf',
        'codec_identity' => 'UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989',
        'minimum' => 33,
        'maximum' => 33,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/MotorCmd',
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
                'name' => 'kp',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'kd',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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

    /** @brief Original kp: float32; scalar. */
    public mixed $kp;

    /** @brief Original kd: float32; scalar. */
    public mixed $kd;

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
        if (array_key_exists('kp', $values))
        {
            $this->kp = $values['kp'];
        }
        else
        {
            $this->kp = 0.0;
        }
        if (array_key_exists('kd', $values))
        {
            $this->kd = $values['kd'];
        }
        else
        {
            $this->kd = 0.0;
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgMotorCmd', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgMotorCmd', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/LowCmd field. */
final class Ros2Unitree_goMsgLowCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgLowCmd',
        'native_identity' => 'RIHS01_0da1142c994d184f6102948c3acf52b9557836cfe5062b924a1f08ac8b72dc34',
        'codec_identity' => 'UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63',
        'minimum' => 749,
        'maximum' => 749,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/LowCmd',
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
                'name' => 'level_flag',
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
                'name' => 'frame_reserve',
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
                'name' => 'sn',
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
                'name' => 'bandwidth',
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
                'name' => 'motor_cmd',
                'type' => 'Ros2Unitree_goMsgMotorCmd',
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
                'name' => 'bms_cmd',
                'type' => 'Ros2Unitree_goMsgBmsCmd',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'wireless_remote',
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
                'name' => 'led',
                'type' => 'uint8',
                'array' => 'array',
                'count' => 12,
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
                'name' => 'fan',
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
                'name' => 'gpio',
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

    /** @brief Original level_flag: uint8; scalar. */
    public mixed $level_flag;

    /** @brief Original frame_reserve: uint8; scalar. */
    public mixed $frame_reserve;

    /** @brief Original sn: uint32; array. */
    public mixed $sn;

    /** @brief Original version: uint32; array. */
    public mixed $version;

    /** @brief Original bandwidth: uint16; scalar. */
    public mixed $bandwidth;

    /** @brief Original motor_cmd: Ros2Unitree_goMsgMotorCmd; array. */
    public mixed $motor_cmd;

    /** @brief Original bms_cmd: Ros2Unitree_goMsgBmsCmd; scalar. */
    public mixed $bms_cmd;

    /** @brief Original wireless_remote: uint8; array. */
    public mixed $wireless_remote;

    /** @brief Original led: uint8; array. */
    public mixed $led;

    /** @brief Original fan: uint8; array. */
    public mixed $fan;

    /** @brief Original gpio: uint8; scalar. */
    public mixed $gpio;

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
        if (array_key_exists('level_flag', $values))
        {
            $this->level_flag = $values['level_flag'];
        }
        else
        {
            $this->level_flag = 0;
        }
        if (array_key_exists('frame_reserve', $values))
        {
            $this->frame_reserve = $values['frame_reserve'];
        }
        else
        {
            $this->frame_reserve = 0;
        }
        if (array_key_exists('sn', $values))
        {
            $this->sn = $values['sn'];
        }
        else
        {
            $this->sn = array_map(
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
        if (array_key_exists('bandwidth', $values))
        {
            $this->bandwidth = $values['bandwidth'];
        }
        else
        {
            $this->bandwidth = 0;
        }
        if (array_key_exists('motor_cmd', $values))
        {
            $this->motor_cmd = $values['motor_cmd'];
        }
        else
        {
            $this->motor_cmd = array_map(
                static fn($index) => new Ros2Unitree_goMsgMotorCmd(),
                range(1, 20)
            );
        }
        if (array_key_exists('bms_cmd', $values))
        {
            $this->bms_cmd = $values['bms_cmd'];
        }
        else
        {
            $this->bms_cmd = new Ros2Unitree_goMsgBmsCmd();
        }
        if (array_key_exists('wireless_remote', $values))
        {
            $this->wireless_remote = $values['wireless_remote'];
        }
        else
        {
            $this->wireless_remote = array_map(
                static fn($index) => 0,
                range(1, 40)
            );
        }
        if (array_key_exists('led', $values))
        {
            $this->led = $values['led'];
        }
        else
        {
            $this->led = array_map(
                static fn($index) => 0,
                range(1, 12)
            );
        }
        if (array_key_exists('fan', $values))
        {
            $this->fan = $values['fan'];
        }
        else
        {
            $this->fan = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('gpio', $values))
        {
            $this->gpio = $values['gpio'];
        }
        else
        {
            $this->gpio = 0;
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgLowCmd', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgLowCmd', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/MotorState field. */
final class Ros2Unitree_goMsgMotorState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgMotorState',
        'native_identity' => 'RIHS01_86fb56a4f6bebcba854e9b510225e6666ef46cf4ea13355870c2dd3c3478a88c',
        'codec_identity' => 'UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62',
        'minimum' => 42,
        'maximum' => 42,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/MotorState',
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
                'name' => 'tau_est',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'name' => 'lost',
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

    /** @brief Original tau_est: float32; scalar. */
    public mixed $tau_est;

    /** @brief Original q_raw: float32; scalar. */
    public mixed $q_raw;

    /** @brief Original dq_raw: float32; scalar. */
    public mixed $dq_raw;

    /** @brief Original ddq_raw: float32; scalar. */
    public mixed $ddq_raw;

    /** @brief Original temperature: int8; scalar. */
    public mixed $temperature;

    /** @brief Original lost: uint32; scalar. */
    public mixed $lost;

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
        if (array_key_exists('tau_est', $values))
        {
            $this->tau_est = $values['tau_est'];
        }
        else
        {
            $this->tau_est = 0.0;
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
        if (array_key_exists('lost', $values))
        {
            $this->lost = $values['lost'];
        }
        else
        {
            $this->lost = Word::fromDecimal('0', 4, false);
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgMotorState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgMotorState', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/LowState field. */
final class Ros2Unitree_goMsgLowState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgLowState',
        'native_identity' => 'RIHS01_db5172cac933e3cfc0e705903343eb4eea42e65e224e9d726d3e672aec0caf0f',
        'codec_identity' => 'UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab',
        'minimum' => 1050,
        'maximum' => 1050,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/LowState',
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
                'name' => 'level_flag',
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
                'name' => 'frame_reserve',
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
                'name' => 'sn',
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
                'name' => 'bandwidth',
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
                'name' => 'imu_state',
                'type' => 'Ros2Unitree_goMsgIMUState',
                'array' => '',
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
                'name' => 'motor_state',
                'type' => 'Ros2Unitree_goMsgMotorState',
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
                'element_minimum' => 42
            ],
            [
                'name' => 'bms_state',
                'type' => 'Ros2Unitree_goMsgBmsState',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 44
            ],
            [
                'name' => 'foot_force',
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
                'name' => 'foot_force_est',
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
                'name' => 'wireless_remote',
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
                'name' => 'bit_flag',
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
                'name' => 'adc_reel',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'temperature_ntc1',
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
                'name' => 'temperature_ntc2',
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
                'name' => 'power_v',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'power_a',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'fan_frequency',
                'type' => 'uint16',
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

    /** @brief Original level_flag: uint8; scalar. */
    public mixed $level_flag;

    /** @brief Original frame_reserve: uint8; scalar. */
    public mixed $frame_reserve;

    /** @brief Original sn: uint32; array. */
    public mixed $sn;

    /** @brief Original version: uint32; array. */
    public mixed $version;

    /** @brief Original bandwidth: uint16; scalar. */
    public mixed $bandwidth;

    /** @brief Original imu_state: Ros2Unitree_goMsgIMUState; scalar. */
    public mixed $imu_state;

    /** @brief Original motor_state: Ros2Unitree_goMsgMotorState; array. */
    public mixed $motor_state;

    /** @brief Original bms_state: Ros2Unitree_goMsgBmsState; scalar. */
    public mixed $bms_state;

    /** @brief Original foot_force: int16; array. */
    public mixed $foot_force;

    /** @brief Original foot_force_est: int16; array. */
    public mixed $foot_force_est;

    /** @brief Original tick: uint32; scalar. */
    public mixed $tick;

    /** @brief Original wireless_remote: uint8; array. */
    public mixed $wireless_remote;

    /** @brief Original bit_flag: uint8; scalar. */
    public mixed $bit_flag;

    /** @brief Original adc_reel: float32; scalar. */
    public mixed $adc_reel;

    /** @brief Original temperature_ntc1: int8; scalar. */
    public mixed $temperature_ntc1;

    /** @brief Original temperature_ntc2: int8; scalar. */
    public mixed $temperature_ntc2;

    /** @brief Original power_v: float32; scalar. */
    public mixed $power_v;

    /** @brief Original power_a: float32; scalar. */
    public mixed $power_a;

    /** @brief Original fan_frequency: uint16; array. */
    public mixed $fan_frequency;

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
        if (array_key_exists('level_flag', $values))
        {
            $this->level_flag = $values['level_flag'];
        }
        else
        {
            $this->level_flag = 0;
        }
        if (array_key_exists('frame_reserve', $values))
        {
            $this->frame_reserve = $values['frame_reserve'];
        }
        else
        {
            $this->frame_reserve = 0;
        }
        if (array_key_exists('sn', $values))
        {
            $this->sn = $values['sn'];
        }
        else
        {
            $this->sn = array_map(
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
        if (array_key_exists('bandwidth', $values))
        {
            $this->bandwidth = $values['bandwidth'];
        }
        else
        {
            $this->bandwidth = 0;
        }
        if (array_key_exists('imu_state', $values))
        {
            $this->imu_state = $values['imu_state'];
        }
        else
        {
            $this->imu_state = new Ros2Unitree_goMsgIMUState();
        }
        if (array_key_exists('motor_state', $values))
        {
            $this->motor_state = $values['motor_state'];
        }
        else
        {
            $this->motor_state = array_map(
                static fn($index) => new Ros2Unitree_goMsgMotorState(),
                range(1, 20)
            );
        }
        if (array_key_exists('bms_state', $values))
        {
            $this->bms_state = $values['bms_state'];
        }
        else
        {
            $this->bms_state = new Ros2Unitree_goMsgBmsState();
        }
        if (array_key_exists('foot_force', $values))
        {
            $this->foot_force = $values['foot_force'];
        }
        else
        {
            $this->foot_force = array_map(
                static fn($index) => 0,
                range(1, 4)
            );
        }
        if (array_key_exists('foot_force_est', $values))
        {
            $this->foot_force_est = $values['foot_force_est'];
        }
        else
        {
            $this->foot_force_est = array_map(
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
        if (array_key_exists('wireless_remote', $values))
        {
            $this->wireless_remote = $values['wireless_remote'];
        }
        else
        {
            $this->wireless_remote = array_map(
                static fn($index) => 0,
                range(1, 40)
            );
        }
        if (array_key_exists('bit_flag', $values))
        {
            $this->bit_flag = $values['bit_flag'];
        }
        else
        {
            $this->bit_flag = 0;
        }
        if (array_key_exists('adc_reel', $values))
        {
            $this->adc_reel = $values['adc_reel'];
        }
        else
        {
            $this->adc_reel = 0.0;
        }
        if (array_key_exists('temperature_ntc1', $values))
        {
            $this->temperature_ntc1 = $values['temperature_ntc1'];
        }
        else
        {
            $this->temperature_ntc1 = 0;
        }
        if (array_key_exists('temperature_ntc2', $values))
        {
            $this->temperature_ntc2 = $values['temperature_ntc2'];
        }
        else
        {
            $this->temperature_ntc2 = 0;
        }
        if (array_key_exists('power_v', $values))
        {
            $this->power_v = $values['power_v'];
        }
        else
        {
            $this->power_v = 0.0;
        }
        if (array_key_exists('power_a', $values))
        {
            $this->power_a = $values['power_a'];
        }
        else
        {
            $this->power_a = 0.0;
        }
        if (array_key_exists('fan_frequency', $values))
        {
            $this->fan_frequency = $values['fan_frequency'];
        }
        else
        {
            $this->fan_frequency = array_map(
                static fn($index) => 0,
                range(1, 4)
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgLowState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgLowState', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/MotorCmds field. */
final class Ros2Unitree_goMsgMotorCmds
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgMotorCmds',
        'native_identity' => 'RIHS01_42477c00fd1a43909adb05ac604791f230536f7f4d558aabb9c1433acc0cb39b',
        'codec_identity' => 'UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3',
        'minimum' => 4,
        'maximum' => 1060,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/MotorCmds',
        'constants' => [],
        'fields' => [
            [
                'name' => 'cmds',
                'type' => 'Ros2Unitree_goMsgMotorCmd',
                'array' => 'sequence',
                'count' => 32,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 33
            ]
        ]
    ];

    /** @brief Original cmds: Ros2Unitree_goMsgMotorCmd; sequence. */
    public mixed $cmds;

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
        if (array_key_exists('cmds', $values))
        {
            $this->cmds = $values['cmds'];
        }
        else
        {
            $this->cmds = [];
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgMotorCmds', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgMotorCmds', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/MotorStates field. */
final class Ros2Unitree_goMsgMotorStates
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgMotorStates',
        'native_identity' => 'RIHS01_0451336d1b203b1fc0e378d8a8e2f04a95a8346dcf988f0bb84ac4ff7ee508d6',
        'codec_identity' => 'UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e',
        'minimum' => 4,
        'maximum' => 1348,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/MotorStates',
        'constants' => [],
        'fields' => [
            [
                'name' => 'states',
                'type' => 'Ros2Unitree_goMsgMotorState',
                'array' => 'sequence',
                'count' => 32,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 42
            ]
        ]
    ];

    /** @brief Original states: Ros2Unitree_goMsgMotorState; sequence. */
    public mixed $states;

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
        if (array_key_exists('states', $values))
        {
            $this->states = $values['states'];
        }
        else
        {
            $this->states = [];
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgMotorStates', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgMotorStates', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/PathPoint field. */
final class Ros2Unitree_goMsgPathPoint
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgPathPoint',
        'native_identity' => 'RIHS01_c8bcdd0b29c28f9e853ffa2f4d404718c058f4c084dc13737540d81edb1ccd17',
        'codec_identity' => 'UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4',
        'minimum' => 28,
        'maximum' => 28,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/PathPoint',
        'constants' => [],
        'fields' => [
            [
                'name' => 't_from_start',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
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
                'name' => 'yaw',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'vx',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'vy',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'vyaw',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
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

    /** @brief Original t_from_start: float32; scalar. */
    public mixed $t_from_start;

    /** @brief Original x: float32; scalar. */
    public mixed $x;

    /** @brief Original y: float32; scalar. */
    public mixed $y;

    /** @brief Original yaw: float32; scalar. */
    public mixed $yaw;

    /** @brief Original vx: float32; scalar. */
    public mixed $vx;

    /** @brief Original vy: float32; scalar. */
    public mixed $vy;

    /** @brief Original vyaw: float32; scalar. */
    public mixed $vyaw;

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
        if (array_key_exists('t_from_start', $values))
        {
            $this->t_from_start = $values['t_from_start'];
        }
        else
        {
            $this->t_from_start = 0.0;
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
        if (array_key_exists('yaw', $values))
        {
            $this->yaw = $values['yaw'];
        }
        else
        {
            $this->yaw = 0.0;
        }
        if (array_key_exists('vx', $values))
        {
            $this->vx = $values['vx'];
        }
        else
        {
            $this->vx = 0.0;
        }
        if (array_key_exists('vy', $values))
        {
            $this->vy = $values['vy'];
        }
        else
        {
            $this->vy = 0.0;
        }
        if (array_key_exists('vyaw', $values))
        {
            $this->vyaw = $values['vyaw'];
        }
        else
        {
            $this->vyaw = 0.0;
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgPathPoint', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgPathPoint', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/Req field. */
final class Ros2Unitree_goMsgReq
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgReq',
        'native_identity' => 'RIHS01_7fda909d42424777c947f9c33a7a243eb1a4a1e89af5124a3a2ca7d3fa043b6e',
        'codec_identity' => 'UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8',
        'minimum' => 8,
        'maximum' => 4104,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/Req',
        'constants' => [],
        'fields' => [
            [
                'name' => 'uuid',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'body',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
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

    /** @brief Original uuid: string; scalar. */
    public mixed $uuid;

    /** @brief Original body: string; scalar. */
    public mixed $body;

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
        if (array_key_exists('uuid', $values))
        {
            $this->uuid = $values['uuid'];
        }
        else
        {
            $this->uuid = '';
        }
        if (array_key_exists('body', $values))
        {
            $this->body = $values['body'];
        }
        else
        {
            $this->body = '';
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgReq', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgReq', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/Res field. */
final class Ros2Unitree_goMsgRes
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgRes',
        'native_identity' => 'RIHS01_5e730fb54d81a32e7e28ef519c9b108c99ab6be7dd77c1ef4e66f7c1e69dde16',
        'codec_identity' => 'UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963',
        'minimum' => 12,
        'maximum' => 6156,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/Res',
        'constants' => [],
        'fields' => [
            [
                'name' => 'uuid',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'data',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 2048,
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
                'name' => 'body',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 2048,
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

    /** @brief Original uuid: string; scalar. */
    public mixed $uuid;

    /** @brief Original data: uint8; sequence. */
    public mixed $data;

    /** @brief Original body: string; scalar. */
    public mixed $body;

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
        if (array_key_exists('uuid', $values))
        {
            $this->uuid = $values['uuid'];
        }
        else
        {
            $this->uuid = '';
        }
        if (array_key_exists('data', $values))
        {
            $this->data = $values['data'];
        }
        else
        {
            $this->data = [];
        }
        if (array_key_exists('body', $values))
        {
            $this->body = $values['body'];
        }
        else
        {
            $this->body = '';
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgRes', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgRes', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/SportModeCmd field. */
final class Ros2Unitree_goMsgSportModeCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgSportModeCmd',
        'native_identity' => 'RIHS01_22c42d22e75a8d419fa6473b1d3ae92b3fa7473ca9d7bc9e336785659e7ab928',
        'codec_identity' => 'UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c',
        'minimum' => 887,
        'maximum' => 887,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/SportModeCmd',
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
                'name' => 'gait_type',
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
                'name' => 'speed_level',
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
                'name' => 'foot_raise_height',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'body_height',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'name' => 'yaw_speed',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'bms_cmd',
                'type' => 'Ros2Unitree_goMsgBmsCmd',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'path_point',
                'type' => 'Ros2Unitree_goMsgPathPoint',
                'array' => 'array',
                'count' => 30,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28
            ]
        ]
    ];

    /** @brief Original mode: uint8; scalar. */
    public mixed $mode;

    /** @brief Original gait_type: uint8; scalar. */
    public mixed $gait_type;

    /** @brief Original speed_level: uint8; scalar. */
    public mixed $speed_level;

    /** @brief Original foot_raise_height: float32; scalar. */
    public mixed $foot_raise_height;

    /** @brief Original body_height: float32; scalar. */
    public mixed $body_height;

    /** @brief Original position: float32; array. */
    public mixed $position;

    /** @brief Original euler: float32; array. */
    public mixed $euler;

    /** @brief Original velocity: float32; array. */
    public mixed $velocity;

    /** @brief Original yaw_speed: float32; scalar. */
    public mixed $yaw_speed;

    /** @brief Original bms_cmd: Ros2Unitree_goMsgBmsCmd; scalar. */
    public mixed $bms_cmd;

    /** @brief Original path_point: Ros2Unitree_goMsgPathPoint; array. */
    public mixed $path_point;

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
        if (array_key_exists('gait_type', $values))
        {
            $this->gait_type = $values['gait_type'];
        }
        else
        {
            $this->gait_type = 0;
        }
        if (array_key_exists('speed_level', $values))
        {
            $this->speed_level = $values['speed_level'];
        }
        else
        {
            $this->speed_level = 0;
        }
        if (array_key_exists('foot_raise_height', $values))
        {
            $this->foot_raise_height = $values['foot_raise_height'];
        }
        else
        {
            $this->foot_raise_height = 0.0;
        }
        if (array_key_exists('body_height', $values))
        {
            $this->body_height = $values['body_height'];
        }
        else
        {
            $this->body_height = 0.0;
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
        if (array_key_exists('yaw_speed', $values))
        {
            $this->yaw_speed = $values['yaw_speed'];
        }
        else
        {
            $this->yaw_speed = 0.0;
        }
        if (array_key_exists('bms_cmd', $values))
        {
            $this->bms_cmd = $values['bms_cmd'];
        }
        else
        {
            $this->bms_cmd = new Ros2Unitree_goMsgBmsCmd();
        }
        if (array_key_exists('path_point', $values))
        {
            $this->path_point = $values['path_point'];
        }
        else
        {
            $this->path_point = array_map(
                static fn($index) => new Ros2Unitree_goMsgPathPoint(),
                range(1, 30)
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgSportModeCmd', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgSportModeCmd', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/TimeSpec field. */
final class Ros2Unitree_goMsgTimeSpec
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgTimeSpec',
        'native_identity' => 'RIHS01_0cac3f0605af323add43e1ed3ae7fc01f7c7857f41380170b3ea3a899b28cb76',
        'codec_identity' => 'UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/TimeSpec',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sec',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'nanosec',
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

    /** @brief Original sec: int32; scalar. */
    public mixed $sec;

    /** @brief Original nanosec: uint32; scalar. */
    public mixed $nanosec;

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
        if (array_key_exists('sec', $values))
        {
            $this->sec = $values['sec'];
        }
        else
        {
            $this->sec = 0;
        }
        if (array_key_exists('nanosec', $values))
        {
            $this->nanosec = $values['nanosec'];
        }
        else
        {
            $this->nanosec = Word::fromDecimal('0', 4, false);
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgTimeSpec', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgTimeSpec', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/SportModeState field. */
final class Ros2Unitree_goMsgSportModeState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgSportModeState',
        'native_identity' => 'RIHS01_814b4692a904d586a0c6fe49ce344480434364d0fb410d06df2986a16e79fcd4',
        'codec_identity' => 'UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760',
        'minimum' => 227,
        'maximum' => 227,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/SportModeState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'stamp',
                'type' => 'Ros2Unitree_goMsgTimeSpec',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'error_code',
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
                'name' => 'imu_state',
                'type' => 'Ros2Unitree_goMsgIMUState',
                'array' => '',
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
                'name' => 'gait_type',
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
                'name' => 'foot_raise_height',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'name' => 'body_height',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'name' => 'yaw_speed',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'range_obstacle',
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
                'name' => 'foot_force',
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
                'name' => 'foot_position_body',
                'type' => 'float32',
                'array' => 'array',
                'count' => 12,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'foot_speed_body',
                'type' => 'float32',
                'array' => 'array',
                'count' => 12,
                'string_bound' => 0,
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

    /** @brief Original stamp: Ros2Unitree_goMsgTimeSpec; scalar. */
    public mixed $stamp;

    /** @brief Original error_code: uint32; scalar. */
    public mixed $error_code;

    /** @brief Original imu_state: Ros2Unitree_goMsgIMUState; scalar. */
    public mixed $imu_state;

    /** @brief Original mode: uint8; scalar. */
    public mixed $mode;

    /** @brief Original progress: float32; scalar. */
    public mixed $progress;

    /** @brief Original gait_type: uint8; scalar. */
    public mixed $gait_type;

    /** @brief Original foot_raise_height: float32; scalar. */
    public mixed $foot_raise_height;

    /** @brief Original position: float32; array. */
    public mixed $position;

    /** @brief Original body_height: float32; scalar. */
    public mixed $body_height;

    /** @brief Original velocity: float32; array. */
    public mixed $velocity;

    /** @brief Original yaw_speed: float32; scalar. */
    public mixed $yaw_speed;

    /** @brief Original range_obstacle: float32; array. */
    public mixed $range_obstacle;

    /** @brief Original foot_force: int16; array. */
    public mixed $foot_force;

    /** @brief Original foot_position_body: float32; array. */
    public mixed $foot_position_body;

    /** @brief Original foot_speed_body: float32; array. */
    public mixed $foot_speed_body;

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
        if (array_key_exists('stamp', $values))
        {
            $this->stamp = $values['stamp'];
        }
        else
        {
            $this->stamp = new Ros2Unitree_goMsgTimeSpec();
        }
        if (array_key_exists('error_code', $values))
        {
            $this->error_code = $values['error_code'];
        }
        else
        {
            $this->error_code = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('imu_state', $values))
        {
            $this->imu_state = $values['imu_state'];
        }
        else
        {
            $this->imu_state = new Ros2Unitree_goMsgIMUState();
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
        if (array_key_exists('gait_type', $values))
        {
            $this->gait_type = $values['gait_type'];
        }
        else
        {
            $this->gait_type = 0;
        }
        if (array_key_exists('foot_raise_height', $values))
        {
            $this->foot_raise_height = $values['foot_raise_height'];
        }
        else
        {
            $this->foot_raise_height = 0.0;
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
        if (array_key_exists('body_height', $values))
        {
            $this->body_height = $values['body_height'];
        }
        else
        {
            $this->body_height = 0.0;
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
        if (array_key_exists('yaw_speed', $values))
        {
            $this->yaw_speed = $values['yaw_speed'];
        }
        else
        {
            $this->yaw_speed = 0.0;
        }
        if (array_key_exists('range_obstacle', $values))
        {
            $this->range_obstacle = $values['range_obstacle'];
        }
        else
        {
            $this->range_obstacle = array_map(
                static fn($index) => 0.0,
                range(1, 4)
            );
        }
        if (array_key_exists('foot_force', $values))
        {
            $this->foot_force = $values['foot_force'];
        }
        else
        {
            $this->foot_force = array_map(
                static fn($index) => 0,
                range(1, 4)
            );
        }
        if (array_key_exists('foot_position_body', $values))
        {
            $this->foot_position_body = $values['foot_position_body'];
        }
        else
        {
            $this->foot_position_body = array_map(
                static fn($index) => 0.0,
                range(1, 12)
            );
        }
        if (array_key_exists('foot_speed_body', $values))
        {
            $this->foot_speed_body = $values['foot_speed_body'];
        }
        else
        {
            $this->foot_speed_body = array_map(
                static fn($index) => 0.0,
                range(1, 12)
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgSportModeState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgSportModeState', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/UwbState field. */
final class Ros2Unitree_goMsgUwbState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgUwbState',
        'native_identity' => 'RIHS01_d02a3bf8330a002373281a2888a9ea92d6135d7eba55c918403dabc38edce7f5',
        'codec_identity' => 'UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34',
        'minimum' => 55,
        'maximum' => 55,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/UwbState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'version',
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
                'name' => 'channel',
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
                'name' => 'joy_mode',
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
                'name' => 'orientation_est',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'pitch_est',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'distance_est',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'yaw_est',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'tag_roll',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'tag_pitch',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'tag_yaw',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'base_roll',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'base_pitch',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'base_yaw',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'joystick',
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
                'name' => 'error_state',
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
                'name' => 'buttons',
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
                'name' => 'enabled_from_app',
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

    /** @brief Original version: uint8; array. */
    public mixed $version;

    /** @brief Original channel: uint8; scalar. */
    public mixed $channel;

    /** @brief Original joy_mode: uint8; scalar. */
    public mixed $joy_mode;

    /** @brief Original orientation_est: float32; scalar. */
    public mixed $orientation_est;

    /** @brief Original pitch_est: float32; scalar. */
    public mixed $pitch_est;

    /** @brief Original distance_est: float32; scalar. */
    public mixed $distance_est;

    /** @brief Original yaw_est: float32; scalar. */
    public mixed $yaw_est;

    /** @brief Original tag_roll: float32; scalar. */
    public mixed $tag_roll;

    /** @brief Original tag_pitch: float32; scalar. */
    public mixed $tag_pitch;

    /** @brief Original tag_yaw: float32; scalar. */
    public mixed $tag_yaw;

    /** @brief Original base_roll: float32; scalar. */
    public mixed $base_roll;

    /** @brief Original base_pitch: float32; scalar. */
    public mixed $base_pitch;

    /** @brief Original base_yaw: float32; scalar. */
    public mixed $base_yaw;

    /** @brief Original joystick: float32; array. */
    public mixed $joystick;

    /** @brief Original error_state: uint8; scalar. */
    public mixed $error_state;

    /** @brief Original buttons: uint8; scalar. */
    public mixed $buttons;

    /** @brief Original enabled_from_app: uint8; scalar. */
    public mixed $enabled_from_app;

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
        if (array_key_exists('version', $values))
        {
            $this->version = $values['version'];
        }
        else
        {
            $this->version = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('channel', $values))
        {
            $this->channel = $values['channel'];
        }
        else
        {
            $this->channel = 0;
        }
        if (array_key_exists('joy_mode', $values))
        {
            $this->joy_mode = $values['joy_mode'];
        }
        else
        {
            $this->joy_mode = 0;
        }
        if (array_key_exists('orientation_est', $values))
        {
            $this->orientation_est = $values['orientation_est'];
        }
        else
        {
            $this->orientation_est = 0.0;
        }
        if (array_key_exists('pitch_est', $values))
        {
            $this->pitch_est = $values['pitch_est'];
        }
        else
        {
            $this->pitch_est = 0.0;
        }
        if (array_key_exists('distance_est', $values))
        {
            $this->distance_est = $values['distance_est'];
        }
        else
        {
            $this->distance_est = 0.0;
        }
        if (array_key_exists('yaw_est', $values))
        {
            $this->yaw_est = $values['yaw_est'];
        }
        else
        {
            $this->yaw_est = 0.0;
        }
        if (array_key_exists('tag_roll', $values))
        {
            $this->tag_roll = $values['tag_roll'];
        }
        else
        {
            $this->tag_roll = 0.0;
        }
        if (array_key_exists('tag_pitch', $values))
        {
            $this->tag_pitch = $values['tag_pitch'];
        }
        else
        {
            $this->tag_pitch = 0.0;
        }
        if (array_key_exists('tag_yaw', $values))
        {
            $this->tag_yaw = $values['tag_yaw'];
        }
        else
        {
            $this->tag_yaw = 0.0;
        }
        if (array_key_exists('base_roll', $values))
        {
            $this->base_roll = $values['base_roll'];
        }
        else
        {
            $this->base_roll = 0.0;
        }
        if (array_key_exists('base_pitch', $values))
        {
            $this->base_pitch = $values['base_pitch'];
        }
        else
        {
            $this->base_pitch = 0.0;
        }
        if (array_key_exists('base_yaw', $values))
        {
            $this->base_yaw = $values['base_yaw'];
        }
        else
        {
            $this->base_yaw = 0.0;
        }
        if (array_key_exists('joystick', $values))
        {
            $this->joystick = $values['joystick'];
        }
        else
        {
            $this->joystick = array_map(
                static fn($index) => 0.0,
                range(1, 2)
            );
        }
        if (array_key_exists('error_state', $values))
        {
            $this->error_state = $values['error_state'];
        }
        else
        {
            $this->error_state = 0;
        }
        if (array_key_exists('buttons', $values))
        {
            $this->buttons = $values['buttons'];
        }
        else
        {
            $this->buttons = 0;
        }
        if (array_key_exists('enabled_from_app', $values))
        {
            $this->enabled_from_app = $values['enabled_from_app'];
        }
        else
        {
            $this->enabled_from_app = 0;
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgUwbState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgUwbState', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/UwbSwitch field. */
final class Ros2Unitree_goMsgUwbSwitch
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgUwbSwitch',
        'native_identity' => 'RIHS01_de3a330c27e9a44eb3a7dcf3547d97fdafb74230bf679e6f04e4563935a6a270',
        'codec_identity' => 'UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/UwbSwitch',
        'constants' => [],
        'fields' => [
            [
                'name' => 'enabled',
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

    /** @brief Original enabled: uint8; scalar. */
    public mixed $enabled;

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
        if (array_key_exists('enabled', $values))
        {
            $this->enabled = $values['enabled'];
        }
        else
        {
            $this->enabled = 0;
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgUwbSwitch', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgUwbSwitch', $bytes);
    }
}

/** @brief Own every original unitree_go/msg/WirelessController field. */
final class Ros2Unitree_goMsgWirelessController
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_goMsgWirelessController',
        'native_identity' => 'RIHS01_83a5bbbf022f060aa36716ee78afb802528f26ce16238b9c3787939c830cbde5',
        'codec_identity' => 'UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438',
        'minimum' => 18,
        'maximum' => 18,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_go/msg/WirelessController',
        'constants' => [],
        'fields' => [
            [
                'name' => 'lx',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'ly',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'name' => 'keys',
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
            ]
        ]
    ];

    /** @brief Original lx: float32; scalar. */
    public mixed $lx;

    /** @brief Original ly: float32; scalar. */
    public mixed $ly;

    /** @brief Original rx: float32; scalar. */
    public mixed $rx;

    /** @brief Original ry: float32; scalar. */
    public mixed $ry;

    /** @brief Original keys: uint16; scalar. */
    public mixed $keys;

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
        if (array_key_exists('lx', $values))
        {
            $this->lx = $values['lx'];
        }
        else
        {
            $this->lx = 0.0;
        }
        if (array_key_exists('ly', $values))
        {
            $this->ly = $values['ly'];
        }
        else
        {
            $this->ly = 0.0;
        }
        if (array_key_exists('rx', $values))
        {
            $this->rx = $values['rx'];
        }
        else
        {
            $this->rx = 0.0;
        }
        if (array_key_exists('ry', $values))
        {
            $this->ry = $values['ry'];
        }
        else
        {
            $this->ry = 0.0;
        }
        if (array_key_exists('keys', $values))
        {
            $this->keys = $values['keys'];
        }
        else
        {
            $this->keys = 0;
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
        return Catalog::wire()->encode('Ros2Unitree_goMsgWirelessController', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_goMsgWirelessController', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/BmsCmd field. */
final class Ros2Unitree_hgMsgBmsCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgBmsCmd',
        'native_identity' => 'RIHS01_7b7d2f71ab061902dd207e6f243109167b3fed94427066f40180d563290b6e15',
        'codec_identity' => 'UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de',
        'minimum' => 41,
        'maximum' => 41,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/BmsCmd',
        'constants' => [],
        'fields' => [
            [
                'name' => 'cmd',
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
            ]
        ]
    ];

    /** @brief Original cmd: uint8; scalar. */
    public mixed $cmd;

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
        if (array_key_exists('cmd', $values))
        {
            $this->cmd = $values['cmd'];
        }
        else
        {
            $this->cmd = 0;
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = array_map(
                static fn($index) => 0,
                range(1, 40)
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgBmsCmd', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgBmsCmd', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/BmsState field. */
final class Ros2Unitree_hgMsgBmsState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgBmsState',
        'native_identity' => 'RIHS01_59d9c2459ddf390072902896850ce13ea5de394157907c7dc514d2187ff3e51f',
        'codec_identity' => 'UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d',
        'minimum' => 161,
        'maximum' => 161,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/BmsState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'version_high',
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
                'name' => 'version_low',
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
                'name' => 'fn',
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
                'name' => 'cell_vol',
                'type' => 'uint16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'bmsvoltage',
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
                'name' => 'soc',
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
                'name' => 'soh',
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
                'name' => 'temperature',
                'type' => 'int16',
                'array' => 'array',
                'count' => 12,
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
                'name' => 'manufacturer_date',
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
                'name' => 'bmsstate',
                'type' => 'uint32',
                'array' => 'array',
                'count' => 5,
                'string_bound' => 0,
                'native_string_bound' => 0,
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

    /** @brief Original version_high: uint8; scalar. */
    public mixed $version_high;

    /** @brief Original version_low: uint8; scalar. */
    public mixed $version_low;

    /** @brief Original fn: uint8; scalar. */
    public mixed $fn;

    /** @brief Original cell_vol: uint16; array. */
    public mixed $cell_vol;

    /** @brief Original bmsvoltage: uint32; array. */
    public mixed $bmsvoltage;

    /** @brief Original current: int32; scalar. */
    public mixed $current;

    /** @brief Original soc: uint8; scalar. */
    public mixed $soc;

    /** @brief Original soh: uint8; scalar. */
    public mixed $soh;

    /** @brief Original temperature: int16; array. */
    public mixed $temperature;

    /** @brief Original cycle: uint16; scalar. */
    public mixed $cycle;

    /** @brief Original manufacturer_date: uint16; scalar. */
    public mixed $manufacturer_date;

    /** @brief Original bmsstate: uint32; array. */
    public mixed $bmsstate;

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
        if (array_key_exists('version_high', $values))
        {
            $this->version_high = $values['version_high'];
        }
        else
        {
            $this->version_high = 0;
        }
        if (array_key_exists('version_low', $values))
        {
            $this->version_low = $values['version_low'];
        }
        else
        {
            $this->version_low = 0;
        }
        if (array_key_exists('fn', $values))
        {
            $this->fn = $values['fn'];
        }
        else
        {
            $this->fn = 0;
        }
        if (array_key_exists('cell_vol', $values))
        {
            $this->cell_vol = $values['cell_vol'];
        }
        else
        {
            $this->cell_vol = array_map(
                static fn($index) => 0,
                range(1, 40)
            );
        }
        if (array_key_exists('bmsvoltage', $values))
        {
            $this->bmsvoltage = $values['bmsvoltage'];
        }
        else
        {
            $this->bmsvoltage = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 3)
            );
        }
        if (array_key_exists('current', $values))
        {
            $this->current = $values['current'];
        }
        else
        {
            $this->current = 0;
        }
        if (array_key_exists('soc', $values))
        {
            $this->soc = $values['soc'];
        }
        else
        {
            $this->soc = 0;
        }
        if (array_key_exists('soh', $values))
        {
            $this->soh = $values['soh'];
        }
        else
        {
            $this->soh = 0;
        }
        if (array_key_exists('temperature', $values))
        {
            $this->temperature = $values['temperature'];
        }
        else
        {
            $this->temperature = array_map(
                static fn($index) => 0,
                range(1, 12)
            );
        }
        if (array_key_exists('cycle', $values))
        {
            $this->cycle = $values['cycle'];
        }
        else
        {
            $this->cycle = 0;
        }
        if (array_key_exists('manufacturer_date', $values))
        {
            $this->manufacturer_date = $values['manufacturer_date'];
        }
        else
        {
            $this->manufacturer_date = 0;
        }
        if (array_key_exists('bmsstate', $values))
        {
            $this->bmsstate = $values['bmsstate'];
        }
        else
        {
            $this->bmsstate = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 5)
            );
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgBmsState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgBmsState', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/MotorCmd field. */
final class Ros2Unitree_hgMsgMotorCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgMotorCmd',
        'native_identity' => 'RIHS01_b47468413c7037d0e2c0227fced04b91224cc165e5befe2b8cefacbe08391329',
        'codec_identity' => 'UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/MotorCmd',
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
                'name' => 'kp',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'kd',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
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

    /** @brief Original kp: float32; scalar. */
    public mixed $kp;

    /** @brief Original kd: float32; scalar. */
    public mixed $kd;

    /** @brief Original reserve: uint32; scalar. */
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
        if (array_key_exists('kp', $values))
        {
            $this->kp = $values['kp'];
        }
        else
        {
            $this->kp = 0.0;
        }
        if (array_key_exists('kd', $values))
        {
            $this->kd = $values['kd'];
        }
        else
        {
            $this->kd = 0.0;
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = Word::fromDecimal('0', 4, false);
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgMotorCmd', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgMotorCmd', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/HandCmd field. */
final class Ros2Unitree_hgMsgHandCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgHandCmd',
        'native_identity' => 'RIHS01_aa5efb217dfce9bba4a5c51be7d09b6426ea5ad20bb919b2033f285a2b98a8f4',
        'codec_identity' => 'UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006',
        'minimum' => 20,
        'maximum' => 820,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/HandCmd',
        'constants' => [],
        'fields' => [
            [
                'name' => 'motor_cmd',
                'type' => 'Ros2Unitree_hgMsgMotorCmd',
                'array' => 'sequence',
                'count' => 32,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 25
            ],
            [
                'name' => 'reserve',
                'type' => 'uint32',
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
            ]
        ]
    ];

    /** @brief Original motor_cmd: Ros2Unitree_hgMsgMotorCmd; sequence. */
    public mixed $motor_cmd;

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
        if (array_key_exists('motor_cmd', $values))
        {
            $this->motor_cmd = $values['motor_cmd'];
        }
        else
        {
            $this->motor_cmd = [];
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 4)
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgHandCmd', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgHandCmd', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/MotorState field. */
final class Ros2Unitree_hgMsgMotorState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgMotorState',
        'native_identity' => 'RIHS01_9fb0c7e50cef1769037c580304750df0da54b7a6a5fbfa92880f97add4945345',
        'codec_identity' => 'UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934',
        'minimum' => 53,
        'maximum' => 53,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/MotorState',
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
                'name' => 'tau_est',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'type' => 'int16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'vol',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'sensor',
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
                'name' => 'motorstate',
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
                'name' => 'reserve',
                'type' => 'uint32',
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

    /** @brief Original tau_est: float32; scalar. */
    public mixed $tau_est;

    /** @brief Original temperature: int16; array. */
    public mixed $temperature;

    /** @brief Original vol: float32; scalar. */
    public mixed $vol;

    /** @brief Original sensor: uint32; array. */
    public mixed $sensor;

    /** @brief Original motorstate: uint32; scalar. */
    public mixed $motorstate;

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
        if (array_key_exists('tau_est', $values))
        {
            $this->tau_est = $values['tau_est'];
        }
        else
        {
            $this->tau_est = 0.0;
        }
        if (array_key_exists('temperature', $values))
        {
            $this->temperature = $values['temperature'];
        }
        else
        {
            $this->temperature = array_map(
                static fn($index) => 0,
                range(1, 2)
            );
        }
        if (array_key_exists('vol', $values))
        {
            $this->vol = $values['vol'];
        }
        else
        {
            $this->vol = 0.0;
        }
        if (array_key_exists('sensor', $values))
        {
            $this->sensor = $values['sensor'];
        }
        else
        {
            $this->sensor = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
        }
        if (array_key_exists('motorstate', $values))
        {
            $this->motorstate = $values['motorstate'];
        }
        else
        {
            $this->motorstate = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 4)
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgMotorState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgMotorState', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/PressSensorState field. */
final class Ros2Unitree_hgMsgPressSensorState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgPressSensorState',
        'native_identity' => 'RIHS01_3c61bae23b785ee850c57df73a948d53ca5cb00ccbdb82ee526994c77ae8d908',
        'codec_identity' => 'UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5',
        'minimum' => 104,
        'maximum' => 104,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/PressSensorState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pressure',
                'type' => 'float32',
                'array' => 'array',
                'count' => 12,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
                'type' => 'float32',
                'array' => 'array',
                'count' => 12,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'lost',
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
            ]
        ]
    ];

    /** @brief Original pressure: float32; array. */
    public mixed $pressure;

    /** @brief Original temperature: float32; array. */
    public mixed $temperature;

    /** @brief Original lost: uint32; scalar. */
    public mixed $lost;

    /** @brief Original reserve: uint32; scalar. */
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
        if (array_key_exists('pressure', $values))
        {
            $this->pressure = $values['pressure'];
        }
        else
        {
            $this->pressure = array_map(
                static fn($index) => 0.0,
                range(1, 12)
            );
        }
        if (array_key_exists('temperature', $values))
        {
            $this->temperature = $values['temperature'];
        }
        else
        {
            $this->temperature = array_map(
                static fn($index) => 0.0,
                range(1, 12)
            );
        }
        if (array_key_exists('lost', $values))
        {
            $this->lost = $values['lost'];
        }
        else
        {
            $this->lost = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = Word::fromDecimal('0', 4, false);
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgPressSensorState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgPressSensorState', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/IMUState field. */
final class Ros2Unitree_hgMsgIMUState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgIMUState',
        'native_identity' => 'RIHS01_6fbba1a672360bf41e4393ad73d247036fd802d08adfb436d0c99a2a7b3ceec2',
        'codec_identity' => 'UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420',
        'minimum' => 54,
        'maximum' => 54,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/IMUState',
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
                'type' => 'int16',
                'array' => '',
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

    /** @brief Original temperature: int16; scalar. */
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgIMUState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgIMUState', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/HandState field. */
final class Ros2Unitree_hgMsgHandState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgHandState',
        'native_identity' => 'RIHS01_f8f161522deb4e58d5c1d679826c2a405b63b409db7e4ea9d17628f3029c4d2f',
        'codec_identity' => 'UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6',
        'minimum' => 94,
        'maximum' => 5118,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/HandState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'motor_state',
                'type' => 'Ros2Unitree_hgMsgMotorState',
                'array' => 'sequence',
                'count' => 32,
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
                'name' => 'press_sensor_state',
                'type' => 'Ros2Unitree_hgMsgPressSensorState',
                'array' => 'sequence',
                'count' => 32,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 104
            ],
            [
                'name' => 'imu_state',
                'type' => 'Ros2Unitree_hgMsgIMUState',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 54
            ],
            [
                'name' => 'power_v',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'power_a',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'system_v',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'device_v',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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

    /** @brief Original motor_state: Ros2Unitree_hgMsgMotorState; sequence. */
    public mixed $motor_state;

    /** @brief Original press_sensor_state: Ros2Unitree_hgMsgPressSensorState; sequence. */
    public mixed $press_sensor_state;

    /** @brief Original imu_state: Ros2Unitree_hgMsgIMUState; scalar. */
    public mixed $imu_state;

    /** @brief Original power_v: float32; scalar. */
    public mixed $power_v;

    /** @brief Original power_a: float32; scalar. */
    public mixed $power_a;

    /** @brief Original system_v: float32; scalar. */
    public mixed $system_v;

    /** @brief Original device_v: float32; scalar. */
    public mixed $device_v;

    /** @brief Original error: uint32; array. */
    public mixed $error;

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
        if (array_key_exists('motor_state', $values))
        {
            $this->motor_state = $values['motor_state'];
        }
        else
        {
            $this->motor_state = [];
        }
        if (array_key_exists('press_sensor_state', $values))
        {
            $this->press_sensor_state = $values['press_sensor_state'];
        }
        else
        {
            $this->press_sensor_state = [];
        }
        if (array_key_exists('imu_state', $values))
        {
            $this->imu_state = $values['imu_state'];
        }
        else
        {
            $this->imu_state = new Ros2Unitree_hgMsgIMUState();
        }
        if (array_key_exists('power_v', $values))
        {
            $this->power_v = $values['power_v'];
        }
        else
        {
            $this->power_v = 0.0;
        }
        if (array_key_exists('power_a', $values))
        {
            $this->power_a = $values['power_a'];
        }
        else
        {
            $this->power_a = 0.0;
        }
        if (array_key_exists('system_v', $values))
        {
            $this->system_v = $values['system_v'];
        }
        else
        {
            $this->system_v = 0.0;
        }
        if (array_key_exists('device_v', $values))
        {
            $this->device_v = $values['device_v'];
        }
        else
        {
            $this->device_v = 0.0;
        }
        if (array_key_exists('error', $values))
        {
            $this->error = $values['error'];
        }
        else
        {
            $this->error = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 2)
            );
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgHandState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgHandState', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/LowCmd field. */
final class Ros2Unitree_hgMsgLowCmd
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgLowCmd',
        'native_identity' => 'RIHS01_b0eec4778db3ad67ffade328b063bea700bd1558f3f359ea5e4c86e3c3f25bc5',
        'codec_identity' => 'UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461',
        'minimum' => 897,
        'maximum' => 897,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/LowCmd',
        'constants' => [],
        'fields' => [
            [
                'name' => 'mode_pr',
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
                'name' => 'mode_machine',
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
                'name' => 'motor_cmd',
                'type' => 'Ros2Unitree_hgMsgMotorCmd',
                'array' => 'array',
                'count' => 35,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 25
            ],
            [
                'name' => 'reserve',
                'type' => 'uint32',
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

    /** @brief Original mode_pr: uint8; scalar. */
    public mixed $mode_pr;

    /** @brief Original mode_machine: uint8; scalar. */
    public mixed $mode_machine;

    /** @brief Original motor_cmd: Ros2Unitree_hgMsgMotorCmd; array. */
    public mixed $motor_cmd;

    /** @brief Original reserve: uint32; array. */
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
        if (array_key_exists('mode_pr', $values))
        {
            $this->mode_pr = $values['mode_pr'];
        }
        else
        {
            $this->mode_pr = 0;
        }
        if (array_key_exists('mode_machine', $values))
        {
            $this->mode_machine = $values['mode_machine'];
        }
        else
        {
            $this->mode_machine = 0;
        }
        if (array_key_exists('motor_cmd', $values))
        {
            $this->motor_cmd = $values['motor_cmd'];
        }
        else
        {
            $this->motor_cmd = array_map(
                static fn($index) => new Ros2Unitree_hgMsgMotorCmd(),
                range(1, 35)
            );
        }
        if (array_key_exists('reserve', $values))
        {
            $this->reserve = $values['reserve'];
        }
        else
        {
            $this->reserve = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 4)
            );
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgLowCmd', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgLowCmd', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/LowState field. */
final class Ros2Unitree_hgMsgLowState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgLowState',
        'native_identity' => 'RIHS01_aee6c5bd4b4d2eeca854bf47e32e4e3d34c47c2cafa05c08b6b0fa4bc51c6b3a',
        'codec_identity' => 'UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d',
        'minimum' => 1983,
        'maximum' => 1983,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/LowState',
        'constants' => [],
        'fields' => [
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
                'name' => 'mode_pr',
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
                'name' => 'mode_machine',
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
                'name' => 'imu_state',
                'type' => 'Ros2Unitree_hgMsgIMUState',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 54
            ],
            [
                'name' => 'motor_state',
                'type' => 'Ros2Unitree_hgMsgMotorState',
                'array' => 'array',
                'count' => 35,
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
                'name' => 'wireless_remote',
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

    /** @brief Original version: uint32; array. */
    public mixed $version;

    /** @brief Original mode_pr: uint8; scalar. */
    public mixed $mode_pr;

    /** @brief Original mode_machine: uint8; scalar. */
    public mixed $mode_machine;

    /** @brief Original tick: uint32; scalar. */
    public mixed $tick;

    /** @brief Original imu_state: Ros2Unitree_hgMsgIMUState; scalar. */
    public mixed $imu_state;

    /** @brief Original motor_state: Ros2Unitree_hgMsgMotorState; array. */
    public mixed $motor_state;

    /** @brief Original wireless_remote: uint8; array. */
    public mixed $wireless_remote;

    /** @brief Original reserve: uint32; array. */
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
        if (array_key_exists('mode_pr', $values))
        {
            $this->mode_pr = $values['mode_pr'];
        }
        else
        {
            $this->mode_pr = 0;
        }
        if (array_key_exists('mode_machine', $values))
        {
            $this->mode_machine = $values['mode_machine'];
        }
        else
        {
            $this->mode_machine = 0;
        }
        if (array_key_exists('tick', $values))
        {
            $this->tick = $values['tick'];
        }
        else
        {
            $this->tick = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('imu_state', $values))
        {
            $this->imu_state = $values['imu_state'];
        }
        else
        {
            $this->imu_state = new Ros2Unitree_hgMsgIMUState();
        }
        if (array_key_exists('motor_state', $values))
        {
            $this->motor_state = $values['motor_state'];
        }
        else
        {
            $this->motor_state = array_map(
                static fn($index) => new Ros2Unitree_hgMsgMotorState(),
                range(1, 35)
            );
        }
        if (array_key_exists('wireless_remote', $values))
        {
            $this->wireless_remote = $values['wireless_remote'];
        }
        else
        {
            $this->wireless_remote = array_map(
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
            $this->reserve = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 4)
            );
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgLowState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgLowState', $bytes);
    }
}

/** @brief Own every original unitree_hg/msg/MainBoardState field. */
final class Ros2Unitree_hgMsgMainBoardState
{

    /** @brief Complete original descriptor and independently captured native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Unitree_hgMsgMainBoardState',
        'native_identity' => 'RIHS01_1420200fd0eedd8dbabb47d0ea2c3bdb38a7ee47c682c84301326db51baa5450',
        'codec_identity' => 'UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6',
        'minimum' => 72,
        'maximum' => 72,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'unitree_hg/msg/MainBoardState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'fan_state',
                'type' => 'uint16',
                'array' => 'array',
                'count' => 6,
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
                'name' => 'temperature',
                'type' => 'int16',
                'array' => 'array',
                'count' => 6,
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
                'name' => 'value',
                'type' => 'float32',
                'array' => 'array',
                'count' => 6,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'state',
                'type' => 'uint32',
                'array' => 'array',
                'count' => 6,
                'string_bound' => 0,
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

    /** @brief Original fan_state: uint16; array. */
    public mixed $fan_state;

    /** @brief Original temperature: int16; array. */
    public mixed $temperature;

    /** @brief Original value: float32; array. */
    public mixed $value;

    /** @brief Original state: uint32; array. */
    public mixed $state;

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
        if (array_key_exists('fan_state', $values))
        {
            $this->fan_state = $values['fan_state'];
        }
        else
        {
            $this->fan_state = array_map(
                static fn($index) => 0,
                range(1, 6)
            );
        }
        if (array_key_exists('temperature', $values))
        {
            $this->temperature = $values['temperature'];
        }
        else
        {
            $this->temperature = array_map(
                static fn($index) => 0,
                range(1, 6)
            );
        }
        if (array_key_exists('value', $values))
        {
            $this->value = $values['value'];
        }
        else
        {
            $this->value = array_map(
                static fn($index) => 0.0,
                range(1, 6)
            );
        }
        if (array_key_exists('state', $values))
        {
            $this->state = $values['state'];
        }
        else
        {
            $this->state = array_map(
                static fn($index) => Word::fromDecimal('0', 4, false),
                range(1, 6)
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
        return Catalog::wire()->encode('Ros2Unitree_hgMsgMainBoardState', $this);
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
        return Catalog::wire()->decode('Ros2Unitree_hgMsgMainBoardState', $bytes);
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
                    'Ros2Unitree_apiMsgRequestIdentity' => Ros2Unitree_apiMsgRequestIdentity::SCHEMA + [
                        'class' => Ros2Unitree_apiMsgRequestIdentity::class,
                    ],
                    'Ros2Unitree_apiMsgRequestLease' => Ros2Unitree_apiMsgRequestLease::SCHEMA + [
                        'class' => Ros2Unitree_apiMsgRequestLease::class,
                    ],
                    'Ros2Unitree_apiMsgRequestPolicy' => Ros2Unitree_apiMsgRequestPolicy::SCHEMA + [
                        'class' => Ros2Unitree_apiMsgRequestPolicy::class,
                    ],
                    'Ros2Unitree_apiMsgRequestHeader' => Ros2Unitree_apiMsgRequestHeader::SCHEMA + [
                        'class' => Ros2Unitree_apiMsgRequestHeader::class,
                    ],
                    'Ros2Unitree_apiMsgRequest' => Ros2Unitree_apiMsgRequest::SCHEMA + [
                        'class' => Ros2Unitree_apiMsgRequest::class,
                    ],
                    'Ros2Unitree_apiMsgResponseStatus' => Ros2Unitree_apiMsgResponseStatus::SCHEMA + [
                        'class' => Ros2Unitree_apiMsgResponseStatus::class,
                    ],
                    'Ros2Unitree_apiMsgResponseHeader' => Ros2Unitree_apiMsgResponseHeader::SCHEMA + [
                        'class' => Ros2Unitree_apiMsgResponseHeader::class,
                    ],
                    'Ros2Unitree_apiMsgResponse' => Ros2Unitree_apiMsgResponse::SCHEMA + [
                        'class' => Ros2Unitree_apiMsgResponse::class,
                    ],
                    'Ros2Unitree_goMsgAudioData' => Ros2Unitree_goMsgAudioData::SCHEMA + [
                        'class' => Ros2Unitree_goMsgAudioData::class,
                    ],
                    'Ros2Unitree_goMsgBmsCmd' => Ros2Unitree_goMsgBmsCmd::SCHEMA + [
                        'class' => Ros2Unitree_goMsgBmsCmd::class,
                    ],
                    'Ros2Unitree_goMsgBmsState' => Ros2Unitree_goMsgBmsState::SCHEMA + [
                        'class' => Ros2Unitree_goMsgBmsState::class,
                    ],
                    'Ros2Unitree_goMsgError' => Ros2Unitree_goMsgError::SCHEMA + [
                        'class' => Ros2Unitree_goMsgError::class,
                    ],
                    'Ros2Unitree_goMsgGo2FrontVideoData' => Ros2Unitree_goMsgGo2FrontVideoData::SCHEMA + [
                        'class' => Ros2Unitree_goMsgGo2FrontVideoData::class,
                    ],
                    'Ros2Unitree_goMsgHeightMap' => Ros2Unitree_goMsgHeightMap::SCHEMA + [
                        'class' => Ros2Unitree_goMsgHeightMap::class,
                    ],
                    'Ros2Unitree_goMsgIMUState' => Ros2Unitree_goMsgIMUState::SCHEMA + [
                        'class' => Ros2Unitree_goMsgIMUState::class,
                    ],
                    'Ros2Unitree_goMsgInterfaceConfig' => Ros2Unitree_goMsgInterfaceConfig::SCHEMA + [
                        'class' => Ros2Unitree_goMsgInterfaceConfig::class,
                    ],
                    'Ros2Unitree_goMsgLidarState' => Ros2Unitree_goMsgLidarState::SCHEMA + [
                        'class' => Ros2Unitree_goMsgLidarState::class,
                    ],
                    'Ros2Unitree_goMsgMotorCmd' => Ros2Unitree_goMsgMotorCmd::SCHEMA + [
                        'class' => Ros2Unitree_goMsgMotorCmd::class,
                    ],
                    'Ros2Unitree_goMsgLowCmd' => Ros2Unitree_goMsgLowCmd::SCHEMA + [
                        'class' => Ros2Unitree_goMsgLowCmd::class,
                    ],
                    'Ros2Unitree_goMsgMotorState' => Ros2Unitree_goMsgMotorState::SCHEMA + [
                        'class' => Ros2Unitree_goMsgMotorState::class,
                    ],
                    'Ros2Unitree_goMsgLowState' => Ros2Unitree_goMsgLowState::SCHEMA + [
                        'class' => Ros2Unitree_goMsgLowState::class,
                    ],
                    'Ros2Unitree_goMsgMotorCmds' => Ros2Unitree_goMsgMotorCmds::SCHEMA + [
                        'class' => Ros2Unitree_goMsgMotorCmds::class,
                    ],
                    'Ros2Unitree_goMsgMotorStates' => Ros2Unitree_goMsgMotorStates::SCHEMA + [
                        'class' => Ros2Unitree_goMsgMotorStates::class,
                    ],
                    'Ros2Unitree_goMsgPathPoint' => Ros2Unitree_goMsgPathPoint::SCHEMA + [
                        'class' => Ros2Unitree_goMsgPathPoint::class,
                    ],
                    'Ros2Unitree_goMsgReq' => Ros2Unitree_goMsgReq::SCHEMA + [
                        'class' => Ros2Unitree_goMsgReq::class,
                    ],
                    'Ros2Unitree_goMsgRes' => Ros2Unitree_goMsgRes::SCHEMA + [
                        'class' => Ros2Unitree_goMsgRes::class,
                    ],
                    'Ros2Unitree_goMsgSportModeCmd' => Ros2Unitree_goMsgSportModeCmd::SCHEMA + [
                        'class' => Ros2Unitree_goMsgSportModeCmd::class,
                    ],
                    'Ros2Unitree_goMsgTimeSpec' => Ros2Unitree_goMsgTimeSpec::SCHEMA + [
                        'class' => Ros2Unitree_goMsgTimeSpec::class,
                    ],
                    'Ros2Unitree_goMsgSportModeState' => Ros2Unitree_goMsgSportModeState::SCHEMA + [
                        'class' => Ros2Unitree_goMsgSportModeState::class,
                    ],
                    'Ros2Unitree_goMsgUwbState' => Ros2Unitree_goMsgUwbState::SCHEMA + [
                        'class' => Ros2Unitree_goMsgUwbState::class,
                    ],
                    'Ros2Unitree_goMsgUwbSwitch' => Ros2Unitree_goMsgUwbSwitch::SCHEMA + [
                        'class' => Ros2Unitree_goMsgUwbSwitch::class,
                    ],
                    'Ros2Unitree_goMsgWirelessController' => Ros2Unitree_goMsgWirelessController::SCHEMA + [
                        'class' => Ros2Unitree_goMsgWirelessController::class,
                    ],
                    'Ros2Unitree_hgMsgBmsCmd' => Ros2Unitree_hgMsgBmsCmd::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgBmsCmd::class,
                    ],
                    'Ros2Unitree_hgMsgBmsState' => Ros2Unitree_hgMsgBmsState::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgBmsState::class,
                    ],
                    'Ros2Unitree_hgMsgMotorCmd' => Ros2Unitree_hgMsgMotorCmd::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgMotorCmd::class,
                    ],
                    'Ros2Unitree_hgMsgHandCmd' => Ros2Unitree_hgMsgHandCmd::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgHandCmd::class,
                    ],
                    'Ros2Unitree_hgMsgMotorState' => Ros2Unitree_hgMsgMotorState::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgMotorState::class,
                    ],
                    'Ros2Unitree_hgMsgPressSensorState' => Ros2Unitree_hgMsgPressSensorState::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgPressSensorState::class,
                    ],
                    'Ros2Unitree_hgMsgIMUState' => Ros2Unitree_hgMsgIMUState::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgIMUState::class,
                    ],
                    'Ros2Unitree_hgMsgHandState' => Ros2Unitree_hgMsgHandState::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgHandState::class,
                    ],
                    'Ros2Unitree_hgMsgLowCmd' => Ros2Unitree_hgMsgLowCmd::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgLowCmd::class,
                    ],
                    'Ros2Unitree_hgMsgLowState' => Ros2Unitree_hgMsgLowState::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgLowState::class,
                    ],
                    'Ros2Unitree_hgMsgMainBoardState' => Ros2Unitree_hgMsgMainBoardState::SCHEMA + [
                        'class' => Ros2Unitree_hgMsgMainBoardState::class,
                    ],
                ]);
        }
        return $wire;
    }
}
