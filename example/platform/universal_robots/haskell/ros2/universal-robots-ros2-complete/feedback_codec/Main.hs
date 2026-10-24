-- | @file Main.hs
-- @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import UniversalRobots.Records.UniversalRobotsRos2Complete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback defaultRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback)
    let value = either (error . show) id (decodeRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback bytes)
    let again = either (error . show) id (encodeRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":" ++ show (B.length bytes) ++ "}")
