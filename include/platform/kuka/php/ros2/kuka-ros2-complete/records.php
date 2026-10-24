<?php
declare(strict_types=1);
namespace Uwvm\KukaKukaRos2Complete;
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @file records.php
 * @brief Complete vendor record classes; codec implementation is shared.
 */
/** @brief Complete original builtin_interfaces/msg/Duration value. */
final class Ros2Builtin_interfacesMsgDuration
{
    /** @brief Original sec: int32; scalar. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar. */
    public mixed $nanosec;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->sec = 0;
        $this->nanosec = Word::fromDecimal('0', 4, false);
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgDuration', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgDuration', $bytes);
    }
}
/** @brief Complete original builtin_interfaces/msg/Time value. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Original sec: int32; scalar. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar. */
    public mixed $nanosec;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->sec = 0;
        $this->nanosec = Word::fromDecimal('0', 4, false);
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes);
    }
}
/** @brief Complete original std_msgs/msg/Header value. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Original stamp: builtin_interfaces/msg/Time; scalar. */
    public mixed $stamp;
    /** @brief Original frame_id: string; scalar. */
    public mixed $frame_id;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->stamp = new Ros2Builtin_interfacesMsgTime();
        $this->frame_id = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes);
    }
}
/** @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint value. */
final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    /** @brief Original positions: float64; sequence. */
    public mixed $positions;
    /** @brief Original velocities: float64; sequence. */
    public mixed $velocities;
    /** @brief Original accelerations: float64; sequence. */
    public mixed $accelerations;
    /** @brief Original effort: float64; sequence. */
    public mixed $effort;
    /** @brief Original time_from_start: builtin_interfaces/msg/Duration; scalar. */
    public mixed $time_from_start;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->positions = [];
        $this->velocities = [];
        $this->accelerations = [];
        $this->effort = [];
        $this->time_from_start = new Ros2Builtin_interfacesMsgDuration();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Trajectory_msgsMsgJointTrajectoryPoint', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Trajectory_msgsMsgJointTrajectoryPoint', $bytes);
    }
}
/** @brief Complete original trajectory_msgs/msg/JointTrajectory value. */
final class Ros2Trajectory_msgsMsgJointTrajectory
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence. */
    public mixed $joint_names;
    /** @brief Original points: trajectory_msgs/msg/JointTrajectoryPoint; sequence. */
    public mixed $points;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->joint_names = [];
        $this->points = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Trajectory_msgsMsgJointTrajectory', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Trajectory_msgsMsgJointTrajectory', $bytes);
    }
}
/** @brief Complete original geometry_msgs/msg/Vector3 value. */
final class Ros2Geometry_msgsMsgVector3
{
    /** @brief Original x: float64; scalar. */
    public mixed $x;
    /** @brief Original y: float64; scalar. */
    public mixed $y;
    /** @brief Original z: float64; scalar. */
    public mixed $z;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->x = 0.0;
        $this->y = 0.0;
        $this->z = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgVector3', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgVector3', $bytes);
    }
}
/** @brief Complete original geometry_msgs/msg/Quaternion value. */
final class Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Original x: float64; scalar. */
    public mixed $x;
    /** @brief Original y: float64; scalar. */
    public mixed $y;
    /** @brief Original z: float64; scalar. */
    public mixed $z;
    /** @brief Original w: float64; scalar. */
    public mixed $w;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->x = 0.0;
        $this->y = 0.0;
        $this->z = 0.0;
        $this->w = 1.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgQuaternion', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgQuaternion', $bytes);
    }
}
/** @brief Complete original geometry_msgs/msg/Transform value. */
final class Ros2Geometry_msgsMsgTransform
{
    /** @brief Original translation: geometry_msgs/msg/Vector3; scalar. */
    public mixed $translation;
    /** @brief Original rotation: geometry_msgs/msg/Quaternion; scalar. */
    public mixed $rotation;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->translation = new Ros2Geometry_msgsMsgVector3();
        $this->rotation = new Ros2Geometry_msgsMsgQuaternion();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgTransform', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgTransform', $bytes);
    }
}
/** @brief Complete original geometry_msgs/msg/Twist value. */
final class Ros2Geometry_msgsMsgTwist
{
    /** @brief Original linear: geometry_msgs/msg/Vector3; scalar. */
    public mixed $linear;
    /** @brief Original angular: geometry_msgs/msg/Vector3; scalar. */
    public mixed $angular;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->linear = new Ros2Geometry_msgsMsgVector3();
        $this->angular = new Ros2Geometry_msgsMsgVector3();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgTwist', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgTwist', $bytes);
    }
}
/** @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value. */
final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
{
    /** @brief Original transforms: geometry_msgs/msg/Transform; sequence. */
    public mixed $transforms;
    /** @brief Original velocities: geometry_msgs/msg/Twist; sequence. */
    public mixed $velocities;
    /** @brief Original accelerations: geometry_msgs/msg/Twist; sequence. */
    public mixed $accelerations;
    /** @brief Original time_from_start: builtin_interfaces/msg/Duration; scalar. */
    public mixed $time_from_start;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->transforms = [];
        $this->velocities = [];
        $this->accelerations = [];
        $this->time_from_start = new Ros2Builtin_interfacesMsgDuration();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint', $bytes);
    }
}
/** @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectory value. */
final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence. */
    public mixed $joint_names;
    /** @brief Original points: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; sequence. */
    public mixed $points;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->joint_names = [];
        $this->points = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectory', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectory', $bytes);
    }
}
/** @brief Complete original control_msgs/msg/JointTolerance value. */
final class Ros2Control_msgsMsgJointTolerance
{
    /** @brief Original name: string; scalar. */
    public mixed $name;
    /** @brief Original position: float64; scalar. */
    public mixed $position;
    /** @brief Original velocity: float64; scalar. */
    public mixed $velocity;
    /** @brief Original acceleration: float64; scalar. */
    public mixed $acceleration;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->name = '';
        $this->position = 0.0;
        $this->velocity = 0.0;
        $this->acceleration = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Control_msgsMsgJointTolerance', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Control_msgsMsgJointTolerance', $bytes);
    }
}
/** @brief Complete original control_msgs/msg/JointComponentTolerance value. */
final class Ros2Control_msgsMsgJointComponentTolerance
{
    /** @brief Original joint_name: string; scalar. */
    public mixed $joint_name;
    /** @brief Original component: uint16; scalar. */
    public mixed $component;
    /** @brief Original position: float64; scalar. */
    public mixed $position;
    /** @brief Original velocity: float64; scalar. */
    public mixed $velocity;
    /** @brief Original acceleration: float64; scalar. */
    public mixed $acceleration;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->joint_name = '';
        $this->component = 0;
        $this->position = 0.0;
        $this->velocity = 0.0;
        $this->acceleration = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Control_msgsMsgJointComponentTolerance', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Control_msgsMsgJointComponentTolerance', $bytes);
    }
}
/** @brief Complete original control_msgs/action/FollowJointTrajectory_Goal value. */
final class Ros2Control_msgsActionFollowJointTrajectory_Goal
{
    /** @brief Original trajectory: trajectory_msgs/msg/JointTrajectory; scalar. */
    public mixed $trajectory;
    /** @brief Original multi_dof_trajectory: trajectory_msgs/msg/MultiDOFJointTrajectory; scalar. */
    public mixed $multi_dof_trajectory;
    /** @brief Original path_tolerance: control_msgs/msg/JointTolerance; sequence. */
    public mixed $path_tolerance;
    /** @brief Original component_path_tolerance: control_msgs/msg/JointComponentTolerance; sequence. */
    public mixed $component_path_tolerance;
    /** @brief Original goal_tolerance: control_msgs/msg/JointTolerance; sequence. */
    public mixed $goal_tolerance;
    /** @brief Original component_goal_tolerance: control_msgs/msg/JointComponentTolerance; sequence. */
    public mixed $component_goal_tolerance;
    /** @brief Original goal_time_tolerance: builtin_interfaces/msg/Duration; scalar. */
    public mixed $goal_time_tolerance;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->trajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
        $this->multi_dof_trajectory = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        $this->path_tolerance = [];
        $this->component_path_tolerance = [];
        $this->goal_tolerance = [];
        $this->component_goal_tolerance = [];
        $this->goal_time_tolerance = new Ros2Builtin_interfacesMsgDuration();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Control_msgsActionFollowJointTrajectory_Goal', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Control_msgsActionFollowJointTrajectory_Goal', $bytes);
    }
}
/** @brief Complete original control_msgs/action/FollowJointTrajectory_Result value. */
final class Ros2Control_msgsActionFollowJointTrajectory_Result
{
    /** @brief Original error_code: int32; scalar. */
    public mixed $error_code;
    /** @brief Original error_string: string; scalar. */
    public mixed $error_string;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->error_code = 0;
        $this->error_string = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Control_msgsActionFollowJointTrajectory_Result', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Control_msgsActionFollowJointTrajectory_Result', $bytes);
    }
}
/** @brief Complete original control_msgs/action/FollowJointTrajectory_Feedback value. */
final class Ros2Control_msgsActionFollowJointTrajectory_Feedback
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence. */
    public mixed $joint_names;
    /** @brief Original desired: trajectory_msgs/msg/JointTrajectoryPoint; scalar. */
    public mixed $desired;
    /** @brief Original actual: trajectory_msgs/msg/JointTrajectoryPoint; scalar. */
    public mixed $actual;
    /** @brief Original error: trajectory_msgs/msg/JointTrajectoryPoint; scalar. */
    public mixed $error;
    /** @brief Original multi_dof_joint_names: string; sequence. */
    public mixed $multi_dof_joint_names;
    /** @brief Original multi_dof_desired: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; scalar. */
    public mixed $multi_dof_desired;
    /** @brief Original multi_dof_actual: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; scalar. */
    public mixed $multi_dof_actual;
    /** @brief Original multi_dof_error: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; scalar. */
    public mixed $multi_dof_error;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->joint_names = [];
        $this->desired = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        $this->actual = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        $this->error = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        $this->multi_dof_joint_names = [];
        $this->multi_dof_desired = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        $this->multi_dof_actual = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        $this->multi_dof_error = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Control_msgsActionFollowJointTrajectory_Feedback', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Control_msgsActionFollowJointTrajectory_Feedback', $bytes);
    }
}
/** @brief Complete original kuka_driver_interfaces/msg/FRIState value. */
final class Ros2Kuka_driver_interfacesMsgFRIState
{
    /** @brief Original session_state: int32; scalar. */
    public mixed $session_state;
    /** @brief Original connection_quality: int32; scalar. */
    public mixed $connection_quality;
    /** @brief Original safety_state: int32; scalar. */
    public mixed $safety_state;
    /** @brief Original command_mode: int32; scalar. */
    public mixed $command_mode;
    /** @brief Original control_mode: int32; scalar. */
    public mixed $control_mode;
    /** @brief Original operation_mode: int32; scalar. */
    public mixed $operation_mode;
    /** @brief Original drive_state: int32; scalar. */
    public mixed $drive_state;
    /** @brief Original overlay_type: int32; scalar. */
    public mixed $overlay_type;
    /** @brief Original tracking_performance: float64; scalar. */
    public mixed $tracking_performance;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->session_state = 0;
        $this->connection_quality = 0;
        $this->safety_state = 0;
        $this->command_mode = 0;
        $this->control_mode = 0;
        $this->operation_mode = 0;
        $this->drive_state = 0;
        $this->overlay_type = 0;
        $this->tracking_performance = 0.0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Kuka_driver_interfacesMsgFRIState', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Kuka_driver_interfacesMsgFRIState', $bytes);
    }
}
/** @brief Complete original kuka_driver_interfaces/msg/FRIStateArray value. */
final class Ros2Kuka_driver_interfacesMsgFRIStateArray
{
    /** @brief Original robot_names: string; sequence. */
    public mixed $robot_names;
    /** @brief Original states: kuka_driver_interfaces/msg/FRIState; sequence. */
    public mixed $states;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_names = [];
        $this->states = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Kuka_driver_interfacesMsgFRIStateArray', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Kuka_driver_interfacesMsgFRIStateArray', $bytes);
    }
}
/** @brief Complete original kuka_driver_interfaces/msg/FriConfiguration value. */
final class Ros2Kuka_driver_interfacesMsgFriConfiguration
{
    /** @brief Original receive_multiplier: int32; scalar. */
    public mixed $receive_multiplier;
    /** @brief Original send_period_ms: int32; scalar. */
    public mixed $send_period_ms;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->receive_multiplier = 0;
        $this->send_period_ms = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Kuka_driver_interfacesMsgFriConfiguration', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Kuka_driver_interfacesMsgFriConfiguration', $bytes);
    }
}
/** @brief Complete original kuka_driver_interfaces/msg/HardwareEvent value. */
final class Ros2Kuka_driver_interfacesMsgHardwareEvent
{
    /** @brief Original robot_name: string; scalar. */
    public mixed $robot_name;
    /** @brief Original event: uint8; scalar. */
    public mixed $event;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_name = '';
        $this->event = 0;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Kuka_driver_interfacesMsgHardwareEvent', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Kuka_driver_interfacesMsgHardwareEvent', $bytes);
    }
}
/** @brief Complete original kuka_driver_interfaces/msg/KssStatus value. */
final class Ros2Kuka_driver_interfacesMsgKssStatus
{
    /** @brief Original control_mode: uint8; scalar. */
    public mixed $control_mode;
    /** @brief Original cycle_time: uint8; scalar. */
    public mixed $cycle_time;
    /** @brief Original drives_powered: bool; scalar. */
    public mixed $drives_powered;
    /** @brief Original emergency_stop: bool; scalar. */
    public mixed $emergency_stop;
    /** @brief Original guard_stop: bool; scalar. */
    public mixed $guard_stop;
    /** @brief Original in_motion: bool; scalar. */
    public mixed $in_motion;
    /** @brief Original motion_possible: bool; scalar. */
    public mixed $motion_possible;
    /** @brief Original operation_mode: uint8; scalar. */
    public mixed $operation_mode;
    /** @brief Original robot_stopped: bool; scalar. */
    public mixed $robot_stopped;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->control_mode = 0;
        $this->cycle_time = 0;
        $this->drives_powered = false;
        $this->emergency_stop = false;
        $this->guard_stop = false;
        $this->in_motion = false;
        $this->motion_possible = false;
        $this->operation_mode = 0;
        $this->robot_stopped = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Kuka_driver_interfacesMsgKssStatus', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Kuka_driver_interfacesMsgKssStatus', $bytes);
    }
}
/** @brief Complete original kuka_driver_interfaces/msg/KssStatusArray value. */
final class Ros2Kuka_driver_interfacesMsgKssStatusArray
{
    /** @brief Original robot_names: string; sequence. */
    public mixed $robot_names;
    /** @brief Original statuses: kuka_driver_interfaces/msg/KssStatus; sequence. */
    public mixed $statuses;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->robot_names = [];
        $this->statuses = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Kuka_driver_interfacesMsgKssStatusArray', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Kuka_driver_interfacesMsgKssStatusArray', $bytes);
    }
}
/** @brief Complete original lifecycle_msgs/msg/State value. */
final class Ros2Lifecycle_msgsMsgState
{
    /** @brief Original id: uint8; scalar. */
    public mixed $id;
    /** @brief Original label: string; scalar. */
    public mixed $label;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->id = 0;
        $this->label = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Lifecycle_msgsMsgState', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Lifecycle_msgsMsgState', $bytes);
    }
}
/** @brief Complete original lifecycle_msgs/msg/Transition value. */
final class Ros2Lifecycle_msgsMsgTransition
{
    /** @brief Original id: uint8; scalar. */
    public mixed $id;
    /** @brief Original label: string; scalar. */
    public mixed $label;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->id = 0;
        $this->label = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Lifecycle_msgsMsgTransition', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Lifecycle_msgsMsgTransition', $bytes);
    }
}
/** @brief Complete original lifecycle_msgs/srv/ChangeState_Request value. */
final class Ros2Lifecycle_msgsSrvChangeState_Request
{
    /** @brief Original transition: lifecycle_msgs/msg/Transition; scalar. */
    public mixed $transition;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->transition = new Ros2Lifecycle_msgsMsgTransition();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Lifecycle_msgsSrvChangeState_Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Lifecycle_msgsSrvChangeState_Request', $bytes);
    }
}
/** @brief Complete original lifecycle_msgs/srv/ChangeState_Response value. */
final class Ros2Lifecycle_msgsSrvChangeState_Response
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Lifecycle_msgsSrvChangeState_Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Lifecycle_msgsSrvChangeState_Response', $bytes);
    }
}
/** @brief Complete original lifecycle_msgs/srv/GetState_Request value. */
final class Ros2Lifecycle_msgsSrvGetState_Request
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Lifecycle_msgsSrvGetState_Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Lifecycle_msgsSrvGetState_Request', $bytes);
    }
}
/** @brief Complete original lifecycle_msgs/srv/GetState_Response value. */
final class Ros2Lifecycle_msgsSrvGetState_Response
{
    /** @brief Original current_state: lifecycle_msgs/msg/State; scalar. */
    public mixed $current_state;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->current_state = new Ros2Lifecycle_msgsMsgState();
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Lifecycle_msgsSrvGetState_Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Lifecycle_msgsSrvGetState_Response', $bytes);
    }
}
/** @brief Complete original sensor_msgs/msg/JointState value. */
final class Ros2Sensor_msgsMsgJointState
{
    /** @brief Original header: std_msgs/msg/Header; scalar. */
    public mixed $header;
    /** @brief Original name: string; sequence. */
    public mixed $name;
    /** @brief Original position: float64; sequence. */
    public mixed $position;
    /** @brief Original velocity: float64; sequence. */
    public mixed $velocity;
    /** @brief Original effort: float64; sequence. */
    public mixed $effort;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->header = new Ros2Std_msgsMsgHeader();
        $this->name = [];
        $this->position = [];
        $this->velocity = [];
        $this->effort = [];
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Sensor_msgsMsgJointState', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Sensor_msgsMsgJointState', $bytes);
    }
}
/** @brief Complete original std_srvs/srv/Trigger_Request value. */
final class Ros2Std_srvsSrvTrigger_Request
{
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_srvsSrvTrigger_Request', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_srvsSrvTrigger_Request', $bytes);
    }
}
/** @brief Complete original std_srvs/srv/Trigger_Response value. */
final class Ros2Std_srvsSrvTrigger_Response
{
    /** @brief Original success: bool; scalar. */
    public mixed $success;
    /** @brief Original message: string; scalar. */
    public mixed $message;
    /** @brief Allocate independent complete defaults; construction performs no I/O. */
    public function __construct()
    {
        $this->success = false;
        $this->message = '';
    }
    /** @brief Encode the whole value; invalid fields throw before bytes are returned. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_srvsSrvTrigger_Response', $this);
    }
    /** @brief Decode exact complete bytes; malformed or trailing input throws. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_srvsSrvTrigger_Response', $bytes);
    }
}
/** @brief Share the central pure codec across complete vendor types. */
final class Catalog
{
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null)
        {
            $wire = new Wire([
                'Ros2Builtin_interfacesMsgDuration' => [
                    'symbol' => 'Ros2Builtin_interfacesMsgDuration',
                    'ros_version' => 2,
                    'native_type' => 'builtin_interfaces/msg/Duration',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4',
                    'minimum' => 8,
                    'maximum' => 8,
                    'semantics' => 'normalized-time',
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
                    ],
                    'constants' => [],
                    'class' => Ros2Builtin_interfacesMsgDuration::class
                ],
                'Ros2Builtin_interfacesMsgTime' => [
                    'symbol' => 'Ros2Builtin_interfacesMsgTime',
                    'ros_version' => 2,
                    'native_type' => 'builtin_interfaces/msg/Time',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
                    'minimum' => 8,
                    'maximum' => 8,
                    'semantics' => 'normalized-time',
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
                    ],
                    'constants' => [],
                    'class' => Ros2Builtin_interfacesMsgTime::class
                ],
                'Ros2Std_msgsMsgHeader' => [
                    'symbol' => 'Ros2Std_msgsMsgHeader',
                    'ros_version' => 2,
                    'native_type' => 'std_msgs/msg/Header',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396',
                    'minimum' => 12,
                    'maximum' => 76,
                    'semantics' => '',
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
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'frame_id',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 64,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Std_msgsMsgHeader::class
                ],
                'Ros2Trajectory_msgsMsgJointTrajectoryPoint' => [
                    'symbol' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                    'ros_version' => 2,
                    'native_type' => 'trajectory_msgs/msg/JointTrajectoryPoint',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5',
                    'minimum' => 24,
                    'maximum' => 408,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'positions',
                            'type' => 'float64',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'velocities',
                            'type' => 'float64',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'accelerations',
                            'type' => 'float64',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'effort',
                            'type' => 'float64',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'time_from_start',
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
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Trajectory_msgsMsgJointTrajectoryPoint::class
                ],
                'Ros2Trajectory_msgsMsgJointTrajectory' => [
                    'symbol' => 'Ros2Trajectory_msgsMsgJointTrajectory',
                    'ros_version' => 2,
                    'native_type' => 'trajectory_msgs/msg/JointTrajectory',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0',
                    'minimum' => 20,
                    'maximum' => 4164,
                    'semantics' => '',
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
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'joint_names',
                            'type' => 'string',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 64,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'points',
                            'type' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                            'array' => 'sequence',
                            'count' => 8,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Trajectory_msgsMsgJointTrajectory::class
                ],
                'Ros2Geometry_msgsMsgVector3' => [
                    'symbol' => 'Ros2Geometry_msgsMsgVector3',
                    'ros_version' => 2,
                    'native_type' => 'geometry_msgs/msg/Vector3',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
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
                    'constants' => [],
                    'class' => Ros2Geometry_msgsMsgVector3::class
                ],
                'Ros2Geometry_msgsMsgQuaternion' => [
                    'symbol' => 'Ros2Geometry_msgsMsgQuaternion',
                    'ros_version' => 2,
                    'native_type' => 'geometry_msgs/msg/Quaternion',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
                    'minimum' => 32,
                    'maximum' => 32,
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
                            'native_default' => '0.0',
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8,
                            'default' => 0.0
                        ],
                        [
                            'name' => 'y',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => '0.0',
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8,
                            'default' => 0.0
                        ],
                        [
                            'name' => 'z',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => '0.0',
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8,
                            'default' => 0.0
                        ],
                        [
                            'name' => 'w',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => '1.0',
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8,
                            'default' => 1.0
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Geometry_msgsMsgQuaternion::class
                ],
                'Ros2Geometry_msgsMsgTransform' => [
                    'symbol' => 'Ros2Geometry_msgsMsgTransform',
                    'ros_version' => 2,
                    'native_type' => 'geometry_msgs/msg/Transform',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b',
                    'minimum' => 56,
                    'maximum' => 56,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'translation',
                            'type' => 'Ros2Geometry_msgsMsgVector3',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ],
                        [
                            'name' => 'rotation',
                            'type' => 'Ros2Geometry_msgsMsgQuaternion',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 32
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Geometry_msgsMsgTransform::class
                ],
                'Ros2Geometry_msgsMsgTwist' => [
                    'symbol' => 'Ros2Geometry_msgsMsgTwist',
                    'ros_version' => 2,
                    'native_type' => 'geometry_msgs/msg/Twist',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
                    'minimum' => 48,
                    'maximum' => 48,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'linear',
                            'type' => 'Ros2Geometry_msgsMsgVector3',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ],
                        [
                            'name' => 'angular',
                            'type' => 'Ros2Geometry_msgsMsgVector3',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Geometry_msgsMsgTwist::class
                ],
                'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint' => [
                    'symbol' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                    'ros_version' => 2,
                    'native_type' => 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242',
                    'minimum' => 20,
                    'maximum' => 324,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'transforms',
                            'type' => 'Ros2Geometry_msgsMsgTransform',
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
                            'element_minimum' => 56
                        ],
                        [
                            'name' => 'velocities',
                            'type' => 'Ros2Geometry_msgsMsgTwist',
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
                            'element_minimum' => 48
                        ],
                        [
                            'name' => 'accelerations',
                            'type' => 'Ros2Geometry_msgsMsgTwist',
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
                            'element_minimum' => 48
                        ],
                        [
                            'name' => 'time_from_start',
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
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::class
                ],
                'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory' => [
                    'symbol' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory',
                    'ros_version' => 2,
                    'native_type' => 'trajectory_msgs/msg/MultiDOFJointTrajectory',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401',
                    'minimum' => 20,
                    'maximum' => 1516,
                    'semantics' => '',
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
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'joint_names',
                            'type' => 'string',
                            'array' => 'sequence',
                            'count' => 2,
                            'string_bound' => 64,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'points',
                            'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
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
                            'element_minimum' => 20
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::class
                ],
                'Ros2Control_msgsMsgJointTolerance' => [
                    'symbol' => 'Ros2Control_msgsMsgJointTolerance',
                    'ros_version' => 2,
                    'native_type' => 'control_msgs/msg/JointTolerance',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2',
                    'minimum' => 28,
                    'maximum' => 92,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'name',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 64,
                            'native_string_bound' => 0,
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
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'velocity',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'acceleration',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
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
                    'constants' => [],
                    'class' => Ros2Control_msgsMsgJointTolerance::class
                ],
                'Ros2Control_msgsMsgJointComponentTolerance' => [
                    'symbol' => 'Ros2Control_msgsMsgJointComponentTolerance',
                    'ros_version' => 2,
                    'native_type' => 'control_msgs/msg/JointComponentTolerance',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342',
                    'minimum' => 30,
                    'maximum' => 542,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'joint_name',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 512,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'component',
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
                            'name' => 'position',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'velocity',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'acceleration',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
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
                        'X_AXIS' => 1,
                        'Y_AXIS' => 2,
                        'Z_AXIS' => 3,
                        'TRANSLATION' => 4,
                        'ROTATION' => 5
                    ],
                    'class' => Ros2Control_msgsMsgJointComponentTolerance::class
                ],
                'Ros2Control_msgsActionFollowJointTrajectory_Goal' => [
                    'symbol' => 'Ros2Control_msgsActionFollowJointTrajectory_Goal',
                    'ros_version' => 2,
                    'native_type' => 'control_msgs/action/FollowJointTrajectory_Goal',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16',
                    'minimum' => 64,
                    'maximum' => 20920,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'trajectory',
                            'type' => 'Ros2Trajectory_msgsMsgJointTrajectory',
                            'array' => '',
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
                            'name' => 'multi_dof_trajectory',
                            'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory',
                            'array' => '',
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
                            'name' => 'path_tolerance',
                            'type' => 'Ros2Control_msgsMsgJointTolerance',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 28
                        ],
                        [
                            'name' => 'component_path_tolerance',
                            'type' => 'Ros2Control_msgsMsgJointComponentTolerance',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 30
                        ],
                        [
                            'name' => 'goal_tolerance',
                            'type' => 'Ros2Control_msgsMsgJointTolerance',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 28
                        ],
                        [
                            'name' => 'component_goal_tolerance',
                            'type' => 'Ros2Control_msgsMsgJointComponentTolerance',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 30
                        ],
                        [
                            'name' => 'goal_time_tolerance',
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
                            'element_minimum' => 8
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Control_msgsActionFollowJointTrajectory_Goal::class
                ],
                'Ros2Control_msgsActionFollowJointTrajectory_Result' => [
                    'symbol' => 'Ros2Control_msgsActionFollowJointTrajectory_Result',
                    'ros_version' => 2,
                    'native_type' => 'control_msgs/action/FollowJointTrajectory_Result',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70',
                    'minimum' => 8,
                    'maximum' => 4104,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'error_code',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'error_string',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 4096,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [
                        'SUCCESSFUL' => 0,
                        'INVALID_GOAL' => -1,
                        'INVALID_JOINTS' => -2,
                        'OLD_HEADER_TIMESTAMP' => -3,
                        'PATH_TOLERANCE_VIOLATED' => -4,
                        'GOAL_TOLERANCE_VIOLATED' => -5
                    ],
                    'class' => Ros2Control_msgsActionFollowJointTrajectory_Result::class
                ],
                'Ros2Control_msgsActionFollowJointTrajectory_Feedback' => [
                    'symbol' => 'Ros2Control_msgsActionFollowJointTrajectory_Feedback',
                    'ros_version' => 2,
                    'native_type' => 'control_msgs/action/FollowJointTrajectory_Feedback',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb',
                    'minimum' => 152,
                    'maximum' => 4128,
                    'semantics' => '',
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
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'joint_names',
                            'type' => 'string',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 64,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'desired',
                            'type' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ],
                        [
                            'name' => 'actual',
                            'type' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ],
                        [
                            'name' => 'error',
                            'type' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 24
                        ],
                        [
                            'name' => 'multi_dof_joint_names',
                            'type' => 'string',
                            'array' => 'sequence',
                            'count' => 2,
                            'string_bound' => 512,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'multi_dof_desired',
                            'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                            'array' => '',
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
                            'name' => 'multi_dof_actual',
                            'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                            'array' => '',
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
                            'name' => 'multi_dof_error',
                            'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                            'array' => '',
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
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Control_msgsActionFollowJointTrajectory_Feedback::class
                ],
                'Ros2Kuka_driver_interfacesMsgFRIState' => [
                    'symbol' => 'Ros2Kuka_driver_interfacesMsgFRIState',
                    'ros_version' => 2,
                    'native_type' => 'kuka_driver_interfaces/msg/FRIState',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716',
                    'minimum' => 40,
                    'maximum' => 40,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'session_state',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'connection_quality',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'safety_state',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'command_mode',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'control_mode',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'operation_mode',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'drive_state',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'overlay_type',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'tracking_performance',
                            'type' => 'float64',
                            'array' => '',
                            'count' => 0,
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
                    'constants' => [],
                    'class' => Ros2Kuka_driver_interfacesMsgFRIState::class
                ],
                'Ros2Kuka_driver_interfacesMsgFRIStateArray' => [
                    'symbol' => 'Ros2Kuka_driver_interfacesMsgFRIStateArray',
                    'ros_version' => 2,
                    'native_type' => 'kuka_driver_interfaces/msg/FRIStateArray',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449',
                    'minimum' => 8,
                    'maximum' => 1736,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_names',
                            'type' => 'string',
                            'array' => 'sequence',
                            'count' => 16,
                            'string_bound' => 64,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'states',
                            'type' => 'Ros2Kuka_driver_interfacesMsgFRIState',
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
                            'element_minimum' => 40
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Kuka_driver_interfacesMsgFRIStateArray::class
                ],
                'Ros2Kuka_driver_interfacesMsgFriConfiguration' => [
                    'symbol' => 'Ros2Kuka_driver_interfacesMsgFriConfiguration',
                    'ros_version' => 2,
                    'native_type' => 'kuka_driver_interfaces/msg/FriConfiguration',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e',
                    'minimum' => 8,
                    'maximum' => 8,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'receive_multiplier',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'send_period_ms',
                            'type' => 'int32',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Kuka_driver_interfacesMsgFriConfiguration::class
                ],
                'Ros2Kuka_driver_interfacesMsgHardwareEvent' => [
                    'symbol' => 'Ros2Kuka_driver_interfacesMsgHardwareEvent',
                    'ros_version' => 2,
                    'native_type' => 'kuka_driver_interfaces/msg/HardwareEvent',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68',
                    'minimum' => 5,
                    'maximum' => 517,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_name',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 512,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'event',
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
                    ],
                    'constants' => [],
                    'class' => Ros2Kuka_driver_interfacesMsgHardwareEvent::class
                ],
                'Ros2Kuka_driver_interfacesMsgKssStatus' => [
                    'symbol' => 'Ros2Kuka_driver_interfacesMsgKssStatus',
                    'ros_version' => 2,
                    'native_type' => 'kuka_driver_interfaces/msg/KssStatus',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82',
                    'minimum' => 9,
                    'maximum' => 9,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'control_mode',
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
                            'name' => 'cycle_time',
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
                            'name' => 'drives_powered',
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
                            'name' => 'emergency_stop',
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
                            'name' => 'guard_stop',
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
                            'name' => 'in_motion',
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
                            'name' => 'motion_possible',
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
                            'name' => 'operation_mode',
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
                            'name' => 'robot_stopped',
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
                        'UNSPECIFIED' => 0,
                        'JOINT_POSITION_CONTROL' => 1,
                        'CARTESIAN_POSITION_CONTROL' => 5,
                        'RSI_4MS' => 1,
                        'RSI_12MS' => 2,
                        'T1' => 1,
                        'T2' => 2,
                        'AUT' => 3,
                        'EXT' => 4
                    ],
                    'class' => Ros2Kuka_driver_interfacesMsgKssStatus::class
                ],
                'Ros2Kuka_driver_interfacesMsgKssStatusArray' => [
                    'symbol' => 'Ros2Kuka_driver_interfacesMsgKssStatusArray',
                    'ros_version' => 2,
                    'native_type' => 'kuka_driver_interfaces/msg/KssStatusArray',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd',
                    'minimum' => 8,
                    'maximum' => 1240,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'robot_names',
                            'type' => 'string',
                            'array' => 'sequence',
                            'count' => 16,
                            'string_bound' => 64,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ],
                        [
                            'name' => 'statuses',
                            'type' => 'Ros2Kuka_driver_interfacesMsgKssStatus',
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
                            'element_minimum' => 9
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Kuka_driver_interfacesMsgKssStatusArray::class
                ],
                'Ros2Lifecycle_msgsMsgState' => [
                    'symbol' => 'Ros2Lifecycle_msgsMsgState',
                    'ros_version' => 2,
                    'native_type' => 'lifecycle_msgs/msg/State',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94',
                    'minimum' => 5,
                    'maximum' => 517,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'id',
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
                            'name' => 'label',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 512,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [
                        'PRIMARY_STATE_UNKNOWN' => 0,
                        'PRIMARY_STATE_UNCONFIGURED' => 1,
                        'PRIMARY_STATE_INACTIVE' => 2,
                        'PRIMARY_STATE_ACTIVE' => 3,
                        'PRIMARY_STATE_FINALIZED' => 4,
                        'TRANSITION_STATE_CONFIGURING' => 10,
                        'TRANSITION_STATE_CLEANINGUP' => 11,
                        'TRANSITION_STATE_SHUTTINGDOWN' => 12,
                        'TRANSITION_STATE_ACTIVATING' => 13,
                        'TRANSITION_STATE_DEACTIVATING' => 14,
                        'TRANSITION_STATE_ERRORPROCESSING' => 15
                    ],
                    'class' => Ros2Lifecycle_msgsMsgState::class
                ],
                'Ros2Lifecycle_msgsMsgTransition' => [
                    'symbol' => 'Ros2Lifecycle_msgsMsgTransition',
                    'ros_version' => 2,
                    'native_type' => 'lifecycle_msgs/msg/Transition',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb',
                    'minimum' => 5,
                    'maximum' => 517,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'id',
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
                            'name' => 'label',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 512,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [
                        'TRANSITION_CREATE' => 0,
                        'TRANSITION_CONFIGURE' => 1,
                        'TRANSITION_CLEANUP' => 2,
                        'TRANSITION_ACTIVATE' => 3,
                        'TRANSITION_DEACTIVATE' => 4,
                        'TRANSITION_UNCONFIGURED_SHUTDOWN' => 5,
                        'TRANSITION_INACTIVE_SHUTDOWN' => 6,
                        'TRANSITION_ACTIVE_SHUTDOWN' => 7,
                        'TRANSITION_DESTROY' => 8,
                        'TRANSITION_ON_CONFIGURE_SUCCESS' => 10,
                        'TRANSITION_ON_CONFIGURE_FAILURE' => 11,
                        'TRANSITION_ON_CONFIGURE_ERROR' => 12,
                        'TRANSITION_ON_CLEANUP_SUCCESS' => 20,
                        'TRANSITION_ON_CLEANUP_FAILURE' => 21,
                        'TRANSITION_ON_CLEANUP_ERROR' => 22,
                        'TRANSITION_ON_ACTIVATE_SUCCESS' => 30,
                        'TRANSITION_ON_ACTIVATE_FAILURE' => 31,
                        'TRANSITION_ON_ACTIVATE_ERROR' => 32,
                        'TRANSITION_ON_DEACTIVATE_SUCCESS' => 40,
                        'TRANSITION_ON_DEACTIVATE_FAILURE' => 41,
                        'TRANSITION_ON_DEACTIVATE_ERROR' => 42,
                        'TRANSITION_ON_SHUTDOWN_SUCCESS' => 50,
                        'TRANSITION_ON_SHUTDOWN_FAILURE' => 51,
                        'TRANSITION_ON_SHUTDOWN_ERROR' => 52,
                        'TRANSITION_ON_ERROR_SUCCESS' => 60,
                        'TRANSITION_ON_ERROR_FAILURE' => 61,
                        'TRANSITION_ON_ERROR_ERROR' => 62,
                        'TRANSITION_CALLBACK_SUCCESS' => 97,
                        'TRANSITION_CALLBACK_FAILURE' => 98,
                        'TRANSITION_CALLBACK_ERROR' => 99
                    ],
                    'class' => Ros2Lifecycle_msgsMsgTransition::class
                ],
                'Ros2Lifecycle_msgsSrvChangeState_Request' => [
                    'symbol' => 'Ros2Lifecycle_msgsSrvChangeState_Request',
                    'ros_version' => 2,
                    'native_type' => 'lifecycle_msgs/srv/ChangeState_Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1',
                    'minimum' => 5,
                    'maximum' => 517,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'transition',
                            'type' => 'Ros2Lifecycle_msgsMsgTransition',
                            'array' => '',
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
                    ],
                    'constants' => [],
                    'class' => Ros2Lifecycle_msgsSrvChangeState_Request::class
                ],
                'Ros2Lifecycle_msgsSrvChangeState_Response' => [
                    'symbol' => 'Ros2Lifecycle_msgsSrvChangeState_Response',
                    'ros_version' => 2,
                    'native_type' => 'lifecycle_msgs/srv/ChangeState_Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032',
                    'minimum' => 1,
                    'maximum' => 1,
                    'semantics' => '',
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
                            'element_minimum' => 1
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Lifecycle_msgsSrvChangeState_Response::class
                ],
                'Ros2Lifecycle_msgsSrvGetState_Request' => [
                    'symbol' => 'Ros2Lifecycle_msgsSrvGetState_Request',
                    'ros_version' => 2,
                    'native_type' => 'lifecycle_msgs/srv/GetState_Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros2Lifecycle_msgsSrvGetState_Request::class
                ],
                'Ros2Lifecycle_msgsSrvGetState_Response' => [
                    'symbol' => 'Ros2Lifecycle_msgsSrvGetState_Response',
                    'ros_version' => 2,
                    'native_type' => 'lifecycle_msgs/srv/GetState_Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39',
                    'minimum' => 5,
                    'maximum' => 517,
                    'semantics' => '',
                    'fields' => [
                        [
                            'name' => 'current_state',
                            'type' => 'Ros2Lifecycle_msgsMsgState',
                            'array' => '',
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
                    ],
                    'constants' => [],
                    'class' => Ros2Lifecycle_msgsSrvGetState_Response::class
                ],
                'Ros2Sensor_msgsMsgJointState' => [
                    'symbol' => 'Ros2Sensor_msgsMsgJointState',
                    'ros_version' => 2,
                    'native_type' => 'sensor_msgs/msg/JointState',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884',
                    'minimum' => 28,
                    'maximum' => 1196,
                    'semantics' => 'joint-state-optional-equal-length-arrays',
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
                            'element_minimum' => 12
                        ],
                        [
                            'name' => 'name',
                            'type' => 'string',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 64,
                            'native_string_bound' => 0,
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
                            'type' => 'float64',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'velocity',
                            'type' => 'float64',
                            'array' => 'sequence',
                            'count' => 12,
                            'string_bound' => 0,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 8
                        ],
                        [
                            'name' => 'effort',
                            'type' => 'float64',
                            'array' => 'sequence',
                            'count' => 12,
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
                    'constants' => [],
                    'class' => Ros2Sensor_msgsMsgJointState::class
                ],
                'Ros2Std_srvsSrvTrigger_Request' => [
                    'symbol' => 'Ros2Std_srvsSrvTrigger_Request',
                    'ros_version' => 2,
                    'native_type' => 'std_srvs/srv/Trigger_Request',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77',
                    'minimum' => 0,
                    'maximum' => 0,
                    'semantics' => '',
                    'fields' => [],
                    'constants' => [],
                    'class' => Ros2Std_srvsSrvTrigger_Request::class
                ],
                'Ros2Std_srvsSrvTrigger_Response' => [
                    'symbol' => 'Ros2Std_srvsSrvTrigger_Response',
                    'ros_version' => 2,
                    'native_type' => 'std_srvs/srv/Trigger_Response',
                    'native_identity' => null,
                    'codec_identity' => 'UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d',
                    'minimum' => 5,
                    'maximum' => 517,
                    'semantics' => '',
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
                            'element_minimum' => 1
                        ],
                        [
                            'name' => 'message',
                            'type' => 'string',
                            'array' => '',
                            'count' => 0,
                            'string_bound' => 512,
                            'native_string_bound' => 0,
                            'native_sequence_bound' => 0,
                            'native_default' => null,
                            'native_scalar' => '',
                            'string_encoding' => 'utf8',
                            'float_policy' => 'finite',
                            'raw' => false,
                            'element_minimum' => 4
                        ]
                    ],
                    'constants' => [],
                    'class' => Ros2Std_srvsSrvTrigger_Response::class
                ],
            ]);
        }
        return $wire;
    }
}
