-- | @brief Observe complete original Unitree ROS 2 messages in genuine Haskell.
-- @details All values own their bytes; successful acquisitions close exactly once.
module Unitree.Ros2.Observation where
import Data.Word
import Unitree.Observation
import qualified Unitree.Ros2.Records as R

-- | @brief Observe every original unitree_go/msg/SportModeState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitMotionState :: [Word8] -> Word32 -> IO (Observation R.Ros2Unitree_goMsgSportModeState)
waitMotionState =
    receive
        R.decodeRos2Unitree_goMsgSportModeState
        R.encodeRos2Unitree_goMsgSportModeState
        227

-- | @brief Observe every original unitree_go/msg/LowState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitLowState :: [Word8] -> Word32 -> IO (Observation R.Ros2Unitree_goMsgLowState)
waitLowState =
    receive
        R.decodeRos2Unitree_goMsgLowState
        R.encodeRos2Unitree_goMsgLowState
        1050

-- | @brief Observe every original unitree_go/msg/WirelessController field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitWirelessController :: [Word8] -> Word32 -> IO (Observation R.Ros2Unitree_goMsgWirelessController)
waitWirelessController =
    receive
        R.decodeRos2Unitree_goMsgWirelessController
        R.encodeRos2Unitree_goMsgWirelessController
        18
