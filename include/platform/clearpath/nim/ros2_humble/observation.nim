## @file observation.nim
## @brief Typed complete clearpath observers and service clients.
import native/nim/observation as core
import native/nim/wire
import clearpath/nim/ros2_humble/records
proc waitRos2Builtin_interfacesMsgDuration*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Builtin_interfacesMsgDuration] =
    ## @brief Observe every original builtin_interfaces/msg/Duration field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Builtin_interfacesMsgDuration](aliasBytes, 8, 8, attempts)

proc waitRos2Builtin_interfacesMsgTime*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Builtin_interfacesMsgTime] =
    ## @brief Observe every original builtin_interfaces/msg/Time field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Builtin_interfacesMsgTime](aliasBytes, 8, 8, attempts)

proc waitRos2Clearpath_motor_msgsMsgPumaFeedback*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_motor_msgsMsgPumaFeedback] =
    ## @brief Observe every original clearpath_motor_msgs/msg/PumaFeedback field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_motor_msgsMsgPumaFeedback](aliasBytes, 37, 293, attempts)

proc waitRos2Clearpath_motor_msgsMsgPumaMultiFeedback*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_motor_msgsMsgPumaMultiFeedback] =
    ## @brief Observe every original clearpath_motor_msgs/msg/PumaMultiFeedback field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_motor_msgsMsgPumaMultiFeedback](aliasBytes, 16, 1316, attempts)

proc waitRos2Clearpath_motor_msgsMsgPumaMultiStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_motor_msgsMsgPumaMultiStatus] =
    ## @brief Observe every original clearpath_motor_msgs/msg/PumaMultiStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_motor_msgsMsgPumaMultiStatus](aliasBytes, 16, 1260, attempts)

proc waitRos2Clearpath_motor_msgsMsgPumaStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_motor_msgsMsgPumaStatus] =
    ## @brief Observe every original clearpath_motor_msgs/msg/PumaStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_motor_msgsMsgPumaStatus](aliasBytes, 23, 279, attempts)

proc waitRos2Clearpath_platform_msgsMsgDrive*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_platform_msgsMsgDrive] =
    ## @brief Observe every original clearpath_platform_msgs/msg/Drive field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_platform_msgsMsgDrive](aliasBytes, 9, 9, attempts)

proc waitRos2Clearpath_platform_msgsMsgDriveFeedback*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_platform_msgsMsgDriveFeedback] =
    ## @brief Observe every original clearpath_platform_msgs/msg/DriveFeedback field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_platform_msgsMsgDriveFeedback](aliasBytes, 25, 25, attempts)

proc waitRos2Clearpath_platform_msgsMsgFans*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_platform_msgsMsgFans] =
    ## @brief Observe every original clearpath_platform_msgs/msg/Fans field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_platform_msgsMsgFans](aliasBytes, 4, 6, attempts)

proc waitRos2Clearpath_platform_msgsMsgFeedback*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_platform_msgsMsgFeedback] =
    ## @brief Observe every original clearpath_platform_msgs/msg/Feedback field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_platform_msgsMsgFeedback](aliasBytes, 64, 192, attempts)

proc waitRos2Clearpath_platform_msgsMsgLights*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_platform_msgsMsgLights] =
    ## @brief Observe every original clearpath_platform_msgs/msg/Lights field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_platform_msgsMsgLights](aliasBytes, 4, 10, attempts)

proc waitRos2Clearpath_platform_msgsMsgPower*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_platform_msgsMsgPower] =
    ## @brief Observe every original clearpath_platform_msgs/msg/Power field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_platform_msgsMsgPower](aliasBytes, 25, 169, attempts)

proc waitRos2Clearpath_platform_msgsMsgRGB*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_platform_msgsMsgRGB] =
    ## @brief Observe every original clearpath_platform_msgs/msg/RGB field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_platform_msgsMsgRGB](aliasBytes, 3, 3, attempts)

proc waitRos2Clearpath_platform_msgsMsgStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_platform_msgsMsgStatus] =
    ## @brief Observe every original clearpath_platform_msgs/msg/Status field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_platform_msgsMsgStatus](aliasBytes, 44, 684, attempts)

proc waitRos2Clearpath_platform_msgsMsgStopStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Clearpath_platform_msgsMsgStopStatus] =
    ## @brief Observe every original clearpath_platform_msgs/msg/StopStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Clearpath_platform_msgsMsgStopStatus](aliasBytes, 15, 143, attempts)

proc waitRos2Std_msgsMsgHeader*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Std_msgsMsgHeader] =
    ## @brief Observe every original std_msgs/msg/Header field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Std_msgsMsgHeader](aliasBytes, 12, 140, attempts)

proc callRos2Clearpath_platform_msgsSrvConfigureMcu*(
    aliasBytes: openArray[byte];
    requestValue: Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
): core.Observation[Ros2Clearpath_platform_msgsSrvConfigureMcu_Response] =
    ## @brief Call complete clearpath_platform_msgs/srv/ConfigureMcu exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[261, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 261, written)
    if result.primary != 0: return
    result = core.request[Ros2Clearpath_platform_msgsSrvConfigureMcu_Response](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))
