-- | @file Main.hs
-- @brief Exercise the complete original ur_dashboard_msgs/SetModeFeedback with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import UniversalRobots.Records.UniversalRobotsRos1Complete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos1Ur_dashboard_msgsSetModeFeedback defaultRos1Ur_dashboard_msgsSetModeFeedback)
    let value = either (error . show) id (decodeRos1Ur_dashboard_msgsSetModeFeedback bytes)
    let again = either (error . show) id (encodeRos1Ur_dashboard_msgsSetModeFeedback value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"ur_dashboard_msgs/SetModeFeedback\",\"bytes\":" ++ show (B.length bytes) ++ "}")
