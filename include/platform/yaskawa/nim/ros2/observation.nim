## @file observation.nim
## @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
## @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
## fields, original constants and native defaults; field units and frames follow the retained
## definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
## native ROS objects; importing them grants no transport alias.
## @brief Observe complete original Yaskawa ROS 2 messages in genuine Nim.
## @details All values own their bytes; successful acquisitions close exactly once.
import ros/nim/observation as core
import yaskawa/nim/ros2/records
export core

proc waitRobotStatus*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros2Industrial_msgsMsgRobotStatus] =
    ## @brief Observe every original industrial_msgs/msg/RobotStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Industrial_msgsMsgRobotStatus](aliasBytes, 22, 150, attempts)

proc waitJointState*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros2Sensor_msgsMsgJointState] =
    ## @brief Observe every original sensor_msgs/msg/JointState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Sensor_msgsMsgJointState](aliasBytes, 28, 1196, attempts)

proc waitAlarmInfo*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros2Motoros2_interfacesMsgAlarmInfo] =
    ## @brief Observe every original motoros2_interfaces/msg/AlarmInfo field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Motoros2_interfacesMsgAlarmInfo](aliasBytes, 32, 25248, attempts)

