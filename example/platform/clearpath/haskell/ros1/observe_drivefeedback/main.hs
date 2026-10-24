-- @file main.hs
-- @brief Use the complete original clearpath_platform_msgs/DriveFeedback through an explicit native alias.
-- @details Preserve every original field and independent request/close status. No permission is granted.
module Main where
import Data.Word
import Native.Observation (command, request, report, argumentBytes)
import qualified Clearpath.Ros1.Observation as API

-- | @brief Run one exact typed observer; preserve complete facts and original status.
main :: IO ()
main = command API.waitRos1Clearpath_platform_msgsDriveFeedback
