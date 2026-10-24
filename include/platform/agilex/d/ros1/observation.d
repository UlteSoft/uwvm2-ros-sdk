/// @file observation.d
/// @brief Typed complete agilex observers and service clients.
module agilex.d.ros1.observation;
public
import native.d.observation;
import native.d.wire;
public
import agilex.d.ros1.records;
/// @brief Observe every original geometry_msgs/Point field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsPoint waitRos1Geometry_msgsPoint(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsPoint(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/Pose field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsPose waitRos1Geometry_msgsPose(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsPose(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsPoseWithCovariance waitRos1Geometry_msgsPoseWithCovariance(const(ubyte)[] aliasBytes,
                                                                                         uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsPoseWithCovariance(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/Quaternion field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsQuaternion waitRos1Geometry_msgsQuaternion(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Geometry_msgsQuaternion(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/Twist field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsTwist waitRos1Geometry_msgsTwist(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsTwist(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/TwistWithCovariance field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsTwistWithCovariance waitRos1Geometry_msgsTwistWithCovariance(const(ubyte)[] aliasBytes,
                                                                                           uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsTwistWithCovariance(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/Vector3 field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsVector3 waitRos1Geometry_msgsVector3(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Geometry_msgsVector3(aliasBytes, attempts);
}

/// @brief Observe every original nav_msgs/Odometry field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Nav_msgsOdometry waitRos1Nav_msgsOdometry(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Nav_msgsOdometry(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutBmsStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Scout_msgsScoutBmsStatus waitRos1Scout_msgsScoutBmsStatus(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Scout_msgsScoutBmsStatus(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutDriverState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Scout_msgsScoutDriverState waitRos1Scout_msgsScoutDriverState(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Scout_msgsScoutDriverState(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutLightCmd field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Scout_msgsScoutLightCmd waitRos1Scout_msgsScoutLightCmd(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Scout_msgsScoutLightCmd(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutLightState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Scout_msgsScoutLightState waitRos1Scout_msgsScoutLightState(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Scout_msgsScoutLightState(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutMotorState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Scout_msgsScoutMotorState waitRos1Scout_msgsScoutMotorState(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Scout_msgsScoutMotorState(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutRsStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Scout_msgsScoutRsStatus waitRos1Scout_msgsScoutRsStatus(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Scout_msgsScoutRsStatus(aliasBytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Scout_msgsScoutStatus waitRos1Scout_msgsScoutStatus(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Scout_msgsScoutStatus(aliasBytes, attempts);
}

/// @brief Observe every original std_msgs/Header field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Std_msgsHeader waitRos1Std_msgsHeader(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Std_msgsHeader(aliasBytes, attempts);
}
