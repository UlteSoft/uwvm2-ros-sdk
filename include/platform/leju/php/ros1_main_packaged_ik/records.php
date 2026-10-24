<?php
declare(strict_types=1);
namespace Uwvm\Leju\Ros1MainPackagedIk;
/** @file records.php
 * @brief All 17 complete original vendor ROS 1 record classes.
 * @details Every native field, bound, default and identity is retained.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @brief Complete motion_capture_ik/armHandPose owning value. */
final class Ros1Motion_capture_ikArmHandPose
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikArmHandPose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08',
        'minimum' => 136,
        'maximum' => 136,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/armHandPose',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pos_xyz',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'quat_xyzw',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'elbow_pos_xyz',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'joint_angles',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
    /** @brief Original pos_xyz field; type float64. */
    public mixed $pos_xyz;
    /** @brief Original quat_xyzw field; type float64. */
    public mixed $quat_xyzw;
    /** @brief Original elbow_pos_xyz field; type float64. */
    public mixed $elbow_pos_xyz;
    /** @brief Original joint_angles field; type float64. */
    public mixed $joint_angles;
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
        $this->pos_xyz = array_key_exists('pos_xyz', $values)
            ? $values['pos_xyz']
            : array_map(static fn($index) => 0, range(1, 3));
        $this->quat_xyzw = array_key_exists('quat_xyzw', $values)
            ? $values['quat_xyzw']
            : array_map(static fn($index) => 0, range(1, 4));
        $this->elbow_pos_xyz = array_key_exists('elbow_pos_xyz', $values)
            ? $values['elbow_pos_xyz']
            : array_map(static fn($index) => 0, range(1, 3));
        $this->joint_angles = array_key_exists('joint_angles', $values)
            ? $values['joint_angles']
            : array_map(static fn($index) => 0, range(1, 7));
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikArmHandPose', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikArmHandPose', $bytes);
    }
}

/** @brief Complete motion_capture_ik/armHandPoseFree owning value. */
final class Ros1Motion_capture_ikArmHandPoseFree
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikArmHandPoseFree',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf',
        'minimum' => 84,
        'maximum' => 212,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/armHandPoseFree',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pos_xyz',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'quat_xyzw',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'elbow_pos_xyz',
                'type' => 'float64',
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
                'element_minimum' => 8
            ],
            [
                'name' => 'joint_angles',
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
        ]
    ];
    /** @brief Original pos_xyz field; type float64. */
    public mixed $pos_xyz;
    /** @brief Original quat_xyzw field; type float64. */
    public mixed $quat_xyzw;
    /** @brief Original elbow_pos_xyz field; type float64. */
    public mixed $elbow_pos_xyz;
    /** @brief Original joint_angles field; type float64. */
    public mixed $joint_angles;
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
        $this->pos_xyz = array_key_exists('pos_xyz', $values)
            ? $values['pos_xyz']
            : array_map(static fn($index) => 0, range(1, 3));
        $this->quat_xyzw = array_key_exists('quat_xyzw', $values)
            ? $values['quat_xyzw']
            : array_map(static fn($index) => 0, range(1, 4));
        $this->elbow_pos_xyz = array_key_exists('elbow_pos_xyz', $values)
            ? $values['elbow_pos_xyz']
            : array_map(static fn($index) => 0, range(1, 3));
        $this->joint_angles = array_key_exists('joint_angles', $values)
            ? $values['joint_angles']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikArmHandPoseFree', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikArmHandPoseFree', $bytes);
    }
}

/** @brief Complete motion_capture_ik/changeArmCtrlModeRequest owning value. */
final class Ros1Motion_capture_ikChangeArmCtrlModeRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikChangeArmCtrlModeRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/changeArmCtrlModeRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'control_mode',
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
    /** @brief Original control_mode field; type bool. */
    public mixed $control_mode;
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
        $this->control_mode = array_key_exists('control_mode', $values)
            ? $values['control_mode']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikChangeArmCtrlModeRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikChangeArmCtrlModeRequest', $bytes);
    }
}

