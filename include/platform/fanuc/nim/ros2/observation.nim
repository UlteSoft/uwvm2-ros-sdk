## @file observation.nim
## @brief Represent the complete original FANUC ROS 2 canonical value catalog.
## @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
## fields, original constants and native defaults; field units and frames follow the retained
## definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
## native ROS objects; importing them grants no transport alias.
## @brief Observe complete original Fanuc ROS 2 messages in genuine Nim.
## @details All values own their bytes; successful acquisitions close exactly once.
import ros/nim/observation as core
import fanuc/nim/ros2/records
export core

proc waitConnectionStatus*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros2Fanuc_msgsMsgConnectionStatus] =
    ## @brief Observe every original fanuc_msgs/msg/ConnectionStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Fanuc_msgsMsgConnectionStatus](aliasBytes, 1, 1, attempts)

proc waitForceSensor*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros2Fanuc_msgsMsgForceSensor] =
    ## @brief Observe every original fanuc_msgs/msg/ForceSensor field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Fanuc_msgsMsgForceSensor](aliasBytes, 28, 28, attempts)

proc waitFrame*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros2Fanuc_msgsMsgFrame] =
    ## @brief Observe every original fanuc_msgs/msg/Frame field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Fanuc_msgsMsgFrame](aliasBytes, 24, 24, attempts)

