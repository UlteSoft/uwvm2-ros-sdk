/// @file Observation.swift
/// @brief Typed complete agilex observers and service clients.
public enum AgilexRos2API {
  /// @brief Observe every original builtin_interfaces/msg/Time field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Builtin_interfacesMsgTime(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Builtin_interfacesMsgTime>
  {
    return nativeReceive(
      aliasBytes, 8, attempts, Ros2Builtin_interfacesMsgTime.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/msg/Point field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Geometry_msgsMsgPoint(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Geometry_msgsMsgPoint>
  {
    return nativeReceive(
      aliasBytes, 24, attempts, Ros2Geometry_msgsMsgPoint.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/msg/Pose field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Geometry_msgsMsgPose(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Geometry_msgsMsgPose>
  {
    return nativeReceive(aliasBytes, 56, attempts, Ros2Geometry_msgsMsgPose.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/msg/PoseWithCovariance field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Geometry_msgsMsgPoseWithCovariance(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Geometry_msgsMsgPoseWithCovariance>
  {
    return nativeReceive(
      aliasBytes, 344, attempts, Ros2Geometry_msgsMsgPoseWithCovariance.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/msg/Quaternion field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Geometry_msgsMsgQuaternion(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Geometry_msgsMsgQuaternion>
  {
    return nativeReceive(
      aliasBytes, 32, attempts, Ros2Geometry_msgsMsgQuaternion.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/msg/Twist field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Geometry_msgsMsgTwist(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Geometry_msgsMsgTwist>
  {
    return nativeReceive(
      aliasBytes, 48, attempts, Ros2Geometry_msgsMsgTwist.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/msg/TwistWithCovariance field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Geometry_msgsMsgTwistWithCovariance(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Geometry_msgsMsgTwistWithCovariance>
  {
    return nativeReceive(
      aliasBytes, 336, attempts, Ros2Geometry_msgsMsgTwistWithCovariance.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/msg/Vector3 field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Geometry_msgsMsgVector3(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Geometry_msgsMsgVector3>
  {
    return nativeReceive(
      aliasBytes, 24, attempts, Ros2Geometry_msgsMsgVector3.decode, { $0.encode() })
  }

  /// @brief Observe every original nav_msgs/msg/Odometry field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Nav_msgsMsgOdometry(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Nav_msgsMsgOdometry>
  {
    return nativeReceive(aliasBytes, 952, attempts, Ros2Nav_msgsMsgOdometry.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/msg/ScoutActuatorState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Scout_msgsMsgScoutActuatorState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Scout_msgsMsgScoutActuatorState>
  {
    return nativeReceive(
      aliasBytes, 19, attempts, Ros2Scout_msgsMsgScoutActuatorState.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/msg/ScoutLightCmd field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Scout_msgsMsgScoutLightCmd(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Scout_msgsMsgScoutLightCmd>
  {
    return nativeReceive(
      aliasBytes, 5, attempts, Ros2Scout_msgsMsgScoutLightCmd.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/msg/ScoutLightState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Scout_msgsMsgScoutLightState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Scout_msgsMsgScoutLightState>
  {
    return nativeReceive(
      aliasBytes, 2, attempts, Ros2Scout_msgsMsgScoutLightState.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/msg/ScoutRCState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Scout_msgsMsgScoutRCState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Scout_msgsMsgScoutRCState>
  {
    return nativeReceive(
      aliasBytes, 9, attempts, Ros2Scout_msgsMsgScoutRCState.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/msg/ScoutStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Scout_msgsMsgScoutStatus(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Scout_msgsMsgScoutStatus>
  {
    return nativeReceive(
      aliasBytes, 249, attempts, Ros2Scout_msgsMsgScoutStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original std_msgs/msg/Header field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Std_msgsMsgHeader(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros2Std_msgsMsgHeader>
  {
    return nativeReceive(aliasBytes, 140, attempts, Ros2Std_msgsMsgHeader.decode, { $0.encode() })
  }

}