/** @brief Complete motion_capture_ik/changeArmCtrlModeResponse owning value. */
final class Ros1Motion_capture_ikChangeArmCtrlModeResponse
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikChangeArmCtrlModeResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/changeArmCtrlModeResponse',
        'constants' => [],
        'fields' => [
            [
                'name' => 'result',
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
    /** @brief Original result field; type bool. */
    public mixed $result;
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
        $this->result = array_key_exists('result', $values)
            ? $values['result']
            : false;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikChangeArmCtrlModeResponse', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikChangeArmCtrlModeResponse', $bytes);
    }
}

/** @brief Complete motion_capture_ik/handPose owning value. */
final class Ros1Motion_capture_ikHandPose
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikHandPose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/handPose',
        'constants' => [],
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
                'name' => 'roll',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'pitch',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
            ]
        ]
    ];
    /** @brief Original x field; type float64. */
    public mixed $x;
    /** @brief Original y field; type float64. */
    public mixed $y;
    /** @brief Original z field; type float64. */
    public mixed $z;
    /** @brief Original roll field; type float64. */
    public mixed $roll;
    /** @brief Original pitch field; type float64. */
    public mixed $pitch;
    /** @brief Original yaw field; type float64. */
    public mixed $yaw;
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
        $this->x = array_key_exists('x', $values)
            ? $values['x']
            : 0;
        $this->y = array_key_exists('y', $values)
            ? $values['y']
            : 0;
        $this->z = array_key_exists('z', $values)
            ? $values['z']
            : 0;
        $this->roll = array_key_exists('roll', $values)
            ? $values['roll']
            : 0;
        $this->pitch = array_key_exists('pitch', $values)
            ? $values['pitch']
            : 0;
        $this->yaw = array_key_exists('yaw', $values)
            ? $values['yaw']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikHandPose', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikHandPose', $bytes);
    }
}

/** @brief Complete motion_capture_ik/ikSolveError owning value. */
final class Ros1Motion_capture_ikIkSolveError
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikIkSolveError',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94',
        'minimum' => 100,
        'maximum' => 356,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/ikSolveError',
        'constants' => [],
        'fields' => [
            [
                'name' => 'ik_type',
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
                'name' => 'left_pose_error',
                'type' => 'Ros1Motion_capture_ikHandPose',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 48
            ],
            [
                'name' => 'right_pose_error',
                'type' => 'Ros1Motion_capture_ikHandPose',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 48
            ]
        ]
    ];
    /** @brief Original ik_type field; type string. */
    public mixed $ik_type;
    /** @brief Original left_pose_error field; type Ros1Motion_capture_ikHandPose. */
    public mixed $left_pose_error;
    /** @brief Original right_pose_error field; type Ros1Motion_capture_ikHandPose. */
    public mixed $right_pose_error;
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
        $this->ik_type = array_key_exists('ik_type', $values)
            ? $values['ik_type']
            : '';
        $this->left_pose_error = array_key_exists('left_pose_error', $values)
            ? $values['left_pose_error']
            : new Ros1Motion_capture_ikHandPose();
        $this->right_pose_error = array_key_exists('right_pose_error', $values)
            ? $values['right_pose_error']
            : new Ros1Motion_capture_ikHandPose();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikIkSolveError', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikIkSolveError', $bytes);
    }
}

