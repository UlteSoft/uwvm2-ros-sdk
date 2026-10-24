-- | @file Main.hs
-- @brief Exercise the complete original dsr_msgs/AlterMotionStream with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import Doosan.Records.DoosanRos1NoeticDevelComplete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos1Dsr_msgsAlterMotionStream defaultRos1Dsr_msgsAlterMotionStream)
    let value = either (error . show) id (decodeRos1Dsr_msgsAlterMotionStream bytes)
    let again = either (error . show) id (encodeRos1Dsr_msgsAlterMotionStream value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":" ++ show (B.length bytes) ++ "}")
