-- @file main.hs
-- @brief Use the complete original nav_msgs/msg/Odometry through an explicit native alias.
-- @details Preserve every original field and independent request/close status. No permission is granted.
module Main where
import Data.Word
import Native.Observation (command, request, report, argumentBytes)
import qualified Agilex.Ros2.Observation as API

-- | @brief Run one exact typed observer; preserve complete facts and original status.
main :: IO ()
main = command API.waitRos2Nav_msgsMsgOdometry
