-- | @file Main.hs
-- @brief Exercise the complete original ur_msgs/IOStates with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import UniversalRobots.Records.UniversalRobotsRos1Complete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos1Ur_msgsIOStates defaultRos1Ur_msgsIOStates)
    let value = either (error . show) id (decodeRos1Ur_msgsIOStates bytes)
    let again = either (error . show) id (encodeRos1Ur_msgsIOStates value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"ur_msgs/IOStates\",\"bytes\":" ++ show (B.length bytes) ++ "}")