/** @brief Complete motion_capture_ik/ikSolveParam owning value. */
final class Ros1Motion_capture_ikIkSolveParam
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikIkSolveParam',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/ikSolveParam',
        'constants' => [],
        'fields' => [
            [
                'name' => 'major_optimality_tol',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'major_feasibility_tol',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'minor_feasibility_tol',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'major_iterations_limit',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'oritation_constraint_tol',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'pos_constraint_tol',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
            ],
            [
                'name' => 'pos_cost_weight',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
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
    /** @brief Original major_optimality_tol field; type float64. */
    public mixed $major_optimality_tol;
    /** @brief Original major_feasibility_tol field; type float64. */
    public mixed $major_feasibility_tol;
    /** @brief Original minor_feasibility_tol field; type float64. */
    public mixed $minor_feasibility_tol;
    /** @brief Original major_iterations_limit field; type float64. */
    public mixed $major_iterations_limit;
    /** @brief Original oritation_constraint_tol field; type float64. */
    public mixed $oritation_constraint_tol;
    /** @brief Original pos_constraint_tol field; type float64. */
    public mixed $pos_constraint_tol;
    /** @brief Original pos_cost_weight field; type float64. */
    public mixed $pos_cost_weight;
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
        $this->major_optimality_tol = array_key_exists('major_optimality_tol', $values)
            ? $values['major_optimality_tol']
            : 0;
        $this->major_feasibility_tol = array_key_exists('major_feasibility_tol', $values)
            ? $values['major_feasibility_tol']
            : 0;
        $this->minor_feasibility_tol = array_key_exists('minor_feasibility_tol', $values)
            ? $values['minor_feasibility_tol']
            : 0;
        $this->major_iterations_limit = array_key_exists('major_iterations_limit', $values)
            ? $values['major_iterations_limit']
            : 0;
        $this->oritation_constraint_tol = array_key_exists('oritation_constraint_tol', $values)
            ? $values['oritation_constraint_tol']
            : 0;
        $this->pos_constraint_tol = array_key_exists('pos_constraint_tol', $values)
            ? $values['pos_constraint_tol']
            : 0;
        $this->pos_cost_weight = array_key_exists('pos_cost_weight', $values)
            ? $values['pos_cost_weight']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikIkSolveParam', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikIkSolveParam', $bytes);
    }
}

/** @brief Complete motion_capture_ik/recordArmHandPose owning value. */
final class Ros1Motion_capture_ikRecordArmHandPose
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikRecordArmHandPose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a',
        'minimum' => 272,
        'maximum' => 272,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/recordArmHandPose',
        'constants' => [],
        'fields' => [
            [
                'name' => 'left_pose',
                'type' => 'Ros1Motion_capture_ikArmHandPose',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 136
            ],
            [
                'name' => 'right_pose',
                'type' => 'Ros1Motion_capture_ikArmHandPose',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 136
            ]
        ]
    ];
    /** @brief Original left_pose field; type Ros1Motion_capture_ikArmHandPose. */
    public mixed $left_pose;
    /** @brief Original right_pose field; type Ros1Motion_capture_ikArmHandPose. */
    public mixed $right_pose;
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
        $this->left_pose = array_key_exists('left_pose', $values)
            ? $values['left_pose']
            : new Ros1Motion_capture_ikArmHandPose();
        $this->right_pose = array_key_exists('right_pose', $values)
            ? $values['right_pose']
            : new Ros1Motion_capture_ikArmHandPose();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikRecordArmHandPose', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikRecordArmHandPose', $bytes);
    }
}

/** @brief Complete motion_capture_ik/recordArmHandPoseFree owning value. */
final class Ros1Motion_capture_ikRecordArmHandPoseFree
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikRecordArmHandPoseFree',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811',
        'minimum' => 168,
        'maximum' => 424,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/recordArmHandPoseFree',
        'constants' => [],
        'fields' => [
            [
                'name' => 'left_pose',
                'type' => 'Ros1Motion_capture_ikArmHandPoseFree',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 84
            ],
            [
                'name' => 'right_pose',
                'type' => 'Ros1Motion_capture_ikArmHandPoseFree',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 84
            ]
        ]
    ];
    /** @brief Original left_pose field; type Ros1Motion_capture_ikArmHandPoseFree. */
    public mixed $left_pose;
    /** @brief Original right_pose field; type Ros1Motion_capture_ikArmHandPoseFree. */
    public mixed $right_pose;
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
        $this->left_pose = array_key_exists('left_pose', $values)
            ? $values['left_pose']
            : new Ros1Motion_capture_ikArmHandPoseFree();
        $this->right_pose = array_key_exists('right_pose', $values)
            ? $values['right_pose']
            : new Ros1Motion_capture_ikArmHandPoseFree();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikRecordArmHandPoseFree', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikRecordArmHandPoseFree', $bytes);
    }
}

