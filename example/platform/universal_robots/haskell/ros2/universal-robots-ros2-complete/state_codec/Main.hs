-- | @file Main.hs
-- @brief Exercise the complete original ur_msgs/msg/IOStates with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import UniversalRobots.Records.UniversalRobotsRos2Complete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos2Ur_msgsMsgIOStates defaultRos2Ur_msgsMsgIOStates)
    let value = either (error . show) id (decodeRos2Ur_msgsMsgIOStates bytes)
    let again = either (error . show) id (encodeRos2Ur_msgsMsgIOStates value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":" ++ show (B.length bytes) ++ "}")
