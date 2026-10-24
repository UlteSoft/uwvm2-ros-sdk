/// @file Observation.swift
/// @brief Typed complete agilex observers and service clients.
public enum AgilexRos1API {
  /// @brief Observe every original geometry_msgs/Point field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsPoint(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsPoint>
  {
    return nativeReceive(aliasBytes, 24, attempts, Ros1Geometry_msgsPoint.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/Pose field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsPose(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsPose>
  {
    return nativeReceive(aliasBytes, 56, attempts, Ros1Geometry_msgsPose.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsPoseWithCovariance(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Geometry_msgsPoseWithCovariance>
  {
    return nativeReceive(
      aliasBytes, 344, attempts, Ros1Geometry_msgsPoseWithCovariance.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/Quaternion field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsQuaternion(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsQuaternion>
  {
    return nativeReceive(
      aliasBytes, 32, attempts, Ros1Geometry_msgsQuaternion.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/Twist field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsTwist(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsTwist>
  {
    return nativeReceive(aliasBytes, 48, attempts, Ros1Geometry_msgsTwist.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/TwistWithCovariance field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsTwistWithCovariance(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Geometry_msgsTwistWithCovariance>
  {
    return nativeReceive(
      aliasBytes, 336, attempts, Ros1Geometry_msgsTwistWithCovariance.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/Vector3 field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsVector3(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsVector3>
  {
    return nativeReceive(aliasBytes, 24, attempts, Ros1Geometry_msgsVector3.decode, { $0.encode() })
  }

  /// @brief Observe every original nav_msgs/Odometry field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Nav_msgsOdometry(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Nav_msgsOdometry>
  {
    return nativeReceive(aliasBytes, 956, attempts, Ros1Nav_msgsOdometry.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/ScoutBmsStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Scout_msgsScoutBmsStatus(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Scout_msgsScoutBmsStatus>
  {
    return nativeReceive(
      aliasBytes, 44, attempts, Ros1Scout_msgsScoutBmsStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/ScoutDriverState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Scout_msgsScoutDriverState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Scout_msgsScoutDriverState>
  {
    return nativeReceive(
      aliasBytes, 17, attempts, Ros1Scout_msgsScoutDriverState.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/ScoutLightCmd field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Scout_msgsScoutLightCmd(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Scout_msgsScoutLightCmd>
  {
    return nativeReceive(
      aliasBytes, 5, attempts, Ros1Scout_msgsScoutLightCmd.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/ScoutLightState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Scout_msgsScoutLightState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Scout_msgsScoutLightState>
  {
    return nativeReceive(
      aliasBytes, 2, attempts, Ros1Scout_msgsScoutLightState.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/ScoutMotorState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Scout_msgsScoutMotorState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Scout_msgsScoutMotorState>
  {
    return nativeReceive(
      aliasBytes, 32, attempts, Ros1Scout_msgsScoutMotorState.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/ScoutRsStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Scout_msgsScoutRsStatus(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Scout_msgsScoutRsStatus>
  {
    return nativeReceive(
      aliasBytes, 153, attempts, Ros1Scout_msgsScoutRsStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original scout_msgs/ScoutStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Scout_msgsScoutStatus(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Scout_msgsScoutStatus>
  {
    return nativeReceive(
      aliasBytes, 381, attempts, Ros1Scout_msgsScoutStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original std_msgs/Header field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Std_msgsHeader(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Std_msgsHeader>
  {
    return nativeReceive(aliasBytes, 144, attempts, Ros1Std_msgsHeader.decode, { $0.encode() })
  }

}