/** @brief Complete motion_capture_ik/robotArmQVVD owning value. */
final class Ros1Motion_capture_ikRobotArmQVVD
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikRobotArmQVVD',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb',
        'minimum' => 12,
        'maximum' => 396,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/robotArmQVVD',
        'constants' => [],
        'fields' => [
            [
                'name' => 'q',
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
                'name' => 'v',
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
                'name' => 'vd',
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
        ]
    ];
    /** @brief Original q field; type float64. */
    public mixed $q;
    /** @brief Original v field; type float64. */
    public mixed $v;
    /** @brief Original vd field; type float64. */
    public mixed $vd;
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
        $this->q = array_key_exists('q', $values)
            ? $values['q']
            : [];
        $this->v = array_key_exists('v', $values)
            ? $values['v']
            : [];
        $this->vd = array_key_exists('vd', $values)
            ? $values['vd']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikRobotArmQVVD', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikRobotArmQVVD', $bytes);
    }
}

/** @brief Complete time owning value. */
final class Ros1Time
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Time',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
        'ros_version' => 1,
        'native_type' => 'time',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sec',
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
                'name' => 'nsec',
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
    /** @brief Original sec field; type uint32. */
    public mixed $sec;
    /** @brief Original nsec field; type uint32. */
    public mixed $nsec;
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
        $this->sec = array_key_exists('sec', $values)
            ? $values['sec']
            : Word::fromDecimal('0', 4, false);
        $this->nsec = array_key_exists('nsec', $values)
            ? $values['nsec']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Time', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Time', $bytes);
    }
}

/** @brief Complete std_msgs/Header owning value. */
final class Ros1Std_msgsHeader
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Std_msgsHeader',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'std_msgs/Header',
        'constants' => [],
        'fields' => [
            [
                'name' => 'seq',
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
                'name' => 'stamp',
                'type' => 'Ros1Time',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
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
        ]
    ];
    /** @brief Original seq field; type uint32. */
    public mixed $seq;
    /** @brief Original stamp field; type Ros1Time. */
    public mixed $stamp;
    /** @brief Original frame_id field; type string. */
    public mixed $frame_id;
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
        $this->seq = array_key_exists('seq', $values)
            ? $values['seq']
            : Word::fromDecimal('0', 4, false);
        $this->stamp = array_key_exists('stamp', $values)
            ? $values['stamp']
            : new Ros1Time();
        $this->frame_id = array_key_exists('frame_id', $values)
            ? $values['frame_id']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Std_msgsHeader', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Std_msgsHeader', $bytes);
    }
}

/** @brief Complete motion_capture_ik/robotHandPosition owning value. */
final class Ros1Motion_capture_ikRobotHandPosition
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikRobotHandPosition',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa',
        'minimum' => 24,
        'maximum' => 792,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/robotHandPosition',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros1Std_msgsHeader',
                'array' => '',
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
                'name' => 'left_hand_position',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 256,
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
                'name' => 'right_hand_position',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 256,
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
    /** @brief Original header field; type Ros1Std_msgsHeader. */
    public mixed $header;
    /** @brief Original left_hand_position field; type uint8. */
    public mixed $left_hand_position;
    /** @brief Original right_hand_position field; type uint8. */
    public mixed $right_hand_position;
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
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros1Std_msgsHeader();
        $this->left_hand_position = array_key_exists('left_hand_position', $values)
            ? $values['left_hand_position']
            : [];
        $this->right_hand_position = array_key_exists('right_hand_position', $values)
            ? $values['right_hand_position']
            : [];
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikRobotHandPosition', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikRobotHandPosition', $bytes);
    }
}

/** @brief Complete motion_capture_ik/twoArmHandPose owning value. */
final class Ros1Motion_capture_ikTwoArmHandPose
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikTwoArmHandPose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181',
        'minimum' => 288,
        'maximum' => 544,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/twoArmHandPose',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros1Std_msgsHeader',
                'array' => '',
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
                'name' => 'left_pose',
                'type' => 'Ros1Motion_capture_ikArmHandPose',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 136
            ],
            [
                'name' => 'right_pose',
                'type' => 'Ros1Motion_capture_ikArmHandPose',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 136
            ]
        ]
    ];
    /** @brief Original header field; type Ros1Std_msgsHeader. */
    public mixed $header;
    /** @brief Original left_pose field; type Ros1Motion_capture_ikArmHandPose. */
    public mixed $left_pose;
    /** @brief Original right_pose field; type Ros1Motion_capture_ikArmHandPose. */
    public mixed $right_pose;
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
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros1Std_msgsHeader();
        $this->left_pose = array_key_exists('left_pose', $values)
            ? $values['left_pose']
            : new Ros1Motion_capture_ikArmHandPose();
        $this->right_pose = array_key_exists('right_pose', $values)
            ? $values['right_pose']
            : new Ros1Motion_capture_ikArmHandPose();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikTwoArmHandPose', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikTwoArmHandPose', $bytes);
    }
}

