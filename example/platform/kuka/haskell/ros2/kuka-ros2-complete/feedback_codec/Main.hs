-- | @file Main.hs
-- @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import Kuka.Records.KukaRos2Complete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos2Control_msgsActionFollowJointTrajectory_Feedback defaultRos2Control_msgsActionFollowJointTrajectory_Feedback)
    let value = either (error . show) id (decodeRos2Control_msgsActionFollowJointTrajectory_Feedback bytes)
    let again = either (error . show) id (encodeRos2Control_msgsActionFollowJointTrajectory_Feedback value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":" ++ show (B.length bytes) ++ "}")
