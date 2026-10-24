-- | @brief Observe complete original Unitree ROS 1 messages in genuine Haskell.
-- @details All values own their bytes; successful acquisitions close exactly once.
module Unitree.Ros1.Observation where
import Data.Word
import Unitree.Observation
import qualified Unitree.Ros1.Records as R

-- | @brief Observe every original unitree_legged_msgs/HighState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitMotionState :: [Word8] -> Word32 -> IO (Observation R.Ros1Unitree_legged_msgsHighState)
waitMotionState =
    receive
        R.decodeRos1Unitree_legged_msgsHighState
        R.encodeRos1Unitree_legged_msgsHighState
        1087

-- | @brief Observe every original unitree_legged_msgs/LowState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitLowState :: [Word8] -> Word32 -> IO (Observation R.Ros1Unitree_legged_msgsLowState)
waitLowState =
    receive
        R.decodeRos1Unitree_legged_msgsLowState
        R.encodeRos1Unitree_legged_msgsLowState
        1069

-- | @brief Observe every original unitree_legged_msgs/MotorState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitMotorState :: [Word8] -> Word32 -> IO (Observation R.Ros1Unitree_legged_msgsMotorState)
waitMotorState =
    receive
        R.decodeRos1Unitree_legged_msgsMotorState
        R.encodeRos1Unitree_legged_msgsMotorState
        38