/** @brief Complete motion_capture_ik/twoArmHandPoseCmd owning value. */
final class Ros1Motion_capture_ikTwoArmHandPoseCmd
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikTwoArmHandPoseCmd',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc',
        'minimum' => 346,
        'maximum' => 602,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/twoArmHandPoseCmd',
        'constants' => [],
        'fields' => [
            [
                'name' => 'hand_poses',
                'type' => 'Ros1Motion_capture_ikTwoArmHandPose',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 288
            ],
            [
                'name' => 'use_custom_ik_param',
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
                'name' => 'joint_angles_as_q0',
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
                'name' => 'ik_param',
                'type' => 'Ros1Motion_capture_ikIkSolveParam',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 56
            ]
        ]
    ];
    /** @brief Original hand_poses field; type Ros1Motion_capture_ikTwoArmHandPose. */
    public mixed $hand_poses;
    /** @brief Original use_custom_ik_param field; type bool. */
    public mixed $use_custom_ik_param;
    /** @brief Original joint_angles_as_q0 field; type bool. */
    public mixed $joint_angles_as_q0;
    /** @brief Original ik_param field; type Ros1Motion_capture_ikIkSolveParam. */
    public mixed $ik_param;
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
        $this->hand_poses = array_key_exists('hand_poses', $values)
            ? $values['hand_poses']
            : new Ros1Motion_capture_ikTwoArmHandPose();
        $this->use_custom_ik_param = array_key_exists('use_custom_ik_param', $values)
            ? $values['use_custom_ik_param']
            : false;
        $this->joint_angles_as_q0 = array_key_exists('joint_angles_as_q0', $values)
            ? $values['joint_angles_as_q0']
            : false;
        $this->ik_param = array_key_exists('ik_param', $values)
            ? $values['ik_param']
            : new Ros1Motion_capture_ikIkSolveParam();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikTwoArmHandPoseCmd', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikTwoArmHandPoseCmd', $bytes);
    }
}

/** @brief Complete motion_capture_ik/twoArmHandPoseFree owning value. */
final class Ros1Motion_capture_ikTwoArmHandPoseFree
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikTwoArmHandPoseFree',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c',
        'minimum' => 184,
        'maximum' => 696,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/twoArmHandPoseFree',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros1Std_msgsHeader',
                'array' => '',
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
                'name' => 'left_pose',
                'type' => 'Ros1Motion_capture_ikArmHandPoseFree',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 84
            ],
            [
                'name' => 'right_pose',
                'type' => 'Ros1Motion_capture_ikArmHandPoseFree',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 84
            ]
        ]
    ];
    /** @brief Original header field; type Ros1Std_msgsHeader. */
    public mixed $header;
    /** @brief Original left_pose field; type Ros1Motion_capture_ikArmHandPoseFree. */
    public mixed $left_pose;
    /** @brief Original right_pose field; type Ros1Motion_capture_ikArmHandPoseFree. */
    public mixed $right_pose;
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
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros1Std_msgsHeader();
        $this->left_pose = array_key_exists('left_pose', $values)
            ? $values['left_pose']
            : new Ros1Motion_capture_ikArmHandPoseFree();
        $this->right_pose = array_key_exists('right_pose', $values)
            ? $values['right_pose']
            : new Ros1Motion_capture_ikArmHandPoseFree();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikTwoArmHandPoseFree', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikTwoArmHandPoseFree', $bytes);
    }
}

