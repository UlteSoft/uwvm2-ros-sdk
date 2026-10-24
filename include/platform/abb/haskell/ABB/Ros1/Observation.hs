-- | @file Observation.hs
-- @brief Represent the complete original ABB ROS 2 canonical value catalog.
-- @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
-- fields, original constants and native defaults; field units and frames follow the retained
-- definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
-- native ROS objects; importing them grants no transport alias.
-- | @brief Observe complete original Abb ROS 1 messages in genuine Haskell.
-- @details All values own their bytes; successful acquisitions close exactly once.
module ABB.Ros1.Observation where
import Data.Word
import Ros.Observation
import qualified ABB.Ros1.Records as R

-- | @brief Observe every original abb_robot_msgs/SystemState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitSystemState :: [Word8] -> Word32 -> IO (Observation R.Ros1Abb_robot_msgsSystemState)
waitSystemState =
    receive
        R.decodeRos1Abb_robot_msgsSystemState
        R.encodeRos1Abb_robot_msgsSystemState
        2331

-- | @brief Observe every original abb_egm_msgs/EGMState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitEgmState :: [Word8] -> Word32 -> IO (Observation R.Ros1Abb_egm_msgsEGMState)
waitEgmState =
    receive
        R.decodeRos1Abb_egm_msgsEGMState
        R.encodeRos1Abb_egm_msgsEGMState
        1380

-- | @brief Observe every original abb_rapid_sm_addin_msgs/RuntimeState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRuntimeState :: [Word8] -> Word32 -> IO (Observation R.Ros1Abb_rapid_sm_addin_msgsRuntimeState)
waitRuntimeState =
    receive
        R.decodeRos1Abb_rapid_sm_addin_msgsRuntimeState
        R.encodeRos1Abb_rapid_sm_addin_msgsRuntimeState
        8372

