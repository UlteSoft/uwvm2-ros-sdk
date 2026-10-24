/// @file observation.d
/// @brief Typed complete agilex observers and service clients.
module agilex.d.ros2.observation;
public
import native.d.observation;
import native.d.wire;
public
import agilex.d.ros2.records;
/// @brief Observe every original builtin_interfaces/msg/Time field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Builtin_interfacesMsgTime waitRos2Builtin_interfacesMsgTime(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Builtin_interfacesMsgTime(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Point field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Geometry_msgsMsgPoint waitRos2Geometry_msgsMsgPoint(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Geometry_msgsMsgPoint(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Pose field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Geometry_msgsMsgPose waitRos2Geometry_msgsMsgPose(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Geometry_msgsMsgPose(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/PoseWithCovariance field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Geometry_msgsMsgPoseWithCovariance waitRos2Geometry_msgsMsgPoseWithCovariance(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Geometry_msgsMsgPoseWithCovariance(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Quaternion field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Geometry_msgsMsgQuaternion waitRos2Geometry_msgsMsgQuaternion(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Geometry_msgsMsgQuaternion(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Twist field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Geometry_msgsMsgTwist waitRos2Geometry_msgsMsgTwist(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Geometry_msgsMsgTwist(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/TwistWithCovariance field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Geometry_msgsMsgTwistWithCovariance waitRos2Geometry_msgsMsgTwistWithCovariance(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Geometry_msgsMsgTwistWithCovariance(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Vector3 field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Geometry_msgsMsgVector3 waitRos2Geometry_msgsMsgVector3(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Geometry_msgsMsgVector3(aliasBytes, attempts);
}

/// @brief Observe every original nav_msgs/msg/Odometry field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Nav_msgsMsgOdometry waitRos2Nav_msgsMsgOdometry(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Nav_msgsMsgOdometry(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutActuatorState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Scout_msgsMsgScoutActuatorState waitRos2Scout_msgsMsgScoutActuatorState(const(ubyte)[] aliasBytes,
                                                                                         uint attempts) @nogc nothrow
{
    return receive !Ros2Scout_msgsMsgScoutActuatorState(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutLightCmd field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Scout_msgsMsgScoutLightCmd waitRos2Scout_msgsMsgScoutLightCmd(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Scout_msgsMsgScoutLightCmd(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutLightState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Scout_msgsMsgScoutLightState waitRos2Scout_msgsMsgScoutLightState(const(ubyte)[] aliasBytes,
                                                                                   uint attempts) @nogc nothrow
{
    return receive !Ros2Scout_msgsMsgScoutLightState(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutRCState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Scout_msgsMsgScoutRCState waitRos2Scout_msgsMsgScoutRCState(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Scout_msgsMsgScoutRCState(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Scout_msgsMsgScoutStatus waitRos2Scout_msgsMsgScoutStatus(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Scout_msgsMsgScoutStatus(aliasBytes, attempts);
}

/// @brief Observe every original std_msgs/msg/Header field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Std_msgsMsgHeader waitRos2Std_msgsMsgHeader(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Std_msgsMsgHeader(aliasBytes, attempts);
}
