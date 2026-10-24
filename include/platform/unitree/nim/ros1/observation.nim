## @brief Observe complete original Unitree ROS 1 messages in genuine Nim.
## @details All values own their bytes; successful acquisitions close exactly once.
import unitree/nim/observation as core
import unitree/nim/ros1/records
export core

proc waitMotionState*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros1Unitree_legged_msgsHighState] =
    ## @brief Observe every original unitree_legged_msgs/HighState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Unitree_legged_msgsHighState](aliasBytes, 1087, 1087, attempts)

proc waitLowState*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros1Unitree_legged_msgsLowState] =
    ## @brief Observe every original unitree_legged_msgs/LowState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Unitree_legged_msgsLowState](aliasBytes, 1069, 1069, attempts)

proc waitMotorState*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros1Unitree_legged_msgsMotorState] =
    ## @brief Observe every original unitree_legged_msgs/MotorState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Unitree_legged_msgsMotorState](aliasBytes, 38, 38, attempts)