/** @brief Complete motion_capture_ik/twoArmHandPoseCmdFree owning value. */
final class Ros1Motion_capture_ikTwoArmHandPoseCmdFree
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros1Motion_capture_ikTwoArmHandPoseCmdFree',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773',
        'minimum' => 242,
        'maximum' => 754,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'motion_capture_ik/twoArmHandPoseCmdFree',
        'constants' => [],
        'fields' => [
            [
                'name' => 'hand_poses',
                'type' => 'Ros1Motion_capture_ikTwoArmHandPoseFree',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 184
            ],
            [
                'name' => 'use_custom_ik_param',
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
                'name' => 'joint_angles_as_q0',
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
                'name' => 'ik_param',
                'type' => 'Ros1Motion_capture_ikIkSolveParam',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 56
            ]
        ]
    ];
    /** @brief Original hand_poses field; type Ros1Motion_capture_ikTwoArmHandPoseFree. */
    public mixed $hand_poses;
    /** @brief Original use_custom_ik_param field; type bool. */
    public mixed $use_custom_ik_param;
    /** @brief Original joint_angles_as_q0 field; type bool. */
    public mixed $joint_angles_as_q0;
    /** @brief Original ik_param field; type Ros1Motion_capture_ikIkSolveParam. */
    public mixed $ik_param;
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
        $this->hand_poses = array_key_exists('hand_poses', $values)
            ? $values['hand_poses']
            : new Ros1Motion_capture_ikTwoArmHandPoseFree();
        $this->use_custom_ik_param = array_key_exists('use_custom_ik_param', $values)
            ? $values['use_custom_ik_param']
            : false;
        $this->joint_angles_as_q0 = array_key_exists('joint_angles_as_q0', $values)
            ? $values['joint_angles_as_q0']
            : false;
        $this->ik_param = array_key_exists('ik_param', $values)
            ? $values['ik_param']
            : new Ros1Motion_capture_ikIkSolveParam();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Motion_capture_ikTwoArmHandPoseCmdFree', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Motion_capture_ikTwoArmHandPoseCmdFree', $bytes);
    }
}

