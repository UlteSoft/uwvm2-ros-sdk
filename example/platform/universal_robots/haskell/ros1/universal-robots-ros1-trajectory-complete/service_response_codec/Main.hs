-- | @file Main.hs
-- @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import UniversalRobots.Records.UniversalRobotsRos1TrajectoryComplete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos1Ur_dashboard_msgsAddToLogResponse defaultRos1Ur_dashboard_msgsAddToLogResponse)
    let value = either (error . show) id (decodeRos1Ur_dashboard_msgsAddToLogResponse bytes)
    let again = either (error . show) id (encodeRos1Ur_dashboard_msgsAddToLogResponse value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":" ++ show (B.length bytes) ++ "}")
