<?php
declare(strict_types=1);
namespace Uwvm\Franka\Ros1;

/** @file Records.php
 * @brief Complete selected original PHP values; native identity remains independently unbound.
 */
use Uwvm\RosWasm\Wire;
use Uwvm\RosWasm\Word;
/** @brief Own every original field of franka_example_controllers/JointTorqueComparison. */
final class Ros1Franka_example_controllersJointTorqueComparison
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_example_controllersJointTorqueComparison',
        'native_type' => 'franka_example_controllers/JointTorqueComparison',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254',
        'minimum' => 176,
        'maximum' => 176,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'tau_error',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tau_commanded',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tau_measured',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'root_mean_square_error',
                'type' => 'float64',
                'array' => '',
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
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau_error;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau_commanded;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau_measured;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $root_mean_square_error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('tau_error', $values)) $this->tau_error = $values['tau_error'];
        else
        {
            $this->tau_error = [];
            for ($index = 0; $index < 7; ++$index) $this->tau_error[] = 0.0;
        }
        if (array_key_exists('tau_commanded', $values)) $this->tau_commanded = $values['tau_commanded'];
        else
        {
            $this->tau_commanded = [];
            for ($index = 0; $index < 7; ++$index) $this->tau_commanded[] = 0.0;
        }
        if (array_key_exists('tau_measured', $values)) $this->tau_measured = $values['tau_measured'];
        else
        {
            $this->tau_measured = [];
            for ($index = 0; $index < 7; ++$index) $this->tau_measured[] = 0.0;
        }
        if (array_key_exists('root_mean_square_error', $values)) $this->root_mean_square_error = $values['root_mean_square_error'];
        else
        {
            $this->root_mean_square_error = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_example_controllersJointTorqueComparison', $this);
            }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros1Franka_example_controllersJointTorqueComparison', $bytes); }
}
/** @brief Own every original field of franka_gripper/GraspEpsilon. */
final class Ros1Franka_gripperGraspEpsilon
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperGraspEpsilon',
        'native_type' => 'franka_gripper/GraspEpsilon',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'inner',
                'type' => 'float64',
                'array' => '',
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
                'name' => 'outer',
                'type' => 'float64',
                'array' => '',
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
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $inner;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $outer;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('inner', $values)) $this->inner = $values['inner'];
        else
        {
            $this->inner = 0.0;
        }
        if (array_key_exists('outer', $values)) $this->outer = $values['outer'];
        else
        {
            $this->outer = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperGraspEpsilon', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperGraspEpsilon', $bytes); }
}
/** @brief Own every original field of franka_gripper/GraspGoal. */
final class Ros1Franka_gripperGraspGoal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperGraspGoal',
        'native_type' => 'franka_gripper/GraspGoal',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf',
        'minimum' => 40,
        'maximum' => 40,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'width',
                'type' => 'float64',
                'array' => '',
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
                'name' => 'epsilon',
                'type' => 'Ros1Franka_gripperGraspEpsilon',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 16,
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $width;
    /** @brief Original Ros1Franka_gripperGraspEpsilon field; shape scalar and quota 0. */
    public mixed $epsilon;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $speed;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $force;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('width', $values)) $this->width = $values['width'];
        else
        {
            $this->width = 0.0;
        }
        if (array_key_exists('epsilon', $values)) $this->epsilon = $values['epsilon'];
        else
        {
            $this->epsilon = new Ros1Franka_gripperGraspEpsilon();
        }
        if (array_key_exists('speed', $values)) $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('force', $values)) $this->force = $values['force'];
        else
        {
            $this->force = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperGraspGoal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperGraspGoal', $bytes); }
}
/** @brief Own every original field of franka_gripper/GraspResult. */
final class Ros1Franka_gripperGraspResult
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperGraspResult',
        'native_type' => 'franka_gripper/GraspResult',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperGraspResult', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperGraspResult', $bytes); }
}
/** @brief Own every original field of franka_gripper/GraspFeedback. */
final class Ros1Franka_gripperGraspFeedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperGraspFeedback',
        'native_type' => 'franka_gripper/GraspFeedback',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperGraspFeedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperGraspFeedback', $bytes);
            }
}
/** @brief Own every original field of franka_gripper/HomingGoal. */
final class Ros1Franka_gripperHomingGoal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperHomingGoal',
        'native_type' => 'franka_gripper/HomingGoal',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperHomingGoal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperHomingGoal', $bytes); }
}
/** @brief Own every original field of franka_gripper/HomingResult. */
final class Ros1Franka_gripperHomingResult
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperHomingResult',
        'native_type' => 'franka_gripper/HomingResult',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperHomingResult', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperHomingResult', $bytes); }
}
/** @brief Own every original field of franka_gripper/HomingFeedback. */
final class Ros1Franka_gripperHomingFeedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperHomingFeedback',
        'native_type' => 'franka_gripper/HomingFeedback',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperHomingFeedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperHomingFeedback', $bytes);
            }
}
/** @brief Own every original field of franka_gripper/MoveGoal. */
final class Ros1Franka_gripperMoveGoal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperMoveGoal',
        'native_type' => 'franka_gripper/MoveGoal',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'width',
                'type' => 'float64',
                'array' => '',
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
        ],
    ];
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $width;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $speed;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('width', $values)) $this->width = $values['width'];
        else
        {
            $this->width = 0.0;
        }
        if (array_key_exists('speed', $values)) $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperMoveGoal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperMoveGoal', $bytes); }
}
/** @brief Own every original field of franka_gripper/MoveResult. */
final class Ros1Franka_gripperMoveResult
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperMoveResult',
        'native_type' => 'franka_gripper/MoveResult',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperMoveResult', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperMoveResult', $bytes); }
}
/** @brief Own every original field of franka_gripper/MoveFeedback. */
final class Ros1Franka_gripperMoveFeedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperMoveFeedback',
        'native_type' => 'franka_gripper/MoveFeedback',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperMoveFeedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperMoveFeedback', $bytes); }
}
/** @brief Own every original field of franka_gripper/StopGoal. */
final class Ros1Franka_gripperStopGoal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperStopGoal',
        'native_type' => 'franka_gripper/StopGoal',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperStopGoal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperStopGoal', $bytes); }
}
/** @brief Own every original field of franka_gripper/StopResult. */
final class Ros1Franka_gripperStopResult
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperStopResult',
        'native_type' => 'franka_gripper/StopResult',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperStopResult', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperStopResult', $bytes); }
}
/** @brief Own every original field of franka_gripper/StopFeedback. */
final class Ros1Franka_gripperStopFeedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_gripperStopFeedback',
        'native_type' => 'franka_gripper/StopFeedback',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_gripperStopFeedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_gripperStopFeedback', $bytes); }
}
/** @brief Own every original field of franka_msgs/ErrorRecoveryGoal. */
final class Ros1Franka_msgsErrorRecoveryGoal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsErrorRecoveryGoal',
        'native_type' => 'franka_msgs/ErrorRecoveryGoal',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsErrorRecoveryGoal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsErrorRecoveryGoal', $bytes);
            }
}
/** @brief Own every original field of franka_msgs/ErrorRecoveryResult. */
final class Ros1Franka_msgsErrorRecoveryResult
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsErrorRecoveryResult',
        'native_type' => 'franka_msgs/ErrorRecoveryResult',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsErrorRecoveryResult', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsErrorRecoveryResult',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/ErrorRecoveryFeedback. */
