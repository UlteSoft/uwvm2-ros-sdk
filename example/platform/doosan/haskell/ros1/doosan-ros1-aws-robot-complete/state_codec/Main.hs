-- | @file Main.hs
-- @brief Exercise the complete original dsr_msgs/RobotState with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import Doosan.Records.DoosanRos1AwsRobotComplete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos1Dsr_msgsRobotState defaultRos1Dsr_msgsRobotState)
    let value = either (error . show) id (decodeRos1Dsr_msgsRobotState bytes)
    let again = either (error . show) id (encodeRos1Dsr_msgsRobotState value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"dsr_msgs/RobotState\",\"bytes\":" ++ show (B.length bytes) ++ "}")
