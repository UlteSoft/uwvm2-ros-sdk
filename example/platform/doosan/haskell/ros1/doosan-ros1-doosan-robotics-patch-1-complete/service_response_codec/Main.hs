-- | @file Main.hs
-- @brief Exercise the complete original dsr_msgs/GetRobotStateResponse with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import Doosan.Records.DoosanRos1DoosanRoboticsPatch1Complete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos1Dsr_msgsGetRobotStateResponse defaultRos1Dsr_msgsGetRobotStateResponse)
    let value = either (error . show) id (decodeRos1Dsr_msgsGetRobotStateResponse bytes)
    let again = either (error . show) id (encodeRos1Dsr_msgsGetRobotStateResponse value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":" ++ show (B.length bytes) ++ "}")
