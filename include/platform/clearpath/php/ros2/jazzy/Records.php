<?php
declare(strict_types=1);
namespace Uwvm\Clearpath\Ros2_jazzy;
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @file Records.php
 * @brief Complete original clearpath owning classes using the shared PHP codec.
 * @details Full-width words remain exact on PHP32 and PHP64; no native registration is inferred. */
/** @brief Own every original clearpath_motor_msgs/action/LynxCalibrate_Goal field. */
final class Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_61b01a6234b41f96464de9449b3e8d1b955decf6afa12aa3ba94062c98cec681',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/action/LynxCalibrate_Goal',
        'constants' => [],
        'fields' => [],
    ];
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/action/LynxCalibrate_Result field. */
final class Ros2Clearpath_motor_msgsActionLynxCalibrate_Result
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsActionLynxCalibrate_Result',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_686450363b8b15eba1e9e9e9ff05c9aacfb95bb0d113eaa7c443e4c70d55d41f',
        'minimum' => 4,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/action/LynxCalibrate_Result',
        'constants' => [],
        'fields' => [
            [
                'name' => 'offset',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original offset: float32; sequence. */
    public mixed $offset;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->offset = array_key_exists('offset', $values) ? $values['offset'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsActionLynxCalibrate_Result', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsActionLynxCalibrate_Result', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/action/LynxCalibrate_Feedback field. */
final class Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ebe7badd3f72982079911d8aa72c4ddd27ff0a12d2f948e5970649317a592b53',
        'minimum' => 4,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/action/LynxCalibrate_Feedback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'iteration',
                'type' => 'uint16',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 2,
            ],
        ],
    ];
    /** @brief Original iteration: uint16; sequence. */
    public mixed $iteration;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->iteration = array_key_exists('iteration', $values) ? $values['iteration'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/action/LynxUpdate_Goal field. */
final class Ros2Clearpath_motor_msgsActionLynxUpdate_Goal
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsActionLynxUpdate_Goal',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f0362f8a90391e8ffda2e8f3b798769b644091058361882c4e9457196f007565',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/action/LynxUpdate_Goal',
        'constants' => [],
        'fields' => [
            [
                'name' => 'file',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original file: string; scalar. */
    public mixed $file;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->file = array_key_exists('file', $values) ? $values['file'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsActionLynxUpdate_Goal', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsActionLynxUpdate_Goal', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/action/LynxUpdate_Result field. */
final class Ros2Clearpath_motor_msgsActionLynxUpdate_Result
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsActionLynxUpdate_Result',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_126fe871dbcb036e485d20e8ccdc8e9fb7be01757f539bfba895aabf44d341d8',
        'minimum' => 4,
        'maximum' => 6,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/action/LynxUpdate_Result',
        'constants' => [],
        'fields' => [
            [
                'name' => 'success',
                'type' => 'bool',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original success: bool; sequence. */
    public mixed $success;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->success = array_key_exists('success', $values) ? $values['success'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsActionLynxUpdate_Result', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsActionLynxUpdate_Result', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/action/LynxUpdate_Feedback field. */
final class Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2179ec9dee627234a1a31e9681ff214cc45ca837349cd8e407e019a354121b19',
        'minimum' => 4,
        'maximum' => 12,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/action/LynxUpdate_Feedback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'progress',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original progress: float32; sequence. */
    public mixed $progress;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->progress = array_key_exists('progress', $values) ? $values['progress'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback', $bytes);
    }
}
/** @brief Own every original builtin_interfaces/msg/Duration field. */
final class Ros2Builtin_interfacesMsgDuration
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Builtin_interfacesMsgDuration',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-duration',
        'ros_version' => 2,
        'native_type' => 'builtin_interfaces/msg/Duration',
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
                'element_minimum' => 4,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original sec: int32; scalar. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar. */
    public mixed $nanosec;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->sec = array_key_exists('sec', $values) ? $values['sec'] : 0;
        $this->nanosec = array_key_exists('nanosec', $values) ? $values['nanosec'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgDuration', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgDuration', $bytes);
    }
}
/** @brief Own every original builtin_interfaces/msg/Time field. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Builtin_interfacesMsgTime',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
        'ros_version' => 2,
        'native_type' => 'builtin_interfaces/msg/Time',
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
                'element_minimum' => 4,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original sec: int32; scalar. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar. */
    public mixed $nanosec;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->sec = array_key_exists('sec', $values) ? $values['sec'] : 0;
        $this->nanosec = array_key_exists('nanosec', $values) ? $values['nanosec'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes);
    }
}
/** @brief Own every original clearpath_control_msgs/msg/DeviceInfo field. */
final class Ros2Clearpath_control_msgsMsgDeviceInfo
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_control_msgsMsgDeviceInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9111f5d4b5324c36eb85f01e6fdbc3c589479ff5b64a8fa7b9d467aa14675c3e',
        'minimum' => 28,
        'maximum' => 1820,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_control_msgs/msg/DeviceInfo',
        'constants' => [],
        'fields' => [
            [
                'name' => 'device_id',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'device_class',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'model',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'manufacturer',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'firmware_version',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'hardware_version',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'serial_number',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original device_id: string; scalar. */
    public mixed $device_id;
    /** @brief Original device_class: string; scalar. */
    public mixed $device_class;
    /** @brief Original model: string; scalar. */
    public mixed $model;
    /** @brief Original manufacturer: string; scalar. */
    public mixed $manufacturer;
    /** @brief Original firmware_version: string; scalar. */
    public mixed $firmware_version;
    /** @brief Original hardware_version: string; scalar. */
    public mixed $hardware_version;
    /** @brief Original serial_number: string; scalar. */
    public mixed $serial_number;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->device_id = array_key_exists('device_id', $values) ? $values['device_id'] : '';
        $this->device_class = array_key_exists('device_class', $values) ? $values['device_class'] : '';
        $this->model = array_key_exists('model', $values) ? $values['model'] : '';
        $this->manufacturer = array_key_exists('manufacturer', $values) ? $values['manufacturer'] : '';
        $this->firmware_version = array_key_exists('firmware_version', $values) ? $values['firmware_version'] : '';
        $this->hardware_version = array_key_exists('hardware_version', $values) ? $values['hardware_version'] : '';
        $this->serial_number = array_key_exists('serial_number', $values) ? $values['serial_number'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_control_msgsMsgDeviceInfo', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_control_msgsMsgDeviceInfo', $bytes);
    }
}
/** @brief Own every original clearpath_control_msgs/msg/StreamControl field. */
final class Ros2Clearpath_control_msgsMsgStreamControl
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_control_msgsMsgStreamControl',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_26208e266c9185bfb0e715407ab0fe313f2d47e6bc9f54594a102c3a09d34734',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_control_msgs/msg/StreamControl',
        'constants' => [],
        'fields' => [
            [
                'name' => 'stream',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'enabled',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original stream: string; scalar. */
    public mixed $stream;
    /** @brief Original enabled: bool; scalar. */
    public mixed $enabled;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->stream = array_key_exists('stream', $values) ? $values['stream'] : '';
        $this->enabled = array_key_exists('enabled', $values) ? $values['enabled'] : false;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_control_msgsMsgStreamControl', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_control_msgsMsgStreamControl', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/LynxDebug field. */
final class Ros2Clearpath_motor_msgsMsgLynxDebug
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgLynxDebug',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0341ae040f1e8a1f980bde84498c4a4f8b9c55c3806839a73727c1579ab4416e',
        'minimum' => 19,
        'maximum' => 291,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/LynxDebug',
        'constants' => [
            'ACCUMULATOR_FLAG_ABOVE_RATED' => 0,
            'ACCUMULATOR_FLAG_CONTINUOUS_1_1' => 1,
            'ACCUMULATOR_FLAG_CONTINUOUS_1_2' => 2,
            'ACCUMULATOR_FLAG_CONTINUOUS_1_3' => 3,
            'ACCUMULATOR_FLAG_CONTINUOUS_1_4' => 4,
            'ACCUMULATOR_FLAG_CONTINUOUS_1_5' => 5,
            'ACCUMULATOR_FLAG_CONTINUOUS_1_6' => 6,
            'ACCUMULATOR_FLAG_CONTINUOUS_1_7' => 7,
            'ACCUMULATOR_FLAG_CONTINUOUS_1_8' => 8,
            'ACCUMULATOR_FLAG_CONTINUOUS_1_9' => 9,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_0' => 10,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_1' => 11,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_2' => 12,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_3' => 13,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_4' => 14,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_5' => 15,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_6' => 16,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_7' => 17,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_8' => 18,
            'ACCUMULATOR_FLAG_CONTINUOUS_2_9' => 19,
            'ACCUMULATOR_FLAG_CONTINUOUS_3_0' => 20,
            'ACCUMULATOR_ABOVE_RATED' => 0,
            'ACCUMULATOR_CONTINUOUS_1_1' => 1,
            'ACCUMULATOR_CONTINUOUS_1_5' => 2,
            'ACCUMULATOR_CONTINUOUS_2_0' => 3,
            'ACCUMULATOR_CONTINUOUS_2_5' => 4,
            'ACCUMULATOR_CONTINUOUS_3_0' => 5,
            'CURRENT_ID_FB' => 0,
            'CURRENT_ID_FF' => 1,
            'CURRENT_ID_REF' => 2,
            'CURRENT_IQ_FB' => 3,
            'CURRENT_IQ_FF' => 4,
            'CURRENT_IQ_REF' => 5,
        ],
        'fields' => [
            [
                'name' => 'can_id',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'joint_name',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'fault_frequency',
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
                'element_minimum' => 2,
            ],
            [
                'name' => 'accumulator_flags',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'accumulators',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'currents',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original can_id: uint8; scalar. */
    public mixed $can_id;
    /** @brief Original joint_name: string; scalar. */
    public mixed $joint_name;
    /** @brief Original fault_frequency: uint16; scalar. */
    public mixed $fault_frequency;
    /** @brief Original accumulator_flags: uint32; scalar. */
    public mixed $accumulator_flags;
    /** @brief Original accumulators: float32; sequence. */
    public mixed $accumulators;
    /** @brief Original currents: float32; sequence. */
    public mixed $currents;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->can_id = array_key_exists('can_id', $values) ? $values['can_id'] : 0;
        $this->joint_name = array_key_exists('joint_name', $values) ? $values['joint_name'] : '';
        $this->fault_frequency = array_key_exists('fault_frequency', $values) ? $values['fault_frequency'] : 0;
        $this->accumulator_flags = array_key_exists('accumulator_flags', $values) ? $values['accumulator_flags'] : Word::fromDecimal('0', 4, false);
        $this->accumulators = array_key_exists('accumulators', $values) ? $values['accumulators'] : [];
        $this->currents = array_key_exists('currents', $values) ? $values['currents'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgLynxDebug', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgLynxDebug', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/LynxFeedback field. */
final class Ros2Clearpath_motor_msgsMsgLynxFeedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgLynxFeedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5d92c7085019ebf00ba93788b5b2f4055ad40b2c6714575a66fb75cf314429eb',
        'minimum' => 21,
        'maximum' => 277,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/LynxFeedback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'can_id',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'joint_name',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'current',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'voltage',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'velocity',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'travel',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original can_id: uint8; scalar. */
    public mixed $can_id;
    /** @brief Original joint_name: string; scalar. */
    public mixed $joint_name;
    /** @brief Original current: float32; scalar. */
    public mixed $current;
    /** @brief Original voltage: float32; scalar. */
    public mixed $voltage;
    /** @brief Original velocity: float32; scalar. */
    public mixed $velocity;
    /** @brief Original travel: float32; scalar. */
    public mixed $travel;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->can_id = array_key_exists('can_id', $values) ? $values['can_id'] : 0;
        $this->joint_name = array_key_exists('joint_name', $values) ? $values['joint_name'] : '';
        $this->current = array_key_exists('current', $values) ? $values['current'] : 0.0;
        $this->voltage = array_key_exists('voltage', $values) ? $values['voltage'] : 0.0;
        $this->velocity = array_key_exists('velocity', $values) ? $values['velocity'] : 0.0;
        $this->travel = array_key_exists('travel', $values) ? $values['travel'] : 0.0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgLynxFeedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgLynxFeedback', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/LynxMotorProtection field. */
final class Ros2Clearpath_motor_msgsMsgLynxMotorProtection
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgLynxMotorProtection',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f824abfa97f6f24934e04094d66170167f19a14fb933f325cbef4ed6fca16630',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/LynxMotorProtection',
        'constants' => [
            'NORMAL' => 0,
            'THROTTLED' => 1,
            'OVERHEATED' => 2,
            'ERROR' => 3,
        ],
        'fields' => [
            [
                'name' => 'can_id',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'joint_name',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'state',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original can_id: uint8; scalar. */
    public mixed $can_id;
    /** @brief Original joint_name: string; scalar. */
    public mixed $joint_name;
    /** @brief Original state: uint8; scalar. */
    public mixed $state;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->can_id = array_key_exists('can_id', $values) ? $values['can_id'] : 0;
        $this->joint_name = array_key_exists('joint_name', $values) ? $values['joint_name'] : '';
        $this->state = array_key_exists('state', $values) ? $values['state'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgLynxMotorProtection', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgLynxMotorProtection', $bytes);
    }
}
/** @brief Own every original std_msgs/msg/Header field. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgHeader',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'std_msgs/msg/Header',
        'constants' => [],
        'fields' => [
            [
                'name' => 'stamp',
                'type' => 'Ros2Builtin_interfacesMsgTime',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'frame_id',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original stamp: Ros2Builtin_interfacesMsgTime; scalar. */
    public mixed $stamp;
    /** @brief Original frame_id: string; scalar. */
    public mixed $frame_id;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->stamp = array_key_exists('stamp', $values) ? $values['stamp'] : new Ros2Builtin_interfacesMsgTime();
        $this->frame_id = array_key_exists('frame_id', $values) ? $values['frame_id'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/LynxMultiDebug field. */
final class Ros2Clearpath_motor_msgsMsgLynxMultiDebug
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgLynxMultiDebug',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_056abd2153e7f1a6df223bf5daba581e6c218bb7ef365444fc5c3171dfc62e95',
        'minimum' => 16,
        'maximum' => 1308,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/LynxMultiDebug',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'drivers',
                'type' => 'Ros2Clearpath_motor_msgsMsgLynxDebug',
                'array' => 'sequence',
                'count' => 4,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 19,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original drivers: Ros2Clearpath_motor_msgsMsgLynxDebug; sequence. */
    public mixed $drivers;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->drivers = array_key_exists('drivers', $values) ? $values['drivers'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgLynxMultiDebug', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgLynxMultiDebug', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/LynxMultiFeedback field. */
final class Ros2Clearpath_motor_msgsMsgLynxMultiFeedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgLynxMultiFeedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2c83cade6bec4d766fd2cff97338642b3d2065d41e9968ccf5054c6f231242c7',
        'minimum' => 16,
        'maximum' => 1252,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/LynxMultiFeedback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'drivers',
                'type' => 'Ros2Clearpath_motor_msgsMsgLynxFeedback',
                'array' => 'sequence',
                'count' => 4,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 21,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original drivers: Ros2Clearpath_motor_msgsMsgLynxFeedback; sequence. */
    public mixed $drivers;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->drivers = array_key_exists('drivers', $values) ? $values['drivers'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgLynxMultiFeedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgLynxMultiFeedback', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/LynxStatus field. */
final class Ros2Clearpath_motor_msgsMsgLynxStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgLynxStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b68a7ab9bc5312c59d2ef86e49313468b631e8cacdf52468374b67f4eced5c6d',
        'minimum' => 34,
        'maximum' => 546,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/LynxStatus',
        'constants' => [
            'STATUS_FLAG_ADC_CALIBRATED' => 0,
            'STATUS_FLAG_FOC_ENABLED' => 1,
            'STATUS_FLAG_CALIBRATION_REQUESTED' => 2,
            'STATUS_FLAG_CALIBRATION_CANCELLED' => 3,
            'STATUS_FLAG_ESTOPPED' => 4,
            'WARNING_FLAG_MOTOR_THERMISTOR' => 0,
            'WARNING_FLAG_PCB_THERMISTOR' => 1,
            'WARNING_FLAG_PHASE' => 2,
            'WARNING_FLAG_PHASE_A' => 3,
            'WARNING_FLAG_PHASE_B' => 4,
            'WARNING_FLAG_PHASE_C' => 5,
            'WARNING_FLAG_ENCODER_INDEX' => 6,
            'WARNING_FLAG_ENCODER_OUTPUT_A' => 7,
            'WARNING_FLAG_ENCODER_OUTPUT_B' => 8,
            'ERROR_FLAG_NOT_CALIBRATED' => 0,
            'ERROR_FLAG_MOTOR_FAULT' => 1,
            'ERROR_FLAG_MOTOR_STALLING' => 2,
            'ERROR_FLAG_MOTOR_THERMISTOR' => 3,
            'ERROR_FLAG_PCB_THERMISTOR' => 4,
            'ERROR_FLAG_PHASE' => 5,
            'ERROR_FLAG_PHASE_A' => 6,
            'ERROR_FLAG_PHASE_B' => 7,
            'ERROR_FLAG_PHASE_C' => 8,
            'ERROR_FLAG_ENCODER_POWER' => 9,
            'ERROR_FLAG_ENCODER_INDEX' => 10,
            'ERROR_FLAG_ENCODER_OUTPUT_A' => 11,
            'ERROR_FLAG_ENCODER_OUTPUT_B' => 12,
        ],
        'fields' => [
            [
                'name' => 'can_id',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'joint_name',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'firmware_version',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'motor_temperature',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'mcu_temperature',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'pcb_temperature',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'stopped',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'status_flags',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'warning_flags',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'error_flags',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original can_id: uint8; scalar. */
    public mixed $can_id;
    /** @brief Original joint_name: string; scalar. */
    public mixed $joint_name;
    /** @brief Original firmware_version: string; scalar. */
    public mixed $firmware_version;
    /** @brief Original motor_temperature: float32; scalar. */
    public mixed $motor_temperature;
    /** @brief Original mcu_temperature: float32; scalar. */
    public mixed $mcu_temperature;
    /** @brief Original pcb_temperature: float32; scalar. */
    public mixed $pcb_temperature;
    /** @brief Original stopped: bool; scalar. */
    public mixed $stopped;
    /** @brief Original status_flags: uint32; scalar. */
    public mixed $status_flags;
    /** @brief Original warning_flags: uint32; scalar. */
    public mixed $warning_flags;
    /** @brief Original error_flags: uint32; scalar. */
    public mixed $error_flags;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->can_id = array_key_exists('can_id', $values) ? $values['can_id'] : 0;
        $this->joint_name = array_key_exists('joint_name', $values) ? $values['joint_name'] : '';
        $this->firmware_version = array_key_exists('firmware_version', $values) ? $values['firmware_version'] : '';
        $this->motor_temperature = array_key_exists('motor_temperature', $values) ? $values['motor_temperature'] : 0.0;
        $this->mcu_temperature = array_key_exists('mcu_temperature', $values) ? $values['mcu_temperature'] : 0.0;
        $this->pcb_temperature = array_key_exists('pcb_temperature', $values) ? $values['pcb_temperature'] : 0.0;
        $this->stopped = array_key_exists('stopped', $values) ? $values['stopped'] : false;
        $this->status_flags = array_key_exists('status_flags', $values) ? $values['status_flags'] : Word::fromDecimal('0', 4, false);
        $this->warning_flags = array_key_exists('warning_flags', $values) ? $values['warning_flags'] : Word::fromDecimal('0', 4, false);
        $this->error_flags = array_key_exists('error_flags', $values) ? $values['error_flags'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgLynxStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgLynxStatus', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/LynxMultiStatus field. */
final class Ros2Clearpath_motor_msgsMsgLynxMultiStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgLynxMultiStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_595cd0847b4332e14cc067b916166e9a6e1d1e12a7a68cdb7e1cd414a9ea9ce1',
        'minimum' => 16,
        'maximum' => 2328,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/LynxMultiStatus',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'drivers',
                'type' => 'Ros2Clearpath_motor_msgsMsgLynxStatus',
                'array' => 'sequence',
                'count' => 4,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 34,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original drivers: Ros2Clearpath_motor_msgsMsgLynxStatus; sequence. */
    public mixed $drivers;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->drivers = array_key_exists('drivers', $values) ? $values['drivers'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgLynxMultiStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgLynxMultiStatus', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/LynxSystemProtection field. */
final class Ros2Clearpath_motor_msgsMsgLynxSystemProtection
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgLynxSystemProtection',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4d662de03c34bb633a122399be1a1aaea6187550c83231bf6d8a06b95fa82d9f',
        'minimum' => 17,
        'maximum' => 669,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/LynxSystemProtection',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'system_state',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'motor_states',
                'type' => 'Ros2Clearpath_motor_msgsMsgLynxMotorProtection',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 6,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original system_state: uint8; scalar. */
    public mixed $system_state;
    /** @brief Original motor_states: Ros2Clearpath_motor_msgsMsgLynxMotorProtection; sequence. */
    public mixed $motor_states;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->system_state = array_key_exists('system_state', $values) ? $values['system_state'] : 0;
        $this->motor_states = array_key_exists('motor_states', $values) ? $values['motor_states'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgLynxSystemProtection', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgLynxSystemProtection', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/PumaFeedback field. */
final class Ros2Clearpath_motor_msgsMsgPumaFeedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgPumaFeedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659',
        'minimum' => 37,
        'maximum' => 293,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/PumaFeedback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'device_number',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'device_name',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'duty_cycle',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'current',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'travel',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'speed',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'setpoint',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original device_number: uint8; scalar. */
    public mixed $device_number;
    /** @brief Original device_name: string; scalar. */
    public mixed $device_name;
    /** @brief Original duty_cycle: float32; scalar. */
    public mixed $duty_cycle;
    /** @brief Original current: float32; scalar. */
    public mixed $current;
    /** @brief Original travel: float64; scalar. */
    public mixed $travel;
    /** @brief Original speed: float64; scalar. */
    public mixed $speed;
    /** @brief Original setpoint: float64; scalar. */
    public mixed $setpoint;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->device_number = array_key_exists('device_number', $values) ? $values['device_number'] : 0;
        $this->device_name = array_key_exists('device_name', $values) ? $values['device_name'] : '';
        $this->duty_cycle = array_key_exists('duty_cycle', $values) ? $values['duty_cycle'] : 0.0;
        $this->current = array_key_exists('current', $values) ? $values['current'] : 0.0;
        $this->travel = array_key_exists('travel', $values) ? $values['travel'] : 0.0;
        $this->speed = array_key_exists('speed', $values) ? $values['speed'] : 0.0;
        $this->setpoint = array_key_exists('setpoint', $values) ? $values['setpoint'] : 0.0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgPumaFeedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgPumaFeedback', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/PumaMultiFeedback field. */
final class Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgPumaMultiFeedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947',
        'minimum' => 16,
        'maximum' => 1316,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/PumaMultiFeedback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'drivers_feedback',
                'type' => 'Ros2Clearpath_motor_msgsMsgPumaFeedback',
                'array' => 'sequence',
                'count' => 4,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 37,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original drivers_feedback: Ros2Clearpath_motor_msgsMsgPumaFeedback; sequence. */
    public mixed $drivers_feedback;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->drivers_feedback = array_key_exists('drivers_feedback', $values) ? $values['drivers_feedback'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgPumaMultiFeedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgPumaMultiFeedback', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/PumaStatus field. */
final class Ros2Clearpath_motor_msgsMsgPumaStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgPumaStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8',
        'minimum' => 23,
        'maximum' => 279,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/PumaStatus',
        'constants' => [
            'MODE_VOLTAGE' => 0,
            'MODE_CURRENT' => 1,
            'MODE_SPEED' => 2,
            'MODE_POSITION' => 3,
            'MODE_VCOMP' => 4,
            'FAULT_CURRENT' => 1,
            'FAULT_TEMPERATURE' => 2,
            'FAULT_BUS_VOLTAGE' => 4,
            'FAULT_BRIDGE_DRIVER' => 8,
        ],
        'fields' => [
            [
                'name' => 'device_number',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'device_name',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'bus_voltage',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'temperature',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'output_voltage',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'analog_input',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'fault',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original device_number: uint8; scalar. */
    public mixed $device_number;
    /** @brief Original device_name: string; scalar. */
    public mixed $device_name;
    /** @brief Original bus_voltage: float32; scalar. */
    public mixed $bus_voltage;
    /** @brief Original temperature: float32; scalar. */
    public mixed $temperature;
    /** @brief Original output_voltage: float32; scalar. */
    public mixed $output_voltage;
    /** @brief Original analog_input: float32; scalar. */
    public mixed $analog_input;
    /** @brief Original mode: uint8; scalar. */
    public mixed $mode;
    /** @brief Original fault: uint8; scalar. */
    public mixed $fault;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->device_number = array_key_exists('device_number', $values) ? $values['device_number'] : 0;
        $this->device_name = array_key_exists('device_name', $values) ? $values['device_name'] : '';
        $this->bus_voltage = array_key_exists('bus_voltage', $values) ? $values['bus_voltage'] : 0.0;
        $this->temperature = array_key_exists('temperature', $values) ? $values['temperature'] : 0.0;
        $this->output_voltage = array_key_exists('output_voltage', $values) ? $values['output_voltage'] : 0.0;
        $this->analog_input = array_key_exists('analog_input', $values) ? $values['analog_input'] : 0.0;
        $this->mode = array_key_exists('mode', $values) ? $values['mode'] : 0;
        $this->fault = array_key_exists('fault', $values) ? $values['fault'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgPumaStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgPumaStatus', $bytes);
    }
}
/** @brief Own every original clearpath_motor_msgs/msg/PumaMultiStatus field. */
final class Ros2Clearpath_motor_msgsMsgPumaMultiStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_motor_msgsMsgPumaMultiStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2',
        'minimum' => 16,
        'maximum' => 1260,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_motor_msgs/msg/PumaMultiStatus',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'drivers',
                'type' => 'Ros2Clearpath_motor_msgsMsgPumaStatus',
                'array' => 'sequence',
                'count' => 4,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 23,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original drivers: Ros2Clearpath_motor_msgsMsgPumaStatus; sequence. */
    public mixed $drivers;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->drivers = array_key_exists('drivers', $values) ? $values['drivers'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_motor_msgsMsgPumaMultiStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_motor_msgsMsgPumaMultiStatus', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/DisplayStatus field. */
final class Ros2Clearpath_platform_msgsMsgDisplayStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgDisplayStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e4585117414581491304a26d528b44c770799f622c3f1cde037078f5cb2462c2',
        'minimum' => 8,
        'maximum' => 106,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/DisplayStatus',
        'constants' => [],
        'fields' => [
            [
                'name' => 'string1',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 49,
                'native_string_bound' => 49,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'string2',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 49,
                'native_string_bound' => 49,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original string1: string; scalar. */
    public mixed $string1;
    /** @brief Original string2: string; scalar. */
    public mixed $string2;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->string1 = array_key_exists('string1', $values) ? $values['string1'] : '';
        $this->string2 = array_key_exists('string2', $values) ? $values['string2'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgDisplayStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgDisplayStatus', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Drive field. */
final class Ros2Clearpath_platform_msgsMsgDrive
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgDrive',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785',
        'minimum' => 9,
        'maximum' => 9,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Drive',
        'constants' => [
            'MODE_VELOCITY' => 0,
            'MODE_PWM' => 1,
            'MODE_NONE' => -1,
            'LEFT' => 0,
            'RIGHT' => 1,
        ],
        'fields' => [
            [
                'name' => 'mode',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'drivers',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original mode: int8; scalar. */
    public mixed $mode;
    /** @brief Original drivers: float32; array. */
    public mixed $drivers;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->mode = array_key_exists('mode', $values) ? $values['mode'] : 0;
        $this->drivers = array_key_exists('drivers', $values) ? $values['drivers'] : array_fill(0, 2, 0.0);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgDrive', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgDrive', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/DriveFeedback field. */
final class Ros2Clearpath_platform_msgsMsgDriveFeedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgDriveFeedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287',
        'minimum' => 25,
        'maximum' => 25,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/DriveFeedback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'current',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'duty_cycle',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'bridge_temperature',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'motor_temperature',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'measured_velocity',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'measured_travel',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'driver_fault',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original current: float32; scalar. */
    public mixed $current;
    /** @brief Original duty_cycle: float32; scalar. */
    public mixed $duty_cycle;
    /** @brief Original bridge_temperature: float32; scalar. */
    public mixed $bridge_temperature;
    /** @brief Original motor_temperature: float32; scalar. */
    public mixed $motor_temperature;
    /** @brief Original measured_velocity: float32; scalar. */
    public mixed $measured_velocity;
    /** @brief Original measured_travel: float32; scalar. */
    public mixed $measured_travel;
    /** @brief Original driver_fault: bool; scalar. */
    public mixed $driver_fault;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->current = array_key_exists('current', $values) ? $values['current'] : 0.0;
        $this->duty_cycle = array_key_exists('duty_cycle', $values) ? $values['duty_cycle'] : 0.0;
        $this->bridge_temperature = array_key_exists('bridge_temperature', $values) ? $values['bridge_temperature'] : 0.0;
        $this->motor_temperature = array_key_exists('motor_temperature', $values) ? $values['motor_temperature'] : 0.0;
        $this->measured_velocity = array_key_exists('measured_velocity', $values) ? $values['measured_velocity'] : 0.0;
        $this->measured_travel = array_key_exists('measured_travel', $values) ? $values['measured_travel'] : 0.0;
        $this->driver_fault = array_key_exists('driver_fault', $values) ? $values['driver_fault'] : false;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgDriveFeedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgDriveFeedback', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Fans field. */
final class Ros2Clearpath_platform_msgsMsgFans
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgFans',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a7d96f2242d992baf96f31bd8f93088547f92c72912c241c2d237f7714800cc8',
        'minimum' => 4,
        'maximum' => 6,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Fans',
        'constants' => [
            'CC01_FAN1' => 0,
            'CC01_FAN2' => 1,
            'CC01_FAN3' => 2,
            'CC01_FAN4' => 3,
            'CC01_FAN5' => 4,
            'CC01_FAN6' => 5,
            'CC01_FAN7' => 6,
            'CC01_FAN8' => 7,
            'R100_EQUIPMENT_BAY_INTAKE' => 0,
            'R100_EQUIPMENT_BAY_EXHAUST' => 1,
            'R100_CHARGER_BAY_INTAKE' => 2,
            'R100_CHARGER_BAY_EXHAUST' => 3,
            'R100_USER_BAY_INTAKE' => 4,
            'R100_USER_BAY_EXHAUST' => 5,
            'FAN_OFF' => 0,
            'FAN_ON_HIGH' => 1,
            'FAN_ON_LOW' => 2,
        ],
        'fields' => [
            [
                'name' => 'fans',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original fans: uint8; sequence. */
    public mixed $fans;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->fans = array_key_exists('fans', $values) ? $values['fans'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgFans', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgFans', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Feedback field. */
final class Ros2Clearpath_platform_msgsMsgFeedback
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgFeedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442',
        'minimum' => 64,
        'maximum' => 192,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Feedback',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'drivers',
                'type' => 'Ros2Clearpath_platform_msgsMsgDriveFeedback',
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
                'element_minimum' => 25,
            ],
            [
                'name' => 'commanded_mode',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'actual_mode',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original drivers: Ros2Clearpath_platform_msgsMsgDriveFeedback; array. */
    public mixed $drivers;
    /** @brief Original commanded_mode: int8; scalar. */
    public mixed $commanded_mode;
    /** @brief Original actual_mode: int8; scalar. */
    public mixed $actual_mode;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->drivers = array_key_exists('drivers', $values) ? $values['drivers'] : array_map(static fn() => new Ros2Clearpath_platform_msgsMsgDriveFeedback(), range(1, 2));
        $this->commanded_mode = array_key_exists('commanded_mode', $values) ? $values['commanded_mode'] : 0;
        $this->actual_mode = array_key_exists('actual_mode', $values) ? $values['actual_mode'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgFeedback', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgFeedback', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/RGB field. */
final class Ros2Clearpath_platform_msgsMsgRGB
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgRGB',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/RGB',
        'constants' => [],
        'fields' => [
            [
                'name' => 'red',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'green',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'blue',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original red: uint8; scalar. */
    public mixed $red;
    /** @brief Original green: uint8; scalar. */
    public mixed $green;
    /** @brief Original blue: uint8; scalar. */
    public mixed $blue;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->red = array_key_exists('red', $values) ? $values['red'] : 0;
        $this->green = array_key_exists('green', $values) ? $values['green'] : 0;
        $this->blue = array_key_exists('blue', $values) ? $values['blue'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgRGB', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgRGB', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Lights field. */
final class Ros2Clearpath_platform_msgsMsgLights
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgLights',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3f975a3ec1fca4f8add9523d4f9f99963be520c0e2982e644551b71cbd4b8a27',
        'minimum' => 4,
        'maximum' => 10,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Lights',
        'constants' => [
            'D100_LIGHTS_REAR_LEFT' => 0,
            'D100_LIGHTS_FRONT_LEFT' => 1,
            'D100_LIGHTS_FRONT_RIGHT' => 2,
            'D100_LIGHTS_REAR_RIGHT' => 3,
            'D150_LIGHTS_REAR_LEFT' => 0,
            'D150_LIGHTS_FRONT_LEFT' => 1,
            'D150_LIGHTS_FRONT_RIGHT' => 2,
            'D150_LIGHTS_REAR_RIGHT' => 3,
            'R100_LIGHTS_FRONT_PORT_UPPER' => 0,
            'R100_LIGHTS_FRONT_PORT_LOWER' => 1,
            'R100_LIGHTS_FRONT_STARBOARD_UPPER' => 2,
            'R100_LIGHTS_FRONT_STARBOARD_LOWER' => 3,
            'R100_LIGHTS_REAR_PORT_UPPER' => 4,
            'R100_LIGHTS_REAR_PORT_LOWER' => 5,
            'R100_LIGHTS_REAR_STARBOARD_UPPER' => 6,
            'R100_LIGHTS_REAR_STARBOARD_LOWER' => 7,
            'W200_LIGHTS_FRONT_LEFT' => 0,
            'W200_LIGHTS_FRONT_RIGHT' => 1,
            'W200_LIGHTS_REAR_LEFT' => 2,
            'W200_LIGHTS_REAR_RIGHT' => 3,
            'A300_LIGHTS_FRONT_RIGHT' => 0,
            'A300_LIGHTS_FRONT_LEFT' => 1,
            'A300_LIGHTS_REAR_LEFT' => 2,
            'A300_LIGHTS_REAR_RIGHT' => 3,
        ],
        'fields' => [
            [
                'name' => 'lights',
                'type' => 'Ros2Clearpath_platform_msgsMsgRGB',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 3,
            ],
        ],
    ];
    /** @brief Original lights: Ros2Clearpath_platform_msgsMsgRGB; sequence. */
    public mixed $lights;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->lights = array_key_exists('lights', $values) ? $values['lights'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgLights', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgLights', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/PinoutCommand field. */
final class Ros2Clearpath_platform_msgsMsgPinoutCommand
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgPinoutCommand',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b26c2baf1e64cefa889c4ac6bd6b7f4647d9247eca0626b83cd726547a4e80ff',
        'minimum' => 8,
        'maximum' => 18,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/PinoutCommand',
        'constants' => [
            'CC01_USER_PWR_CTRL' => 0,
            'D100_AUX_OUT1' => 0,
            'D100_AUX_OUT2' => 1,
            'D100_AUX_OUT3' => 2,
            'D150_AUX_OUT1' => 0,
            'D150_AUX_OUT2' => 1,
            'D150_AUX_OUT3' => 2,
            'CC01_AUX_OUT1' => 0,
            'CC01_AUX_OUT2' => 1,
            'CC01_AUX_OUT3' => 2,
            'CC01_GPO0' => 3,
            'CC01_GPO1' => 4,
            'CC01_GPO2' => 5,
            'CC01_GPO3' => 6,
        ],
        'fields' => [
            [
                'name' => 'rails',
                'type' => 'bool',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1,
            ],
            [
                'name' => 'outputs',
                'type' => 'uint32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original rails: bool; sequence. */
    public mixed $rails;
    /** @brief Original outputs: uint32; sequence. */
    public mixed $outputs;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->rails = array_key_exists('rails', $values) ? $values['rails'] : [];
        $this->outputs = array_key_exists('outputs', $values) ? $values['outputs'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgPinoutCommand', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgPinoutCommand', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/PinoutState field. */
final class Ros2Clearpath_platform_msgsMsgPinoutState
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgPinoutState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a936c6d91440709d50fa9b0be8fb567a9ce793e84f57e5379f6a160c8cbf73e7',
        'minimum' => 28,
        'maximum' => 170,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/PinoutState',
        'constants' => [
            'CC01_USER_PWR_CTRL' => 0,
            'D100_AUX_IN1' => 0,
            'D100_AUX_IN2' => 1,
            'D100_AUX_IN3' => 2,
            'D150_AUX_IN1' => 0,
            'D150_AUX_IN2' => 1,
            'D150_AUX_IN3' => 2,
            'CC01_AUX_IN1' => 0,
            'CC01_AUX_IN2' => 1,
            'CC01_AUX_IN3' => 2,
            'CC01_GPI0' => 3,
            'CC01_GPI1' => 4,
            'CC01_GPI2' => 5,
            'CC01_GPI3' => 6,
            'D100_AUX_OUT1' => 0,
            'D100_AUX_OUT2' => 1,
            'D100_AUX_OUT3' => 2,
            'D150_AUX_OUT1' => 0,
            'D150_AUX_OUT2' => 1,
            'D150_AUX_OUT3' => 2,
            'CC01_AUX_OUT1' => 0,
            'CC01_AUX_OUT2' => 1,
            'CC01_AUX_OUT3' => 2,
            'CC01_GPO0' => 3,
            'CC01_GPO1' => 4,
            'CC01_GPO2' => 5,
            'CC01_GPO3' => 6,
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'rails',
                'type' => 'bool',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1,
            ],
            [
                'name' => 'inputs',
                'type' => 'bool',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1,
            ],
            [
                'name' => 'outputs',
                'type' => 'bool',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1,
            ],
            [
                'name' => 'output_periods',
                'type' => 'uint32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original rails: bool; sequence. */
    public mixed $rails;
    /** @brief Original inputs: bool; sequence. */
    public mixed $inputs;
    /** @brief Original outputs: bool; sequence. */
    public mixed $outputs;
    /** @brief Original output_periods: uint32; sequence. */
    public mixed $output_periods;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->rails = array_key_exists('rails', $values) ? $values['rails'] : [];
        $this->inputs = array_key_exists('inputs', $values) ? $values['inputs'] : [];
        $this->outputs = array_key_exists('outputs', $values) ? $values['outputs'] : [];
        $this->output_periods = array_key_exists('output_periods', $values) ? $values['output_periods'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgPinoutState', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgPinoutState', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Power field. */
final class Ros2Clearpath_platform_msgsMsgPower
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgPower',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3fc241d6b81da2f80bfce22933b81786b5e582715dc66cd238fa40b239e7aecc',
        'minimum' => 25,
        'maximum' => 169,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Power',
        'constants' => [
            'NOT_APPLICABLE' => -1,
            'J100_MEASURED_BATTERY' => 0,
            'J100_MEASURED_5V' => 1,
            'J100_MEASURED_12V' => 2,
            'D100_MEASURED_BATTERY' => 0,
            'D100_MEASURED_5V' => 1,
            'D100_MEASURED_12V' => 2,
            'D150_MEASURED_BATTERY' => 0,
            'D150_MEASURED_5V' => 1,
            'D150_MEASURED_12V' => 2,
            'W200_MEASURED_BATTERY' => 0,
            'W200_MEASURED_12V' => 1,
            'W200_MEASURED_24V' => 2,
            'W200_MEASURED_48V' => 3,
            'R100_MEASURED_BATTERY' => 0,
            'R100_MEASURED_5V' => 1,
            'R100_MEASURED_12V' => 2,
            'R100_MEASURED_INVERTER' => 3,
            'R100_MEASURED_FRONT_AXLE' => 4,
            'R100_MEASURED_REAR_AXLE' => 5,
            'R100_MEASURED_LIGHT' => 6,
            'A200_BATTERY_VOLTAGE' => 0,
            'A200_LEFT_DRIVER_VOLTAGE' => 1,
            'A200_RIGHT_DRIVER_VOLTAGE' => 2,
            'A200_VOLTAGES_SIZE' => 3,
            'CC01_BATTERY_VOLTAGE' => 0,
            'CC01_USER_BATTERY_VOLTAGE' => 1,
            'CC01_USER_24V_VOLTAGE' => 2,
            'CC01_USER_12VB_VOLTAGE' => 3,
            'CC01_SYSTEM_12V_VOLTAGE' => 4,
            'CC01_EXPANSION_VOLTAGE' => 5,
            'CC01_BREAKOUT_24V_AUX_VOLTAGE' => 6,
            'CC01_BREAKOUT_12V_AUX_VOLTAGE' => 7,
            'CC01_BREAKOUT_USER_12VA_VOLTAGE' => 8,
            'CC01_BREAKOUT_LYNX1_VOLTAGE' => 9,
            'CC01_BREAKOUT_LYNX2_VOLTAGE' => 10,
            'CC01_BREAKOUT_LYNX3_VOLTAGE' => 11,
            'CC01_BREAKOUT_LYNX4_VOLTAGE' => 12,
            'J100_TOTAL_CURRENT' => 0,
            'J100_COMPUTER_CURRENT' => 1,
            'J100_DRIVE_CURRENT' => 2,
            'J100_USER_CURRENT' => 3,
            'D100_TOTAL_CURRENT' => 0,
            'D100_COMPUTER_CURRENT' => 1,
            'D150_TOTAL_CURRENT' => 0,
            'D150_COMPUTER_CURRENT' => 1,
            'W200_TOTAL_CURRENT' => 0,
            'W200_COMPUTER_CURRENT' => 1,
            'W200_12V_CURRENT' => 2,
            'W200_24V_CURRENT' => 3,
            'R100_TOTAL_CURRENT' => 0,
            'A200_MCU_AND_USER_PORT_CURRENT' => 0,
            'A200_LEFT_DRIVER_CURRENT' => 1,
            'A200_RIGHT_DRIVER_CURRENT' => 2,
            'A200_CURRENTS_SIZE' => 3,
            'CC01_BATTERY_PACK_CURRENT' => 0,
            'CC01_USER_BATTERY_CURRENT' => 1,
            'CC01_AUX_HES_CURRENT' => 2,
            'CC01_SYSTEM_12V_CURRENT' => 3,
            'CC01_24V_AUX_CURRENT' => 4,
            'CC01_12V_AUX_CURRENT' => 5,
            'CC01_BREAKOUT_USER_24V_CURRENT' => 6,
            'CC01_BREAKOUT_USER_12VA_CURRENT' => 7,
            'CC01_BREAKOUT_USER_12VB_CURRENT' => 8,
            'CC01_BREAKOUT_USER_LYNX1_CURRENT' => 9,
            'CC01_BREAKOUT_USER_LYNX2_CURRENT' => 10,
            'CC01_BREAKOUT_USER_LYNX3_CURRENT' => 11,
            'CC01_BREAKOUT_USER_LYNX4_CURRENT' => 12,
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'shore_power_connected',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'battery_connected',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'power_12v_user_nominal',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'charger_connected',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'charging_complete',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'measured_voltages',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'measured_currents',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original shore_power_connected: int8; scalar. */
    public mixed $shore_power_connected;
    /** @brief Original battery_connected: int8; scalar. */
    public mixed $battery_connected;
    /** @brief Original power_12v_user_nominal: int8; scalar. */
    public mixed $power_12v_user_nominal;
    /** @brief Original charger_connected: int8; scalar. */
    public mixed $charger_connected;
    /** @brief Original charging_complete: int8; scalar. */
    public mixed $charging_complete;
    /** @brief Original measured_voltages: float32; sequence. */
    public mixed $measured_voltages;
    /** @brief Original measured_currents: float32; sequence. */
    public mixed $measured_currents;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->shore_power_connected = array_key_exists('shore_power_connected', $values) ? $values['shore_power_connected'] : 0;
        $this->battery_connected = array_key_exists('battery_connected', $values) ? $values['battery_connected'] : 0;
        $this->power_12v_user_nominal = array_key_exists('power_12v_user_nominal', $values) ? $values['power_12v_user_nominal'] : 0;
        $this->charger_connected = array_key_exists('charger_connected', $values) ? $values['charger_connected'] : 0;
        $this->charging_complete = array_key_exists('charging_complete', $values) ? $values['charging_complete'] : 0;
        $this->measured_voltages = array_key_exists('measured_voltages', $values) ? $values['measured_voltages'] : [];
        $this->measured_currents = array_key_exists('measured_currents', $values) ? $values['measured_currents'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgPower', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgPower', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Status field. */
final class Ros2Clearpath_platform_msgsMsgStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1bd99cc11ea9efcb51eeba8fc1d599960c16e958a8adf33a56d47fe27be87782',
        'minimum' => 36,
        'maximum' => 676,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Status',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'hardware_id',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'firmware_version',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'mcu_uptime',
                'type' => 'Ros2Builtin_interfacesMsgDuration',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'connection_uptime',
                'type' => 'Ros2Builtin_interfacesMsgDuration',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original hardware_id: string; scalar. */
    public mixed $hardware_id;
    /** @brief Original firmware_version: string; scalar. */
    public mixed $firmware_version;
    /** @brief Original mcu_uptime: Ros2Builtin_interfacesMsgDuration; scalar. */
    public mixed $mcu_uptime;
    /** @brief Original connection_uptime: Ros2Builtin_interfacesMsgDuration; scalar. */
    public mixed $connection_uptime;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->hardware_id = array_key_exists('hardware_id', $values) ? $values['hardware_id'] : '';
        $this->firmware_version = array_key_exists('firmware_version', $values) ? $values['firmware_version'] : '';
        $this->mcu_uptime = array_key_exists('mcu_uptime', $values) ? $values['mcu_uptime'] : new Ros2Builtin_interfacesMsgDuration();
        $this->connection_uptime = array_key_exists('connection_uptime', $values) ? $values['connection_uptime'] : new Ros2Builtin_interfacesMsgDuration();
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgStatus', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/StopStatus field. */
final class Ros2Clearpath_platform_msgsMsgStopStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgStopStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2',
        'minimum' => 15,
        'maximum' => 143,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/StopStatus',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'stop_power_status',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'external_stop_present',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'needs_reset',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original stop_power_status: bool; scalar. */
    public mixed $stop_power_status;
    /** @brief Original external_stop_present: bool; scalar. */
    public mixed $external_stop_present;
    /** @brief Original needs_reset: bool; scalar. */
    public mixed $needs_reset;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->stop_power_status = array_key_exists('stop_power_status', $values) ? $values['stop_power_status'] : false;
        $this->external_stop_present = array_key_exists('external_stop_present', $values) ? $values['external_stop_present'] : false;
        $this->needs_reset = array_key_exists('needs_reset', $values) ? $values['needs_reset'] : false;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgStopStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgStopStatus', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/msg/Temperature field. */
final class Ros2Clearpath_platform_msgsMsgTemperature
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsMsgTemperature',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b4ae4d6ace9045ce96b0931f08d3b2c7ec358ab9c6da7022afd9ea489f9b0466',
        'minimum' => 16,
        'maximum' => 152,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/msg/Temperature',
        'constants' => [
            'J100_MCU' => 0,
            'J100_PCB' => 1,
            'D100_MCU' => 0,
            'D100_PCB' => 1,
            'D150_MCU' => 0,
            'D150_PCB' => 1,
            'W200_MCU' => 0,
            'R100_MCU' => 0,
            'R100_PCB' => 1,
            'CC01_MCU' => 0,
            'CC01_FAN1' => 1,
            'CC01_FAN2' => 2,
            'CC01_FAN3' => 3,
            'CC01_FAN4' => 4,
            'CC01_FAN5' => 5,
            'CC01_FAN6' => 6,
            'CC01_FAN7' => 7,
            'CC01_FAN8' => 8,
            'CC01_5V_INDUCTOR' => 9,
            'CC01_MAIN_GND_LUG' => 10,
            'CC01_24V_DCDC' => 11,
            'CC01_12V_DCDC' => 12,
            'CC01_EXT_1' => 13,
            'CC01_EXT_2' => 14,
            'CC01_EXT_3' => 15,
            'CC01_EXT_4' => 16,
            'CC01_BREAKOUT_1' => 17,
            'CC01_BREAKOUT_2' => 18,
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'temperatures',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original temperatures: float32; sequence. */
    public mixed $temperatures;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->temperatures = array_key_exists('temperatures', $values) ? $values['temperatures'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsMsgTemperature', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsMsgTemperature', $bytes);
    }
}
/** @brief Own every original clearpath_control_msgs/srv/PowerControl_Request field. */
final class Ros2Clearpath_control_msgsSrvPowerControl_Request
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_control_msgsSrvPowerControl_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1ad49d42d8895b3bd219799ab9cc080cf09d23aa4bca4c1172d19bc18fa416c4',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_control_msgs/srv/PowerControl_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'power_on',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original power_on: bool; scalar. */
    public mixed $power_on;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->power_on = array_key_exists('power_on', $values) ? $values['power_on'] : false;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_control_msgsSrvPowerControl_Request', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_control_msgsSrvPowerControl_Request', $bytes);
    }
}
/** @brief Own every original clearpath_control_msgs/srv/PowerControl_Response field. */
final class Ros2Clearpath_control_msgsSrvPowerControl_Response
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_control_msgsSrvPowerControl_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6d74d07d6a8ff1c41ed4ca13939d54e9e642f423dc2ff6598665238ebbf10a8b',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_control_msgs/srv/PowerControl_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'success',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original message: string; scalar. */
    public mixed $message;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->success = array_key_exists('success', $values) ? $values['success'] : false;
        $this->message = array_key_exists('message', $values) ? $values['message'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_control_msgsSrvPowerControl_Response', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_control_msgsSrvPowerControl_Response', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/srv/ConfigureMcu_Request field. */
final class Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsSrvConfigureMcu_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/srv/ConfigureMcu_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'domain_id',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'robot_namespace',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original domain_id: uint8; scalar. */
    public mixed $domain_id;
    /** @brief Original robot_namespace: string; scalar. */
    public mixed $robot_namespace;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->domain_id = array_key_exists('domain_id', $values) ? $values['domain_id'] : 0;
        $this->robot_namespace = array_key_exists('robot_namespace', $values) ? $values['robot_namespace'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsSrvConfigureMcu_Request', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsSrvConfigureMcu_Request', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/srv/ConfigureMcu_Response field. */
final class Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsSrvConfigureMcu_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/srv/ConfigureMcu_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'success',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original message: string; scalar. */
    public mixed $message;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->success = array_key_exists('success', $values) ? $values['success'] : false;
        $this->message = array_key_exists('message', $values) ? $values['message'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsSrvConfigureMcu_Response', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsSrvConfigureMcu_Response', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/srv/SetPinout_Request field. */
final class Ros2Clearpath_platform_msgsSrvSetPinout_Request
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsSrvSetPinout_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3a3a2f8f16279c2e7a057353cd1f7f11e1a65e887dd3ce0a4b7f584708afb238',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/srv/SetPinout_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'state',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'toggle_period',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original state: bool; scalar. */
    public mixed $state;
    /** @brief Original toggle_period: uint32; scalar. */
    public mixed $toggle_period;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->state = array_key_exists('state', $values) ? $values['state'] : false;
        $this->toggle_period = array_key_exists('toggle_period', $values) ? $values['toggle_period'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsSrvSetPinout_Request', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsSrvSetPinout_Request', $bytes);
    }
}
/** @brief Own every original clearpath_platform_msgs/srv/SetPinout_Response field. */
final class Ros2Clearpath_platform_msgsSrvSetPinout_Response
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Clearpath_platform_msgsSrvSetPinout_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b643ef5de2dfb725906ef8f11d79601400953211b47220be7a6fcc05d1be8ee3',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'clearpath_platform_msgs/srv/SetPinout_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'success',
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original message: string; scalar. */
    public mixed $message;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->success = array_key_exists('success', $values) ? $values['success'] : false;
        $this->message = array_key_exists('message', $values) ? $values['message'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Clearpath_platform_msgsSrvSetPinout_Response', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Clearpath_platform_msgsSrvSetPinout_Response', $bytes);
    }
}
/** @brief Resolve only this exact complete source catalog. */
final class Catalog
{
    /** @brief Borrow the one immutable full descriptor registry. @return Wire Complete catalog codec. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) {
            $wire = new Wire([
                'Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal' =>
                    Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal::class,
                    ],
                'Ros2Clearpath_motor_msgsActionLynxCalibrate_Result' =>
                    Ros2Clearpath_motor_msgsActionLynxCalibrate_Result::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsActionLynxCalibrate_Result::class,
                    ],
                'Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback' =>
                    Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback::class,
                    ],
                'Ros2Clearpath_motor_msgsActionLynxUpdate_Goal' =>
                    Ros2Clearpath_motor_msgsActionLynxUpdate_Goal::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsActionLynxUpdate_Goal::class,
                    ],
                'Ros2Clearpath_motor_msgsActionLynxUpdate_Result' =>
                    Ros2Clearpath_motor_msgsActionLynxUpdate_Result::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsActionLynxUpdate_Result::class,
                    ],
                'Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback' =>
                    Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback::class,
                    ],
                'Ros2Builtin_interfacesMsgDuration' =>
                    Ros2Builtin_interfacesMsgDuration::SCHEMA + [
                        'class' => Ros2Builtin_interfacesMsgDuration::class,
                    ],
                'Ros2Builtin_interfacesMsgTime' =>
                    Ros2Builtin_interfacesMsgTime::SCHEMA + [
                        'class' => Ros2Builtin_interfacesMsgTime::class,
                    ],
                'Ros2Clearpath_control_msgsMsgDeviceInfo' =>
                    Ros2Clearpath_control_msgsMsgDeviceInfo::SCHEMA + [
                        'class' => Ros2Clearpath_control_msgsMsgDeviceInfo::class,
                    ],
                'Ros2Clearpath_control_msgsMsgStreamControl' =>
                    Ros2Clearpath_control_msgsMsgStreamControl::SCHEMA + [
                        'class' => Ros2Clearpath_control_msgsMsgStreamControl::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgLynxDebug' =>
                    Ros2Clearpath_motor_msgsMsgLynxDebug::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgLynxDebug::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgLynxFeedback' =>
                    Ros2Clearpath_motor_msgsMsgLynxFeedback::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgLynxFeedback::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgLynxMotorProtection' =>
                    Ros2Clearpath_motor_msgsMsgLynxMotorProtection::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgLynxMotorProtection::class,
                    ],
                'Ros2Std_msgsMsgHeader' =>
                    Ros2Std_msgsMsgHeader::SCHEMA + [
                        'class' => Ros2Std_msgsMsgHeader::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgLynxMultiDebug' =>
                    Ros2Clearpath_motor_msgsMsgLynxMultiDebug::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgLynxMultiDebug::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgLynxMultiFeedback' =>
                    Ros2Clearpath_motor_msgsMsgLynxMultiFeedback::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgLynxMultiFeedback::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgLynxStatus' =>
                    Ros2Clearpath_motor_msgsMsgLynxStatus::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgLynxStatus::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgLynxMultiStatus' =>
                    Ros2Clearpath_motor_msgsMsgLynxMultiStatus::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgLynxMultiStatus::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgLynxSystemProtection' =>
                    Ros2Clearpath_motor_msgsMsgLynxSystemProtection::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgLynxSystemProtection::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgPumaFeedback' =>
                    Ros2Clearpath_motor_msgsMsgPumaFeedback::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgPumaFeedback::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgPumaMultiFeedback' =>
                    Ros2Clearpath_motor_msgsMsgPumaMultiFeedback::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgPumaMultiFeedback::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgPumaStatus' =>
                    Ros2Clearpath_motor_msgsMsgPumaStatus::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgPumaStatus::class,
                    ],
                'Ros2Clearpath_motor_msgsMsgPumaMultiStatus' =>
                    Ros2Clearpath_motor_msgsMsgPumaMultiStatus::SCHEMA + [
                        'class' => Ros2Clearpath_motor_msgsMsgPumaMultiStatus::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgDisplayStatus' =>
                    Ros2Clearpath_platform_msgsMsgDisplayStatus::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgDisplayStatus::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgDrive' =>
                    Ros2Clearpath_platform_msgsMsgDrive::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgDrive::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgDriveFeedback' =>
                    Ros2Clearpath_platform_msgsMsgDriveFeedback::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgDriveFeedback::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgFans' =>
                    Ros2Clearpath_platform_msgsMsgFans::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgFans::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgFeedback' =>
                    Ros2Clearpath_platform_msgsMsgFeedback::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgFeedback::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgRGB' =>
                    Ros2Clearpath_platform_msgsMsgRGB::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgRGB::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgLights' =>
                    Ros2Clearpath_platform_msgsMsgLights::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgLights::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgPinoutCommand' =>
                    Ros2Clearpath_platform_msgsMsgPinoutCommand::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgPinoutCommand::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgPinoutState' =>
                    Ros2Clearpath_platform_msgsMsgPinoutState::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgPinoutState::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgPower' =>
                    Ros2Clearpath_platform_msgsMsgPower::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgPower::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgStatus' =>
                    Ros2Clearpath_platform_msgsMsgStatus::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgStatus::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgStopStatus' =>
                    Ros2Clearpath_platform_msgsMsgStopStatus::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgStopStatus::class,
                    ],
                'Ros2Clearpath_platform_msgsMsgTemperature' =>
                    Ros2Clearpath_platform_msgsMsgTemperature::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsMsgTemperature::class,
                    ],
                'Ros2Clearpath_control_msgsSrvPowerControl_Request' =>
                    Ros2Clearpath_control_msgsSrvPowerControl_Request::SCHEMA + [
                        'class' => Ros2Clearpath_control_msgsSrvPowerControl_Request::class,
                    ],
                'Ros2Clearpath_control_msgsSrvPowerControl_Response' =>
                    Ros2Clearpath_control_msgsSrvPowerControl_Response::SCHEMA + [
                        'class' => Ros2Clearpath_control_msgsSrvPowerControl_Response::class,
                    ],
                'Ros2Clearpath_platform_msgsSrvConfigureMcu_Request' =>
                    Ros2Clearpath_platform_msgsSrvConfigureMcu_Request::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsSrvConfigureMcu_Request::class,
                    ],
                'Ros2Clearpath_platform_msgsSrvConfigureMcu_Response' =>
                    Ros2Clearpath_platform_msgsSrvConfigureMcu_Response::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsSrvConfigureMcu_Response::class,
                    ],
                'Ros2Clearpath_platform_msgsSrvSetPinout_Request' =>
                    Ros2Clearpath_platform_msgsSrvSetPinout_Request::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsSrvSetPinout_Request::class,
                    ],
                'Ros2Clearpath_platform_msgsSrvSetPinout_Response' =>
                    Ros2Clearpath_platform_msgsSrvSetPinout_Response::SCHEMA + [
                        'class' => Ros2Clearpath_platform_msgsSrvSetPinout_Response::class,
                    ],
            ]);
        }
        return $wire;
    }
}
