-- | @file Main.hs
-- @brief Exercise the complete original dsr_msgs2/msg/RobotState with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import Doosan.Records.DoosanRos2JazzyComplete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos2Dsr_msgs2MsgRobotState defaultRos2Dsr_msgs2MsgRobotState)
    let value = either (error . show) id (decodeRos2Dsr_msgs2MsgRobotState bytes)
    let again = either (error . show) id (encodeRos2Dsr_msgs2MsgRobotState value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":" ++ show (B.length bytes) ++ "}")