/** @brief Complete original record codecs and interface component roles. */
final class Catalog
{
    /** @brief Complete original interface identities and components. */
    public const INTERFACES = [
        'motion_capture_ik/armHandPose' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikArmHandPose'
            ]
        ],
        'motion_capture_ik/armHandPoseFree' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikArmHandPoseFree'
            ]
        ],
        'motion_capture_ik/changeArmCtrlMode' => [
            'kind' => 'service',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_cfc44e987ff1cabc9cfe440020c20d507741771d6d46380d542910d275b1925f',
            'registered' => false,
            'components' => [
                'request' => 'Ros1Motion_capture_ikChangeArmCtrlModeRequest',
                'response' => 'Ros1Motion_capture_ikChangeArmCtrlModeResponse'
            ]
        ],
        'motion_capture_ik/handPose' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikHandPose'
            ]
        ],
        'motion_capture_ik/ikSolveError' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikIkSolveError'
            ]
        ],
        'motion_capture_ik/ikSolveParam' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikIkSolveParam'
            ]
        ],
        'motion_capture_ik/recordArmHandPose' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikRecordArmHandPose'
            ]
        ],
        'motion_capture_ik/recordArmHandPoseFree' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikRecordArmHandPoseFree'
            ]
        ],
        'motion_capture_ik/robotArmQVVD' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikRobotArmQVVD'
            ]
        ],
        'motion_capture_ik/robotHandPosition' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikRobotHandPosition'
            ]
        ],
        'motion_capture_ik/twoArmHandPose' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikTwoArmHandPose'
            ]
        ],
        'motion_capture_ik/twoArmHandPoseCmd' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikTwoArmHandPoseCmd'
            ]
        ],
        'motion_capture_ik/twoArmHandPoseCmdFree' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikTwoArmHandPoseCmdFree'
            ]
        ],
        'motion_capture_ik/twoArmHandPoseFree' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Motion_capture_ikTwoArmHandPoseFree'
            ]
        ],
        'std_msgs/Header' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7',
            'registered' => false,
            'components' => [
                'message' => 'Ros1Std_msgsHeader'
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
                'Ros1Motion_capture_ikArmHandPose' =>
                    Ros1Motion_capture_ikArmHandPose::SCHEMA + [
                        'class' => Ros1Motion_capture_ikArmHandPose::class
                    ],
                'Ros1Motion_capture_ikArmHandPoseFree' =>
                    Ros1Motion_capture_ikArmHandPoseFree::SCHEMA + [
                        'class' => Ros1Motion_capture_ikArmHandPoseFree::class
                    ],
                'Ros1Motion_capture_ikChangeArmCtrlModeRequest' =>
                    Ros1Motion_capture_ikChangeArmCtrlModeRequest::SCHEMA + [
                        'class' => Ros1Motion_capture_ikChangeArmCtrlModeRequest::class
                    ],
                'Ros1Motion_capture_ikChangeArmCtrlModeResponse' =>
                    Ros1Motion_capture_ikChangeArmCtrlModeResponse::SCHEMA + [
                        'class' => Ros1Motion_capture_ikChangeArmCtrlModeResponse::class
                    ],
                'Ros1Motion_capture_ikHandPose' =>
                    Ros1Motion_capture_ikHandPose::SCHEMA + [
                        'class' => Ros1Motion_capture_ikHandPose::class
                    ],
                'Ros1Motion_capture_ikIkSolveError' =>
                    Ros1Motion_capture_ikIkSolveError::SCHEMA + [
                        'class' => Ros1Motion_capture_ikIkSolveError::class
                    ],
                'Ros1Motion_capture_ikIkSolveParam' =>
                    Ros1Motion_capture_ikIkSolveParam::SCHEMA + [
                        'class' => Ros1Motion_capture_ikIkSolveParam::class
                    ],
                'Ros1Motion_capture_ikRecordArmHandPose' =>
                    Ros1Motion_capture_ikRecordArmHandPose::SCHEMA + [
                        'class' => Ros1Motion_capture_ikRecordArmHandPose::class
                    ],
                'Ros1Motion_capture_ikRecordArmHandPoseFree' =>
                    Ros1Motion_capture_ikRecordArmHandPoseFree::SCHEMA + [
                        'class' => Ros1Motion_capture_ikRecordArmHandPoseFree::class
                    ],
                'Ros1Motion_capture_ikRobotArmQVVD' =>
                    Ros1Motion_capture_ikRobotArmQVVD::SCHEMA + [
                        'class' => Ros1Motion_capture_ikRobotArmQVVD::class
                    ],
                'Ros1Time' =>
                    Ros1Time::SCHEMA + [
                        'class' => Ros1Time::class
                    ],
                'Ros1Std_msgsHeader' =>
                    Ros1Std_msgsHeader::SCHEMA + [
                        'class' => Ros1Std_msgsHeader::class
                    ],
                'Ros1Motion_capture_ikRobotHandPosition' =>
                    Ros1Motion_capture_ikRobotHandPosition::SCHEMA + [
                        'class' => Ros1Motion_capture_ikRobotHandPosition::class
                    ],
                'Ros1Motion_capture_ikTwoArmHandPose' =>
                    Ros1Motion_capture_ikTwoArmHandPose::SCHEMA + [
                        'class' => Ros1Motion_capture_ikTwoArmHandPose::class
                    ],
                'Ros1Motion_capture_ikTwoArmHandPoseCmd' =>
                    Ros1Motion_capture_ikTwoArmHandPoseCmd::SCHEMA + [
                        'class' => Ros1Motion_capture_ikTwoArmHandPoseCmd::class
                    ],
                'Ros1Motion_capture_ikTwoArmHandPoseFree' =>
                    Ros1Motion_capture_ikTwoArmHandPoseFree::SCHEMA + [
                        'class' => Ros1Motion_capture_ikTwoArmHandPoseFree::class
                    ],
                'Ros1Motion_capture_ikTwoArmHandPoseCmdFree' =>
                    Ros1Motion_capture_ikTwoArmHandPoseCmdFree::SCHEMA + [
                        'class' => Ros1Motion_capture_ikTwoArmHandPoseCmdFree::class
                    ],
            ]);
        }
        return $wire;
    }
}
