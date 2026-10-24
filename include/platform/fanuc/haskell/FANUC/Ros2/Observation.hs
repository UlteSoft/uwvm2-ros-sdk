-- | @file Observation.hs
-- @brief Represent the complete original FANUC ROS 2 canonical value catalog.
-- @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
-- fields, original constants and native defaults; field units and frames follow the retained
-- definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
-- native ROS objects; importing them grants no transport alias.
-- | @brief Observe complete original Fanuc ROS 2 messages in genuine Haskell.
-- @details All values own their bytes; successful acquisitions close exactly once.
module FANUC.Ros2.Observation where
import Data.Word
import Ros.Observation
import qualified FANUC.Ros2.Records as R

-- | @brief Observe every original fanuc_msgs/msg/ConnectionStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitConnectionStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Fanuc_msgsMsgConnectionStatus)
waitConnectionStatus =
    receive
        R.decodeRos2Fanuc_msgsMsgConnectionStatus
        R.encodeRos2Fanuc_msgsMsgConnectionStatus
        1

-- | @brief Observe every original fanuc_msgs/msg/ForceSensor field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitForceSensor :: [Word8] -> Word32 -> IO (Observation R.Ros2Fanuc_msgsMsgForceSensor)
waitForceSensor =
    receive
        R.decodeRos2Fanuc_msgsMsgForceSensor
        R.encodeRos2Fanuc_msgsMsgForceSensor
        28

-- | @brief Observe every original fanuc_msgs/msg/Frame field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitFrame :: [Word8] -> Word32 -> IO (Observation R.Ros2Fanuc_msgsMsgFrame)
waitFrame =
    receive
        R.decodeRos2Fanuc_msgsMsgFrame
        R.encodeRos2Fanuc_msgsMsgFrame
        24