final class Ros1Franka_msgsErrorRecoveryFeedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsErrorRecoveryFeedback',
        'native_type' => 'franka_msgs/ErrorRecoveryFeedback',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsErrorRecoveryFeedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsErrorRecoveryFeedback',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/Errors. */
final class Ros1Franka_msgsErrors
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsErrors',
        'native_type' => 'franka_msgs/Errors',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca',
        'minimum' => 41,
        'maximum' => 41,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'joint_position_limits_violation',
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
                'name' => 'cartesian_position_limits_violation',
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
                'name' => 'self_collision_avoidance_violation',
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
                'name' => 'joint_velocity_violation',
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
                'name' => 'cartesian_velocity_violation',
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
                'name' => 'force_control_safety_violation',
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
                'name' => 'joint_reflex',
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
                'name' => 'cartesian_reflex',
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
                'name' => 'max_goal_pose_deviation_violation',
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
                'name' => 'max_path_pose_deviation_violation',
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
                'name' => 'cartesian_velocity_profile_safety_violation',
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
                'name' => 'joint_position_motion_generator_start_pose_invalid',
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
                'name' => 'joint_motion_generator_position_limits_violation',
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
                'name' => 'joint_motion_generator_velocity_limits_violation',
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
                'name' => 'joint_motion_generator_velocity_discontinuity',
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
                'name' => 'joint_motion_generator_acceleration_discontinuity',
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
                'name' => 'cartesian_position_motion_generator_start_pose_invalid',
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
                'name' => 'cartesian_motion_generator_elbow_limit_violation',
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
                'name' => 'cartesian_motion_generator_velocity_limits_violation',
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
                'name' => 'cartesian_motion_generator_velocity_discontinuity',
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
                'name' => 'cartesian_motion_generator_acceleration_discontinuity',
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
                'name' => 'cartesian_motion_generator_elbow_sign_inconsistent',
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
                'name' => 'cartesian_motion_generator_start_elbow_invalid',
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
                'name' => 'cartesian_motion_generator_joint_position_limits_violation',
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
                'name' => 'cartesian_motion_generator_joint_velocity_limits_violation',
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
                'name' => 'cartesian_motion_generator_joint_velocity_discontinuity',
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
                'name' => 'cartesian_motion_generator_joint_acceleration_discontinuity',
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
                'name' => 'cartesian_position_motion_generator_invalid_frame',
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
                'name' => 'force_controller_desired_force_tolerance_violation',
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
                'name' => 'controller_torque_discontinuity',
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
                'name' => 'start_elbow_sign_inconsistent',
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
                'name' => 'communication_constraints_violation',
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
                'name' => 'power_limit_violation',
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
                'name' => 'joint_p2p_insufficient_torque_for_planning',
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
                'name' => 'tau_j_range_violation',
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
                'name' => 'instability_detected',
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
                'name' => 'joint_move_in_wrong_direction',
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
                'name' => 'cartesian_spline_motion_generator_violation',
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
                'name' => 'joint_via_motion_generator_planning_joint_limit_violation',
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
                'name' => 'base_acceleration_initialization_timeout',
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
                'name' => 'base_acceleration_invalid_reading',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_position_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_position_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $self_collision_avoidance_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_velocity_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_velocity_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $force_control_safety_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_reflex;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_reflex;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $max_goal_pose_deviation_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $max_path_pose_deviation_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_velocity_profile_safety_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_position_motion_generator_start_pose_invalid;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_motion_generator_position_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_motion_generator_velocity_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_motion_generator_velocity_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_motion_generator_acceleration_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_position_motion_generator_start_pose_invalid;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_elbow_limit_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_velocity_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_velocity_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_acceleration_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_elbow_sign_inconsistent;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_start_elbow_invalid;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_joint_position_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_joint_velocity_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_joint_velocity_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_joint_acceleration_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_position_motion_generator_invalid_frame;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $force_controller_desired_force_tolerance_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $controller_torque_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $start_elbow_sign_inconsistent;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $communication_constraints_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $power_limit_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_p2p_insufficient_torque_for_planning;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $tau_j_range_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $instability_detected;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_move_in_wrong_direction;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_spline_motion_generator_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_via_motion_generator_planning_joint_limit_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $base_acceleration_initialization_timeout;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $base_acceleration_invalid_reading;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('joint_position_limits_violation', $values)) $this->joint_position_limits_violation =
                $values['joint_position_limits_violation'];
        else
        {
            $this->joint_position_limits_violation = false;
        }
        if (array_key_exists('cartesian_position_limits_violation', $values)) $this->cartesian_position_limits_violation =
                $values['cartesian_position_limits_violation'];
        else
        {
            $this->cartesian_position_limits_violation = false;
        }
        if (array_key_exists('self_collision_avoidance_violation', $values)) $this->self_collision_avoidance_violation =
                $values['self_collision_avoidance_violation'];
        else
        {
            $this->self_collision_avoidance_violation = false;
        }
        if (array_key_exists('joint_velocity_violation', $values)) $this->joint_velocity_violation =
                $values['joint_velocity_violation'];
        else
        {
            $this->joint_velocity_violation = false;
        }
        if (array_key_exists('cartesian_velocity_violation', $values)) $this->cartesian_velocity_violation =
                $values['cartesian_velocity_violation'];
        else
        {
            $this->cartesian_velocity_violation = false;
        }
        if (array_key_exists('force_control_safety_violation', $values)) $this->force_control_safety_violation =
                $values['force_control_safety_violation'];
        else
        {
            $this->force_control_safety_violation = false;
        }
        if (array_key_exists('joint_reflex', $values)) $this->joint_reflex = $values['joint_reflex'];
        else
        {
            $this->joint_reflex = false;
        }
        if (array_key_exists('cartesian_reflex', $values)) $this->cartesian_reflex = $values['cartesian_reflex'];
        else
        {
            $this->cartesian_reflex = false;
        }
        if (array_key_exists('max_goal_pose_deviation_violation', $values)) $this->max_goal_pose_deviation_violation =
                $values['max_goal_pose_deviation_violation'];
        else
        {
            $this->max_goal_pose_deviation_violation = false;
        }
        if (array_key_exists('max_path_pose_deviation_violation', $values)) $this->max_path_pose_deviation_violation =
                $values['max_path_pose_deviation_violation'];
        else
        {
            $this->max_path_pose_deviation_violation = false;
        }
        if (array_key_exists('cartesian_velocity_profile_safety_violation', $values))
                $this->cartesian_velocity_profile_safety_violation = $values['cartesian_velocity_profile_safety_violation'];
        else
        {
            $this->cartesian_velocity_profile_safety_violation = false;
        }
        if (array_key_exists('joint_position_motion_generator_start_pose_invalid', $values))
                $this->joint_position_motion_generator_start_pose_invalid =
                $values['joint_position_motion_generator_start_pose_invalid'];
        else
        {
            $this->joint_position_motion_generator_start_pose_invalid = false;
        }
        if (array_key_exists('joint_motion_generator_position_limits_violation', $values))
                $this->joint_motion_generator_position_limits_violation =
                $values['joint_motion_generator_position_limits_violation'];
        else
        {
            $this->joint_motion_generator_position_limits_violation = false;
        }
        if (array_key_exists('joint_motion_generator_velocity_limits_violation', $values))
                $this->joint_motion_generator_velocity_limits_violation =
                $values['joint_motion_generator_velocity_limits_violation'];
        else
        {
            $this->joint_motion_generator_velocity_limits_violation = false;
        }
        if (array_key_exists('joint_motion_generator_velocity_discontinuity', $values))
                $this->joint_motion_generator_velocity_discontinuity = $values['joint_motion_generator_velocity_discontinuity'];
        else
        {
            $this->joint_motion_generator_velocity_discontinuity = false;
        }
        if (array_key_exists('joint_motion_generator_acceleration_discontinuity', $values))
                $this->joint_motion_generator_acceleration_discontinuity =
                $values['joint_motion_generator_acceleration_discontinuity'];
        else
        {
            $this->joint_motion_generator_acceleration_discontinuity = false;
        }
        if (array_key_exists('cartesian_position_motion_generator_start_pose_invalid', $values))
                $this->cartesian_position_motion_generator_start_pose_invalid =
                $values['cartesian_position_motion_generator_start_pose_invalid'];
        else
        {
            $this->cartesian_position_motion_generator_start_pose_invalid = false;
        }
        if (array_key_exists('cartesian_motion_generator_elbow_limit_violation', $values))
                $this->cartesian_motion_generator_elbow_limit_violation =
                $values['cartesian_motion_generator_elbow_limit_violation'];
        else
        {
            $this->cartesian_motion_generator_elbow_limit_violation = false;
        }
        if (array_key_exists('cartesian_motion_generator_velocity_limits_violation', $values))
                $this->cartesian_motion_generator_velocity_limits_violation =
                $values['cartesian_motion_generator_velocity_limits_violation'];
        else
        {
            $this->cartesian_motion_generator_velocity_limits_violation = false;
        }
        if (array_key_exists('cartesian_motion_generator_velocity_discontinuity', $values))
                $this->cartesian_motion_generator_velocity_discontinuity =
                $values['cartesian_motion_generator_velocity_discontinuity'];
        else
        {
            $this->cartesian_motion_generator_velocity_discontinuity = false;
        }
        if (array_key_exists('cartesian_motion_generator_acceleration_discontinuity', $values))
                $this->cartesian_motion_generator_acceleration_discontinuity =
                $values['cartesian_motion_generator_acceleration_discontinuity'];
        else
        {
            $this->cartesian_motion_generator_acceleration_discontinuity = false;
        }
        if (array_key_exists('cartesian_motion_generator_elbow_sign_inconsistent', $values))
                $this->cartesian_motion_generator_elbow_sign_inconsistent =
                $values['cartesian_motion_generator_elbow_sign_inconsistent'];
        else
        {
            $this->cartesian_motion_generator_elbow_sign_inconsistent = false;
        }
        if (array_key_exists('cartesian_motion_generator_start_elbow_invalid', $values))
                $this->cartesian_motion_generator_start_elbow_invalid = $values['cartesian_motion_generator_start_elbow_invalid'];
        else
        {
            $this->cartesian_motion_generator_start_elbow_invalid = false;
        }
        if (array_key_exists('cartesian_motion_generator_joint_position_limits_violation', $values))
                $this->cartesian_motion_generator_joint_position_limits_violation =
                $values['cartesian_motion_generator_joint_position_limits_violation'];
        else
        {
            $this->cartesian_motion_generator_joint_position_limits_violation = false;
        }
        if (array_key_exists('cartesian_motion_generator_joint_velocity_limits_violation', $values))
                $this->cartesian_motion_generator_joint_velocity_limits_violation =
                $values['cartesian_motion_generator_joint_velocity_limits_violation'];
        else
        {
            $this->cartesian_motion_generator_joint_velocity_limits_violation = false;
        }
        if (array_key_exists('cartesian_motion_generator_joint_velocity_discontinuity', $values))
                $this->cartesian_motion_generator_joint_velocity_discontinuity =
                $values['cartesian_motion_generator_joint_velocity_discontinuity'];
        else
        {
            $this->cartesian_motion_generator_joint_velocity_discontinuity = false;
        }
        if (array_key_exists('cartesian_motion_generator_joint_acceleration_discontinuity', $values))
                $this->cartesian_motion_generator_joint_acceleration_discontinuity =
                $values['cartesian_motion_generator_joint_acceleration_discontinuity'];
        else
        {
            $this->cartesian_motion_generator_joint_acceleration_discontinuity = false;
        }
        if (array_key_exists('cartesian_position_motion_generator_invalid_frame', $values))
                $this->cartesian_position_motion_generator_invalid_frame =
                $values['cartesian_position_motion_generator_invalid_frame'];
        else
        {
            $this->cartesian_position_motion_generator_invalid_frame = false;
        }
        if (array_key_exists('force_controller_desired_force_tolerance_violation', $values))
                $this->force_controller_desired_force_tolerance_violation =
                $values['force_controller_desired_force_tolerance_violation'];
        else
        {
            $this->force_controller_desired_force_tolerance_violation = false;
        }
        if (array_key_exists('controller_torque_discontinuity', $values)) $this->controller_torque_discontinuity =
                $values['controller_torque_discontinuity'];
        else
        {
            $this->controller_torque_discontinuity = false;
        }
        if (array_key_exists('start_elbow_sign_inconsistent', $values)) $this->start_elbow_sign_inconsistent =
                $values['start_elbow_sign_inconsistent'];
        else
        {
            $this->start_elbow_sign_inconsistent = false;
        }
        if (array_key_exists('communication_constraints_violation', $values)) $this->communication_constraints_violation =
                $values['communication_constraints_violation'];
        else
        {
            $this->communication_constraints_violation = false;
        }
        if (array_key_exists('power_limit_violation', $values)) $this->power_limit_violation = $values['power_limit_violation'];
        else
        {
            $this->power_limit_violation = false;
        }
        if (array_key_exists('joint_p2p_insufficient_torque_for_planning', $values))
                $this->joint_p2p_insufficient_torque_for_planning = $values['joint_p2p_insufficient_torque_for_planning'];
        else
        {
            $this->joint_p2p_insufficient_torque_for_planning = false;
        }
        if (array_key_exists('tau_j_range_violation', $values)) $this->tau_j_range_violation = $values['tau_j_range_violation'];
        else
        {
            $this->tau_j_range_violation = false;
        }
        if (array_key_exists('instability_detected', $values)) $this->instability_detected = $values['instability_detected'];
        else
        {
            $this->instability_detected = false;
        }
        if (array_key_exists('joint_move_in_wrong_direction', $values)) $this->joint_move_in_wrong_direction =
                $values['joint_move_in_wrong_direction'];
        else
        {
            $this->joint_move_in_wrong_direction = false;
        }
        if (array_key_exists('cartesian_spline_motion_generator_violation', $values))
                $this->cartesian_spline_motion_generator_violation = $values['cartesian_spline_motion_generator_violation'];
        else
        {
            $this->cartesian_spline_motion_generator_violation = false;
        }
        if (array_key_exists('joint_via_motion_generator_planning_joint_limit_violation', $values))
                $this->joint_via_motion_generator_planning_joint_limit_violation =
                $values['joint_via_motion_generator_planning_joint_limit_violation'];
        else
        {
            $this->joint_via_motion_generator_planning_joint_limit_violation = false;
        }
        if (array_key_exists('base_acceleration_initialization_timeout', $values)) $this->base_acceleration_initialization_timeout =
                $values['base_acceleration_initialization_timeout'];
        else
        {
            $this->base_acceleration_initialization_timeout = false;
        }
        if (array_key_exists('base_acceleration_invalid_reading', $values)) $this->base_acceleration_invalid_reading =
                $values['base_acceleration_invalid_reading'];
        else
        {
            $this->base_acceleration_invalid_reading = false;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsErrors', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsErrors', $bytes); }
}
/** @brief Own every original field of time. */
final class Ros1Time
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Time',
        'native_type' => 'time',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
        'constants' => [
        ],
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
                'element_minimum' => 4,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original uint32 field; shape scalar and quota 0. */
    public mixed $sec;
    /** @brief Original uint32 field; shape scalar and quota 0. */
    public mixed $nsec;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('sec', $values)) $this->sec = $values['sec'];
        else
        {
            $this->sec = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('nsec', $values)) $this->nsec = $values['nsec'];
        else
        {
            $this->nsec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Time', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Time', $bytes); }
}
/** @brief Own every original field of std_msgs/Header. */
final class Ros1Std_msgsHeader
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Std_msgsHeader',
        'native_type' => 'std_msgs/Header',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435',
        'minimum' => 16,
        'maximum' => 144,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 4,
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
    /** @brief Original uint32 field; shape scalar and quota 0. */
    public mixed $seq;
    /** @brief Original Ros1Time field; shape scalar and quota 0. */
    public mixed $stamp;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $frame_id;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('seq', $values)) $this->seq = $values['seq'];
        else
        {
            $this->seq = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('stamp', $values)) $this->stamp = $values['stamp'];
        else
        {
            $this->stamp = new Ros1Time();
        }
        if (array_key_exists('frame_id', $values)) $this->frame_id = $values['frame_id'];
        else
        {
            $this->frame_id = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Std_msgsHeader', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Std_msgsHeader', $bytes); }
}
/** @brief Own every original field of franka_msgs/FrankaState. */
final class Ros1Franka_msgsFrankaState
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsFrankaState',
        'native_type' => 'franka_msgs/FrankaState',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71',
        'minimum' => 2491,
        'maximum' => 2619,
        'semantics' => '',
        'constants' => [
            'ROBOT_MODE_OTHER' => 0,
            'ROBOT_MODE_IDLE' => 1,
            'ROBOT_MODE_MOVE' => 2,
            'ROBOT_MODE_GUIDING' => 3,
            'ROBOT_MODE_REFLEX' => 4,
            'ROBOT_MODE_USER_STOPPED' => 5,
            'ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY' => 6,
        ],
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
                'element_minimum' => 16,
            ],
            [
                'name' => 'cartesian_collision',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'cartesian_contact',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'q',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'q_d',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'dq',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'dq_d',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'ddq_d',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'theta',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'dtheta',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tau_J',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'dtau_J',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tau_J_d',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'K_F_ext_hat_K',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'elbow',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'elbow_d',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'elbow_c',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'delbow_c',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'ddelbow_c',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'joint_collision',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'joint_contact',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'O_F_ext_hat_K',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'O_dP_EE_d',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'O_ddP_O',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'O_dP_EE_c',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'O_ddP_EE_c',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tau_ext_hat_filtered',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'm_ee',
                'type' => 'float64',
                'array' => '',
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
                'name' => 'F_x_Cee',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'I_ee',
                'type' => 'float64',
                'array' => 'array',
                'count' => 9,
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
                'name' => 'm_load',
                'type' => 'float64',
                'array' => '',
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
                'name' => 'F_x_Cload',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'I_load',
                'type' => 'float64',
                'array' => 'array',
                'count' => 9,
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
                'name' => 'm_total',
                'type' => 'float64',
                'array' => '',
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
                'name' => 'F_x_Ctotal',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'I_total',
                'type' => 'float64',
                'array' => 'array',
                'count' => 9,
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
                'name' => 'O_T_EE',
                'type' => 'float64',
                'array' => 'array',
                'count' => 16,
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
                'name' => 'O_T_EE_d',
                'type' => 'float64',
                'array' => 'array',
                'count' => 16,
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
                'name' => 'O_T_EE_c',
                'type' => 'float64',
                'array' => 'array',
                'count' => 16,
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
                'name' => 'F_T_EE',
                'type' => 'float64',
                'array' => 'array',
                'count' => 16,
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
                'name' => 'F_T_NE',
                'type' => 'float64',
                'array' => 'array',
                'count' => 16,
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
                'name' => 'NE_T_EE',
                'type' => 'float64',
                'array' => 'array',
                'count' => 16,
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
                'name' => 'EE_T_K',
                'type' => 'float64',
                'array' => 'array',
                'count' => 16,
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
                'name' => 'time',
                'type' => 'float64',
                'array' => '',
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
                'name' => 'control_command_success_rate',
                'type' => 'float64',
                'array' => '',
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
                'name' => 'robot_mode',
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
                'name' => 'current_errors',
                'type' => 'Ros1Franka_msgsErrors',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 41,
            ],
            [
                'name' => 'last_motion_errors',
                'type' => 'Ros1Franka_msgsErrors',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 41,
            ],
        ],
    ];
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_OTHER = 0;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_IDLE = 1;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_MOVE = 2;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_GUIDING = 3;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_REFLEX = 4;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_USER_STOPPED = 5;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY = 6;
    /** @brief Original Ros1Std_msgsHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $cartesian_collision;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $cartesian_contact;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $q;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $q_d;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $dq;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $dq_d;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $ddq_d;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $theta;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $dtheta;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau_J;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $dtau_J;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau_J_d;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $K_F_ext_hat_K;
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $elbow;
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $elbow_d;
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $elbow_c;
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $delbow_c;
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $ddelbow_c;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $joint_collision;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $joint_contact;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $O_F_ext_hat_K;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $O_dP_EE_d;
    /** @brief Original float64 field; shape array and quota 3. */
    public mixed $O_ddP_O;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $O_dP_EE_c;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $O_ddP_EE_c;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau_ext_hat_filtered;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $m_ee;
    /** @brief Original float64 field; shape array and quota 3. */
    public mixed $F_x_Cee;
    /** @brief Original float64 field; shape array and quota 9. */
    public mixed $I_ee;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $m_load;
    /** @brief Original float64 field; shape array and quota 3. */
    public mixed $F_x_Cload;
    /** @brief Original float64 field; shape array and quota 9. */
    public mixed $I_load;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $m_total;
    /** @brief Original float64 field; shape array and quota 3. */
    public mixed $F_x_Ctotal;
    /** @brief Original float64 field; shape array and quota 9. */
    public mixed $I_total;
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $O_T_EE;
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $O_T_EE_d;
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $O_T_EE_c;
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $F_T_EE;
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $F_T_NE;
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $NE_T_EE;
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $EE_T_K;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $time;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $control_command_success_rate;
    /** @brief Original uint8 field; shape scalar and quota 0. */
    public mixed $robot_mode;
    /** @brief Original Ros1Franka_msgsErrors field; shape scalar and quota 0. */
    public mixed $current_errors;
    /** @brief Original Ros1Franka_msgsErrors field; shape scalar and quota 0. */
    public mixed $last_motion_errors;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros1Std_msgsHeader();
        }
        if (array_key_exists('cartesian_collision', $values)) $this->cartesian_collision = $values['cartesian_collision'];
        else
        {
            $this->cartesian_collision = [];
            for ($index = 0; $index < 6; ++$index) $this->cartesian_collision[] = 0.0;
        }
        if (array_key_exists('cartesian_contact', $values)) $this->cartesian_contact = $values['cartesian_contact'];
        else
        {
            $this->cartesian_contact = [];
            for ($index = 0; $index < 6; ++$index) $this->cartesian_contact[] = 0.0;
        }
        if (array_key_exists('q', $values)) $this->q = $values['q'];
        else
        {
            $this->q = [];
            for ($index = 0; $index < 7; ++$index) $this->q[] = 0.0;
        }
        if (array_key_exists('q_d', $values)) $this->q_d = $values['q_d'];
        else
        {
            $this->q_d = [];
            for ($index = 0; $index < 7; ++$index) $this->q_d[] = 0.0;
        }
        if (array_key_exists('dq', $values)) $this->dq = $values['dq'];
        else
        {
            $this->dq = [];
            for ($index = 0; $index < 7; ++$index) $this->dq[] = 0.0;
        }
        if (array_key_exists('dq_d', $values)) $this->dq_d = $values['dq_d'];
        else
        {
            $this->dq_d = [];
            for ($index = 0; $index < 7; ++$index) $this->dq_d[] = 0.0;
        }
        if (array_key_exists('ddq_d', $values)) $this->ddq_d = $values['ddq_d'];
        else
        {
            $this->ddq_d = [];
            for ($index = 0; $index < 7; ++$index) $this->ddq_d[] = 0.0;
        }
        if (array_key_exists('theta', $values)) $this->theta = $values['theta'];
        else
        {
            $this->theta = [];
            for ($index = 0; $index < 7; ++$index) $this->theta[] = 0.0;
        }
        if (array_key_exists('dtheta', $values)) $this->dtheta = $values['dtheta'];
        else
        {
            $this->dtheta = [];
            for ($index = 0; $index < 7; ++$index) $this->dtheta[] = 0.0;
        }
        if (array_key_exists('tau_J', $values)) $this->tau_J = $values['tau_J'];
        else
        {
            $this->tau_J = [];
            for ($index = 0; $index < 7; ++$index) $this->tau_J[] = 0.0;
        }
        if (array_key_exists('dtau_J', $values)) $this->dtau_J = $values['dtau_J'];
        else
        {
            $this->dtau_J = [];
            for ($index = 0; $index < 7; ++$index) $this->dtau_J[] = 0.0;
        }
        if (array_key_exists('tau_J_d', $values)) $this->tau_J_d = $values['tau_J_d'];
        else
        {
            $this->tau_J_d = [];
            for ($index = 0; $index < 7; ++$index) $this->tau_J_d[] = 0.0;
        }
        if (array_key_exists('K_F_ext_hat_K', $values)) $this->K_F_ext_hat_K = $values['K_F_ext_hat_K'];
        else
        {
            $this->K_F_ext_hat_K = [];
            for ($index = 0; $index < 6; ++$index) $this->K_F_ext_hat_K[] = 0.0;
        }
        if (array_key_exists('elbow', $values)) $this->elbow = $values['elbow'];
        else
        {
            $this->elbow = [];
            for ($index = 0; $index < 2; ++$index) $this->elbow[] = 0.0;
        }
        if (array_key_exists('elbow_d', $values)) $this->elbow_d = $values['elbow_d'];
        else
        {
            $this->elbow_d = [];
            for ($index = 0; $index < 2; ++$index) $this->elbow_d[] = 0.0;
        }
        if (array_key_exists('elbow_c', $values)) $this->elbow_c = $values['elbow_c'];
        else
        {
            $this->elbow_c = [];
            for ($index = 0; $index < 2; ++$index) $this->elbow_c[] = 0.0;
        }
        if (array_key_exists('delbow_c', $values)) $this->delbow_c = $values['delbow_c'];
        else
        {
            $this->delbow_c = [];
            for ($index = 0; $index < 2; ++$index) $this->delbow_c[] = 0.0;
        }
        if (array_key_exists('ddelbow_c', $values)) $this->ddelbow_c = $values['ddelbow_c'];
        else
        {
            $this->ddelbow_c = [];
            for ($index = 0; $index < 2; ++$index) $this->ddelbow_c[] = 0.0;
        }
        if (array_key_exists('joint_collision', $values)) $this->joint_collision = $values['joint_collision'];
        else
        {
            $this->joint_collision = [];
            for ($index = 0; $index < 7; ++$index) $this->joint_collision[] = 0.0;
        }
        if (array_key_exists('joint_contact', $values)) $this->joint_contact = $values['joint_contact'];
        else
        {
            $this->joint_contact = [];
            for ($index = 0; $index < 7; ++$index) $this->joint_contact[] = 0.0;
        }
        if (array_key_exists('O_F_ext_hat_K', $values)) $this->O_F_ext_hat_K = $values['O_F_ext_hat_K'];
        else
        {
            $this->O_F_ext_hat_K = [];
            for ($index = 0; $index < 6; ++$index) $this->O_F_ext_hat_K[] = 0.0;
        }
        if (array_key_exists('O_dP_EE_d', $values)) $this->O_dP_EE_d = $values['O_dP_EE_d'];
        else
        {
            $this->O_dP_EE_d = [];
            for ($index = 0; $index < 6; ++$index) $this->O_dP_EE_d[] = 0.0;
        }
        if (array_key_exists('O_ddP_O', $values)) $this->O_ddP_O = $values['O_ddP_O'];
        else
        {
            $this->O_ddP_O = [];
            for ($index = 0; $index < 3; ++$index) $this->O_ddP_O[] = 0.0;
        }
        if (array_key_exists('O_dP_EE_c', $values)) $this->O_dP_EE_c = $values['O_dP_EE_c'];
        else
        {
            $this->O_dP_EE_c = [];
            for ($index = 0; $index < 6; ++$index) $this->O_dP_EE_c[] = 0.0;
        }
        if (array_key_exists('O_ddP_EE_c', $values)) $this->O_ddP_EE_c = $values['O_ddP_EE_c'];
        else
        {
            $this->O_ddP_EE_c = [];
            for ($index = 0; $index < 6; ++$index) $this->O_ddP_EE_c[] = 0.0;
        }
        if (array_key_exists('tau_ext_hat_filtered', $values)) $this->tau_ext_hat_filtered = $values['tau_ext_hat_filtered'];
        else
        {
            $this->tau_ext_hat_filtered = [];
            for ($index = 0; $index < 7; ++$index) $this->tau_ext_hat_filtered[] = 0.0;
        }
        if (array_key_exists('m_ee', $values)) $this->m_ee = $values['m_ee'];
        else
        {
            $this->m_ee = 0.0;
        }
        if (array_key_exists('F_x_Cee', $values)) $this->F_x_Cee = $values['F_x_Cee'];
        else
        {
            $this->F_x_Cee = [];
            for ($index = 0; $index < 3; ++$index) $this->F_x_Cee[] = 0.0;
        }
        if (array_key_exists('I_ee', $values)) $this->I_ee = $values['I_ee'];
        else
        {
            $this->I_ee = [];
            for ($index = 0; $index < 9; ++$index) $this->I_ee[] = 0.0;
        }
        if (array_key_exists('m_load', $values)) $this->m_load = $values['m_load'];
        else
        {
            $this->m_load = 0.0;
        }
        if (array_key_exists('F_x_Cload', $values)) $this->F_x_Cload = $values['F_x_Cload'];
        else
        {
            $this->F_x_Cload = [];
            for ($index = 0; $index < 3; ++$index) $this->F_x_Cload[] = 0.0;
        }
        if (array_key_exists('I_load', $values)) $this->I_load = $values['I_load'];
        else
        {
            $this->I_load = [];
            for ($index = 0; $index < 9; ++$index) $this->I_load[] = 0.0;
        }
        if (array_key_exists('m_total', $values)) $this->m_total = $values['m_total'];
        else
        {
            $this->m_total = 0.0;
        }
        if (array_key_exists('F_x_Ctotal', $values)) $this->F_x_Ctotal = $values['F_x_Ctotal'];
        else
        {
            $this->F_x_Ctotal = [];
            for ($index = 0; $index < 3; ++$index) $this->F_x_Ctotal[] = 0.0;
        }
        if (array_key_exists('I_total', $values)) $this->I_total = $values['I_total'];
        else
        {
            $this->I_total = [];
            for ($index = 0; $index < 9; ++$index) $this->I_total[] = 0.0;
        }
        if (array_key_exists('O_T_EE', $values)) $this->O_T_EE = $values['O_T_EE'];
        else
        {
            $this->O_T_EE = [];
            for ($index = 0; $index < 16; ++$index) $this->O_T_EE[] = 0.0;
        }
        if (array_key_exists('O_T_EE_d', $values)) $this->O_T_EE_d = $values['O_T_EE_d'];
        else
        {
            $this->O_T_EE_d = [];
            for ($index = 0; $index < 16; ++$index) $this->O_T_EE_d[] = 0.0;
        }
        if (array_key_exists('O_T_EE_c', $values)) $this->O_T_EE_c = $values['O_T_EE_c'];
        else
        {
            $this->O_T_EE_c = [];
            for ($index = 0; $index < 16; ++$index) $this->O_T_EE_c[] = 0.0;
        }
        if (array_key_exists('F_T_EE', $values)) $this->F_T_EE = $values['F_T_EE'];
        else
        {
            $this->F_T_EE = [];
            for ($index = 0; $index < 16; ++$index) $this->F_T_EE[] = 0.0;
        }
        if (array_key_exists('F_T_NE', $values)) $this->F_T_NE = $values['F_T_NE'];
        else
        {
            $this->F_T_NE = [];
            for ($index = 0; $index < 16; ++$index) $this->F_T_NE[] = 0.0;
        }
        if (array_key_exists('NE_T_EE', $values)) $this->NE_T_EE = $values['NE_T_EE'];
        else
        {
            $this->NE_T_EE = [];
            for ($index = 0; $index < 16; ++$index) $this->NE_T_EE[] = 0.0;
        }
        if (array_key_exists('EE_T_K', $values)) $this->EE_T_K = $values['EE_T_K'];
        else
        {
            $this->EE_T_K = [];
            for ($index = 0; $index < 16; ++$index) $this->EE_T_K[] = 0.0;
        }
        if (array_key_exists('time', $values)) $this->time = $values['time'];
        else
        {
            $this->time = 0.0;
        }
        if (array_key_exists('control_command_success_rate', $values)) $this->control_command_success_rate =
                $values['control_command_success_rate'];
        else
        {
            $this->control_command_success_rate = 0.0;
        }
        if (array_key_exists('robot_mode', $values)) $this->robot_mode = $values['robot_mode'];
        else
        {
            $this->robot_mode = 0;
        }
        if (array_key_exists('current_errors', $values)) $this->current_errors = $values['current_errors'];
        else
        {
            $this->current_errors = new Ros1Franka_msgsErrors();
        }
        if (array_key_exists('last_motion_errors', $values)) $this->last_motion_errors = $values['last_motion_errors'];
        else
        {
            $this->last_motion_errors = new Ros1Franka_msgsErrors();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsFrankaState', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsFrankaState', $bytes); }
}
/** @brief Own every original field of franka_msgs/SetCartesianImpedanceRequest. */
final class Ros1Franka_msgsSetCartesianImpedanceRequest
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetCartesianImpedanceRequest',
        'native_type' => 'franka_msgs/SetCartesianImpedanceRequest',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'cartesian_stiffness',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $cartesian_stiffness;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('cartesian_stiffness', $values)) $this->cartesian_stiffness = $values['cartesian_stiffness'];
        else
        {
            $this->cartesian_stiffness = [];
            for ($index = 0; $index < 6; ++$index) $this->cartesian_stiffness[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetCartesianImpedanceRequest', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros1Franka_msgsSetCartesianImpedanceRequest', $bytes); }
}
/** @brief Own every original field of franka_msgs/SetCartesianImpedanceResponse. */
final class Ros1Franka_msgsSetCartesianImpedanceResponse
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetCartesianImpedanceResponse',
        'native_type' => 'franka_msgs/SetCartesianImpedanceResponse',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetCartesianImpedanceResponse', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros1Franka_msgsSetCartesianImpedanceResponse', $bytes); }
}
/** @brief Own every original field of franka_msgs/SetEEFrameRequest. */
final class Ros1Franka_msgsSetEEFrameRequest
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetEEFrameRequest',
        'native_type' => 'franka_msgs/SetEEFrameRequest',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc',
        'minimum' => 128,
        'maximum' => 128,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'NE_T_EE',
                'type' => 'float64',
                'array' => 'array',
                'count' => 16,
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
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $NE_T_EE;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('NE_T_EE', $values)) $this->NE_T_EE = $values['NE_T_EE'];
        else
        {
            $this->NE_T_EE = [];
            for ($index = 0; $index < 16; ++$index) $this->NE_T_EE[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetEEFrameRequest', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsSetEEFrameRequest', $bytes);
            }
}
/** @brief Own every original field of franka_msgs/SetEEFrameResponse. */
final class Ros1Franka_msgsSetEEFrameResponse
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetEEFrameResponse',
        'native_type' => 'franka_msgs/SetEEFrameResponse',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetEEFrameResponse', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsSetEEFrameResponse',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorRequest. */
