-- | @file Main.hs
-- @brief Exercise the complete original dsr_msgs2/srv/GetRobotState_Response with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import Doosan.Records.DoosanRos2HumbleComplete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos2Dsr_msgs2SrvGetRobotState_Response defaultRos2Dsr_msgs2SrvGetRobotState_Response)
    let value = either (error . show) id (decodeRos2Dsr_msgs2SrvGetRobotState_Response bytes)
    let again = either (error . show) id (encodeRos2Dsr_msgs2SrvGetRobotState_Response value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"bytes\":" ++ show (B.length bytes) ++ "}")
