## @file observation.nim
## @brief Typed complete agilex observers and service clients.
import native/nim/observation as core
import native/nim/wire
import agilex/nim/ros2/records
proc waitRos2Builtin_interfacesMsgTime*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Builtin_interfacesMsgTime] =
    ## @brief Observe every original builtin_interfaces/msg/Time field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Builtin_interfacesMsgTime](aliasBytes, 8, 8, attempts)

proc waitRos2Geometry_msgsMsgPoint*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Geometry_msgsMsgPoint] =
    ## @brief Observe every original geometry_msgs/msg/Point field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Geometry_msgsMsgPoint](aliasBytes, 24, 24, attempts)

proc waitRos2Geometry_msgsMsgPose*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Geometry_msgsMsgPose] =
    ## @brief Observe every original geometry_msgs/msg/Pose field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Geometry_msgsMsgPose](aliasBytes, 56, 56, attempts)

proc waitRos2Geometry_msgsMsgPoseWithCovariance*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Geometry_msgsMsgPoseWithCovariance] =
    ## @brief Observe every original geometry_msgs/msg/PoseWithCovariance field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Geometry_msgsMsgPoseWithCovariance](aliasBytes, 344, 344, attempts)

proc waitRos2Geometry_msgsMsgQuaternion*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Geometry_msgsMsgQuaternion] =
    ## @brief Observe every original geometry_msgs/msg/Quaternion field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Geometry_msgsMsgQuaternion](aliasBytes, 32, 32, attempts)

proc waitRos2Geometry_msgsMsgTwist*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Geometry_msgsMsgTwist] =
    ## @brief Observe every original geometry_msgs/msg/Twist field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Geometry_msgsMsgTwist](aliasBytes, 48, 48, attempts)

proc waitRos2Geometry_msgsMsgTwistWithCovariance*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Geometry_msgsMsgTwistWithCovariance] =
    ## @brief Observe every original geometry_msgs/msg/TwistWithCovariance field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Geometry_msgsMsgTwistWithCovariance](aliasBytes, 336, 336, attempts)

proc waitRos2Geometry_msgsMsgVector3*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Geometry_msgsMsgVector3] =
    ## @brief Observe every original geometry_msgs/msg/Vector3 field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Geometry_msgsMsgVector3](aliasBytes, 24, 24, attempts)

proc waitRos2Nav_msgsMsgOdometry*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Nav_msgsMsgOdometry] =
    ## @brief Observe every original nav_msgs/msg/Odometry field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Nav_msgsMsgOdometry](aliasBytes, 696, 952, attempts)

proc waitRos2Scout_msgsMsgScoutActuatorState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Scout_msgsMsgScoutActuatorState] =
    ## @brief Observe every original scout_msgs/msg/ScoutActuatorState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Scout_msgsMsgScoutActuatorState](aliasBytes, 19, 19, attempts)

proc waitRos2Scout_msgsMsgScoutLightCmd*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Scout_msgsMsgScoutLightCmd] =
    ## @brief Observe every original scout_msgs/msg/ScoutLightCmd field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Scout_msgsMsgScoutLightCmd](aliasBytes, 5, 5, attempts)

proc waitRos2Scout_msgsMsgScoutLightState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Scout_msgsMsgScoutLightState] =
    ## @brief Observe every original scout_msgs/msg/ScoutLightState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Scout_msgsMsgScoutLightState](aliasBytes, 2, 2, attempts)

proc waitRos2Scout_msgsMsgScoutRCState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Scout_msgsMsgScoutRCState] =
    ## @brief Observe every original scout_msgs/msg/ScoutRCState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Scout_msgsMsgScoutRCState](aliasBytes, 9, 9, attempts)

proc waitRos2Scout_msgsMsgScoutStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Scout_msgsMsgScoutStatus] =
    ## @brief Observe every original scout_msgs/msg/ScoutStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Scout_msgsMsgScoutStatus](aliasBytes, 121, 249, attempts)

proc waitRos2Std_msgsMsgHeader*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros2Std_msgsMsgHeader] =
    ## @brief Observe every original std_msgs/msg/Header field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Std_msgsMsgHeader](aliasBytes, 12, 140, attempts)