final class Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest',
        'native_type' => 'franka_msgs/SetForceTorqueCollisionBehaviorRequest',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5',
        'minimum' => 208,
        'maximum' => 208,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'lower_torque_thresholds_nominal',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'upper_torque_thresholds_nominal',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'lower_force_thresholds_nominal',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'upper_force_thresholds_nominal',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $lower_torque_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $upper_torque_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $lower_force_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $upper_force_thresholds_nominal;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('lower_torque_thresholds_nominal', $values)) $this->lower_torque_thresholds_nominal =
                $values['lower_torque_thresholds_nominal'];
        else
        {
            $this->lower_torque_thresholds_nominal = [];
            for ($index = 0; $index < 7; ++$index) $this->lower_torque_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('upper_torque_thresholds_nominal', $values)) $this->upper_torque_thresholds_nominal =
                $values['upper_torque_thresholds_nominal'];
        else
        {
            $this->upper_torque_thresholds_nominal = [];
            for ($index = 0; $index < 7; ++$index) $this->upper_torque_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('lower_force_thresholds_nominal', $values)) $this->lower_force_thresholds_nominal =
                $values['lower_force_thresholds_nominal'];
        else
        {
            $this->lower_force_thresholds_nominal = [];
            for ($index = 0; $index < 6; ++$index) $this->lower_force_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('upper_force_thresholds_nominal', $values)) $this->upper_force_thresholds_nominal =
                $values['upper_force_thresholds_nominal'];
        else
        {
            $this->upper_force_thresholds_nominal = [];
            for ($index = 0; $index < 6; ++$index) $this->upper_force_thresholds_nominal[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest',
            $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest', $bytes); }
}
/** @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorResponse. */
final class Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse',
        'native_type' => 'franka_msgs/SetForceTorqueCollisionBehaviorResponse',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse',
            $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse', $bytes); }
}
/** @brief Own every original field of franka_msgs/SetFullCollisionBehaviorRequest. */
final class Ros1Franka_msgsSetFullCollisionBehaviorRequest
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetFullCollisionBehaviorRequest',
        'native_type' => 'franka_msgs/SetFullCollisionBehaviorRequest',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c',
        'minimum' => 416,
        'maximum' => 416,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'lower_torque_thresholds_acceleration',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'upper_torque_thresholds_acceleration',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'lower_torque_thresholds_nominal',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'upper_torque_thresholds_nominal',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'lower_force_thresholds_acceleration',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'upper_force_thresholds_acceleration',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'lower_force_thresholds_nominal',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'upper_force_thresholds_nominal',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $lower_torque_thresholds_acceleration;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $upper_torque_thresholds_acceleration;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $lower_torque_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $upper_torque_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $lower_force_thresholds_acceleration;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $upper_force_thresholds_acceleration;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $lower_force_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $upper_force_thresholds_nominal;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('lower_torque_thresholds_acceleration', $values)) $this->lower_torque_thresholds_acceleration =
                $values['lower_torque_thresholds_acceleration'];
        else
        {
            $this->lower_torque_thresholds_acceleration = [];
            for ($index = 0; $index < 7; ++$index) $this->lower_torque_thresholds_acceleration[] = 0.0;
        }
        if (array_key_exists('upper_torque_thresholds_acceleration', $values)) $this->upper_torque_thresholds_acceleration =
                $values['upper_torque_thresholds_acceleration'];
        else
        {
            $this->upper_torque_thresholds_acceleration = [];
            for ($index = 0; $index < 7; ++$index) $this->upper_torque_thresholds_acceleration[] = 0.0;
        }
        if (array_key_exists('lower_torque_thresholds_nominal', $values)) $this->lower_torque_thresholds_nominal =
                $values['lower_torque_thresholds_nominal'];
        else
        {
            $this->lower_torque_thresholds_nominal = [];
            for ($index = 0; $index < 7; ++$index) $this->lower_torque_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('upper_torque_thresholds_nominal', $values)) $this->upper_torque_thresholds_nominal =
                $values['upper_torque_thresholds_nominal'];
        else
        {
            $this->upper_torque_thresholds_nominal = [];
            for ($index = 0; $index < 7; ++$index) $this->upper_torque_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('lower_force_thresholds_acceleration', $values)) $this->lower_force_thresholds_acceleration =
                $values['lower_force_thresholds_acceleration'];
        else
        {
            $this->lower_force_thresholds_acceleration = [];
            for ($index = 0; $index < 6; ++$index) $this->lower_force_thresholds_acceleration[] = 0.0;
        }
        if (array_key_exists('upper_force_thresholds_acceleration', $values)) $this->upper_force_thresholds_acceleration =
                $values['upper_force_thresholds_acceleration'];
        else
        {
            $this->upper_force_thresholds_acceleration = [];
            for ($index = 0; $index < 6; ++$index) $this->upper_force_thresholds_acceleration[] = 0.0;
        }
        if (array_key_exists('lower_force_thresholds_nominal', $values)) $this->lower_force_thresholds_nominal =
                $values['lower_force_thresholds_nominal'];
        else
        {
            $this->lower_force_thresholds_nominal = [];
            for ($index = 0; $index < 6; ++$index) $this->lower_force_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('upper_force_thresholds_nominal', $values)) $this->upper_force_thresholds_nominal =
                $values['upper_force_thresholds_nominal'];
        else
        {
            $this->upper_force_thresholds_nominal = [];
            for ($index = 0; $index < 6; ++$index) $this->upper_force_thresholds_nominal[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetFullCollisionBehaviorRequest', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros1Franka_msgsSetFullCollisionBehaviorRequest', $bytes); }
}
/** @brief Own every original field of franka_msgs/SetFullCollisionBehaviorResponse. */
final class Ros1Franka_msgsSetFullCollisionBehaviorResponse
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetFullCollisionBehaviorResponse',
        'native_type' => 'franka_msgs/SetFullCollisionBehaviorResponse',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetFullCollisionBehaviorResponse', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros1Franka_msgsSetFullCollisionBehaviorResponse', $bytes); }
}
/** @brief Own every original field of franka_msgs/SetJointImpedanceRequest. */
final class Ros1Franka_msgsSetJointImpedanceRequest
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetJointImpedanceRequest',
        'native_type' => 'franka_msgs/SetJointImpedanceRequest',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'joint_stiffness',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $joint_stiffness;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('joint_stiffness', $values)) $this->joint_stiffness = $values['joint_stiffness'];
        else
        {
            $this->joint_stiffness = [];
            for ($index = 0; $index < 7; ++$index) $this->joint_stiffness[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetJointImpedanceRequest', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsSetJointImpedanceRequest',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/SetJointImpedanceResponse. */
final class Ros1Franka_msgsSetJointImpedanceResponse
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetJointImpedanceResponse',
        'native_type' => 'franka_msgs/SetJointImpedanceResponse',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetJointImpedanceResponse', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsSetJointImpedanceResponse',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/SetKFrameRequest. */
final class Ros1Franka_msgsSetKFrameRequest
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetKFrameRequest',
        'native_type' => 'franka_msgs/SetKFrameRequest',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446',
        'minimum' => 128,
        'maximum' => 128,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'EE_T_K',
                'type' => 'float64',
                'array' => 'array',
                'count' => 16,
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
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $EE_T_K;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('EE_T_K', $values)) $this->EE_T_K = $values['EE_T_K'];
        else
        {
            $this->EE_T_K = [];
            for ($index = 0; $index < 16; ++$index) $this->EE_T_K[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetKFrameRequest', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsSetKFrameRequest', $bytes);
            }
}
/** @brief Own every original field of franka_msgs/SetKFrameResponse. */
final class Ros1Franka_msgsSetKFrameResponse
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetKFrameResponse',
        'native_type' => 'franka_msgs/SetKFrameResponse',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetKFrameResponse', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsSetKFrameResponse', $bytes);
            }
}
/** @brief Own every original field of franka_msgs/SetLoadRequest. */
final class Ros1Franka_msgsSetLoadRequest
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetLoadRequest',
        'native_type' => 'franka_msgs/SetLoadRequest',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5',
        'minimum' => 104,
        'maximum' => 104,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'mass',
                'type' => 'float64',
                'array' => '',
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
                'name' => 'F_x_center_load',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'load_inertia',
                'type' => 'float64',
                'array' => 'array',
                'count' => 9,
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
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $mass;
    /** @brief Original float64 field; shape array and quota 3. */
    public mixed $F_x_center_load;
    /** @brief Original float64 field; shape array and quota 9. */
    public mixed $load_inertia;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('mass', $values)) $this->mass = $values['mass'];
        else
        {
            $this->mass = 0.0;
        }
        if (array_key_exists('F_x_center_load', $values)) $this->F_x_center_load = $values['F_x_center_load'];
        else
        {
            $this->F_x_center_load = [];
            for ($index = 0; $index < 3; ++$index) $this->F_x_center_load[] = 0.0;
        }
        if (array_key_exists('load_inertia', $values)) $this->load_inertia = $values['load_inertia'];
        else
        {
            $this->load_inertia = [];
            for ($index = 0; $index < 9; ++$index) $this->load_inertia[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetLoadRequest', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsSetLoadRequest', $bytes); }
}
/** @brief Own every original field of franka_msgs/SetLoadResponse. */
final class Ros1Franka_msgsSetLoadResponse
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Franka_msgsSetLoadResponse',
        'native_type' => 'franka_msgs/SetLoadResponse',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'name' => 'error',
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
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Franka_msgsSetLoadResponse', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Franka_msgsSetLoadResponse', $bytes); }
}
/** @brief Share one pure codec registry for this exact selected release. */
final class Catalog
{
    /** @brief Return the retained strict common wire registry. @return Wire No native resource. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) $wire = new Wire([
            'Ros1Franka_example_controllersJointTorqueComparison' =>
            'Ros1Franka_example_controllersJointTorqueComparison::SCHEMA + ['class' =>
            'Ros1Franka_example_controllersJointTorqueComparison::class],
            'Ros1Franka_gripperGraspEpsilon' => Ros1Franka_gripperGraspEpsilon::SCHEMA + ['class' =>
            'Ros1Franka_gripperGraspEpsilon::class],
            'Ros1Franka_gripperGraspGoal' => Ros1Franka_gripperGraspGoal::SCHEMA + ['class' =>
            'Ros1Franka_gripperGraspGoal::class],
            'Ros1Franka_gripperGraspResult' => Ros1Franka_gripperGraspResult::SCHEMA + ['class' =>
            'Ros1Franka_gripperGraspResult::class],
            'Ros1Franka_gripperGraspFeedback' => Ros1Franka_gripperGraspFeedback::SCHEMA + ['class' =>
            'Ros1Franka_gripperGraspFeedback::class],
            'Ros1Franka_gripperHomingGoal' => Ros1Franka_gripperHomingGoal::SCHEMA + ['class' =>
            'Ros1Franka_gripperHomingGoal::class],
            'Ros1Franka_gripperHomingResult' => Ros1Franka_gripperHomingResult::SCHEMA + ['class' =>
            'Ros1Franka_gripperHomingResult::class],
            'Ros1Franka_gripperHomingFeedback' => Ros1Franka_gripperHomingFeedback::SCHEMA + ['class' =>
            'Ros1Franka_gripperHomingFeedback::class],
            'Ros1Franka_gripperMoveGoal' => Ros1Franka_gripperMoveGoal::SCHEMA + ['class' =>
            'Ros1Franka_gripperMoveGoal::class],
            'Ros1Franka_gripperMoveResult' => Ros1Franka_gripperMoveResult::SCHEMA + ['class' =>
            'Ros1Franka_gripperMoveResult::class],
            'Ros1Franka_gripperMoveFeedback' => Ros1Franka_gripperMoveFeedback::SCHEMA + ['class' =>
            'Ros1Franka_gripperMoveFeedback::class],
            'Ros1Franka_gripperStopGoal' => Ros1Franka_gripperStopGoal::SCHEMA + ['class' =>
            'Ros1Franka_gripperStopGoal::class],
            'Ros1Franka_gripperStopResult' => Ros1Franka_gripperStopResult::SCHEMA + ['class' =>
            'Ros1Franka_gripperStopResult::class],
            'Ros1Franka_gripperStopFeedback' => Ros1Franka_gripperStopFeedback::SCHEMA + ['class' =>
            'Ros1Franka_gripperStopFeedback::class],
            'Ros1Franka_msgsErrorRecoveryGoal' => Ros1Franka_msgsErrorRecoveryGoal::SCHEMA + ['class' =>
            'Ros1Franka_msgsErrorRecoveryGoal::class],
            'Ros1Franka_msgsErrorRecoveryResult' => Ros1Franka_msgsErrorRecoveryResult::SCHEMA + ['class' =>
            'Ros1Franka_msgsErrorRecoveryResult::class],
            'Ros1Franka_msgsErrorRecoveryFeedback' => Ros1Franka_msgsErrorRecoveryFeedback::SCHEMA + ['class' =>
            'Ros1Franka_msgsErrorRecoveryFeedback::class],
            'Ros1Franka_msgsErrors' => Ros1Franka_msgsErrors::SCHEMA + ['class' => Ros1Franka_msgsErrors::class],
            'Ros1Time' => Ros1Time::SCHEMA + ['class' => Ros1Time::class],
            'Ros1Std_msgsHeader' => Ros1Std_msgsHeader::SCHEMA + ['class' => Ros1Std_msgsHeader::class],
            'Ros1Franka_msgsFrankaState' => Ros1Franka_msgsFrankaState::SCHEMA + ['class' =>
            'Ros1Franka_msgsFrankaState::class],
            'Ros1Franka_msgsSetCartesianImpedanceRequest' => Ros1Franka_msgsSetCartesianImpedanceRequest::SCHEMA +
            '['class' => Ros1Franka_msgsSetCartesianImpedanceRequest::class],
            'Ros1Franka_msgsSetCartesianImpedanceResponse' => Ros1Franka_msgsSetCartesianImpedanceResponse::SCHEMA +
            '['class' => Ros1Franka_msgsSetCartesianImpedanceResponse::class],
            'Ros1Franka_msgsSetEEFrameRequest' => Ros1Franka_msgsSetEEFrameRequest::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetEEFrameRequest::class],
            'Ros1Franka_msgsSetEEFrameResponse' => Ros1Franka_msgsSetEEFrameResponse::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetEEFrameResponse::class],
            'Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest' =>
            'Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest::class],
            'Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse' =>
            'Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse::class],
            'Ros1Franka_msgsSetFullCollisionBehaviorRequest' => Ros1Franka_msgsSetFullCollisionBehaviorRequest::SCHEMA +
            '['class' => Ros1Franka_msgsSetFullCollisionBehaviorRequest::class],
            'Ros1Franka_msgsSetFullCollisionBehaviorResponse' => Ros1Franka_msgsSetFullCollisionBehaviorResponse::SCHEMA
            '+ ['class' => Ros1Franka_msgsSetFullCollisionBehaviorResponse::class],
            'Ros1Franka_msgsSetJointImpedanceRequest' => Ros1Franka_msgsSetJointImpedanceRequest::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetJointImpedanceRequest::class],
            'Ros1Franka_msgsSetJointImpedanceResponse' => Ros1Franka_msgsSetJointImpedanceResponse::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetJointImpedanceResponse::class],
            'Ros1Franka_msgsSetKFrameRequest' => Ros1Franka_msgsSetKFrameRequest::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetKFrameRequest::class],
            'Ros1Franka_msgsSetKFrameResponse' => Ros1Franka_msgsSetKFrameResponse::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetKFrameResponse::class],
            'Ros1Franka_msgsSetLoadRequest' => Ros1Franka_msgsSetLoadRequest::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetLoadRequest::class],
            'Ros1Franka_msgsSetLoadResponse' => Ros1Franka_msgsSetLoadResponse::SCHEMA + ['class' =>
            'Ros1Franka_msgsSetLoadResponse::class],
        ]);
        return $wire;
    }
}
