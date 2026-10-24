-- | @file Main.hs
-- @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import UniversalRobots.Records.UniversalRobotsRos1TrajectoryComplete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos1Control_msgsFollowJointTrajectoryFeedback defaultRos1Control_msgsFollowJointTrajectoryFeedback)
    let value = either (error . show) id (decodeRos1Control_msgsFollowJointTrajectoryFeedback bytes)
    let again = either (error . show) id (encodeRos1Control_msgsFollowJointTrajectoryFeedback value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":" ++ show (B.length bytes) ++ "}")
