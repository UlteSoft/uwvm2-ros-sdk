/// @file Observation.swift
/// @brief Typed complete clearpath observers and service clients.
public enum ClearpathRos2_jazzyAPI {
  /// @brief Observe every original builtin_interfaces/msg/Duration field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Builtin_interfacesMsgDuration(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Builtin_interfacesMsgDuration>
  {
    return nativeReceive(
      aliasBytes, 8, attempts, Ros2Builtin_interfacesMsgDuration.decode, { $0.encode() })
  }

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

  /// @brief Observe every original clearpath_control_msgs/msg/DeviceInfo field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_control_msgsMsgDeviceInfo(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_control_msgsMsgDeviceInfo>
  {
    return nativeReceive(
      aliasBytes, 1820, attempts, Ros2Clearpath_control_msgsMsgDeviceInfo.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_control_msgs/msg/StreamControl field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_control_msgsMsgStreamControl(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_control_msgsMsgStreamControl>
  {
    return nativeReceive(
      aliasBytes, 261, attempts, Ros2Clearpath_control_msgsMsgStreamControl.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/LynxDebug field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgLynxDebug(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgLynxDebug>
  {
    return nativeReceive(
      aliasBytes, 291, attempts, Ros2Clearpath_motor_msgsMsgLynxDebug.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/LynxFeedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgLynxFeedback(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgLynxFeedback>
  {
    return nativeReceive(
      aliasBytes, 277, attempts, Ros2Clearpath_motor_msgsMsgLynxFeedback.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/LynxMotorProtection field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgLynxMotorProtection(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgLynxMotorProtection>
  {
    return nativeReceive(
      aliasBytes, 262, attempts, Ros2Clearpath_motor_msgsMsgLynxMotorProtection.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/LynxMultiDebug field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgLynxMultiDebug(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgLynxMultiDebug>
  {
    return nativeReceive(
      aliasBytes, 1308, attempts, Ros2Clearpath_motor_msgsMsgLynxMultiDebug.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/LynxMultiFeedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgLynxMultiFeedback(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgLynxMultiFeedback>
  {
    return nativeReceive(
      aliasBytes, 1252, attempts, Ros2Clearpath_motor_msgsMsgLynxMultiFeedback.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/LynxMultiStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgLynxMultiStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgLynxMultiStatus>
  {
    return nativeReceive(
      aliasBytes, 2328, attempts, Ros2Clearpath_motor_msgsMsgLynxMultiStatus.decode, { $0.encode() }
    )
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/LynxStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgLynxStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgLynxStatus>
  {
    return nativeReceive(
      aliasBytes, 546, attempts, Ros2Clearpath_motor_msgsMsgLynxStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/LynxSystemProtection field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgLynxSystemProtection(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgLynxSystemProtection>
  {
    return nativeReceive(
      aliasBytes, 669, attempts, Ros2Clearpath_motor_msgsMsgLynxSystemProtection.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/PumaFeedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgPumaFeedback(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgPumaFeedback>
  {
    return nativeReceive(
      aliasBytes, 293, attempts, Ros2Clearpath_motor_msgsMsgPumaFeedback.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/PumaMultiFeedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgPumaMultiFeedback(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgPumaMultiFeedback>
  {
    return nativeReceive(
      aliasBytes, 1316, attempts, Ros2Clearpath_motor_msgsMsgPumaMultiFeedback.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/PumaMultiStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgPumaMultiStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgPumaMultiStatus>
  {
    return nativeReceive(
      aliasBytes, 1260, attempts, Ros2Clearpath_motor_msgsMsgPumaMultiStatus.decode, { $0.encode() }
    )
  }

  /// @brief Observe every original clearpath_motor_msgs/msg/PumaStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_motor_msgsMsgPumaStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_motor_msgsMsgPumaStatus>
  {
    return nativeReceive(
      aliasBytes, 279, attempts, Ros2Clearpath_motor_msgsMsgPumaStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/DisplayStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgDisplayStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgDisplayStatus>
  {
    return nativeReceive(
      aliasBytes, 106, attempts, Ros2Clearpath_platform_msgsMsgDisplayStatus.decode, { $0.encode() }
    )
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/Drive field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgDrive(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgDrive>
  {
    return nativeReceive(
      aliasBytes, 9, attempts, Ros2Clearpath_platform_msgsMsgDrive.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/DriveFeedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgDriveFeedback(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgDriveFeedback>
  {
    return nativeReceive(
      aliasBytes, 25, attempts, Ros2Clearpath_platform_msgsMsgDriveFeedback.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/Fans field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgFans(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgFans>
  {
    return nativeReceive(
      aliasBytes, 6, attempts, Ros2Clearpath_platform_msgsMsgFans.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/Feedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgFeedback(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgFeedback>
  {
    return nativeReceive(
      aliasBytes, 192, attempts, Ros2Clearpath_platform_msgsMsgFeedback.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/Lights field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgLights(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgLights>
  {
    return nativeReceive(
      aliasBytes, 10, attempts, Ros2Clearpath_platform_msgsMsgLights.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/PinoutCommand field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgPinoutCommand(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgPinoutCommand>
  {
    return nativeReceive(
      aliasBytes, 18, attempts, Ros2Clearpath_platform_msgsMsgPinoutCommand.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/PinoutState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgPinoutState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgPinoutState>
  {
    return nativeReceive(
      aliasBytes, 170, attempts, Ros2Clearpath_platform_msgsMsgPinoutState.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/Power field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgPower(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgPower>
  {
    return nativeReceive(
      aliasBytes, 169, attempts, Ros2Clearpath_platform_msgsMsgPower.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/RGB field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgRGB(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgRGB>
  {
    return nativeReceive(
      aliasBytes, 3, attempts, Ros2Clearpath_platform_msgsMsgRGB.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/Status field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgStatus>
  {
    return nativeReceive(
      aliasBytes, 676, attempts, Ros2Clearpath_platform_msgsMsgStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/StopStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgStopStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgStopStatus>
  {
    return nativeReceive(
      aliasBytes, 143, attempts, Ros2Clearpath_platform_msgsMsgStopStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/msg/Temperature field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos2Clearpath_platform_msgsMsgTemperature(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsMsgTemperature>
  {
    return nativeReceive(
      aliasBytes, 152, attempts, Ros2Clearpath_platform_msgsMsgTemperature.decode, { $0.encode() })
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

  /// @brief Call complete clearpath_control_msgs/srv/PowerControl exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos2Clearpath_control_msgsSrvPowerControl(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros2Clearpath_control_msgsSrvPowerControl_Request
  )
    -> NativeObservation<Ros2Clearpath_control_msgsSrvPowerControl_Response>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros2Clearpath_control_msgsSrvPowerControl_Response>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes, Ros2Clearpath_control_msgsSrvPowerControl_Response.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_platform_msgs/srv/ConfigureMcu exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos2Clearpath_platform_msgsSrvConfigureMcu(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsSrvConfigureMcu_Response>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros2Clearpath_platform_msgsSrvConfigureMcu_Response>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes, Ros2Clearpath_platform_msgsSrvConfigureMcu_Response.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_platform_msgs/srv/SetPinout exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos2Clearpath_platform_msgsSrvSetPinout(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros2Clearpath_platform_msgsSrvSetPinout_Request
  )
    -> NativeObservation<Ros2Clearpath_platform_msgsSrvSetPinout_Response>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros2Clearpath_platform_msgsSrvSetPinout_Response>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes, Ros2Clearpath_platform_msgsSrvSetPinout_Response.decode,
      { $0.encode() })
    return result
  }

}
