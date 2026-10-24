## @file observation.nim
## @brief Typed complete agilex observers and service clients.
import native/nim/observation as core
import native/nim/wire
import agilex/nim/ros1/records
proc waitRos1Geometry_msgsPoint*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsPoint] =
    ## @brief Observe every original geometry_msgs/Point field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsPoint](aliasBytes, 24, 24, attempts)

proc waitRos1Geometry_msgsPose*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsPose] =
    ## @brief Observe every original geometry_msgs/Pose field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsPose](aliasBytes, 56, 56, attempts)

proc waitRos1Geometry_msgsPoseWithCovariance*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsPoseWithCovariance] =
    ## @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsPoseWithCovariance](aliasBytes, 344, 344, attempts)

proc waitRos1Geometry_msgsQuaternion*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsQuaternion] =
    ## @brief Observe every original geometry_msgs/Quaternion field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsQuaternion](aliasBytes, 32, 32, attempts)

proc waitRos1Geometry_msgsTwist*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsTwist] =
    ## @brief Observe every original geometry_msgs/Twist field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsTwist](aliasBytes, 48, 48, attempts)

proc waitRos1Geometry_msgsTwistWithCovariance*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsTwistWithCovariance] =
    ## @brief Observe every original geometry_msgs/TwistWithCovariance field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsTwistWithCovariance](aliasBytes, 336, 336, attempts)

proc waitRos1Geometry_msgsVector3*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsVector3] =
    ## @brief Observe every original geometry_msgs/Vector3 field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsVector3](aliasBytes, 24, 24, attempts)

proc waitRos1Nav_msgsOdometry*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Nav_msgsOdometry] =
    ## @brief Observe every original nav_msgs/Odometry field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Nav_msgsOdometry](aliasBytes, 700, 956, attempts)

proc waitRos1Scout_msgsScoutBmsStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Scout_msgsScoutBmsStatus] =
    ## @brief Observe every original scout_msgs/ScoutBmsStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Scout_msgsScoutBmsStatus](aliasBytes, 44, 44, attempts)

proc waitRos1Scout_msgsScoutDriverState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Scout_msgsScoutDriverState] =
    ## @brief Observe every original scout_msgs/ScoutDriverState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Scout_msgsScoutDriverState](aliasBytes, 17, 17, attempts)

proc waitRos1Scout_msgsScoutLightCmd*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Scout_msgsScoutLightCmd] =
    ## @brief Observe every original scout_msgs/ScoutLightCmd field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Scout_msgsScoutLightCmd](aliasBytes, 5, 5, attempts)

proc waitRos1Scout_msgsScoutLightState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Scout_msgsScoutLightState] =
    ## @brief Observe every original scout_msgs/ScoutLightState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Scout_msgsScoutLightState](aliasBytes, 2, 2, attempts)

proc waitRos1Scout_msgsScoutMotorState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Scout_msgsScoutMotorState] =
    ## @brief Observe every original scout_msgs/ScoutMotorState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Scout_msgsScoutMotorState](aliasBytes, 32, 32, attempts)

proc waitRos1Scout_msgsScoutRsStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Scout_msgsScoutRsStatus] =
    ## @brief Observe every original scout_msgs/ScoutRsStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Scout_msgsScoutRsStatus](aliasBytes, 25, 153, attempts)

proc waitRos1Scout_msgsScoutStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Scout_msgsScoutStatus] =
    ## @brief Observe every original scout_msgs/ScoutStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Scout_msgsScoutStatus](aliasBytes, 253, 381, attempts)

proc waitRos1Std_msgsHeader*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Std_msgsHeader] =
    ## @brief Observe every original std_msgs/Header field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Std_msgsHeader](aliasBytes, 16, 144, attempts)
