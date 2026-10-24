-- | @file Main.hs
-- @brief Exercise the complete original dsr_msgs/LogAlarm with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import Doosan.Records.DoosanRos1KineticDevelDescreptedComplete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos1Dsr_msgsLogAlarm defaultRos1Dsr_msgsLogAlarm)
    let value = either (error . show) id (decodeRos1Dsr_msgsLogAlarm bytes)
    let again = either (error . show) id (encodeRos1Dsr_msgsLogAlarm value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":" ++ show (B.length bytes) ++ "}")
