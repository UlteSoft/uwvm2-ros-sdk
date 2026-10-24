-- @file main.hs
-- @brief Use the complete original uwvm_spot_bridge/srv/Lease_Response through an explicit native alias.
-- @details Preserve every original field and independent request/close status. No permission is granted.
module Main where
import Data.Word
import Native.Observation (command, request, report, argumentBytes)
import qualified Boston_dynamics.Ros2.Observation as API
import qualified Boston_dynamics.Ros2.Records as R

-- | @brief Execute one whole service request using command's explicit-alias exit discipline.
main :: IO ()
main = command (\aliasBytes _ -> API.callRos2Uwvm_spot_bridgeSrvLease aliasBytes (R.Ros2Uwvm_spot_bridgeSrvLease_Request 1 1 1000000000))
